package mybl;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.annotation.JSONField;

import bl.mg;

import bl.pz;
import bl.qa;
import bl.qb;
import bl.qe;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.*;
import java.util.concurrent.*;
import com.bilibili.api.BiliConfig;
import com.bilibili.tv.MainApplication;
import com.alibaba.fastjson.annotation.JSONField;

public class BiliLiveContent implements Parcelable {
    public static final Parcelable.Creator<BiliLiveContent> CREATOR = new Parcelable.Creator<BiliLiveContent>() {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BiliLiveContent createFromParcel(Parcel parcel) {
            return new BiliLiveContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BiliLiveContent[] newArray(int i) {
            return new BiliLiveContent[i];
        }
    };
    public String mArea;
    public int mAreaId;
    public String mCorner;
    @JSONField(name = "cover")
    public String mCover;
    public int mIndex;
    public boolean mIsRound;
    public int mIsTv;
    @JSONField(name = "online")
    public long mOnline;
    @JSONField(name = "uid")
    public long mUid;
    @JSONField(name = "uname")
    public String mUname;
    @JSONField(name = "face")
    public String mFace;
    public long mParsedTime;
    public String mPlayUrl;
    public List<String> mPlayUrls;
    public String mRealUrl;
    @JSONField(name = "roomid")
    public int mRoomId;
    @JSONField(name = "title")
    public String mTitle;

    public int[] mAcceptQuality;
    public int mCurrentQuality = 10000;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean hasPlayUrl() {
        return TextUtils.isEmpty(this.mPlayUrl);
    }

    public boolean hasPlayUrlResolved() {
        return TextUtils.isEmpty(this.mRealUrl);
    }

    public String toString() {
        return "BiliLive{roomId=" + this.mRoomId + ", title='" + this.mTitle + "'}";
    }

    public BiliLiveContent() {
        this.mParsedTime = System.currentTimeMillis();
    }

    public int getPlayUrl() {
        Log.i("BiliLiveContent", "getPlayUrl: 开始获取播放地址, roomId=" + this.mRoomId);
        long startTime = System.currentTimeMillis();
        ExecutorService threadPool  = Executors.newSingleThreadExecutor();
        Future<Integer> future = threadPool.submit(new Callable<Integer>() {
            @Override
            public Integer call() {
                long apiStart = System.currentTimeMillis();
                Log.i("BiliLiveContent", "getPlayUrl: 开始API请求");
                int result = ((playUrlResponse) pz.a(new qa.a(playUrlResponse.class).a("https://api.live.bilibili.com/xlive/web-room/v2/index/getRoomPlayInfo").a(true).b("appkey",BiliConfig.a()).b("access_key",mg.a(MainApplication.a()).e()).b("room_id", String.valueOf(BiliLiveContent.this.mRoomId)).b("qn",String.valueOf(BiliLiveContent.this.mCurrentQuality)).b("protocol","0,1").b("format","0,1,2").b("codec","0,1").a(new qb()).a(),"GET")).e(BiliLiveContent.this);
                Log.i("BiliLiveContent", "getPlayUrl: API请求完成, 耗时=" + (System.currentTimeMillis() - apiStart) + "ms, result=" + result);
                return result;
            }
        });
        try {
            int result = future.get();
            Log.i("BiliLiveContent", "getPlayUrl: 完成, 总耗时=" + (System.currentTimeMillis() - startTime) + "ms, mPlayUrl=" + (this.mPlayUrl != null ? this.mPlayUrl.substring(0, Math.min(50, this.mPlayUrl.length())) : "null"));
            return result;
        } catch (Exception e){
            Log.e("BiliLiveContent", "getPlayUrl: 异常, " + e.getMessage());
            return -1;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mArea);
        parcel.writeInt(this.mAreaId);
        parcel.writeString(this.mCover);
        parcel.writeLong(this.mOnline);
        parcel.writeLong(this.mUid);
        parcel.writeString(this.mUname);
        parcel.writeString(this.mFace);
        parcel.writeLong(this.mParsedTime);
        parcel.writeString(this.mPlayUrl);
        parcel.writeString(this.mRealUrl);
        parcel.writeInt(this.mRoomId);
        parcel.writeString(this.mTitle);
        
        parcel.writeInt(this.mCurrentQuality);
        parcel.writeSerializable(this.mAcceptQuality);
    }

    protected BiliLiveContent(Parcel parcel) {
        this.mArea = parcel.readString();
        this.mAreaId = parcel.readInt();
        this.mCover = parcel.readString();
        this.mOnline = parcel.readLong();
        this.mUid = parcel.readLong();
        this.mUname = parcel.readString();
        this.mFace = parcel.readString();
        this.mParsedTime = parcel.readLong();
        this.mPlayUrl = parcel.readString();
        this.mRealUrl = parcel.readString();
        this.mRoomId = parcel.readInt();
        this.mTitle = parcel.readString();

        this.mCurrentQuality = parcel.readInt();
        this.mAcceptQuality = (int[])parcel.readSerializable();
    }

    public static class playUrlResponse extends qe {
        public int e(BiliLiveContent biliLiveContent) {
            long parseStart = System.currentTimeMillis();
            Log.i("BiliLiveContent", "playUrlResponse.e: 开始解析响应");
            JSONObject optJSONObject;
            try {
                if (a() && (optJSONObject = new JSONObject(new String(this.b)).optJSONObject("data")) != null) {
                    Log.i("BiliLiveContent", "playUrlResponse.e: data解析成功");
                    int code=0;
                    
                    JSONArray streamArr = optJSONObject.optJSONObject("playurl_info").optJSONObject("playurl").optJSONArray("stream");
                    if (streamArr == null || streamArr.length() == 0) {
                        Log.e("BiliLiveContent", "playUrlResponse.e: stream数组为空");
                        return -1;
                    }
                    
                    String[] protocolOrder = {"http_stream", "http_hls"};
                    String[] formatOrderForStream = {"flv", "fmp4", "ts"};
                    String[] formatOrderForHls = {"fmp4", "ts", "flv"};
                    String[] codecOrder = {"avc", "hevc"};
                    
                    biliLiveContent.mPlayUrls = new ArrayList<String>();
                    JSONObject foundCodec = null;
                    String foundProtocol = "";
                    String foundFormat = "";
                    String foundCodecName = "";
                    
                    for (String protocol : protocolOrder) {
                        for (int i = 0; i < streamArr.length(); i++) {
                            JSONObject stream = streamArr.optJSONObject(i);
                            if (stream == null) continue;
                            String protocolName = stream.optString("protocol_name", "").toLowerCase();
                            if (!protocolName.equals(protocol.toLowerCase())) continue;
                            
                            JSONArray formatArr = stream.optJSONArray("format");
                            if (formatArr == null) continue;
                            
                            String[] formatOrder = protocol.equalsIgnoreCase("http_stream") ? formatOrderForStream : formatOrderForHls;
                            
                            for (String format : formatOrder) {
                                for (int j = 0; j < formatArr.length(); j++) {
                                    JSONObject fmt = formatArr.optJSONObject(j);
                                    if (fmt == null) continue;
                                    String formatName = fmt.optString("format_name", "").toLowerCase();
                                    if (!formatName.equals(format.toLowerCase())) continue;
                                    
                                    JSONArray codecArr = fmt.optJSONArray("codec");
                                    if (codecArr == null) continue;
                                    
                                    for (String codec : codecOrder) {
                                        for (int k = 0; k < codecArr.length(); k++) {
                                            JSONObject c = codecArr.optJSONObject(k);
                                            if (c == null) continue;
                                            String codecName = c.optString("codec_name", "").toLowerCase();
                                            if (!codecName.equals(codec.toLowerCase())) continue;
                                            
                                            String baseUrl = c.optString("base_url", "");
                                            JSONArray urlInfo = c.optJSONArray("url_info");
                                            if (baseUrl.isEmpty() || urlInfo == null || urlInfo.length() == 0) continue;
                                            
                                            foundCodec = c;
                                            foundProtocol = protocolName;
                                            foundFormat = formatName;
                                            foundCodecName = codecName;
                                            Log.i("BiliLiveContent", "playUrlResponse.e: 找到最佳组合: protocol=" + foundProtocol + ", format=" + foundFormat + ", codec=" + foundCodecName);
                                            break;
                                        }
                                        if (foundCodec != null) break;
                                    }
                                    if (foundCodec != null) break;
                                }
                                if (foundCodec != null) break;
                            }
                            if (foundCodec != null) break;
                        }
                        if (foundCodec != null) break;
                    }
                    
                    if (foundCodec == null) {
                        Log.w("BiliLiveContent", "playUrlResponse.e: 未找到合适的流, 尝试使用第一个可用");
                        JSONObject stream = streamArr.optJSONObject(0);
                        if (stream != null) {
                            JSONArray formatArr = stream.optJSONArray("format");
                            if (formatArr != null && formatArr.length() > 0) {
                                JSONObject fmt = formatArr.optJSONObject(0);
                                if (fmt != null) {
                                    JSONArray codecArr = fmt.optJSONArray("codec");
                                    if (codecArr != null && codecArr.length() > 0) {
                                        foundCodec = codecArr.optJSONObject(0);
                                        foundProtocol = stream.optString("protocol_name", "unknown");
                                        foundFormat = fmt.optString("format_name", "unknown");
                                        foundCodecName = foundCodec.optString("codec_name", "unknown");
                                        Log.i("BiliLiveContent", "playUrlResponse.e: 使用第一个可用: protocol=" + foundProtocol + ", format=" + foundFormat + ", codec=" + foundCodecName);
                                    }
                                }
                            }
                        }
                    }
                    
                    if (foundCodec != null) {
                        String baseUrl = foundCodec.optString("base_url", "");
                        JSONArray urlInfo = foundCodec.optJSONArray("url_info");
                        
                        for (int i = 0; i < urlInfo.length(); i++) {
                            JSONObject info = urlInfo.optJSONObject(i);
                            if (info == null) continue;
                            String host = info.optString("host", "");
                            String extra = info.optString("extra", "");
                            if (!host.isEmpty() && !baseUrl.isEmpty()) {
                                biliLiveContent.mPlayUrls.add(host + baseUrl + extra);
                            }
                        }
                        
                        Log.i("BiliLiveContent", "playUrlResponse.e: URL列表解析完成, 数量=" + biliLiveContent.mPlayUrls.size() + ", protocol=" + foundProtocol + ", format=" + foundFormat);
                        
                        if (biliLiveContent.mPlayUrls.size() > 0) {
                            biliLiveContent.mPlayUrl = biliLiveContent.mPlayUrls.get(0);
                            Log.i("BiliLiveContent", "playUrlResponse.e: 设置默认URL: " + Uri.parse(biliLiveContent.mPlayUrl).getHost());
                        } else {
                            Log.w("BiliLiveContent", "playUrlResponse.e: URL列表为空!");
                        }
                        
                        if (biliLiveContent.mCurrentQuality != foundCodec.optInt("current_qn")) code = 1;
                        biliLiveContent.mCurrentQuality = foundCodec.optInt("current_qn");
                        JSONArray acceptQn = foundCodec.optJSONArray("accept_qn");
                        if (acceptQn != null) {
                            biliLiveContent.mAcceptQuality = new int[acceptQn.length()];
                            for (int i = 0; i < acceptQn.length(); i++) {
                                biliLiveContent.mAcceptQuality[i] = acceptQn.optInt(i);
                            }
                        }
                    } else {
                        Log.e("BiliLiveContent", "playUrlResponse.e: 未找到任何可用的流");
                        return -1;
                    }
                    
                    Log.i("BiliLiveContent", "playUrlResponse.e: 解析完成, 总耗时=" + (System.currentTimeMillis() - parseStart) + "ms");
                    return code;
                }
                Log.e("BiliLiveContent", "playUrlResponse.e: data为空或解析失败");
                return -1;
            } catch (Exception e) {
                Log.e("BiliLiveContent", "playUrlResponse.e: 异常, " + e.getMessage());
                return -1;
            }
        }
    }

}