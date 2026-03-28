package com.bilibili.tv.api.video;

import android.support.annotation.NonNull;
import bl.jp;
import bl.vu;
import java.util.*;
import com.alibaba.fastjson.*;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.tv.api.video.BiliVideoDetail;
import java.io.IOException;
import okhttp3.ResponseBody;
import mybl.LogUtil;

public class RelatedVideoParser implements vu<GeneralResponse<List<BiliVideoDetail>>> {
    @Override
    @NonNull
    public GeneralResponse<List<BiliVideoDetail>> convert(ResponseBody responseBody) throws IOException {
        String rawResponse = responseBody.string();
        // LogUtil.i("RelatedVideoApi", "========== /x/web-interface/archive/related Response ==========");
        // LogUtil.i("RelatedVideoApi", rawResponse);
        Object a = jp.a(rawResponse);
        if (a instanceof JSONObject) {
            GeneralResponse<List<BiliVideoDetail>> generalResponse = new GeneralResponse<>();
            JSONObject jSONObject = (JSONObject) a;
            generalResponse.code = jSONObject.getIntValue("code");
            if (generalResponse.code != 0) {
                generalResponse.message = jSONObject.getString("message");
            } else {
                JSONArray dataArray = jSONObject.getJSONArray("data");
                if (dataArray != null) {
                    List<BiliVideoDetail> relatedList = new ArrayList<>();
                    for (int i = 0; i < dataArray.size(); i++) {
                        JSONObject videoObj = dataArray.getJSONObject(i);
                        BiliVideoDetail video = videoObj.toJavaObject(BiliVideoDetail.class);
                        relatedList.add(video);
                    }
                    generalResponse.data = relatedList;
                }
            }
            jSONObject.clear();
            return generalResponse;
        }
        throw new JSONException("Response is not a jsonobject!");
    }
}
