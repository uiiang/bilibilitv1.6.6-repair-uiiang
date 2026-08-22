package mybl;

import bl.pz;
import bl.qa;
import bl.qb;
import bl.qe;
import bl.yl;
import java.io.*;
import java.net.*;
import java.nio.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.zip.InflaterOutputStream;
import tv.danmaku.videoplayer.core.danmaku.DanmakuConfig;
import tv.danmaku.videoplayer.core.danmaku.DanmakuMergeHelper;
import tv.danmaku.videoplayer.core.danmaku.IDanmakuPlayer;
import tv.danmaku.videoplayer.core.danmaku.comment.CommentItem;
import tv.danmaku.videoplayer.core.danmaku.comment.DrawableItem;

import bl.abd;
import org.json.*;
import okio.ByteString;
import android.os.Handler;
import android.os.Looper;
import android.text.*;
import android.util.*;
import android.graphics.*;
import android.text.style.*;
import android.content.Context;
import com.bilibili.tv.MainApplication;
import android.graphics.drawable.Drawable;

import org.java_websocket.client.WebSocketClient;
import org.java_websocket.handshake.ServerHandshake;

class DanmakuWebSocketClient extends WebSocketClient {

    // 持有所属DanmakuClient，弹幕只写入本实例的player，
    // 防止切台后旧房间残留数据写入新房间的静态player导致弹幕叠加
    public DanmakuClient owner;

    public DanmakuWebSocketClient(URI serverUri, DanmakuClient owner) {
        super(serverUri);
        this.owner = owner;
    }

    @Override
    public void onOpen(ServerHandshake arg0) {}

    @Override
    public void onClose(int arg0, String arg1, boolean arg2) {}

    @Override
    public void onError(Exception arg0) {}

    @Override
    public void onMessage(ByteBuffer arg0) { if(owner != null && owner.player != null) owner.parse(arg0.array()); }

    @Override
    public void onMessage(String arg0) {}
}

public class DanmakuClient {
    public int roomId;
    public String token="";
    public Thread client_thread;
    public DanmakuWebSocketClient client;
    // 实例字段而非静态：每个直播间只向自己的player写入弹幕，
    // 切台后旧房间残留数据不会叠加到新房间
    public IDanmakuPlayer player;
    public static float baseScreenScale=0, densityScale=0, mScale ;
    public static int mAlpha;

    // ==================== 直播弹幕合并重复 ====================
    // 与点播 DanmakuMergeHelper 同语义：按"内容+颜色+模式"分组，2秒窗口内相同弹幕合并为一条，
    // 文本后追加 "xN"。开关变量复用点播的 DanmakuMergeHelper.isMergeEnabled()（同一份 prefs 持久化），
    // 直播/点播共用同一开关状态。直播弹幕为实时流，采用"单个活动组"缓冲：
    // 连续同内容弹幕合并，出现不同内容或窗口过期时立即注入合并结果，减少实时延迟
    private static final long LIVE_MERGE_WINDOW_MS = 2000L;
    private final Object mMergeLock = new Object();
    private LiveMergeGroup mActiveMergeGroup; // 当前待合并组（未注入，等待窗口关闭后统一注入）
    private final Handler mMergeFlushHandler = new Handler(Looper.getMainLooper());
    private boolean mMergeFlushScheduled = false;

    private static class LiveMergeGroup {
        String key;               // 合并分组键：内容小写+颜色+模式
        DrawableItem representative; // 组内第一条弹幕（代表），合并后 mSpannableString 追加 "xN"
        int count;                // 合并数量
        long lastTimeMs;          // 组内最后一条到达时间
        long groupStartMs;        // 组开始时间（总持有上限用）
        int fontSize;             // 追加 "xN" 的样式参数（与组内弹幕一致）
        int color;
        int alpha;
        int suffixStart;          // 已追加 "xN" 的起始位置；-1=尚未追加（首次合并时定位）
    }

    private final Runnable mMergeFlushRunnable = new Runnable() {
        @Override
        public void run() {
            synchronized (mMergeLock) {
                mMergeFlushScheduled = false;
                LiveMergeGroup g = mActiveMergeGroup;
                if (g == null) {
                    return;
                }
                long now = System.currentTimeMillis();
                // 窗口过期（2秒无同类弹幕）或总持有超时（2倍窗口，防止连续弹幕永不注入）
                if (now - g.lastTimeMs > LIVE_MERGE_WINDOW_MS
                        || now - g.groupStartMs >= LIVE_MERGE_WINDOW_MS * 2L) {
                    flushActiveMergeGroupLocked();
                    return;
                }
                scheduleMergeFlushLocked();
            }
        }
    };

    /**
     * 直播弹幕合并入口：与点播合并语义一致（内容+颜色+模式，2秒窗口）。
     * 合并时仅更新代表弹幕文本为 "内容 (N)"，窗口关闭/出现不同内容时统一注入代表弹幕。
     */
    private void processDanmakuWithMerge(DrawableItem item, String content, int color, int mode, int fontSize, int alpha) {
        if (item == null || player == null) {
            return;
        }
        if (mode < 1 || mode > 6 || content == null || content.length() == 0) {
            // 高级弹幕/空弹幕不参与合并，直接注入
            player.onDanmakuAppended(item);
            return;
        }
        long now = System.currentTimeMillis();
        String key = content.trim().toLowerCase() + "|" + color + "|" + mode;
        synchronized (mMergeLock) {
            LiveMergeGroup g = mActiveMergeGroup;
            if (g != null && g.key.equals(key) && now - g.lastTimeMs <= LIVE_MERGE_WINDOW_MS) {
                // 窗口内重复：合并计数，更新代表弹幕文本为 "内容 (N)"
                g.count++;
                g.lastTimeMs = now;
                CharSequence cs = g.representative.mSpannableString;
                if (cs instanceof SpannableStringBuilder) {
                    SpannableStringBuilder sb = (SpannableStringBuilder) cs;
                    if (g.suffixStart < 0) {
                        // 首次合并：去掉构造时追加的末尾空格（content+" "），并记录追加起点
                        if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ' ') {
                            sb.delete(sb.length() - 1, sb.length());
                        }
                        g.suffixStart = sb.length();
                    } else {
                        // 后续合并：先删除上一次追加的 "xN"，防止后缀叠加成 "内容x2x3x4"
                        sb.delete(g.suffixStart, sb.length());
                    }
                    int start = g.suffixStart;
                    sb.append(" x" + g.count);
                    sb.setSpan(new AbsoluteSizeSpan((int) (g.fontSize * baseScreenScale * mScale)), start, sb.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                    sb.setSpan(new StrokedSpan(g.alpha, (g.color & 0xffffff) | 0xff000000, Color.BLACK), start, sb.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                }
            } else {
                // 不同内容或窗口过期：先注入旧组代表，再开启新组
                flushActiveMergeGroupLocked();
                LiveMergeGroup ng = new LiveMergeGroup();
                ng.key = key;
                ng.representative = item;
                ng.count = 1;
                ng.lastTimeMs = now;
                ng.groupStartMs = now;
                ng.fontSize = fontSize;
                ng.color = color;
                ng.alpha = alpha;
                ng.suffixStart = -1;
                mActiveMergeGroup = ng;
            }
            scheduleMergeFlushLocked();
        }
    }

    /** 注入当前组的代表弹幕（合并结果），调用方需持有 mMergeLock */
    private void flushActiveMergeGroupLocked() {
        if (mActiveMergeGroup != null && player != null) {
            player.onDanmakuAppended(mActiveMergeGroup.representative);
            Log.i("DanmakuClient", "合并弹幕注入: text=(" + mActiveMergeGroup.count + ")");
        }
        mActiveMergeGroup = null;
    }

    /** 调度合并组刷新定时器（窗口到期注入），调用方需持有 mMergeLock */
    private void scheduleMergeFlushLocked() {
        if (mMergeFlushScheduled || mActiveMergeGroup == null) {
            return;
        }
        LiveMergeGroup g = mActiveMergeGroup;
        long due = Math.min(g.lastTimeMs + LIVE_MERGE_WINDOW_MS, g.groupStartMs + LIVE_MERGE_WINDOW_MS * 2L);
        long delay = Math.max(due - System.currentTimeMillis(), 0L);
        mMergeFlushScheduled = true;
        mMergeFlushHandler.postDelayed(mMergeFlushRunnable, delay);
    }

    public String sign(String msg){
        //String img_url="7cd084941338484aae1ad9425b84077c";
        //String sub_url="4932caff0ff746eab6f01bf08b70ac45";
        //MIXIN_TABLE=[46, 47, 18, 2, 53, 8, 23, 32, 15, 50, 10, 31, 58, 3, 45, 35, 27, 43, 5, 49, 33, 9, 42, 19, 29, 28, 14, 39, 12, 38, 41, 13, 37, 48, 7, 16, 24, 55, 40, 61, 26, 17, 0, 1, 60, 51, 30, 4, 22, 25, 54, 21, 56, 59, 6, 63, 57, 62, 11, 36, 20, 34, 44, 52];
        String mixin_key="ea1db124af3c7062474693fa704f4ff8";
        return ByteString.encodeUtf8(msg+mixin_key).md5().hex();
    }

    public DanmakuClient(int rid) {
        // 同步点播弹幕的"合并重复"开关（同一份 prefs 持久化），保证进入直播时状态一致
        DanmakuMergeHelper.loadFromPrefs(MainApplication.a().getApplicationContext());
        if(baseScreenScale==0){
            Context c = MainApplication.a().getApplicationContext();
            DisplayMetrics dm = c.getResources().getDisplayMetrics();
            baseScreenScale = dm.heightPixels / 15.0f / 25.0f;
            densityScale = dm.density;
            mScale = abd.f(c);
            mAlpha = (int)(abd.g(c)*255);
        }
        roomId = rid;
        ExecutorService threadPool  = Executors.newSingleThreadExecutor();
        Future<JSONObject> future = threadPool.submit(new Callable<JSONObject>() {
            @Override
            public JSONObject call() {
                long t = System.currentTimeMillis() / 1000;
                Response response = (Response) pz.a(new qa.a(Response.class)
                    .a("https://api.live.bilibili.com/xlive/web-room/v1/index/getDanmuInfo")
                    .a(true).b("Bilibili Freedoooooom/MarkII")
                    .a("Cookie","buvid3="+UUID.randomUUID().toString().toUpperCase()+"00000infoc")
                    .b("id", String.valueOf(roomId))
                    .b("ts", String.valueOf(t))
                    .b("w_rid", sign(String.format("id=%d&ts=%d",roomId,t)))
                    .a(new qb()).a(), "GET");
                return response.e();
            }
        });
        try{
            JSONObject data = future.get();
            token = data.optString("token");
            client_thread = new Thread(new Runnable(){
                @Override
                public void run() {
                    startClient("ws://" + data.optJSONArray("host_list").optJSONObject(0).optString("host") + ":"  + data.optJSONArray("host_list").optJSONObject(0).optInt("ws_port") + "/sub");
                }
            });
            client_thread.start();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public void startClient(String url) {
        String info = "{\"uid\": 0, \"roomid\": " + String.valueOf(roomId)
                + ",\"buvid\":\"00000000-0000-0000-0000-00000000000000000infoc\""
                + ", \"protover\": 2, \"platform\": \"web\", \"type\": 2, \"key\": \"" + token + "\"}";
        try {
            client = new DanmakuWebSocketClient(new URI(url), this);
            client.setConnectionLostTimeout(0);
            client.connectBlocking();
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            DataOutputStream outToServer = new DataOutputStream(baos);
            outToServer.writeInt(16 + info.length());
            outToServer.writeShort(16);
            outToServer.writeShort(0);
            outToServer.writeInt(7);
            outToServer.writeInt(0);
            outToServer.write(info.getBytes());
            client.send(baos.toByteArray());
            while (!client.isClosed()) {
                baos = new ByteArrayOutputStream();
                outToServer = new DataOutputStream(baos);
                outToServer.writeInt(16);
                outToServer.writeShort(16);
                outToServer.writeShort(0);
                outToServer.writeInt(2);
                outToServer.writeInt(0);
                client.send(baos.toByteArray());
                Thread.sleep(10000);
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void parse(byte[] data) {
        ByteArrayInputStream bis = new ByteArrayInputStream(data);
        DataInputStream dis = new DataInputStream(bis);
        try {
            while (dis.available() > 0) {
                int packetlen = dis.readInt();
                short headlen = dis.readShort();
                short version = dis.readShort();
                int operation = dis.readInt();
                int seqid = dis.readInt();
                byte[] result = new byte[packetlen - headlen];
                dis.read(result);
                if (version == 2) {
                    parse(decompress_zlib(result));
                }
                if (version == 0 && operation != 3) {
                    JSONObject info = new JSONObject(new String(result));
                    if(!info.optString("cmd").equals("DANMU_MSG"))continue;
                    JSONObject extra = new JSONObject(info.optJSONArray("info").getJSONArray(0).getJSONObject(15).optString("extra"));
                    int color = extra.optInt("color");
                    int mode = extra.optInt("mode");
                    if(mode==0)mode=1;
                    int dm_type = extra.optInt("dm_type");
                    int font_size = extra.optInt("font_size");
                    JSONObject emots = extra.optJSONObject("emots");
                    String content = extra.optString("content");

                    DrawableItem drawableItem = new DrawableItem();
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(content+" ");
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int)(font_size*baseScreenScale*mScale)), 0, content.length()+1, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                    spannableStringBuilder.setSpan(new StrokedSpan(mAlpha, (color&0xffffff)|0xff000000, Color.BLACK), 0, content.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                    if(emots!=null){
                        Iterator<String> i = emots.keys();
                        while (i.hasNext()){
                            String key =  i.next();
                            int count = emots.optJSONObject(key).optInt("count");
                            Bitmap originalBitmap = BitmapFactory.decodeStream(new URL(emots.optJSONObject(key).optString("url")).openStream());
                            float scale = font_size*baseScreenScale*densityScale*mScale/originalBitmap.getHeight();
                            Bitmap scaledBitmap = Bitmap.createScaledBitmap(originalBitmap, (int)(scale*originalBitmap.getWidth()), (int)(scale*originalBitmap.getHeight()), true);
                            int w=0;
                            for(int j=0;j<count;j++){
                                spannableStringBuilder.setSpan(new ImageSpan(scaledBitmap),content.indexOf(key,w),content.indexOf(key,w)+key.length(),Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                                w=content.indexOf(key,w)+key.length();
                            }
                        }
                    }
                    if(dm_type==1){
                        Bitmap originalBitmap = BitmapFactory.decodeStream(new URL(info.optJSONArray("info").getJSONArray(0).getJSONObject(13).optString("url")).openStream());
                        float scale = 1.5f*font_size*baseScreenScale*densityScale*mScale/originalBitmap.getHeight();
                        Bitmap scaledBitmap = Bitmap.createScaledBitmap(originalBitmap, (int)(scale*originalBitmap.getWidth()), (int)(scale*originalBitmap.getHeight()), true);
                        spannableStringBuilder.setSpan(new ImageSpan(scaledBitmap),0,content.length(),Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                    }
                    drawableItem.mSpannableString=spannableStringBuilder;
                    if(player != null){
                        // 复用点播"合并重复"开关（DanmakuMergeHelper.isMergeEnabled，同一份 prefs）：
                        // 开启时直播弹幕走合并缓冲（内容+颜色+模式，2秒窗口，追加 "xN"），否则直接注入
                        if (DanmakuMergeHelper.isMergeEnabled()) {
                            processDanmakuWithMerge(drawableItem, content, color, mode, font_size, mAlpha);
                        } else {
                            player.onDanmakuAppended(drawableItem);
                        }
                    }
                    Thread.sleep(100);

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static byte[] decompress_zlib(byte[] data) {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        InflaterOutputStream zos = new InflaterOutputStream(bos);
        try {
            zos.write(data);
            zos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return bos.toByteArray();
    }

    public void release(){
        if(client!=null && !client.isClosed()){
            try{
                client.close();
                client_thread.interrupt();
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
        // 清理合并缓冲：移除定时器、丢弃未注入的合并组，防止切台后旧房间残留弹幕注入新房间
        synchronized (mMergeLock) {
            mMergeFlushHandler.removeCallbacks(mMergeFlushRunnable);
            mMergeFlushScheduled = false;
            mActiveMergeGroup = null;
        }
        player = null;
    }

    public static class Response extends qe {
        public JSONObject e() {
            JSONObject optJSONObject;
            try {
                if (a() && (optJSONObject = new JSONObject(new String(this.b)).optJSONObject("data")) != null) {
                    return optJSONObject;
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }
    }

}
