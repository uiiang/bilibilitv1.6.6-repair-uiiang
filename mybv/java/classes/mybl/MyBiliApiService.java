package mybl;

import bl.vp;
import retrofit2.Call;
import retrofit2.http.*;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.api.video.PgcInfo;
import java.util.List;

@BaseUrl("https://api.bilibili.com/")
public interface MyBiliApiService {
    @FormUrlEncoded
    @POST("/x/web-interface/archive/like")
    vp<GeneralResponse<JSONObject>> likeVideo(@Field("aid") long aid, @Field("like") int like,
            @Field("csrf") String csrf, @Header("Cookie") String cookie);

    @FormUrlEncoded
    @POST("/x/web-interface/coin/add")
    vp<GeneralResponse<JSONObject>> coinVideo(@Field("aid") long aid, @Field("multiply") int multiply,
            @Field("select_like") int select_like, @Field("csrf") String csrf, @Header("Cookie") String cookie);

    @FormUrlEncoded
    @POST("/x/web-interface/archive/like/triple")
    vp<GeneralResponse<JSONObject>> tripleVideo(@Field("aid") long aid, @Field("csrf") String csrf,
            @Header("Cookie") String cookie);

    @GET("/x/web-interface/wbi/index/top/feed/rcmd")
    vp<GeneralResponse<JSONObject>> recommendVideos(@Query("ps") int page_size, @Query("fresh_idx") int fresh_idx,
            @Header("Cookie") String cookie);

    @GET("/x/relation")
    vp<GeneralResponse<JSONObject>> getRelation(@Query("fid") long fid, @Header("Cookie") String cookie);

    @GET("/x/relation/followings")
    vp<GeneralResponse<JSONObject>> getFollowings(@Query("vmid") long vmid,
            @Query("order_type") String order_type, @Query("ps") int page_size, @Query("pn") int page,
            @Header("Cookie") String cookie);

    @FormUrlEncoded
    @POST("/x/relation/modify")
    vp<GeneralResponse<JSONObject>> modifyRelation(@Field("fid") long fid,
            @Field("act") int act, @Field("re_src") int re_src, @Field("csrf") String csrf, @Header("Cookie") String cookie);

    @GET("/x/web-interface/view/detail")
    vp<GeneralResponse<BiliVideoDetail>> getVideoDetail(@Query("aid") long aid);

    @GET("/x/web-interface/view")
    vp<GeneralResponse<BiliVideoDetail>> getVideoInfo(@Query("aid") long aid);

    @GET("/x/web-interface/archive/related")
    vp<GeneralResponse<List<BiliVideoDetail>>> getRelatedVideos(@Query("aid") long aid);

    @GET("/x/web-interface/view/detail/tag")
    vp<GeneralResponse<List<BiliVideoDetail.Tag>>> getVideoTags(@Query("aid") long aid);

    @GET
    Call<JSONObject> getPgcSeasonInfo(@Url String signedUrl);

    @GET("/x/web-interface/archive/relation")
    vp<GeneralResponse<JSONObject>> getArchiveRelation(@Query("bvid") String bvid, @Header("Cookie") String cookie);

    @GET("/x/web-interface/dynamic/region")
    vp<GeneralResponse<JSONObject>> getRegionHotVideo(@Query("rid") int rid, @Query("ps") int page_size);

    @GET("/x/dm/filter/user")
    vp<GeneralResponse<JSONObject>> getDanmuFilter();

    @GET("/x/space/bangumi/follow/list")
    vp<GeneralResponse<JSONObject>> getFollowBangumi(@Query("type") int type,
            @Query("pn") int page, @Query("ps") int page_size, @Query("vmid") long vmid, @Header("Cookie") String cookie);

    @GET("/x/web-interface/wbi/search/type")
    vp<GeneralResponse<JSONObject>> search(@Query("search_type") String search_type, @Query("keyword") String keyword,
            @Query("order") String order, @Query("page") int page, @Query("pagesize") int page_size,
            @Query("tids") String tids, @Header("Cookie") String cookie);

    @GET
    Call<GeneralResponse<JSONObject>> searchWithWbi(@Url String fullUrl);

    @GET("/x/web-interface/wbi/search/type")
    vp<GeneralResponse<JSONObject>> searchLiveRoom(@Query("search_type") String search_type, @Query("keyword") String keyword,
            @Query("order") String order, @Query("page") int page, @Query("pagesize") int page_size,
            @Header("Cookie") String cookie);

    @GET("/x/polymer/web-dynamic/v1/feed/all?type=video")
    vp<GeneralResponse<JSONObject>> getFeedVideos(@Query("offset") String offset, @Header("Cookie") String cookie);

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

    @GET("/x/web-interface/popular/series/one")
    vp<GeneralResponse<JSONObject>> getWeeklyPrecious(@Query("number") long number, @Header("Cookie") String cookie);

    @GET("/x/web-interface/popular/series/list")
    vp<GeneralResponse<JSONObject>> getWeeklySeriesList(@Header("Cookie") String cookie);

    @GET("/x/web-interface/popular/precious")
    vp<GeneralResponse<JSONObject>> getPopularPrecious(@Query("page_size") int pageSize, @Query("page") int page, @Header("Cookie") String cookie);

    // Auth space - user archive videos (Web API with WBI sign)
    @Headers("Referer: https://space.bilibili.com")
    @GET("/x/space/wbi/arc/search")
    vp<GeneralResponse<JSONObject>> getSpaceArcSearch(@Query("mid") long mid,
            @Query("pn") int pn, @Query("ps") int ps, @Query("tid") int tid,
            @Query("order") String order, @Query("keyword") String keyword,
            @Query("order_avoided") boolean orderAvoided, @Query("platform") String platform,
            @Query("web_location") String webLocation,
            @Header("Cookie") String cookie);

    // Auth space - seasons and series list
    @Headers("Referer: https://space.bilibili.com")
    @GET("/x/polymer/web-space/seasons_series_list")
    vp<GeneralResponse<JSONObject>> getSeasonsSeriesList(@Query("mid") long mid,
            @Query("page_size") int pageSize, @Query("page_num") int pageNum,
            @Query("web_location") String webLocation, @Header("Cookie") String cookie);

    // Auth space - season archives list
    @GET("/x/polymer/web-space/seasons_archives_list")
    vp<GeneralResponse<JSONObject>> getSeasonsArchivesList(@Query("mid") long mid, @Query("season_id") long seasonId, @Query("sort_reverse") boolean sortReverse,
            @Query("page_size") int pageSize, @Query("page_num") int pageNum,
            @Query("web_location") String webLocation, @Header("Referer") String referer, @Header("Cookie") String cookie);

    // Series archives
    @GET("/x/series/archives")
    vp<GeneralResponse<JSONObject>> getSeriesArchives(@Query("mid") long mid,
            @Query("current_mid") long currentMid,
            @Query("series_id") long seriesId, @Query("only_normal") boolean onlyNormal, @Query("sort") String sort,
            @Query("ps") int pageSize, @Query("pn") int pageNum, @Query("web_location") String webLocation,
            @Header("Referer") String referer, @Header("Cookie") String cookie);

    // Space dynamic feed - video type
    @Headers("Referer: https://space.bilibili.com")
    @GET("/x/polymer/web-dynamic/v1/feed/space?type=video")
    vp<GeneralResponse<JSONObject>> getSpaceDynamicFeed(
            @Query("host_mid") long hostMid,
            @Query("offset") String offset,
            @Query("timezone_offset") int timezoneOffset,
            @Query("platform") String platform,
            @Header("Cookie") String cookie);

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
            @Header("Referer") String referer,
            @Header("Cookie") String cookie);

    @GET("/x/v3/fav/folder/created/list-all")
    vp<JSONObject> getCreatedFolderList(
            @Query("up_mid") long up_mid,
            @Query("rid") long rid,
            @Query("type") int type,
            @Query("web_location") String web_location,
            @Header("Referer") String referer,
            @Header("Cookie") String cookie);
    
    @Headers("Referer: https://www.bilibili.com")
    @FormUrlEncoded
    @POST("/x/v3/fav/resource/deal")
    vp<JSONObject> addVideoToFavorite(
            @Field("rid") long rid,
            @Field("type") int type,
            @Field("add_media_ids") long media_id,
            @Field("csrf") String csrf,
            @Header("Cookie") String cookie);
    
    @Headers("Referer: https://www.bilibili.com")
    @FormUrlEncoded
    @POST("/x/v3/fav/resource/deal")
    vp<JSONObject> delVideoFromFavorite(
            @Field("rid") long rid,
            @Field("type") int type,
            @Field("del_media_ids") long media_id,
            @Field("csrf") String csrf,
            @Header("Cookie") String cookie);
}
