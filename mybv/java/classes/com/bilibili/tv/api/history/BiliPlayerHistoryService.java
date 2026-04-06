package com.bilibili.tv.api.history;

import bl.vp;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.tv.api.video.BiliVideoDetail;
import java.util.List;
import retrofit2.http.BaseUrl;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Query;

@BaseUrl(value = "https://api.bilibili.com")
public interface BiliPlayerHistoryService {
    @FormUrlEncoded
    @POST(value = "/x/v2/history/clear")
    vp<JSONObject> clearVideoHistories(@Field(value = "csrf") String csrf, @Header(value = "Cookie") String cookie);

    @FormUrlEncoded
    @POST(value = "/x/v2/history/delete")
    vp<JSONObject> clearVideoHistories(@Field(value = "kid") String kid, @Field(value = "csrf") String csrf, @Header(value = "Cookie") String cookie);

    @GET(value = "/x/web-interface/history/cursor")
    vp<GeneralResponse<JSONObject>> getVideoHistoryList(@Header(value = "Cookie") String cookie, @Query(value = "max") long max, @Query(value = "view_at") long view_at, @Query(value = "business") String business, @Query(value = "type") String type, @Query(value = "ps") int ps);

    @FormUrlEncoded
    @POST(value = "/x/v2/history/toview/del?viewed=true")
    vp<JSONObject> clearVideoToviews(@Field(value = "csrf") String csrf, @Header(value = "Cookie") String cookie);

    @FormUrlEncoded
    @POST(value = "/x/v2/history/toview/del")
    vp<JSONObject> clearVideoToviews(@Field(value = "aid") long aid, @Field(value = "csrf") String csrf, @Header(value = "Cookie") String cookie);

    @FormUrlEncoded
    @POST(value = "/x/v2/history/toview/add")
    vp<JSONObject> addVideoToviews(@Field(value = "aid") long aid, @Field(value = "csrf") String csrf, @Header(value = "Cookie") String cookie);

    @GET(value = "/x/v2/history/toview/web")
    vp<GeneralResponse<JSONObject>> getVideoToviewList(@Header(value = "Cookie") String cookie, @Header(value = "Referer") String referer);

    @FormUrlEncoded
    @POST(value = "/x/v2/history/report")
    vp<GeneralResponse<Void>> reportProgress(@Field(value = "aid") long aid, @Field(value = "cid") long cid, @Field(value = "sid") long sid, @Field(value = "epid") long epid, @Field(value = "progress") long progress, @Field(value = "type") int type, @Field(value = "realtime") long realtime, @Field(value = "csrf") String csrf, @Header(value = "Cookie") String cookie);

    @FormUrlEncoded
    @POST(value = "https://api.live.bilibili.com/xlive/web-room/v1/index/roomEntryAction")
    vp<GeneralResponse<Void>> reportLiveEntry(@Field(value = "room_id") long roomId, @Field(value = "csrf") String csrf, @Field(value = "csrf_token") String csrfToken, @Header(value = "Cookie") String cookie);
}
