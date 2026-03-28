package com.bilibili.tv.api.video;

import android.support.annotation.NonNull;
import bl.jp;
import bl.vu;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.okretro.GeneralResponse;
import java.io.IOException;
import okhttp3.ResponseBody;

public class PgcInfoParser implements vu<GeneralResponse<PgcInfo>> {
    @Override
    @NonNull
    public GeneralResponse<PgcInfo> convert(ResponseBody responseBody) throws IOException {
        String rawResponse = responseBody.string();
        Object a = jp.a(rawResponse);
        GeneralResponse<PgcInfo> response = new GeneralResponse<>();
        if (a instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) a;
            response.code = jSONObject.getIntValue("code");
            response.message = jSONObject.getString("message");
            if (response.code == 0) {
                JSONObject data = jSONObject.getJSONObject("result");
                if (data != null) {
                    response.data = JSON.parseObject(data.toJSONString(), PgcInfo.class);
                }
            }
        }
        return response;
    }
}
