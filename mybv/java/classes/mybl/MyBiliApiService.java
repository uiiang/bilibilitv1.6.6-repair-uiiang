package mybl;

import bl.vp;
import retrofit2.http.*;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.tv.api.video.BiliVideoDetail;

@BaseUrl("https://api.bilibili.com/")
public interface MyBiliApiService {
    @FormUrlEncoded
    @POST("https://app.bilibili.com/x/v2/view/like")
    vp<GeneralResponse<JSONObject>> likeVideo(@Field("access_key") String access_key, @Field("aid") long aid,
            @Field("like") int like);

    @FormUrlEncoded
    @POST("https://app.bilibili.com/x/v2/view/coin/add")
    vp<GeneralResponse<JSONObject>> coinVideo(@Field("access_key") String access_key, @Field("aid") long aid,
            @Field("multiply") int multiply, @Field("select_like") int select_like);

    @FormUrlEncoded
    @POST("https://app.bilibili.com/x/v2/view/like/triple")
    vp<GeneralResponse<JSONObject>> tripleVideo(@Field("access_key") String access_key, @Field("aid") long aid);

    @GET("/x/web-interface/wbi/index/top/feed/rcmd")
    vp<GeneralResponse<JSONObject>> recommendVideos(@Query("ps") int page_size, @Query("access_key") String access_key,
            @Query("fresh_idx") int fresh_idx);

    @GET("/x/relation")
    vp<GeneralResponse<JSONObject>> getRelation(@Query("access_key") String access_key, @Query("fid") long fid);

    @GET("/x/relation/followings")
    vp<GeneralResponse<JSONObject>> getFollowings(@Query("access_key") String access_key, @Query("vmid") long vmid,
            @Query("order_type") String order_type, @Query("ps") int page_size, @Query("pn") int page);

    @FormUrlEncoded
    @POST("/x/relation/modify")
    vp<GeneralResponse<JSONObject>> modifyRelation(@Field("access_key") String access_key, @Field("fid") long fid,
            @Field("act") int act, @Field("re_src") int re_src);

    @GET("/x/web-interface/view/detail")
    vp<GeneralResponse<BiliVideoDetail>> getVideoDetail(@Query("aid") long aid);

    @GET("/x/web-interface/dynamic/region")
    vp<GeneralResponse<JSONObject>> getRegionHotVideo(@Query("rid") int rid, @Query("ps") int page_size);

    @GET("/x/dm/filter/user")
    vp<GeneralResponse<JSONObject>> getDanmuFilter();

    @GET("/x/space/bangumi/follow/list")
    vp<GeneralResponse<JSONObject>> getFollowBangumi(@Query("access_key") String access_key, @Query("type") int type,
            @Query("pn") int page, @Query("ps") int page_size, @Query("vmid") long vmid);

    @Headers("Cookie: ")
    @GET("/x/web-interface/search/type?search_type=live")
    vp<GeneralResponse<JSONObject>> searchLive(@Query("keyword") String keyword, @Query("page") int page,
            @Query("page_size") int page_size, @Query("order") String order);

    @GET("/x/polymer/web-dynamic/v1/feed/all?type=video")
    vp<GeneralResponse<JSONObject>> getFeedVideos(@Query("access_key") String access_key,
            @Query("offset") String offset);

    @GET("/pgc/page/pc/bangumi/tab?is_refresh=0&cursor=0")
    vp<JSONObject> getBangumiInfos();

    @GET("/pgc/page/pc/cinema/tab?is_refresh=0&cursor=0")
    vp<JSONObject> getPgcInfos();

    @GET("/x/v3/fav/folder/collected/list?platform=web")
    vp<GeneralResponse<JSONObject>> getCollectedFolders(@Query("pn") int page_number, @Query("ps") int page_size,
            @Query("up_mid") long up_mid, @Header("Cookie") String cookie);

    @GET("/x/space/fav/season/list")
    vp<GeneralResponse<JSONObject>> getFavoriteUserSeason(@Query("season_id") long season_id,
            @Query("pn") int page_number, @Query("ps") int page_size);

    @GET("/pugv/view/web/season")
    vp<GeneralResponse<JSONObject>> getPugvSeason(@Query("season_id") long season_id);

    @Headers("Referer: https://www.bilibili.com")
    @GET("/pugv/app/web/favorite/page")
    vp<GeneralResponse<JSONObject>> getFavoritePugv(@Query("pn") int page_number, @Query("ps") int page_size,
            @Query("mid") long mid, @Header("Cookie") String cookie);

    @GET("/x/web-interface/popular")
    vp<GeneralResponse<JSONObject>> getPopular(@Query("pn") int page_number, @Query("ps") int page_size);

    @Headers("Cookie: buvid3=00000000-0000-0000-0000-00000000000000000infoc")
    @GET("/x/web-interface/popular/series/one")
    vp<GeneralResponse<JSONObject>> getWeeklyPrecious(@Query("number") long number);

    @GET("/x/web-interface/popular/precious?page_size=100&page=1")
    vp<GeneralResponse<JSONObject>> getPopularPrecious();

    // Auth space - seasons and series list
    @Headers("Referer: https://space.bilibili.com")
    @GET("/x/polymer/web-space/seasons_series_list")
    vp<GeneralResponse<JSONObject>> getSeasonsSeriesList(@Query("access_key") String access_key, @Query("mid") long mid,
            @Query("page_size") int pageSize, @Query("page_num") int pageNum,
            @Query("web_location") String webLocation);

    // Auth space - season archives list
    @Headers("Referer: https://space.bilibili.com")
    @GET("/x/polymer/web-space/seasons_archives_list")
    vp<GeneralResponse<JSONObject>> getSeasonsArchivesList(@Query("access_key") String access_key,
            @Query("mid") long mid, @Query("season_id") long seasonId, @Query("sort_reverse") boolean sortReverse,
            @Query("page_size") int pageSize, @Query("page_num") int pageNum,
            @Query("web_location") String webLocation);

    // Series archives
    @Headers("Referer: https://space.bilibili.com")
    @GET("/x/series/archives")
    vp<GeneralResponse<JSONObject>> getSeriesArchives(@Query("access_key") String access_key, @Query("mid") long mid,
            @Query("current_mid") long currentMid,
            @Query("series_id") long seriesId, @Query("only_normal") boolean onlyNormal, @Query("sort") String sort,
            @Query("ps") int pageSize, @Query("pn") int pageNum, @Query("web_location") String webLocation);

    @GET("https://github.com/qidian55/bilibilitv1.6.6-repair/raw/refs/heads/main/update.json")
    vp<com.bilibili.tv.ui.upgrade.BiliUpgradeInfo> getThirdUpdateInfo();

    @GET("/x/v3/fav/resource/list")
    vp<GeneralResponse<JSONObject>> getFavoriteResourceList(
            @Query("media_id") long media_id,
            @Query("pn") int pn,
            @Query("ps") int ps,
            @Query("keyword") String keyword,
            @Query("order") String order,
            @Query("type") int type,
            @Query("tid") int tid,
            @Query("platform") String platform,
            @Query("web_location") String web_location,
            @Query("access_key") String access_key,
            @Header("Referer") String referer);

    @GET("/x/v3/fav/folder/created/list-all")
    vp<GeneralResponse<JSONObject>> getCreatedFolderList(
            @Query("up_mid") long up_mid,
            @Query("web_location") String web_location,
            @Header("Referer") String referer);
}
