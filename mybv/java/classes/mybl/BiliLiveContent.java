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
                int result = ((playUrlResponse) pz.a(new qa.a(playUrlResponse.class).a("https://api.live.bilibili.com/xlive/web-room/v2/index/getRoomPlayInfo").a(true).b("appkey",BiliConfig.a()).b("access_key",mg.a(MainApplication.a()).e()).b("room_id", String.valueOf(BiliLiveContent.this.mRoomId)).b("qn",String.valueOf(BiliLiveContent.this.mCurrentQuality)).b("protocol","1").b("format","1,2").b("codec","0").a(new qb()).a(),"GET")).e(BiliLiveContent.this);
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
                    JSONObject codec = optJSONObject.optJSONObject("playurl_info").optJSONObject("playurl").optJSONArray("stream").optJSONObject(0).optJSONArray("format").optJSONObject(0).optJSONArray("codec").optJSONObject(0);
                    
                    long urlParseStart = System.currentTimeMillis();
                    biliLiveContent.mPlayUrls = new ArrayList<String>();
                    for(int i=0;i<codec.optJSONArray("url_info").length();i++){
                        biliLiveContent.mPlayUrls.add(codec.optJSONArray("url_info").optJSONObject(i).optString("host")+codec.optString("base_url")+codec.optJSONArray("url_info").optJSONObject(i).optString("extra"));
                    }
                    Log.i("BiliLiveContent", "playUrlResponse.e: URL列表解析完成, 数量=" + biliLiveContent.mPlayUrls.size() + ", 耗时=" + (System.currentTimeMillis() - urlParseStart) + "ms");
                    
                    if (biliLiveContent.mPlayUrls.size() > 0) {
                        biliLiveContent.mPlayUrl = biliLiveContent.mPlayUrls.get(0);
                        Log.i("BiliLiveContent", "playUrlResponse.e: 设置默认URL: " + Uri.parse(biliLiveContent.mPlayUrl).getHost());
                    } else {
                        Log.w("BiliLiveContent", "playUrlResponse.e: URL列表为空!");
                    }
                    
                    if(biliLiveContent.mCurrentQuality != codec.optInt("current_qn"))code=1;
                    biliLiveContent.mCurrentQuality = codec.optInt("current_qn");
                    biliLiveContent.mAcceptQuality = new int[codec.optJSONArray("accept_qn").length()];
                    for(int i=0;i<codec.optJSONArray("accept_qn").length();i++){
                        biliLiveContent.mAcceptQuality[i]=codec.optJSONArray("accept_qn").optInt(i);
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