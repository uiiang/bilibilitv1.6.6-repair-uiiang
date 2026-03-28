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
        String rawResponse = responseBody.string();
        LogUtil.i("VideoInfoApi", "========== /x/web-interface/view Response ==========");
        LogUtil.i("VideoInfoApi", rawResponse);
        Object a = jp.a(rawResponse);
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
                BiliVideoDetail videoDetail = data.toJavaObject(BiliVideoDetail.class);
                LogUtil.i("VideoInfoApi", "========== Parsed BiliVideoDetail ==========");
                LogUtil.i("VideoInfoApi", "mCover = " + videoDetail.mCover);
                LogUtil.i("VideoInfoApi", "mTitle = " + videoDetail.mTitle);
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
                            for (int i = 0; i < sections.size(); i++) {
                                JSONObject sectionObj = sections.getJSONObject(i);
                                String sectionTitle = sectionObj.getString("title");
                                JSONArray sectionEpisodes = sectionObj.getJSONArray("episodes");
                                int sectionId = sectionObj.getIntValue("id");
                                int sectionType = sectionObj.getIntValue("type");
                                videoDetail.sectionInfoList.add(new BiliVideoDetail.SectionInfo(sectionTitle, sectionEpisodes, sectionId, sectionType));
                            }
                        }
                    }
                }
                generalResponse.data = videoDetail;
            }
            jSONObject.clear();
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
