package com.bilibili.tv.api.area;

import bl.vp;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.okretro.anno.CacheControl;
import com.bilibili.tv.api.category.CategoryMeta;
import java.util.List;
import retrofit2.http.BaseUrl;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* compiled from: BL */
@BaseUrl("https://api.bilibili.com")
/* loaded from: classes.dex */
public interface RegionService {
    // Web接口排行榜，不需要签名参数
    @GET("/x/web-interface/ranking/v2")
    @CacheControl(10000)
    vp<GeneralResponse<List<BiliVideoV2>>> getDynamicVideo(@Query("rid") int i, @Query("type") String type);

    @GET("/x/v2/region/show/child")
    @CacheControl(60000)
    vp<GeneralResponse<FirstPageVideos>> getHotVideoList(@Query("access_key") String str, @Query("rid") int i, @Query("tag_id") Integer num, @Query("channel") String str2);

    @GET("/x/v2/region/index")
    vp<CategoryMeta> getRegionList(@Query("ver") String str);

    @GET("/x/v2/region/show/child/list")
    @CacheControl
    vp<GeneralResponse<List<BiliVideoV2>>> getVideoList(@Query("rid") int i, @Query("pn") int i2, @Query("ps") int i3, @Query("order") String str, @Query("tag_id") Integer num, @Query("channel") String str2);
}