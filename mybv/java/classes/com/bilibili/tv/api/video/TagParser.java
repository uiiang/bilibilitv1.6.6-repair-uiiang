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

public class TagParser implements vu<GeneralResponse<List<BiliVideoDetail.Tag>>> {
    @Override
    @NonNull
    public GeneralResponse<List<BiliVideoDetail.Tag>> convert(ResponseBody responseBody) throws IOException {
        String rawResponse = responseBody.string();
        // LogUtil.i("TagApi", "========== /x/web-interface/view/detail/tag Response ==========");
        // LogUtil.i("TagApi", rawResponse);
        Object a = jp.a(rawResponse);
        if (a instanceof JSONObject) {
            GeneralResponse<List<BiliVideoDetail.Tag>> generalResponse = new GeneralResponse<>();
            JSONObject jSONObject = (JSONObject) a;
            generalResponse.code = jSONObject.getIntValue("code");
            if (generalResponse.code != 0) {
                generalResponse.message = jSONObject.getString("message");
            } else {
                JSONArray dataArray = jSONObject.getJSONArray("data");
                if (dataArray != null) {
                    List<BiliVideoDetail.Tag> tagList = new ArrayList<>();
                    for (int i = 0; i < dataArray.size(); i++) {
                        JSONObject tagObj = dataArray.getJSONObject(i);
                        BiliVideoDetail.Tag tag = new BiliVideoDetail.Tag();
                        tag.id = tagObj.getIntValue("tag_id");
                        tag.name = tagObj.getString("tag_name");
                        tagList.add(tag);
                    }
                    generalResponse.data = tagList;
                }
            }
            jSONObject.clear();
            return generalResponse;
        }
        throw new JSONException("Response is not a jsonobject!");
    }
}
