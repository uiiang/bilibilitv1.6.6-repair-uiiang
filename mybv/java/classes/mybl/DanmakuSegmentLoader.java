package mybl;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import bl.wa;
import bl.ym;
import com.bilibili.tv.MainApplication;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import okhttp3.HttpUrl;
import okhttp3.Request;
import org.xmlpull.v1.XmlPullParser;
import tv.danmaku.videoplayer.core.danmaku.comment.CommentItem;
import tv.danmaku.videoplayer.core.danmaku.comment.CommentItemFactory;
import tv.danmaku.videoplayer.core.danmaku.comment.CommentParseException;

/**
 * 弹幕加载器（seg.so 签名分段加载）。
 * 数据源：x/v2/dm/web/seg.so 按 6 分钟/段加载，URL 走 bl.wa() 签名链路（附加
 * access_key/appkey/build/ts/sign）。实测签名后每段返回完整弹幕（本视频 seg1=2151条，
 * 前120秒1200+条，可铺满屏幕）；未签名（无 access_key）每段仅约500条精选弹幕（稀疏）。
 * 注：app 内无 SESSDATA cookie（TV 客户端登录凭证为 access_key），不能依赖网络层 cookie。
 * seg.so 某段失败/为空时，回退 list.so 完整列表（一次性加载全部，后续段短路）。
 * 触发点（均由 DanmakuPlayerDFM 在渲染启动后调用）：
 *   - 初始化加载第 1 段
 *   - seek / 定时预加载按播放位置触发（已加载段自动跳过）
 */
public class DanmakuSegmentLoader {
    private static final String TAG = "DanmakuSegment";
    /** list.so 回退时的时间范围（毫秒）：12小时，覆盖视频内全部弹幕（旧版传视频时长） */
    private static final long LIST_PS_MS = 43200000L;
    private static final int SEGMENT_SIZE_MS = 6 * 60 * 1000; // 6分钟/段
    private static final int PREFETCH_SEGMENTS = 1; // 预加载当前段+1段

    private static volatile DanmakuSegmentLoader sInstance;

    public interface Callback {
        void onSegmentLoaded(long cid, List<CommentItem> items);
    }

    private final ExecutorService mExecutor = Executors.newSingleThreadExecutor();
    private Context mContext;
    private long mAid;
    private long mCid;
    private Callback mCallback;
    /** 已加载的段索引集合（防定时预加载/seek 重复请求同一段） */
    private final java.util.Set<Integer> mLoadedSegments = new java.util.HashSet<Integer>();
    /** 是否已回退 list.so 完整列表（一次性加载后短路所有后续分段请求） */
    private boolean mFullListLoaded;

    private DanmakuSegmentLoader() {
    }

    public static DanmakuSegmentLoader getInstance() {
        if (sInstance == null) {
            synchronized (DanmakuSegmentLoader.class) {
                if (sInstance == null) {
                    sInstance = new DanmakuSegmentLoader();
                }
            }
        }
        return sInstance;
    }

    /** 由 DanmakuPlayerDFM.start() 调用：绑定当前视频 aid/cid 与回调，清空已加载记录 */
    public synchronized void init(Context context, long aid, long cid, Callback callback) {
        this.mContext = context != null ? context.getApplicationContext() : MainApplication.a();
        this.mAid = aid;
        this.mCid = cid;
        this.mCallback = callback;
        this.mFullListLoaded = false;
        this.mLoadedSegments.clear();
        // 关键：在弹幕注入前从 SharedPreferences 同步"合并重复"开关（状态单一来源：
        // DanmakuMergeHelper）。PlayerMenuRight 的 loadDanmakuMergeDuplicate() 只在菜单
        // 视图构造时执行，而菜单可能懒加载/晚于弹幕注入创建（实测重启进视频时弹幕注入
        // 后 5 秒才同步），导致 isMergeEnabled() 仍为默认 false，重启后"已开启合并"
        // 进入视频却完全不合并（重复弹幕全部显示）。
        try {
            tv.danmaku.videoplayer.core.danmaku.DanmakuMergeHelper.loadFromPrefs(this.mContext);
        } catch (Throwable t) {
            Log.w(TAG, "[init] 同步合并开关失败: " + t.getMessage());
        }
        Log.i(TAG, "[init] aid=" + aid + " cid=" + cid);
    }

    /** 由 DanmakuPlayerDFM.release() 调用：清理回调与已加载记录，防止切集后旧数据注入 */
    public synchronized void clear() {
        this.mFullListLoaded = false;
        this.mLoadedSegments.clear();
        this.mCallback = null;
        this.mAid = 0;
        this.mCid = 0;
        this.mContext = null;
        Log.i(TAG, "[clear]");
    }

    /** 加载第 index 段弹幕（seg.so 登录态，6 分钟/段；已加载段跳过；串行在单线程 Executor 上请求+解析） */
    public void loadSegment(int index) {
        if (index <= 0) {
            return;
        }
        final long cid;
        final long aid;
        synchronized (this) {
            if (this.mCid <= 0 || this.mCallback == null) {
                return;
            }
            if (this.mFullListLoaded) {
                return; // 已回退 list.so 全量，后续段无需再请求
            }
            if (this.mLoadedSegments.contains(Integer.valueOf(index))) {
                Log.i(TAG, "[loadSegment] skip already loaded, segment=" + index);
                return;
            }
            this.mLoadedSegments.add(Integer.valueOf(index));
            cid = this.mCid;
            aid = this.mAid;
        }
        Log.i(TAG, "[loadSegment] request segment=" + index);
        this.mExecutor.execute(new Runnable() {
            @Override
            public void run() {
                requestSegment(aid, cid, index);
            }
        });
    }

    /** 按播放位置加载当前段及下一段（预加载） */
    public void loadSegmentForPosition(long positionMs) {
        if (positionMs < 0) {
            return;
        }
        int seg = (int) (positionMs / SEGMENT_SIZE_MS) + 1;
        loadSegment(seg);
        for (int i = 1; i <= PREFETCH_SEGMENTS; i++) {
            loadSegment(seg + i);
        }
    }

    /** 是否为分段加载模式（aid/cid 已初始化） */
    public synchronized boolean isActive() {
        return this.mCid > 0;
    }

    // ============ 请求 + 解析 ============

    /**
     * 生成带签名的 seg.so URL（与 list.so 同一签名链路 bl.wa.intercept）：
     * 签名后自动附加 platform/android、mobi_app、appkey、build、access_key、ts、sign。
     * 实测未签名 seg.so 每段仅约500条精选弹幕；签名后返回完整弹幕（seg1=2151条）。
     */
    private String buildSignedSegUrl(long cid, long aid, int index) {
        try {
            HttpUrl hurl = HttpUrl.parse("https://api.bilibili.com/x/v2/dm/web/seg.so?type=1&oid="
                    + cid + "&pid=" + aid + "&segment_index=" + index);
            if (hurl == null) {
                return null;
            }
            Request signed = new wa().intercept(new Request.Builder().url(hurl).build());
            return signed.url() != null ? signed.url().toString() : null;
        } catch (Throwable t) {
            Log.w(TAG, "[seg.so签名异常] " + t.getMessage());
            return null;
        }
    }

    private void requestSegment(long aid, long cid, int index) {
        List<CommentItem> items = null;
        // 1) seg.so 分段接口（主数据源）：URL 必须走 wa() 签名链路（platform/appkey/build/
        //    access_key/ts/sign）。实测：签名后每段返回完整弹幕（本视频 seg1=2151条），
        //    未签名（无 access_key）仅约500条精选弹幕（稀疏）。app 内无 SESSDATA cookie，
        //    TV 客户端登录凭证是 access_key，故不能依赖网络层 cookie。
        try {
            String url = buildSignedSegUrl(cid, aid, index);
            if (url == null) {
                Log.w(TAG, "[seg.so签名失败] cid=" + cid + " segment=" + index);
            } else {
                Log.i(TAG, "[seg.so请求] cid=" + cid + " segment=" + index + " url=" + url);
                InputStream in = ym.a(mContext, url, false, url);
                if (in == null) {
                    Log.w(TAG, "[seg.so请求失败] cid=" + cid + " segment=" + index + " input null");
                } else {
                    try {
                        byte[] data = readAll(in);
                        items = parseSegProto(data);
                        Log.i(TAG, "[seg.so解析完成] cid=" + cid + " segment=" + index + " count="
                                + (items == null ? 0 : items.size()));
                    } finally {
                        in.close();
                    }
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "[seg.so失败] cid=" + cid + " segment=" + index + " " + t.getMessage());
            items = null;
        }
        // 2) seg.so 无弹幕（如未登录/段无数据/请求失败）时回退 list.so 完整列表（一次性全量，后续段短路）
        if (items == null || items.isEmpty()) {
            Log.w(TAG, "[seg.so无弹幕,回退list.so全量] cid=" + cid + " segment=" + index);
            items = requestListFull(aid, cid);
            synchronized (this) {
                this.mFullListLoaded = items != null && !items.isEmpty();
            }
        }
        if (items != null && !items.isEmpty()) {
            Callback cb;
            synchronized (this) {
                cb = this.mCallback;
            }
            Log.i(TAG, "[回调] thread=" + Thread.currentThread().getName() + " cid=" + cid
                    + " segment=" + index
                    + " items=" + items.size() + " cb=" + (cb != null));
            if (cb != null) {
                cb.onSegmentLoaded(cid, items);
            }
        }
    }

    /** list.so 完整列表回退（与旧版一致，带 access_key 登录态返回全部弹幕 XML） */
    private List<CommentItem> requestListFull(long aid, long cid) {
        try {
            String url = ym.a(mContext, String.valueOf(aid), String.valueOf(cid), LIST_PS_MS);
            if (url != null && url.startsWith("http://")) {
                url = "https://" + url.substring("http://".length());
            }
            Log.i(TAG, "[list.so请求] cid=" + cid + " url=" + url);
            InputStream in = ym.a(mContext, url, false, url);
            if (in == null) {
                Log.w(TAG, "[list.so请求失败] cid=" + cid + " input null");
                return null;
            }
            try {
                List<CommentItem> items = parseListXml(in);
                Log.i(TAG, "[list.so解析] cid=" + cid + " count=" + (items == null ? 0 : items.size()));
                return items;
            } finally {
                in.close();
            }
        } catch (Throwable t) {
            Log.w(TAG, "[list.so失败] cid=" + cid + " " + t.getMessage());
            return null;
        }
    }

    // ============ list.so XML 解析（XmlPullParser，兼容 Android 4.x） ============
    // <d p="progress(秒,浮点),mode,fontsize,color,timestamp,pool,midHash,dmid,weight">内容</d>
    // 例：p="1500.45900,1,25,16777215,1786764437,0,18041a7d,2178296995524226304,10"
    // 字段索引以 list.so 实际返回的标准格式为准（与 web 端一致）

    private static List<CommentItem> parseListXml(InputStream in) throws Exception {
        List<CommentItem> items = new ArrayList<CommentItem>();
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(in, "UTF-8");
        int event = parser.getEventType();
        String pAttr = null;
        String content = null;
        while (event != XmlPullParser.END_DOCUMENT) {
            if (event == XmlPullParser.START_TAG) {
                if ("d".equals(parser.getName())) {
                    pAttr = parser.getAttributeValue(null, "p");
                    content = null;
                } else {
                    pAttr = null;
                }
            } else if (event == XmlPullParser.TEXT && pAttr != null) {
                String t = parser.getText();
                content = (content == null) ? t : content + t;
            } else if (event == XmlPullParser.END_TAG && "d".equals(parser.getName())) {
                if (pAttr != null) {
                    CommentItem item = parseDItem(pAttr, content);
                    if (item != null) {
                        items.add(item);
                    }
                }
                pAttr = null;
                content = null;
            }
            event = parser.next();
        }
        return items;
    }

    private static CommentItem parseDItem(String p, String content) {
        if (p == null) {
            return null;
        }
        String[] attrs = p.split(",");
        if (attrs.length < 4) {
            return null;
        }
        try {
            // 标准 B 站 list.so 格式：
            // p="progress(秒,浮点),mode,fontsize,color,timestamp,pool,midHash,dmid,weight"
            // 例：p="1500.45900,1,25,16777215,1786764437,0,18041a7d,2178296995524226304,10"
            float progressSec = Float.parseFloat(attrs[0].trim());
            long timeMs = (long) (progressSec * 1000.0f);
            int mode = Integer.parseInt(attrs[1].trim());
            int fontSize = Integer.parseInt(attrs[2].trim());
            int color = (int) Long.parseLong(attrs[3].trim());
            int weight = attrs.length > 8 ? Integer.parseInt(attrs[8].trim()) : 0;
            String midHash = attrs.length > 6 ? attrs[6].trim() : "";
            String dmId = attrs.length > 7 ? attrs[7].trim() : "";
            // mode 越界/高级(7,无move数据)/8,9(脚本) 直接丢弃，防止越界崩溃
            if (mode < 1 || mode > 6) {
                return null;
            }
            if (content == null || content.length() == 0) {
                return null;
            }
            CommentItem item = CommentItemFactory.createComment(mode);
            if (item == null) {
                return null;
            }
            item.setTimeInMilliSeconds(timeMs);
            try {
                item.setBody(content);
            } catch (CommentParseException e) {
                Log.w(TAG, "setBody failed: " + e.getMessage());
                return null;
            }
            item.setSize(fontSize);
            item.setTextColor(color);
            item.setPublisherId(midHash);
            item.mPublisherLevel = weight;
            item.setDmId(dmId);
            return item;
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static byte[] readAll(InputStream in) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buf = new byte[8192];
        int n;
        while ((n = in.read(buf)) > 0) {
            out.write(buf, 0, n);
        }
        return out.toByteArray();
    }

    // ============ 手工 protobuf 解析（零依赖） ============
    // DmSegMobileReply: elems = field 1 (repeated DanmakuElem), state = field 2 (int32)
    // DanmakuElem: id=1, progress=2, mode=3, fontsize=4, color=5, midHash=6,
    //              content=7, ctime=8, weight=9, action=10, pool=11, idStr=12

    private static long readVarint(byte[] data, int[] pos) throws IOException {
        long result = 0;
        int shift = 0;
        while (true) {
            if (pos[0] >= data.length) {
                throw new IOException("protobuf eof at varint");
            }
            byte b = data[pos[0]];
            pos[0]++;
            result |= (long) (b & 0x7F) << shift;
            if ((b & 0x80) == 0) {
                break;
            }
            shift += 7;
            if (shift >= 64) {
                throw new IOException("varint too long");
            }
        }
        return result;
    }

    private static String readString(byte[] data, int[] pos) throws IOException {
        int len = (int) readVarint(data, pos);
        if (len < 0 || pos[0] + len > data.length) {
            throw new IOException("protobuf string out of range");
        }
        String s = new String(data, pos[0], len, "UTF-8");
        pos[0] += len;
        return s;
    }

    private static void skipField(byte[] data, int[] pos, int wireType) throws IOException {
        switch (wireType) {
            case 0: // varint
                readVarint(data, pos);
                return;
            case 1: // 64-bit
                pos[0] += 8;
                return;
            case 2: // length-delimited
                int len = (int) readVarint(data, pos);
                pos[0] += len;
                return;
            case 5: // 32-bit
                pos[0] += 4;
                return;
            default:
                throw new IOException("unsupported wire type " + wireType);
        }
    }

    private static List<CommentItem> parseSegProto(byte[] data) throws IOException {
        List<CommentItem> items = new ArrayList<CommentItem>();
        int[] pos = new int[]{0};
        while (pos[0] < data.length) {
            int tag = (int) readVarint(data, pos);
            int fieldNum = tag >>> 3;
            int wireType = tag & 7;
            if (fieldNum == 1 && wireType == 2) {
                int len = (int) readVarint(data, pos);
                int end = pos[0] + len;
                if (end > data.length) {
                    throw new IOException("elem out of range");
                }
                parseElem(data, pos, end, items);
                pos[0] = end;
            } else {
                skipField(data, pos, wireType);
            }
        }
        return items;
    }

    private static void parseElem(byte[] data, int[] pos, int end, List<CommentItem> items) throws IOException {
        long id = 0;
        long progress = 0;
        int mode = 0;
        int fontsize = 0;
        int color = 0;
        String midHash = "";
        String content = "";
        int weight = 0;
        int pool = 0;
        while (pos[0] < end) {
            int tag = (int) readVarint(data, pos);
            int fn = tag >>> 3;
            int wt = tag & 7;
            if (wt == 0) {
                long v = readVarint(data, pos);
                if (fn == 1) {
                    id = v;
                } else if (fn == 2) {
                    progress = v;
                } else if (fn == 3) {
                    mode = (int) v;
                } else if (fn == 4) {
                    fontsize = (int) v;
                } else if (fn == 5) {
                    color = (int) v;
                } else if (fn == 9) {
                    weight = (int) v;
                } else if (fn == 11) {
                    pool = (int) v;
                }
            } else if (wt == 2) {
                int len = (int) readVarint(data, pos);
                if (len < 0 || pos[0] + len > end) {
                    throw new IOException("string out of range");
                }
                if (fn == 6) {
                    midHash = new String(data, pos[0], len, "UTF-8");
                } else if (fn == 7) {
                    content = new String(data, pos[0], len, "UTF-8");
                }
                pos[0] += len;
            } else {
                skipField(data, pos, wt);
            }
        }
        // mode 越界/高级(7,无move数据)/8,9(脚本) 直接丢弃，防止越界崩溃
        if (mode < 1 || mode > 6) {
            return;
        }
        if (content == null || content.length() == 0) {
            return;
        }
        CommentItem item = CommentItemFactory.createComment(mode);
        if (item == null) {
            return;
        }
        item.setTimeInMilliSeconds(progress);
        try {
            item.setBody(content);
        } catch (CommentParseException e) {
            Log.w(TAG, "setBody failed: " + e.getMessage());
            return;
        }
        item.setSize(fontsize);
        item.setTextColor(color);
        item.setPublisherId(midHash);
        item.mPublisherLevel = weight;
        item.setDmId(String.valueOf(id));
        items.add(item);
    }
}
