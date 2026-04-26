package com.bilibili.tv.api.video;

import android.support.annotation.NonNull;
import bl.jp;
import bl.vu;
import java.util.*;
import com.alibaba.fastjson.*;
import com.bilibili.okretro.GeneralResponse;
import java.io.IOException;
import okhttp3.ResponseBody;

public class PgcRelatedParser implements vu<GeneralResponse<List<BiliVideoDetail>>> {
    @Override
    @NonNull
    public GeneralResponse<List<BiliVideoDetail>> convert(ResponseBody responseBody) throws IOException {
        String rawResponse = responseBody.string();
        Object a = jp.a(rawResponse);
        if (a instanceof JSONObject) {
            GeneralResponse<List<BiliVideoDetail>> generalResponse = new GeneralResponse<>();
            JSONObject jSONObject = (JSONObject) a;
            generalResponse.code = jSONObject.getIntValue("code");
            if (generalResponse.code != 0) {
                generalResponse.message = jSONObject.getString("message");
            } else {
                JSONObject dataObj = jSONObject.getJSONObject("data");
                if (dataObj != null) {
                    JSONArray seasonArray = dataObj.getJSONArray("season");
                    if (seasonArray != null) {
                        List<BiliVideoDetail> relatedList = new ArrayList<>();
                        for (int i = 0; i < seasonArray.size(); i++) {
                            JSONObject seasonObj = seasonArray.getJSONObject(i);
                            PgcRelatedSeason season = seasonObj.toJavaObject(PgcRelatedSeason.class);
                            if (season != null) {
                                relatedList.add(season.toBiliVideoDetail());
                            }
                        }
                        generalResponse.data = relatedList;
                    }
                }
            }
            jSONObject.clear();
            return generalResponse;
        }
        throw new JSONException("Response is not a jsonobject!");
    }
}
