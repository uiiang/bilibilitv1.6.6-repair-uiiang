package com.bilibili.tv.api.favorite;

import bl.vp;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.tv.api.BiliApiService;
import retrofit2.http.BaseUrl;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.Call;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import com.alibaba.fastjson.JSONObject;

import java.util.List;

@BaseUrl("http://api.bilibili.com")
public interface BiliFavoriteVideoApiService {
    
    @FormUrlEncoded
    @POST("/x/v2/fav/video/add")
    vp<GeneralResponse<Void>> addVideoToList(
            @Field("access_key") String access_key,
            @Field("fid") String fid,
            @Field("aid") long aid,
            @Field("from") String from);
    
    @FormUrlEncoded
    @POST("/x/v2/fav/video/del")
    vp<GeneralResponse<Void>> deleteVideoFromList(
            @Field("access_key") String access_key,
            @Field("fid") String fid,
            @Field("aid") long aid);
    
    @GET("/x/v2/fav/folder")
    vp<GeneralResponse<List<BiliFavoriteBox>>> getStatedBoxList(
            @Query("access_key") String access_key,
            @Query("vmid") Long vmid,
            @Query("aid") Long aid);
    
    @GET("/x/v2/fav/video")
    vp<GeneralResponse<BiliFavVideoDetailList>> getFavoriteVideoListV2(
            @Query("access_key") String access_key,
            @QueryMap BiliApiService.MaoPageParamsMap params);
    
    @GET("/x/v2/fav/video")
    vp<GeneralResponse<BiliSearchFavoriteBox>> getFavoriteSearchedVideoList(
            @Query("access_key") String access_key,
            @QueryMap FavParamsMap params);
    
    @FormUrlEncoded
    @POST("/x/v2/fav/folder/add")
    vp<GeneralResponse<Void>> addBox(
            @Field("access_key") String access_key,
            @Field("name") String name,
            @Field("public") int isPublic);
    
    @FormUrlEncoded
    @POST("/x/v2/fav/folder/del")
    vp<GeneralResponse<Void>> deleteBox(
            @Field("access_key") String access_key,
            @Field("fid") long fid);
    
    @FormUrlEncoded
    @POST("/x/v2/fav/video/del")
    vp<GeneralResponse<Void>> deleteVideo(
            @Field("access_key") String access_key,
            @Field("fid") long fid,
            @Field("aid") long aid);
    
    @FormUrlEncoded
    @POST("/x/v2/fav/video/mdel")
    vp<GeneralResponse<Void>> deleteVideo(
            @Field("access_key") String access_key,
            @Field("fid") long fid,
            @Field("aids") String aids);
    
    @GET("/x/tag/detail")
    vp<GeneralResponse<com.bilibili.tv.api.video.tag.TagInfo>> getTagDetail(
            @Query("tag_id") int tag_id,
            @Query("pn") int pn,
            @Query("ps") int ps);
    
    @GET("/x/tag/ranking/archives")
    vp<GeneralResponse<com.bilibili.tv.api.video.tag.TagArchives>> getTagVideos(
            @Query("tag_id") int tag_id,
            @Query("pn") int pn,
            @Query("ps") int ps);
    
    @FormUrlEncoded
    @POST("/x/v2/fav/folder/rename")
    vp<GeneralResponse<Void>> rename(
            @Field("access_key") String access_key,
            @Field("fid") long fid,
            @Field("name") String name);

    class FavParamsMap extends BiliApiService.MaoMidPageParamsMap {
        public FavParamsMap(int pn) {
            super(pn, 0);
        }
        
        public FavParamsMap(long mid, long fid, int pn) {
            super(mid, pn, 0);
            putParams("fid", String.valueOf(fid));
        }
        
        public FavParamsMap(long mid, long fid, long tid, String keyword, String order, int pn) {
            super(mid, pn, 0);
            putParams("fid", String.valueOf(fid));
            putParams("tid", String.valueOf(tid));
            if (keyword != null) {
                putParams("keyword", keyword);
            }
            if (order != null) {
                putParams("order", order);
            }
        }
    }
}
