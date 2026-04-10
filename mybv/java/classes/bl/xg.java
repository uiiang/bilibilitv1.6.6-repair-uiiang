package bl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.bilibili.bangumi.api.newbean.BangumiEpisodeEx;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.player.PlayerActivity;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import java.util.List;

import com.alibaba.fastjson.JSONObject;

/* compiled from: BL */
/* loaded from: classes.dex */
public class xg {
    public static void a(int i, Context context, String str, BangumiEpisodeEx bangumiEpisodeEx, List<BangumiEpisodeEx> list) {
        context.startActivity(b(context, str, bangumiEpisodeEx, list, -1, i));
    }

    public static void a(Context context, String str, BangumiEpisodeEx bangumiEpisodeEx, List<BangumiEpisodeEx> list, int i, int i2) {
        context.startActivity(b(context, str, bangumiEpisodeEx, list, i, i2));
    }

    public static Intent b(Context context, @Nullable String str, @NonNull BangumiEpisodeEx bangumiEpisodeEx, @Nullable List<BangumiEpisodeEx> list, int i, int i2) {
        PlayerParams a = aaj.a(context);
        ResolveResourceParams obtainResolveParams = a.mVideoParams.obtainResolveParams();
        yr.b(a, bangumiEpisodeEx.long_title);
        yr.a(a, bangumiEpisodeEx.cover);
        yr.a(a, i2);
        obtainResolveParams.mAvid = bangumiEpisodeEx.aid;
        if (str == null) {
            str = Integer.toString(Integer.MIN_VALUE);
        }
        obtainResolveParams.mSeasonId = str;
        obtainResolveParams.mEpisodeId = bangumiEpisodeEx.epid;
        obtainResolveParams.mCid = bangumiEpisodeEx.cid;
        obtainResolveParams.mPageTitle = bangumiEpisodeEx.long_title;
        obtainResolveParams.mPageIndex = bangumiEpisodeEx.index;
        obtainResolveParams.mFrom = bangumiEpisodeEx.from;
        obtainResolveParams.mRawVid = bangumiEpisodeEx.vid;
        obtainResolveParams.mEpCover = bangumiEpisodeEx.cover;
        
        String vtText = getVtText(bangumiEpisodeEx);
        obtainResolveParams.mAuthor = vtText;
        obtainResolveParams.mHideUpIcon = !TextUtils.isEmpty(vtText);
        obtainResolveParams.mListType = 1;
        if (bangumiEpisodeEx.stat != null) {
            obtainResolveParams.mPlays = String.valueOf(bangumiEpisodeEx.stat.play);
            obtainResolveParams.mDanmakus = String.valueOf(bangumiEpisodeEx.stat.danmakus);
        }
        if (bangumiEpisodeEx.badge != null && !bangumiEpisodeEx.badge.isEmpty()) {
            obtainResolveParams.mBadgeText = bangumiEpisodeEx.badge;
        }

        if(bangumiEpisodeEx.progress!=null && bangumiEpisodeEx.progress.lastEpId==obtainResolveParams.mEpisodeId)obtainResolveParams.mProgress=(int)bangumiEpisodeEx.progress.lastEpProgress;

        if (i > 0) {
            obtainResolveParams.mExpectedQuality = i;
        }
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            ResolveResourceParams[] obtainResolveParamsArray = a.mVideoParams.obtainResolveParamsArray(size);
            for (int i3 = 0; i3 < size; i3++) {
                ResolveResourceParams resolveResourceParams = new ResolveResourceParams();
                BangumiEpisodeEx bangumiEpisodeEx2 = list.get(i3);
                if (bangumiEpisodeEx2.epid == a.mVideoParams.mResolveParams.mEpisodeId) {
                    a.mVideoParams.mResolveParams.mPage = i3;
                    obtainResolveParamsArray[i3] = a.mVideoParams.mResolveParams;
                } else {
                    resolveResourceParams.mPageIndex = bangumiEpisodeEx2.index;
                    resolveResourceParams.mSeasonId = a.mVideoParams.mResolveParams.mSeasonId;
                    resolveResourceParams.mAvid = bangumiEpisodeEx2.aid;
                    resolveResourceParams.mEpisodeId = bangumiEpisodeEx2.epid;
                    resolveResourceParams.mPageTitle = bangumiEpisodeEx2.long_title;
                    resolveResourceParams.mCid = bangumiEpisodeEx2.cid;
                    resolveResourceParams.mPage = i3;
                    resolveResourceParams.mFrom = bangumiEpisodeEx.from;
                    resolveResourceParams.mRawVid = bangumiEpisodeEx2.vid;
                    resolveResourceParams.mEpCover = bangumiEpisodeEx2.cover;
                    
                    String vtText2 = getVtText(bangumiEpisodeEx2);
                    resolveResourceParams.mAuthor = vtText2;
                    resolveResourceParams.mHideUpIcon = !TextUtils.isEmpty(vtText2);
                    resolveResourceParams.mListType = 1;
                    if (bangumiEpisodeEx2.stat != null) {
                        resolveResourceParams.mPlays = String.valueOf(bangumiEpisodeEx2.stat.play);
                        resolveResourceParams.mDanmakus = String.valueOf(bangumiEpisodeEx2.stat.danmakus);
                    }
                    if (bangumiEpisodeEx2.badge != null && !bangumiEpisodeEx2.badge.isEmpty()) {
                        resolveResourceParams.mBadgeText = bangumiEpisodeEx2.badge;
                    }
                    resolveResourceParams.mExpectedQuality = obtainResolveParams.mExpectedQuality;
                    resolveResourceParams.mNoHistoryPlay = VideoDetailActivity.sNoHistoryPlayMode;
                    obtainResolveParamsArray[i3] = resolveResourceParams;
                }
            }
        }
        return PlayerActivity.a(context, a);
    }

    public static void a(Context context, BiliVideoDetail biliVideoDetail, BiliVideoDetail.Page page, Bundle bundle) {
        b(context, biliVideoDetail, page, bundle, -1);
    }

    public static void a(Activity activity, BiliVideoDetail biliVideoDetail, BiliVideoDetail.Page page, Bundle bundle, int requestCode, int progress) {
        b(activity, biliVideoDetail, page, bundle, -1, requestCode, progress);
    }

    public static void a(Context context, BiliVideoDetail biliVideoDetail, BiliVideoDetail.Page page, Bundle bundle, int i) {
        b(context, biliVideoDetail, page, bundle, i);
    }

    public static void b(Context context, BiliVideoDetail biliVideoDetail, BiliVideoDetail.Page page, Bundle bundle, int i) {
        PlayerParams a = aaj.a(context);
        yr.a(a, biliVideoDetail.mCover);
        yr.c(a, biliVideoDetail.getAuthor());
        yr.b(a, biliVideoDetail.mTitle);

        biliVideoDetail.getUGCseason();

        ResolveResourceParams obtainResolveParams = a.mVideoParams.obtainResolveParams();
        obtainResolveParams.mSpid = biliVideoDetail.getSpid();
        obtainResolveParams.mAvid = biliVideoDetail.mAvid;
        obtainResolveParams.mPage = page.mPage;
        obtainResolveParams.mFrom = page.mFrom;
        obtainResolveParams.mPageTitle = page.mTitle;
        obtainResolveParams.mVid = page.mVid;
        obtainResolveParams.mRawVid = page.mRawVid;
        obtainResolveParams.mCid = page.mCid;
        obtainResolveParams.mWeb = page.mWebLink;
        obtainResolveParams.mHasAlias = page.mHasAlias;
        obtainResolveParams.mTid = biliVideoDetail.mTid;
        obtainResolveParams.mDuration = page.duration;

        if (page.mBvid != null && !page.mBvid.isEmpty()) {
            obtainResolveParams.mBvid = page.mBvid;
        } else {
            obtainResolveParams.mBvid = biliVideoDetail.mBvid;
        }
        obtainResolveParams.mNoHistoryPlay = VideoDetailActivity.sNoHistoryPlayMode;
        if (i > 0) {
            obtainResolveParams.mExpectedQuality = i;
        }
        if (biliVideoDetail.mBangumiInfo != null) {
            obtainResolveParams.mSeasonId = biliVideoDetail.mBangumiInfo.mSeasonId + "";
        }
        if (page.mEpisodeId > 0) {
            obtainResolveParams.mEpisodeId = page.mEpisodeId;
            obtainResolveParams.mSeasonId = page.mSeasonId;
            obtainResolveParams.mEpCover = page.cover != null ? page.cover : page.mEpCover;
        }
        if (TextUtils.isEmpty(yr.a(a))) {
            yr.b(a, page.mTitle);
        }

        if (biliVideoDetail.mPageList != null && biliVideoDetail.mPageList.size() > 1) {
            boolean isPgc = "bangumi".equals(page.mFrom) || "movie".equals(page.mFrom);
            int pageListType = isPgc ? 1 : 2;
            Log.i("xg", "mPageList分支 | isPgc=" + isPgc + " | page.mFrom=" + page.mFrom + " | pageListType=" + pageListType);
            int size = biliVideoDetail.mPageList.size();
            ResolveResourceParams[] obtainResolveParamsArray = a.mVideoParams.obtainResolveParamsArray(size);
            String videoCover = biliVideoDetail.mCover;
            long videoPubDate = biliVideoDetail.mCreatedTimestamp;
            for (int i3 = 0; i3 < size; i3++) {
                BiliVideoDetail.Page page2 = biliVideoDetail.mPageList.get(i3);
                ResolveResourceParams resolveResourceParams = new ResolveResourceParams();
                resolveResourceParams.mSpid = biliVideoDetail.getSpid();
                resolveResourceParams.mTid = page2.mTid;
                resolveResourceParams.mAvid = biliVideoDetail.mAvid;
                resolveResourceParams.mPage = page2.mPage;
                resolveResourceParams.mFrom = page2.mFrom;
                resolveResourceParams.mVid = page2.mVid;
                resolveResourceParams.mRawVid = page2.mRawVid;
                resolveResourceParams.mCid = page2.mCid;
                resolveResourceParams.mWeb = page2.mWebLink;
                resolveResourceParams.mHasAlias = page2.mHasAlias;
                resolveResourceParams.mPageTitle = page2.mTitle;
                resolveResourceParams.mSeasonId = obtainResolveParams.mSeasonId;
                resolveResourceParams.mEpisodeId = page2.mEpisodeId;
                String epCover = page2.firstFrame != null ? page2.firstFrame 
                    : (page2.cover != null ? page2.cover 
                    : (page2.mEpCover != null ? page2.mEpCover : videoCover));
                resolveResourceParams.mEpCover = epCover;
                resolveResourceParams.mDuration = page2.duration;
                resolveResourceParams.mPubDate = page2.pubTime > 0 ? page2.pubTime : (page2.ctime > 0 ? page2.ctime : videoPubDate);
                resolveResourceParams.mAuthor = page2.subtitle;
                resolveResourceParams.mHideUpIcon = !TextUtils.isEmpty(page2.subtitle);
                resolveResourceParams.mListType = pageListType;
                if (page2.plays > 0) {
                    resolveResourceParams.mPlays = String.valueOf(page2.plays);
                }
                if (page2.danmakus > 0) {
                    resolveResourceParams.mDanmakus = String.valueOf(page2.danmakus);
                }
                if (page2.badgeText != null && !page2.badgeText.isEmpty()) {
                    resolveResourceParams.mBadgeText = page2.badgeText;
                    resolveResourceParams.mBadgeBgColor = page2.badgeBgColor;
                }
                if (page2.mBvid != null && !page2.mBvid.isEmpty()) {
                    resolveResourceParams.mBvid = page2.mBvid;
                } else {
                    resolveResourceParams.mBvid = biliVideoDetail.mBvid;
                }
                if (i > 0) {
                    resolveResourceParams.mExpectedQuality = i;
                } else {
                    resolveResourceParams.mExpectedQuality = obtainResolveParams.mExpectedQuality;
                }
                resolveResourceParams.mNoHistoryPlay = VideoDetailActivity.sNoHistoryPlayMode;
                obtainResolveParamsArray[i3] = resolveResourceParams;
            }
            a(context, a, bundle);
            return;
        }

        if (biliVideoDetail.episodes != null && biliVideoDetail.episodes.size() > 0) {
            com.alibaba.fastjson.JSONArray currentSectionEpisodes = biliVideoDetail.episodes;
            
            if (biliVideoDetail.sectionInfoList != null && biliVideoDetail.sectionInfoList.size() > 1) {
                for (com.bilibili.tv.api.video.BiliVideoDetail.SectionInfo sectionInfo : biliVideoDetail.sectionInfoList) {
                    if (sectionInfo.episodes != null) {
                        for (int ei = 0; ei < sectionInfo.episodes.size(); ei++) {
                            com.alibaba.fastjson.JSONObject ep = sectionInfo.episodes.getJSONObject(ei);
                            if (ep.getLongValue("cid") == obtainResolveParams.mCid) {
                                currentSectionEpisodes = sectionInfo.episodes;
                                break;
                            }
                        }
                    }
                    if (currentSectionEpisodes == sectionInfo.episodes) {
                        break;
                    }
                }
            }
            
            int size = currentSectionEpisodes.size();
            ResolveResourceParams[] obtainResolveParamsArray = a.mVideoParams.obtainResolveParamsArray(size);
            for (int i3 = 0; i3 < size; i3++) {
                JSONObject episode = currentSectionEpisodes.getJSONObject(i3);
                long episodeCid = episode.getLongValue("cid");
                if (episodeCid == obtainResolveParams.mCid) {
                    a.mVideoParams.mResolveParams.mPage = i3;
                    a.mVideoParams.mResolveParams.mListType = 3;
                    JSONObject arc = episode.getJSONObject("arc");
                    if (arc != null) {
                        if (a.mVideoParams.mResolveParams.mEpCover == null || a.mVideoParams.mResolveParams.mEpCover.isEmpty()) {
                            a.mVideoParams.mResolveParams.mEpCover = arc.getString("pic");
                        }
                        JSONObject author = arc.getJSONObject("author");
                        if (author != null && (a.mVideoParams.mResolveParams.mAuthor == null || a.mVideoParams.mResolveParams.mAuthor.isEmpty())) {
                            a.mVideoParams.mResolveParams.mAuthor = author.getString("name");
                        }
                        JSONObject stat = arc.getJSONObject("stat");
                        if (stat != null) {
                            if (a.mVideoParams.mResolveParams.mPlays == null || a.mVideoParams.mResolveParams.mPlays.isEmpty()) {
                                a.mVideoParams.mResolveParams.mPlays = String.valueOf(stat.getIntValue("view"));
                            }
                            if (a.mVideoParams.mResolveParams.mDanmakus == null || a.mVideoParams.mResolveParams.mDanmakus.isEmpty()) {
                                a.mVideoParams.mResolveParams.mDanmakus = String.valueOf(stat.getIntValue("danmaku"));
                            }
                        }
                        if (a.mVideoParams.mResolveParams.mPubDate == 0) {
                            a.mVideoParams.mResolveParams.mPubDate = arc.getLongValue("pubdate");
                        }
                    }
                    obtainResolveParamsArray[i3] = a.mVideoParams.mResolveParams;
                } else {
                    ResolveResourceParams resolveResourceParams = new ResolveResourceParams();
                    resolveResourceParams.mSpid = biliVideoDetail.getSpid();
                    resolveResourceParams.mAvid = episode.getLongValue("aid");
                    resolveResourceParams.mPage = episode.getJSONObject("page").getIntValue("page");
                    resolveResourceParams.mFrom = episode.getJSONObject("page").getString("from");
                    resolveResourceParams.mVid = episode.getJSONObject("page").getString("vid");
                    resolveResourceParams.mCid = episodeCid;
                    resolveResourceParams.mWeb = episode.getJSONObject("page").getString("weblink");
                    resolveResourceParams.mPageTitle = episode.getString("title");
                    resolveResourceParams.mDuration = episode.getJSONObject("page").getIntValue("duration");
                    resolveResourceParams.mSeasonId = obtainResolveParams.mSeasonId;
                    JSONObject arc = episode.getJSONObject("arc");
                    if (arc != null) {
                        resolveResourceParams.mEpCover = arc.getString("pic");
                        JSONObject author = arc.getJSONObject("author");
                        Log.i("xg", "UGC合集转换 | cid=" + episodeCid + " | arc.author=" + (author != null ? author.toJSONString() : "null"));
                        if (author != null) {
                            resolveResourceParams.mAuthor = author.getString("name");
                        }
                        JSONObject stat = arc.getJSONObject("stat");
                        if (stat != null) {
                            resolveResourceParams.mPlays = String.valueOf(stat.getIntValue("view"));
                            resolveResourceParams.mDanmakus = String.valueOf(stat.getIntValue("danmaku"));
                        }
                        resolveResourceParams.mPubDate = arc.getLongValue("pubdate");
                    }
                    Log.i("xg", "UGC合集转换 | mAuthor=" + resolveResourceParams.mAuthor + " | mListType=" + resolveResourceParams.mListType);
                    JSONObject badgeInfo = episode.getJSONObject("badge_info");
                    if (badgeInfo != null) {
                        resolveResourceParams.mBadgeText = badgeInfo.getString("text");
                        resolveResourceParams.mBadgeBgColor = badgeInfo.getString("bg_color");
                    }
                    resolveResourceParams.mListType = 3;
                    if (i > 0) {
                        resolveResourceParams.mExpectedQuality = i;
                    } else {
                        resolveResourceParams.mExpectedQuality = obtainResolveParams.mExpectedQuality;
                    }
                    resolveResourceParams.mNoHistoryPlay = VideoDetailActivity.sNoHistoryPlayMode;
                    obtainResolveParamsArray[i3] = resolveResourceParams;
                }
            }
            a(context, a, bundle);
            return;
        }
        a(context, a, bundle);
    }

    public static void b(Activity activity, BiliVideoDetail biliVideoDetail, BiliVideoDetail.Page page, Bundle bundle, int i, int requestCode, int progress) {
        long startTime = System.currentTimeMillis();
        Log.i("PlaySpeed", "[4_XG_B_START] b() method started, cid=" + page.mCid + ", mFrom=" + page.mFrom + ", mEpisodeId=" + page.mEpisodeId + ", progress=" + progress);
        Log.d("CoverDebug", "========== xg.b() Cover Info ==========");
        Log.d("CoverDebug", "biliVideoDetail.mCover = " + biliVideoDetail.mCover);
        PlayerParams a = aaj.a(activity);
        Log.d("UI_TRANSITION", "[5_AFTER_AAJ] aaj.a() returned, elapsed=" + (System.currentTimeMillis() - startTime) + "ms");
        Log.i("PlaySpeed", "[5_AFTER_AAJ] aaj.a() returned, elapsed=" + (System.currentTimeMillis() - startTime) + "ms");
        yr.a(a, biliVideoDetail.mCover);
        Log.d("CoverDebug", "After yr.a(), cover stored in PlayerParams");
        yr.c(a, biliVideoDetail.getAuthor());
        yr.b(a, biliVideoDetail.mTitle);

        biliVideoDetail.getUGCseason();

        ResolveResourceParams obtainResolveParams = a.mVideoParams.obtainResolveParams();
        obtainResolveParams.mSpid = biliVideoDetail.getSpid();
        obtainResolveParams.mAvid = biliVideoDetail.mAvid;
        obtainResolveParams.mPage = page.mPage;
        obtainResolveParams.mFrom = page.mFrom;
        obtainResolveParams.mPageTitle = page.mTitle;
        obtainResolveParams.mVid = page.mVid;
        obtainResolveParams.mRawVid = page.mRawVid;
        obtainResolveParams.mCid = page.mCid;
        obtainResolveParams.mWeb = page.mWebLink;
        obtainResolveParams.mHasAlias = page.mHasAlias;
        obtainResolveParams.mTid = biliVideoDetail.mTid;
        obtainResolveParams.mDuration = page.duration;

        obtainResolveParams.mBvid = biliVideoDetail.mBvid;
        obtainResolveParams.mProgress = progress;
        obtainResolveParams.mNoHistoryPlay = VideoDetailActivity.sNoHistoryPlayMode;

        if (i > 0) {
            obtainResolveParams.mExpectedQuality = i;
        }
        if (biliVideoDetail.mBangumiInfo != null) {
            obtainResolveParams.mSeasonId = biliVideoDetail.mBangumiInfo.mSeasonId + "";
        }
        if (page.mEpisodeId > 0) {
            obtainResolveParams.mEpisodeId = page.mEpisodeId;
            obtainResolveParams.mSeasonId = page.mSeasonId;
            obtainResolveParams.mEpCover = page.cover != null ? page.cover : page.mEpCover;
        }
        if (TextUtils.isEmpty(yr.a(a))) {
            yr.b(a, page.mTitle);
        }
        Log.d("UI_TRANSITION", "[6_BEFORE_PAGELIST] checking pageList, elapsed=" + (System.currentTimeMillis() - startTime) + "ms");
        Log.i("PlaySpeed", "[6_BEFORE_PAGELIST] pageList=" + (biliVideoDetail.mPageList != null ? "size=" + biliVideoDetail.mPageList.size() : "null") + ", mFrom=" + page.mFrom + ", mEpisodeId=" + page.mEpisodeId + ", mBangumiInfo=" + (biliVideoDetail.mBangumiInfo != null ? "seasonId=" + biliVideoDetail.mBangumiInfo.mSeasonId : "null") + ", elapsed=" + (System.currentTimeMillis() - startTime) + "ms");
        Log.i("xg", "b(Activity) | mPageList=" + (biliVideoDetail.mPageList != null ? "size=" + biliVideoDetail.mPageList.size() : "null") + " | page.mFrom=" + page.mFrom + " | page.mEpisodeId=" + page.mEpisodeId);

        if (biliVideoDetail.mPageList != null && biliVideoDetail.mPageList.size() > 1) {
            boolean isPgc = "bangumi".equals(page.mFrom) || "movie".equals(page.mFrom);
            int pageListType = isPgc ? 1 : 2;
            Log.i("xg", "b(Activity) mPageList分支 | isPgc=" + isPgc + " | page.mFrom=" + page.mFrom + " | pageListType=" + pageListType);
            int size = biliVideoDetail.mPageList.size();
            ResolveResourceParams[] obtainResolveParamsArray = a.mVideoParams.obtainResolveParamsArray(size);
            String videoCover = biliVideoDetail.mCover;
            long videoPubDate = biliVideoDetail.mCreatedTimestamp;
            for (int i3 = 0; i3 < size; i3++) {
                BiliVideoDetail.Page page2 = biliVideoDetail.mPageList.get(i3);
                ResolveResourceParams resolveResourceParams = new ResolveResourceParams();
                resolveResourceParams.mSpid = biliVideoDetail.getSpid();
                resolveResourceParams.mTid = page2.mTid;
                resolveResourceParams.mAvid = biliVideoDetail.mAvid;
                resolveResourceParams.mPage = page2.mPage;
                resolveResourceParams.mFrom = page2.mFrom;
                resolveResourceParams.mVid = page2.mVid;
                resolveResourceParams.mRawVid = page2.mRawVid;
                resolveResourceParams.mCid = page2.mCid;
                resolveResourceParams.mWeb = page2.mWebLink;
                resolveResourceParams.mHasAlias = page2.mHasAlias;
                resolveResourceParams.mPageTitle = page2.mTitle;
                resolveResourceParams.mSeasonId = obtainResolveParams.mSeasonId;
                resolveResourceParams.mEpisodeId = page2.mEpisodeId;
                resolveResourceParams.mEpCover = page2.firstFrame != null ? page2.firstFrame 
                    : (page2.cover != null ? page2.cover 
                    : (page2.mEpCover != null ? page2.mEpCover : videoCover));
                resolveResourceParams.mDuration = page2.duration;
                resolveResourceParams.mPubDate = page2.pubTime > 0 ? page2.pubTime : (page2.ctime > 0 ? page2.ctime : videoPubDate);
                resolveResourceParams.mAuthor = page2.subtitle;
                resolveResourceParams.mHideUpIcon = !TextUtils.isEmpty(page2.subtitle);
                resolveResourceParams.mListType = pageListType;
                if (page2.plays > 0) {
                    resolveResourceParams.mPlays = String.valueOf(page2.plays);
                }
                if (page2.danmakus > 0) {
                    resolveResourceParams.mDanmakus = String.valueOf(page2.danmakus);
                }
                if (page2.badgeText != null && !page2.badgeText.isEmpty()) {
                    resolveResourceParams.mBadgeText = page2.badgeText;
                    resolveResourceParams.mBadgeBgColor = page2.badgeBgColor;
                }
                if (i > 0) {
                    resolveResourceParams.mExpectedQuality = i;
                } else {
                    resolveResourceParams.mExpectedQuality = obtainResolveParams.mExpectedQuality;
                }
                resolveResourceParams.mNoHistoryPlay = VideoDetailActivity.sNoHistoryPlayMode;
                obtainResolveParamsArray[i3] = resolveResourceParams;
            }
            a(activity, a, bundle, requestCode);
            return;
        }

        if (biliVideoDetail.episodes != null && biliVideoDetail.episodes.size() > 0) {
            com.alibaba.fastjson.JSONArray currentSectionEpisodes = biliVideoDetail.episodes;
            
            if (biliVideoDetail.sectionInfoList != null && biliVideoDetail.sectionInfoList.size() > 1) {
                for (com.bilibili.tv.api.video.BiliVideoDetail.SectionInfo sectionInfo : biliVideoDetail.sectionInfoList) {
                    if (sectionInfo.episodes != null) {
                        for (int ei = 0; ei < sectionInfo.episodes.size(); ei++) {
                            com.alibaba.fastjson.JSONObject ep = sectionInfo.episodes.getJSONObject(ei);
                            if (ep.getLongValue("cid") == obtainResolveParams.mCid) {
                                currentSectionEpisodes = sectionInfo.episodes;
                                break;
                            }
                        }
                    }
                    if (currentSectionEpisodes == sectionInfo.episodes) {
                        break;
                    }
                }
            }
            
            int size = currentSectionEpisodes.size();
            ResolveResourceParams[] obtainResolveParamsArray = a.mVideoParams.obtainResolveParamsArray(size);
            for (int i3 = 0; i3 < size; i3++) {
                JSONObject episode = currentSectionEpisodes.getJSONObject(i3);
                long episodeCid = episode.getLongValue("cid");
                if (episodeCid == obtainResolveParams.mCid) {
                    a.mVideoParams.mResolveParams.mPage = i3;
                    a.mVideoParams.mResolveParams.mListType = 3;
                    JSONObject arc = episode.getJSONObject("arc");
                    if (arc != null) {
                        if (a.mVideoParams.mResolveParams.mEpCover == null || a.mVideoParams.mResolveParams.mEpCover.isEmpty()) {
                            a.mVideoParams.mResolveParams.mEpCover = arc.getString("pic");
                        }
                        JSONObject author = arc.getJSONObject("author");
                        if (author != null && (a.mVideoParams.mResolveParams.mAuthor == null || a.mVideoParams.mResolveParams.mAuthor.isEmpty())) {
                            a.mVideoParams.mResolveParams.mAuthor = author.getString("name");
                        }
                        JSONObject stat = arc.getJSONObject("stat");
                        if (stat != null) {
                            if (a.mVideoParams.mResolveParams.mPlays == null || a.mVideoParams.mResolveParams.mPlays.isEmpty()) {
                                a.mVideoParams.mResolveParams.mPlays = String.valueOf(stat.getIntValue("view"));
                            }
                            if (a.mVideoParams.mResolveParams.mDanmakus == null || a.mVideoParams.mResolveParams.mDanmakus.isEmpty()) {
                                a.mVideoParams.mResolveParams.mDanmakus = String.valueOf(stat.getIntValue("danmaku"));
                            }
                        }
                        if (a.mVideoParams.mResolveParams.mPubDate == 0) {
                            a.mVideoParams.mResolveParams.mPubDate = arc.getLongValue("pubdate");
                        }
                    }
                    obtainResolveParamsArray[i3] = a.mVideoParams.mResolveParams;
                } else {
                    ResolveResourceParams resolveResourceParams = new ResolveResourceParams();
                    resolveResourceParams.mSpid = biliVideoDetail.getSpid();
                    resolveResourceParams.mAvid = episode.getLongValue("aid");
                    resolveResourceParams.mPage = episode.getJSONObject("page").getIntValue("page");
                    resolveResourceParams.mFrom = episode.getJSONObject("page").getString("from");
                    resolveResourceParams.mVid = episode.getJSONObject("page").getString("vid");
                    resolveResourceParams.mCid = episodeCid;
                    resolveResourceParams.mWeb = episode.getJSONObject("page").getString("weblink");
                    resolveResourceParams.mPageTitle = episode.getString("title");
                    resolveResourceParams.mDuration = episode.getJSONObject("page").getIntValue("duration");
                    resolveResourceParams.mSeasonId = obtainResolveParams.mSeasonId;
                    JSONObject arc = episode.getJSONObject("arc");
                    if (arc != null) {
                        resolveResourceParams.mEpCover = arc.getString("pic");
                        JSONObject author = arc.getJSONObject("author");
                        if (author != null) {
                            resolveResourceParams.mAuthor = author.getString("name");
                        }
                        JSONObject stat = arc.getJSONObject("stat");
                        if (stat != null) {
                            resolveResourceParams.mPlays = String.valueOf(stat.getIntValue("view"));
                            resolveResourceParams.mDanmakus = String.valueOf(stat.getIntValue("danmaku"));
                        }
                        resolveResourceParams.mPubDate = arc.getLongValue("pubdate");
                    }
                    JSONObject badgeInfo = episode.getJSONObject("badge_info");
                    if (badgeInfo != null) {
                        resolveResourceParams.mBadgeText = badgeInfo.getString("text");
                        resolveResourceParams.mBadgeBgColor = badgeInfo.getString("bg_color");
                    }
                    resolveResourceParams.mListType = 3;
                    if (i > 0) {
                        resolveResourceParams.mExpectedQuality = i;
                    } else {
                        resolveResourceParams.mExpectedQuality = obtainResolveParams.mExpectedQuality;
                    }
                    resolveResourceParams.mNoHistoryPlay = VideoDetailActivity.sNoHistoryPlayMode;
                    obtainResolveParamsArray[i3] = resolveResourceParams;
                }
            }
            a(activity, a, bundle, requestCode);
            return;
        }
        a(activity, a, bundle, requestCode);
    }

    public static void a(Context context, PlayerParams playerParams, Bundle bundle) {
        if (playerParams.mVideoParams.mResolveParamsArray == null) {
            playerParams.mVideoParams.mResolveParamsArray = playerParams.mVideoParams.obtainResolveParamsArray(1);
            playerParams.mVideoParams.mResolveParamsArray[0] = playerParams.mVideoParams.obtainResolveParams();
        }
        context.startActivity(PlayerActivity.a(context, playerParams));
    }

    public static void a(Activity activity, PlayerParams playerParams, Bundle bundle, int requestCode) {
        long startTime = System.currentTimeMillis();
        Log.d("UI_TRANSITION", "[7_A_METHOD_START] a(Activity,PlayerParams,Bundle,int) started, time=" + startTime);
        Log.i("PlaySpeed", "[7_A_METHOD_START] starting PlayerActivity, resolveParams: cid=" + (playerParams.mVideoParams != null && playerParams.mVideoParams.mResolveParams != null ? playerParams.mVideoParams.mResolveParams.mCid : "null") + ", seasonId=" + (playerParams.mVideoParams != null && playerParams.mVideoParams.mResolveParams != null ? playerParams.mVideoParams.mResolveParams.mSeasonId : "null") + ", episodeId=" + (playerParams.mVideoParams != null && playerParams.mVideoParams.mResolveParams != null ? playerParams.mVideoParams.mResolveParams.mEpisodeId : "null"));
        if (playerParams.mVideoParams.mResolveParamsArray == null) {
            playerParams.mVideoParams.mResolveParamsArray = playerParams.mVideoParams.obtainResolveParamsArray(1);
            playerParams.mVideoParams.mResolveParamsArray[0] = playerParams.mVideoParams.obtainResolveParams();
        }
        playerParams.mVideoParams.mResolveParamsArray[0].mNoHistoryPlay = VideoDetailActivity.sNoHistoryPlayMode;
        Log.d("UI_TRANSITION", "[8_BEFORE_INTENT] creating PlayerActivity intent, elapsed=" + (System.currentTimeMillis() - startTime) + "ms");
        Intent intent = PlayerActivity.a(activity, playerParams);
        Log.d("UI_TRANSITION", "[9_AFTER_INTENT] intent created, elapsed=" + (System.currentTimeMillis() - startTime) + "ms");
        intent.setFlags(0);
        Log.d("UI_TRANSITION", "[10_BEFORE_START_ACTIVITY] calling startActivityForResult, elapsed=" + (System.currentTimeMillis() - startTime) + "ms");
        activity.startActivityForResult(intent, requestCode);
        Log.d("UI_TRANSITION", "[11_AFTER_START_ACTIVITY] startActivityForResult returned, elapsed=" + (System.currentTimeMillis() - startTime) + "ms");
    }

    public static void playCheese(Context context, BiliVideoDetail biliVideoDetail, BiliVideoDetail.Page page, int i) {
        PlayerParams a = aaj.a(context);
        yr.a(a, biliVideoDetail.mCover);
        yr.c(a, biliVideoDetail.getAuthor());
        yr.b(a, biliVideoDetail.mTitle);

        ResolveResourceParams obtainResolveParams = a.mVideoParams.obtainResolveParams();
        obtainResolveParams.mSpid = biliVideoDetail.getSpid();
        obtainResolveParams.mAvid = biliVideoDetail.mAvid;
        obtainResolveParams.mPage = page.mPage;
        obtainResolveParams.mFrom = "cheese";
        obtainResolveParams.mPageTitle = page.mTitle;
        obtainResolveParams.mVid = page.mVid;
        obtainResolveParams.mRawVid = page.mRawVid;
        obtainResolveParams.mCid = page.mCid;
        obtainResolveParams.mWeb = page.mWebLink;
        obtainResolveParams.mHasAlias = page.mHasAlias;
        obtainResolveParams.mTid = biliVideoDetail.mTid;
        obtainResolveParams.mDuration = page.duration;

        obtainResolveParams.mSeasonId = biliVideoDetail.mCheeseInfo.getString("season_id");
        obtainResolveParams.mEpisodeId = Long.parseLong(biliVideoDetail.mRedirectLink.split("ep")[1]);

        if (i > 0) {
            obtainResolveParams.mExpectedQuality = i;
        }
        if (TextUtils.isEmpty(yr.a(a))) {
            yr.b(a, page.mTitle);
        }
        if (a.mVideoParams.mResolveParamsArray == null) {
            a.mVideoParams.mResolveParamsArray = a.mVideoParams.obtainResolveParamsArray(1);
            a.mVideoParams.mResolveParamsArray[0] = obtainResolveParams;
        }
        context.startActivity(PlayerActivity.a(context, a));
    }


    public static void playCheese2(Context context, JSONObject cheeseInfo, JSONObject episodeInfo) {
        PlayerParams a = aaj.a(context);
        yr.a(a, episodeInfo.getString("cover"));
        yr.c(a, cheeseInfo.getJSONObject("up_info").getString("uname"));
        yr.b(a, episodeInfo.getString("title"));

        ResolveResourceParams obtainResolveParams = a.mVideoParams.obtainResolveParams();
        obtainResolveParams.mAvid = episodeInfo.getLongValue("aid");
        obtainResolveParams.mPage = episodeInfo.getIntValue("index");
        obtainResolveParams.mFrom = "cheese";
        obtainResolveParams.mPageTitle = episodeInfo.getString("title");
        obtainResolveParams.mCid = episodeInfo.getLongValue("cid");
        obtainResolveParams.mDuration = episodeInfo.getIntValue("duration");

        obtainResolveParams.mSeasonId = cheeseInfo.getString("season_id");
        obtainResolveParams.mEpisodeId = episodeInfo.getLongValue("id");

        if (a.mVideoParams.mResolveParamsArray == null) {
            int size = cheeseInfo.getJSONArray("episodes").size();
            ResolveResourceParams[] obtainResolveParamsArray = a.mVideoParams.obtainResolveParamsArray(size);
            for (int i = 0; i < size; i++) {
                JSONObject episode = cheeseInfo.getJSONArray("episodes").getJSONObject(i);
                ResolveResourceParams resolveResourceParams = new ResolveResourceParams();
                resolveResourceParams.mAvid = episode.getLongValue("aid");
                resolveResourceParams.mPage = episode.getIntValue("index");
                resolveResourceParams.mFrom = "cheese";
                resolveResourceParams.mCid = episode.getLongValue("cid");
                resolveResourceParams.mPageTitle = episode.getString("title");
                resolveResourceParams.mDuration = episode.getIntValue("duration");
                resolveResourceParams.mSeasonId = obtainResolveParams.mSeasonId;
                resolveResourceParams.mEpisodeId = episode.getLongValue("id");
                resolveResourceParams.mExpectedQuality = obtainResolveParams.mExpectedQuality;
                obtainResolveParamsArray[i] = resolveResourceParams;
            }
        }

        context.startActivity(PlayerActivity.a(context, a));
    }

    private static String getVtText(BangumiEpisodeEx episode) {
        String vtText = "";
        Log.i("xg", "getVtText | epid=" + episode.epid + " | statForUnity=" + (episode.statForUnity != null ? episode.statForUnity.toJSONString() : "null"));
        if (episode.statForUnity != null && episode.statForUnity.containsKey("vt")) {
            JSONObject vtObj = episode.statForUnity.getJSONObject("vt");
            if (vtObj != null) {
                String pureText = vtObj.getString("pure_text");
                if (!TextUtils.isEmpty(pureText)) {
                    vtText = pureText;
                } else {
                    String text = vtObj.getString("text");
                    if (!TextUtils.isEmpty(text)) {
                        vtText = text;
                    }
                }
            }
        }
        Log.i("xg", "getVtText | vtText=" + vtText);
        return vtText;
    }

}