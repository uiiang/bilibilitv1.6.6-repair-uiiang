package bl;

import com.bilibili.okretro.GeneralResponse;
import java.util.List;
import retrofit2.http.BaseUrl;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.Query;

import com.alibaba.fastjson.JSONObject;

/* compiled from: BL */
@BaseUrl("https://api.live.bilibili.com")
/* loaded from: classes.dex */
public interface aeh {
    @GET("/room/v1/Area/getRoomList")
    vp<JSONObject> getRoomList(@Query("parent_area_id") String i, @Query("sort_type") String str, @Query("page") int i2, @Query("page_size") int i3);

    /**
     * Web 直播首页推荐流（分页）。匿名可访问，无需 WBI/App 签名；
     * 每页固定 15 条，data.has_more == 1 表示还有下一页；
     * data.my_idols.list 为登录用户的关注直播间（仅第 1 页返回）。
     */
    @Headers("Referer: https://live.bilibili.com/")
    @GET("/xlive/web-interface/v1/index/getListV2")
    vp<GeneralResponse<JSONObject>> getLiveRecommendList(
            @Header("Cookie") String cookie,
            @Query("platform") String platform,
            @Query("page") int page,
            @Query("web_location") String webLocation);

    @GET("/xlive/app-interface/v1/relation/liveAnchor")
    vp<JSONObject> getAttentionRoomList(@Query("access_key") String str, @Query("platform") String str2, @Query("quality") int i);
}