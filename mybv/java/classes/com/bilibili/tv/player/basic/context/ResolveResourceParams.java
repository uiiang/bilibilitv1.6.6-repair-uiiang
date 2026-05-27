package com.bilibili.tv.player.basic.context;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;
import android.text.TextUtils;
import android.util.Log;
import com.bilibili.lib.media.resolver.params.ResolveMediaResourceParams;
import com.bilibili.lib.media.resolver.params.ResolveResourceExtra;
import java.io.Serializable;
import tv.danmaku.android.log.BLog;

import bl.pz;
import bl.qa;
import bl.qb;
import bl.qe;
import bl.mg;
import bl.abd;
import org.json.*;
import java.util.*;
import mybl.BiliFilter;
import java.util.concurrent.*;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.player.widget.PlayerMenuRight;

/* compiled from: BL */
@Keep
/* loaded from: classes.dex */
public class ResolveResourceParams implements Parcelable, Serializable {

    public static final Parcelable.Creator<ResolveResourceParams> CREATOR = new Parcelable.Creator<ResolveResourceParams>() { // from class: com.bilibili.tv.player.basic.context.ResolveResourceParams.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ResolveResourceParams createFromParcel(Parcel parcel) {
            return new ResolveResourceParams(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ResolveResourceParams[] newArray(int i) {
            return new ResolveResourceParams[i];
        }
    };
    public static final String KEY_FLASH_RESOURCE = "flash_media_resource";
    public static final String KEY_ORIGINAL_FROM = "original_from";
    public static final String KEY_SEASON_TYPE = "season_type";
    public static final String KEY_TRACK_PATH = "track_path";
    public AdParams mAdParams;
    public long mAvid;
    public boolean mCanProjectionScreen;
    public long mCid;
    public String mCodecMode;
    public boolean mEnablePlayUrlHttps;
    public String mEpCover;
    public long mEpisodeId;
    public int mExpectedQuality;
    public String mExpectedTypeTag;
    public ExtraParams mExtraParams;
    public String mFrom;
    public boolean mHasAlias;
    public String mLink;
    public int mPage;
    public String mPageIndex;
    public String mPageTitle;
    public String mRawVid;
    public boolean mRequestFromDownloader;
    public boolean mResolveBiliCdnPlay;
    public int mRoomId;
    public String mSeasonId;
    public int mSpid;
    public long mStartPlayTime;
    public long mStartTimeMS;
    public int mTid;
    public String mType;
    public String mUserAgent;
    public String mVid;
    public String mWeb;

    public int mProgress;
    public int mDuration;
    public boolean mNoHistoryPlay;
    public String mBvid;

    public long mMid;
    
    public long mPubDate;
    public String mAuthor;
    public String mPlays;
    public String mDanmakus;
    public String mBadgeText;
    public String mBadgeBgColor;
    public boolean mHideUpIcon;
    public int mListType;
    public String mListKey;

    public JSONArray skips;
    public JSONArray clip_info_list;
    public JSONObject subtitle_info;
    public JSONObject subtitle_data;
    public volatile JSONArray view_points;

    public interface PlayInfoCallback {
        void onPlayInfoReady(JSONArray view_points);
        void onPlayInfoFailed(Exception e);
    }

    public static class JsonResponse extends qe {
        public JSONObject result() {
            try {
                if (a()) {
                    return new JSONObject(new String(this.b));
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }
        public JSONArray result2() {
            try {
                if (a()) {
                    return new JSONArray(new String(this.b));
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }
    }


    public void getSkipInfo() {
        this.skips = new JSONArray();
        if(BiliFilter.skip_categories.size()==0)return;
        
        JSONArray clipSegments = extractSkipInfoFromClipInfoList();
        JSONArray sponsorBlockSegments = fetchSponsorBlockSegments();
        
        this.skips = mergeSkipSegments(clipSegments, sponsorBlockSegments);
    }
    
    private JSONArray extractSkipInfoFromClipInfoList() {
        JSONArray result = new JSONArray();
        if (this.clip_info_list == null || this.clip_info_list.length() == 0) {
            return result;
        }
        
        Log.i("SkipInfo", "Extracting from clip_info_list, count=" + this.clip_info_list.length());
        
        for (int i = 0; i < this.clip_info_list.length(); i++) {
            JSONObject clipObj = this.clip_info_list.optJSONObject(i);
            if (clipObj == null) continue;
            
            String clipType = clipObj.optString("clipType", clipObj.optString("clip_type", "")).trim();
            String category;
            
            if ("CLIP_TYPE_OP".equals(clipType)) {
                if (!BiliFilter.skip_categories.contains("intro")) continue;
                category = "片头";
            } else if ("CLIP_TYPE_ED".equals(clipType)) {
                if (!BiliFilter.skip_categories.contains("outro")) continue;
                category = "片尾";
            } else {
                continue;
            }
            
            double startRaw = clipObj.optDouble("start", Double.NaN);
            double endRaw = clipObj.optDouble("end", Double.NaN);
            
            if (!Double.isFinite(startRaw) || !Double.isFinite(endRaw)) continue;
            
            long startMs = normalizeClipTimeToMs(startRaw);
            long endMs = normalizeClipTimeToMs(endRaw);
            
            if (endMs <= startMs) continue;
            
            try {
                JSONObject skipInfo = new JSONObject();
                skipInfo.put("type", category);
                skipInfo.put("start", startMs);
                skipInfo.put("end", endMs);
                skipInfo.put("source", "pgc_clip");
                result.put(skipInfo);
                Log.i("SkipInfo", "Added clip segment: " + category + " " + startMs + "-" + endMs);
            } catch (Exception e) {
                Log.e("SkipInfo", "Failed to create skip info: " + e.getMessage());
            }
        }
        
        return result;
    }
    
    private long normalizeClipTimeToMs(double time) {
        if (time >= 10000) {
            return (long) time;
        } else {
            return (long) (time * 1000);
        }
    }
    
    private JSONArray fetchSponsorBlockSegments() {
        JSONArray result = new JSONArray();
        
        if (isBangumi()) {
            ExecutorService threadPool = Executors.newSingleThreadExecutor();
            Future<JSONObject> future = threadPool.submit(new Callable<JSONObject>() {
                @Override
                public JSONObject call() {
                    try {
                        return ((JsonResponse) pz.a(new qa.a(JsonResponse.class)
                            .a("https://api.bilibili.com/pgc/view/web/ep/list")
                            .a(true)
                            .b("ep_id", String.valueOf(ResolveResourceParams.this.mEpisodeId))
                            .a(new qb()).a(), "GET")).result();
                    } catch (Exception e) {
                        return null;
                    }
                }
            });
            try {
                JSONObject response = future.get();
                if (response != null) {
                    JSONArray tmp_episodes = response.optJSONObject("result").optJSONArray("episodes");
                    if (tmp_episodes != null) {
                        for (int i = 0; i < tmp_episodes.length(); i++) {
                            JSONObject tmp_ep = tmp_episodes.optJSONObject(i);
                            if (tmp_ep.optInt("ep_id") != this.mEpisodeId || tmp_ep.optJSONObject("skip") == null)
                                continue;
                            if (tmp_ep.optJSONObject("skip").optJSONObject("op") != null && BiliFilter.skip_categories.contains("intro")) {
                                double start = tmp_ep.optJSONObject("skip").optJSONObject("op").optDouble("start");
                                double end = tmp_ep.optJSONObject("skip").optJSONObject("op").optDouble("end");
                                if (start < end) {
                                    JSONObject skip_info = new JSONObject();
                                    skip_info.put("type", "片头");
                                    skip_info.put("start", (long) start * 1000);
                                    skip_info.put("end", (long) end * 1000);
                                    skip_info.put("source", "pgc_ep_list");
                                    result.put(skip_info);
                                }
                            }
                            if (tmp_ep.optJSONObject("skip").optJSONObject("ed") != null && BiliFilter.skip_categories.contains("outro")) {
                                double start = tmp_ep.optJSONObject("skip").optJSONObject("ed").optDouble("start");
                                double end = tmp_ep.optJSONObject("skip").optJSONObject("ed").optDouble("end");
                                if (start < end) {
                                    JSONObject skip_info = new JSONObject();
                                    skip_info.put("type", "片尾");
                                    skip_info.put("start", (long) start * 1000);
                                    skip_info.put("end", (long) end * 1000);
                                    skip_info.put("source", "pgc_ep_list");
                                    result.put(skip_info);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            ExecutorService threadPool = Executors.newSingleThreadExecutor();
            Future<JSONArray> future = threadPool.submit(new Callable<JSONArray>() {
                @Override
                public JSONArray call() {
                    String httpsUrl = "https://bsbsb.top/api/skipSegments";
                    String httpUrl = "http://bsbsb.top/api/skipSegments";
                    String videoID = String.valueOf(ResolveResourceParams.this.mBvid);
                    String categories = new JSONArray(BiliFilter.skip_categories).toString();

                    try {
                        JSONArray result = ((JsonResponse) pz.a(new qa.a(JsonResponse.class)
                            .a(httpsUrl).a(true)
                            .b("videoID", videoID)
                            .b("categories", categories)
                            .b("actionType", "skip")
                            .a(new qb()).a(), "GET")).result2();
                        if (result != null && result.length() > 0) {
                            return result;
                        }
                    } catch (Exception e) {
                    }

                    try {
                        return ((JsonResponse) pz.a(new qa.a(JsonResponse.class)
                            .a(httpUrl).a(true)
                            .b("videoID", videoID)
                            .b("categories", categories)
                            .b("actionType", "skip")
                            .a(new qb()).a(), "GET")).result2();
                    } catch (Exception e) {
                        return null;
                    }
                }
            });
            try {
                JSONArray datas = future.get();
                if (datas != null) {
                    for (int i = 0; i < datas.length(); i++) {
                        JSONObject item = datas.optJSONObject(i);
                        JSONArray segment = item.optJSONArray("segment");
                        if (segment == null || segment.length() < 2) continue;
                        
                        JSONObject skip_info = new JSONObject();
                        String c = item.optString("category");
                        if (c.equals("intro")) skip_info.put("type", "片头");
                        else if (c.equals("outro")) skip_info.put("type", "片尾");
                        else if (c.equals("sponsor")) skip_info.put("type", "硬广");
                        else continue;
                        
                        skip_info.put("start", (long) segment.optDouble(0) * 1000);
                        skip_info.put("end", (long) segment.optDouble(1) * 1000);
                        skip_info.put("source", "sponsorblock");
                        result.put(skip_info);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        return result;
    }
    
    private JSONArray mergeSkipSegments(JSONArray clipSegments, JSONArray sponsorBlockSegments) {
        LinkedHashMap<String, JSONObject> merged = new LinkedHashMap<>();
        
        for (int i = 0; i < clipSegments.length(); i++) {
            JSONObject seg = clipSegments.optJSONObject(i);
            if (seg == null) continue;
            String id = generateSegmentId(seg, "pgc");
            if (!merged.containsKey(id)) {
                merged.put(id, seg);
            }
        }
        
        for (int i = 0; i < sponsorBlockSegments.length(); i++) {
            JSONObject seg = sponsorBlockSegments.optJSONObject(i);
            if (seg == null) continue;
            String id = generateSegmentId(seg, "sb");
            if (!merged.containsKey(id)) {
                merged.put(id, seg);
            }
        }
        
        JSONArray result = new JSONArray();
        List<JSONObject> sortedList = new ArrayList<>(merged.values());
        Collections.sort(sortedList, new Comparator<JSONObject>() {
            @Override
            public int compare(JSONObject o1, JSONObject o2) {
                long s1 = o1.optLong("start", 0);
                long s2 = o2.optLong("start", 0);
                return Long.compare(s1, s2);
            }
        });
        
        for (JSONObject seg : sortedList) {
            result.put(seg);
        }
        
        Log.i("SkipInfo", "Merged segments: clip=" + clipSegments.length() + 
              ", sponsorBlock=" + sponsorBlockSegments.length() + 
              ", total=" + result.length());
        
        return result;
    }
    
    private String generateSegmentId(JSONObject seg, String source) {
        String type = seg.optString("type", "unknown");
        long start = seg.optLong("start", 0);
        long end = seg.optLong("end", 0);
        return source + ":" + type + ":" + start + "-" + end;
    }
    
    public void updateSkipInfoFromClipInfoList() {
        if (this.clip_info_list == null || this.clip_info_list.length() == 0) {
            return;
        }
        
        Log.i("SkipInfo", "updateSkipInfoFromClipInfoList: clip_info_list count=" + this.clip_info_list.length());
        
        JSONArray clipSegments = extractSkipInfoFromClipInfoList();
        
        JSONArray existingSegments = this.skips != null ? this.skips : new JSONArray();
        
        LinkedHashMap<String, JSONObject> merged = new LinkedHashMap<>();
        
        for (int i = 0; i < clipSegments.length(); i++) {
            JSONObject seg = clipSegments.optJSONObject(i);
            if (seg == null) continue;
            String id = generateSegmentId(seg, "pgc");
            merged.put(id, seg);
        }
        
        for (int i = 0; i < existingSegments.length(); i++) {
            JSONObject seg = existingSegments.optJSONObject(i);
            if (seg == null) continue;
            String source = seg.optString("source", "unknown");
            String id = generateSegmentId(seg, source.equals("pgc_clip") ? "pgc" : "sb");
            if (!merged.containsKey(id)) {
                merged.put(id, seg);
            }
        }
        
        JSONArray result = new JSONArray();
        List<JSONObject> sortedList = new ArrayList<>(merged.values());
        Collections.sort(sortedList, new Comparator<JSONObject>() {
            @Override
            public int compare(JSONObject o1, JSONObject o2) {
                long s1 = o1.optLong("start", 0);
                long s2 = o2.optLong("start", 0);
                return Long.compare(s1, s2);
            }
        });
        
        for (JSONObject seg : sortedList) {
            result.put(seg);
        }
        
        this.skips = result;
        
        Log.i("SkipInfo", "Updated skips from clip_info_list: clip=" + clipSegments.length() + 
              ", existing=" + existingSegments.length() + 
              ", total=" + result.length());
    }

    public void initPlayInfo() {
        initPlayInfo(null);
    }

    public void initPlayInfo(final PlayInfoCallback callback) {
        this.getSkipInfo();
        
        try{
            ExecutorService threadPool  = Executors.newSingleThreadExecutor();
            JSONObject playerData = threadPool.submit(new Callable<JSONObject>() {
                @Override
                public JSONObject call() {
                    return ((JsonResponse) pz.a(new qa.a(JsonResponse.class).a("https://api.bilibili.com/x/player/wbi/v2").a(true).a("Cookie","SESSDATA="+mg.a(MainApplication.a()).getSESSDATA()).b("").b("aid", String.valueOf(ResolveResourceParams.this.mAvid)).b("cid", String.valueOf(ResolveResourceParams.this.mCid)).a(new qb()).a(), "GET")).result();
                }
            }).get();
            
            this.subtitle_info = playerData.optJSONObject("data").optJSONObject("subtitle");
            
            JSONArray viewPoints = playerData.optJSONObject("data").optJSONArray("view_points");
            if (viewPoints != null && viewPoints.length() > 0) {
                this.view_points = viewPoints;
                if (callback != null) {
                    callback.onPlayInfoReady(viewPoints);
                }
            }
            
            int subtitle_id = getCachedSubtitleId() - 1;
            // Log.i("SubtitleCache", "initPlayInfo: cached subtitle_id=" + (subtitle_id + 1) + ", adjusted=" + subtitle_id);
            if(subtitle_id==-1 || this.subtitle_info.optJSONArray("subtitles").length()==0){this.subtitle_data=null;return;}
            if(subtitle_id<-1 && this.subtitle_info.optJSONArray("subtitles").optJSONObject(0).optString("lan").startsWith("ai-"))return;
            if(this.subtitle_info != null)this.subtitle_data = threadPool.submit(new Callable<JSONObject>() {
                @Override
                public JSONObject call() {
                    return ((JsonResponse) pz.a(new qa.a(JsonResponse.class).a("https:"+ResolveResourceParams.this.subtitle_info.optJSONArray("subtitles").optJSONObject(subtitle_id<0?0:subtitle_id).optString("subtitle_url")).a(true).a(new qb()).a(), "GET")).result();
                }
            }).get();
        }catch(Exception e){
            e.printStackTrace();
            if (callback != null) {
                callback.onPlayInfoFailed(e);
            }
        }
    }

    private int getCachedSubtitleId() {
        int[] settings = null;
        
        if (!android.text.TextUtils.isEmpty(this.mListKey)) {
            String listKey = "subtitle_list_" + this.mListKey;
            settings = abd.getSubtitleSettings(MainApplication.a(), listKey);
            // Log.i("SubtitleCache", "getCachedSubtitleId: listKey=" + listKey + ", settings=" + (settings != null ? settings[0] : "null"));
        }
        
        if (settings == null) {
            String videoKey = abd.getVideoSubtitleKey(this.mAvid);
            settings = abd.getSubtitleSettings(MainApplication.a(), videoKey);
            // Log.i("SubtitleCache", "getCachedSubtitleId: videoKey=" + videoKey + ", settings=" + (settings != null ? settings[0] : "null"));
        }
        
        return settings != null ? settings[0] : 0;
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public interface ExtraParams extends Parcelable {
        <T> T a(String str, T t);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ResolveResourceParams() {
        this.mExtraParams = new BaseExtraParams();
    }

    public ResolveResourceParams(String str, long i, String str2, String str3, String str4, boolean z, long i2, int i3, String str5, int i4, String str6) {
        this.mExtraParams = new BaseExtraParams();
        this.mFrom = str;
        this.mCid = i;
        this.mVid = str2;
        this.mLink = str4;
        this.mRawVid = str3;
        this.mHasAlias = z;
        this.mAvid = i2;
        this.mPage = i3;
        this.mPageTitle = str5;
        this.mTid = i4;
        this.mType = str6;
    }

    public final boolean isEmptyCid() {
        return this.mCid <= 0;
    }

    public final boolean isLive() {
        return "live".equalsIgnoreCase(this.mFrom) || isRound();
    }

    public final boolean isBangumi() {
        return this.mEpisodeId > 0;
    }

    public final boolean isClip() {
        return "clip".equalsIgnoreCase(this.mFrom);
    }

    public final long getLiveCid() {
        if (isRound()) {
            return this.mRoomId;
        }
        return this.mCid;
    }

    public final boolean isRound() {
        return this.mRoomId > 0;
    }

    public boolean isNecessaryParamsCompletly() {
        return this.mCid > 0 && !TextUtils.isEmpty(this.mFrom);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mFrom);
        parcel.writeLong(this.mCid);
        parcel.writeString(this.mVid);
        parcel.writeString(this.mLink);
        parcel.writeString(this.mRawVid);
        parcel.writeString(this.mPageIndex);
        parcel.writeString(this.mPageTitle);
        parcel.writeByte(this.mHasAlias ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mSpid);
        parcel.writeLong(this.mAvid);
        parcel.writeInt(this.mPage);
        parcel.writeInt(this.mTid);
        parcel.writeByte(this.mRequestFromDownloader ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.mEpisodeId);
        parcel.writeString(this.mSeasonId);
        parcel.writeString(this.mEpCover);
        parcel.writeByte(this.mResolveBiliCdnPlay ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mExpectedQuality);
        parcel.writeString(this.mExpectedTypeTag);
        parcel.writeString(this.mUserAgent);
        parcel.writeString(this.mWeb);
        parcel.writeString(this.mCodecMode);
        parcel.writeParcelable(this.mExtraParams, i);
        parcel.writeByte(this.mEnablePlayUrlHttps ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.mAdParams, i);
        parcel.writeString(this.mType);

        parcel.writeInt(this.mProgress);
        parcel.writeString(this.mBvid);
        parcel.writeByte(this.mNoHistoryPlay ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mDuration);
        
        parcel.writeLong(this.mMid);
        
        parcel.writeLong(this.mPubDate);
        parcel.writeString(this.mAuthor);
        parcel.writeString(this.mPlays);
        parcel.writeString(this.mDanmakus);
        parcel.writeString(this.mBadgeText);
        parcel.writeString(this.mBadgeBgColor);
        parcel.writeByte(this.mHideUpIcon ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mListKey);
        
        if (this.view_points != null) {
            parcel.writeString(this.view_points.toString());
        } else {
            parcel.writeString("");
        }
    }

    protected ResolveResourceParams(Parcel parcel) {
        this.mExtraParams = new BaseExtraParams();
        this.mFrom = parcel.readString();
        this.mCid = parcel.readLong();
        this.mVid = parcel.readString();
        this.mLink = parcel.readString();
        this.mRawVid = parcel.readString();
        this.mPageIndex = parcel.readString();
        this.mPageTitle = parcel.readString();
        this.mHasAlias = parcel.readByte() != 0;
        this.mSpid = parcel.readInt();
        this.mAvid = parcel.readLong();
        this.mPage = parcel.readInt();
        this.mTid = parcel.readInt();
        this.mRequestFromDownloader = parcel.readByte() != 0;
        this.mEpisodeId = parcel.readLong();
        this.mSeasonId = parcel.readString();
        this.mEpCover = parcel.readString();
        this.mResolveBiliCdnPlay = parcel.readByte() != 0;
        this.mExpectedQuality = parcel.readInt();
        this.mExpectedTypeTag = parcel.readString();
        this.mUserAgent = parcel.readString();
        this.mWeb = parcel.readString();
        this.mCodecMode = parcel.readString();
        this.mExtraParams = (ExtraParams) parcel.readParcelable(ExtraParams.class.getClassLoader());
        this.mEnablePlayUrlHttps = parcel.readByte() != 0;
        this.mAdParams = (AdParams) parcel.readParcelable(AdParams.class.getClassLoader());
        this.mType = parcel.readString();

        this.mProgress = parcel.readInt();
        this.mBvid = parcel.readString();
        this.mNoHistoryPlay = parcel.readByte() != 0;
        this.mDuration = parcel.readInt();
        
        this.mMid = parcel.readLong();
        
        this.mPubDate = parcel.readLong();
        this.mAuthor = parcel.readString();
        this.mPlays = parcel.readString();
        this.mDanmakus = parcel.readString();
        this.mBadgeText = parcel.readString();
        this.mBadgeBgColor = parcel.readString();
        this.mHideUpIcon = parcel.readByte() != 0;
        this.mListKey = parcel.readString();
        
        String viewPointsStr = parcel.readString();
        if (!TextUtils.isEmpty(viewPointsStr)) {
            try {
                this.view_points = new JSONArray(viewPointsStr);
            } catch (JSONException e) {
                this.view_points = null;
            }
        }
    }

    public ResolveMediaResourceParams obtainMediaResourceParams() {
        return new ResolveMediaResourceParams(this.mAvid, this.mCid, this.mExpectedQuality, this.mExpectedTypeTag, this.mFrom, this.mRequestFromDownloader, this.mType);
    }

    public ResolveResourceExtra obtainResourceExtra() {
        ResolveResourceExtra resolveResourceExtra = new ResolveResourceExtra(this.mHasAlias, this.mLink, this.mRawVid, this.mVid, this.mWeb, this.mEpisodeId, this.mAvid, (String) this.mExtraParams.a(KEY_TRACK_PATH, "0"));
        resolveResourceExtra.b(((Integer) this.mExtraParams.a(KEY_SEASON_TYPE, -1)).intValue());
        return resolveResourceExtra;
    }

    public long getSeasonId() {
        if (TextUtils.isEmpty(this.mSeasonId)) {
            return 0L;
        }
        try {
            return Long.parseLong(this.mSeasonId);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public int getQualityInt() {
        int qualityFromTypeTag;
        int i = this.mExpectedQuality;
        return (TextUtils.isEmpty(this.mExpectedTypeTag) || (qualityFromTypeTag = getQualityFromTypeTag(this.mExpectedTypeTag)) < 0) ? i : qualityFromTypeTag;
    }

    public static int getQualityFromTypeTag(String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("\\.");
            if (split.length > 0) {
                try {
                    return Integer.parseInt(String.valueOf(split[split.length - 1]));
                } catch (NumberFormatException unused) {
                    BLog.w("unknown quality from type tag.");
                }
            }
        }
        return -1;
    }
}