package com.bilibili.tv.api.video;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import bl.jp;
import bl.jq;
import bl.vu;
import java.util.*;
import com.alibaba.fastjson.*;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.tv.api.video.BiliVideoDetail;
import java.io.IOException;
import okhttp3.ResponseBody;
import mybl.LogUtil;

public class VideoApiParser3 implements vu<GeneralResponse<BiliVideoDetail>> {
    static final String DISALLOW_DOWNLOAD = "应版权方要求，仅供在线播放";
    static final String UNSUPPORT_DOWNLOAD = "该视频暂不支持缓存";

    @Override
    @NonNull
    public GeneralResponse<BiliVideoDetail> convert(ResponseBody responseBody) throws IOException {
        long perfStart = android.os.SystemClock.uptimeMillis();
        String rawResponse = responseBody.string();
        long perfRead = android.os.SystemClock.uptimeMillis();
        LogUtil.i("VideoInfoApi", "========== /x/web-interface/view Response ==========");
        LogUtil.i("VideoInfoApi", rawResponse);
        long perfLog = android.os.SystemClock.uptimeMillis();
        LogUtil.i("LoadPerf", "[api] body=" + rawResponse.length() + " chars"
                + " | readBody=" + (perfRead - perfStart) + "ms"
                + " | dumpRawLog=" + (perfLog - perfRead) + "ms");
        Object a = jp.a(rawResponse);
        long perfJson = android.os.SystemClock.uptimeMillis();
        LogUtil.i("LoadPerf", "[api] parseJsonTree=" + (perfJson - perfLog) + "ms");
        if (a instanceof JSONObject) {
            GeneralResponse<BiliVideoDetail> generalResponse = new GeneralResponse<>();
            JSONObject jSONObject = (JSONObject) a;
            generalResponse.code = jSONObject.getIntValue("code");
            if (generalResponse.code == -404) {
                generalResponse.code = 404;
            }
            if (generalResponse.code != 0) {
                generalResponse.message = jSONObject.getString("message");
            } else {
                JSONObject data = jSONObject.getJSONObject("data");
                if (data.containsKey("bp")) {
                    JSONObject bpObj = data.getJSONObject("bp");
                    if (bpObj != null && bpObj.containsKey("mine") && (bpObj.get("mine") instanceof Boolean)) {
                        bpObj.remove("mine");
                    }
                }
                long perfMapStart = android.os.SystemClock.uptimeMillis();
                BiliVideoDetail videoDetail = data.toJavaObject(BiliVideoDetail.class);
                long perfMap = android.os.SystemClock.uptimeMillis();
                LogUtil.i("VideoInfoApi", "========== Parsed BiliVideoDetail ==========");
                LogUtil.i("VideoInfoApi", "mCover = " + videoDetail.mCover);
                LogUtil.i("VideoInfoApi", "mTitle = " + videoDetail.mTitle);
                LogUtil.i("VideoInfoApi", "mOwner = " + (videoDetail.mOwner != null ? "mid=" + videoDetail.mOwner.mid + ",name=" + videoDetail.mOwner.name : "null"));
                LogUtil.i("VideoInfoApi", "getMid() = " + videoDetail.getMid());
                videoDetail.mTitle = unescapeHtml(videoDetail.mTitle);
                videoDetail.mDescription = unescapeHtml(videoDetail.mDescription);
                if (!videoDetail.canDownload()) {
                    videoDetail.mDownloadableInfo = DISALLOW_DOWNLOAD;
                }
                if (videoDetail.isMangoVideo()) {
                    if (videoDetail.mRights != null) {
                        videoDetail.mRights.mCanDownload = false;
                    }
                    videoDetail.mDownloadableInfo = UNSUPPORT_DOWNLOAD;
                }
                List<BiliVideoDetail.Page> pageList = videoDetail.mPageList;
                if (pageList != null && !pageList.isEmpty()) {
                    for (BiliVideoDetail.Page page : pageList) {
                        resetPageObject(page, videoDetail.mTid);
                    }
                }
                if (data.containsKey("ugc_season")) {
                    videoDetail.ugcSeason = data.getJSONObject("ugc_season");
                    if (videoDetail.ugcSeason != null) {
                        videoDetail.season_title = videoDetail.ugcSeason.getString("title");
                        JSONArray sections = videoDetail.ugcSeason.getJSONArray("sections");
                        if (sections != null) {
                            videoDetail.sections = sections;
                            videoDetail.sectionInfoList = new ArrayList<>();
                            long perfPreParseStart = android.os.SystemClock.uptimeMillis();
                            for (int i = 0; i < sections.size(); i++) {
                                JSONObject sectionObj = sections.getJSONObject(i);
                                String sectionTitle = sectionObj.getString("title");
                                JSONArray sectionEpisodes = sectionObj.getJSONArray("episodes");
                                int sectionId = sectionObj.getIntValue("id");
                                int sectionType = sectionObj.getIntValue("type");
                                BiliVideoDetail.SectionInfo sectionInfo =
                                        new BiliVideoDetail.SectionInfo(sectionTitle, sectionEpisodes, sectionId, sectionType);
                                // 在工作线程预解析每集的 arc/author/badge_info，主线程只做引用拷贝
                                sectionInfo.parsedEpisodes = BiliVideoDetail.SectionInfo.parseEpisodes(sectionEpisodes);
                                videoDetail.sectionInfoList.add(sectionInfo);
                            }
                            LogUtil.i("LoadPerf", "[api] preParseEpisodes="
                                    + (android.os.SystemClock.uptimeMillis() - perfPreParseStart) + "ms");
                        }
                    }
                }
                long perfSections = android.os.SystemClock.uptimeMillis();
                int perfEpisodeCount = 0;
                int perfSectionCount = 0;
                if (videoDetail.sectionInfoList != null) {
                    perfSectionCount = videoDetail.sectionInfoList.size();
                    for (int pi = 0; pi < perfSectionCount; pi++) {
                        BiliVideoDetail.SectionInfo si = videoDetail.sectionInfoList.get(pi);
                        if (si != null && si.episodes != null) {
                            perfEpisodeCount += si.episodes.size();
                        }
                    }
                }
                LogUtil.i("LoadPerf", "[api] toJavaObject=" + (perfMap - perfMapStart) + "ms"
                        + " | sectionsBuild=" + (perfSections - perfMap) + "ms"
                        + " | sections=" + perfSectionCount
                        + " | episodes=" + perfEpisodeCount
                        + " | totalToData=" + (perfSections - perfStart) + "ms");
                generalResponse.data = videoDetail;
            }
            long perfClearStart = android.os.SystemClock.uptimeMillis();
            jSONObject.clear();
            LogUtil.i("LoadPerf", "[api] clearJsonTree=" + (android.os.SystemClock.uptimeMillis() - perfClearStart)
                    + "ms | convertTotal=" + (android.os.SystemClock.uptimeMillis() - perfStart) + "ms");
            return generalResponse;
        }
        throw new JSONException("Response is not a jsonobject!");
    }

    static void resetPageObject(BiliVideoDetail.Page page, int tid) {
        if (page == null) {
            return;
        }
        if (TextUtils.isEmpty(page.mTitle)) {
            page.mTitle = "P" + page.mPage;
        } else {
            page.mTitle = unescapeHtml(page.mTitle.replaceAll("\\s{3,}", ""));
        }
        page.mTid = tid;
    }

    private static String unescapeHtml(String str) {
        if (str == null) {
            str = "";
        }
        return jq.a(str);
    }
}
