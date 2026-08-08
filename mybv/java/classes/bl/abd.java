package bl;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.util.Log;

import com.alibaba.fastjson.*;
import java.util.*;
import mybl.DanmakuClient;
import com.bilibili.tv.player.widget.PlayerMenuRight;
import tv.danmaku.videoplayer.core.media.PlayerSelector;

/* compiled from: BL */
/* loaded from: classes.dex */
public class abd {
    public static final float[] a = {0.5f, 0.6f, 0.7f, 0.8f, 0.9f, 1.0f, 1.1f, 1.2f};
    public static final float[] b = {0.3f, 0.4f, 0.5f, 0.6f, 0.7f, 0.8f, 0.9f, 1.0f};
    private static abd c;
    private static int f;
    private static int g;
    private static int h;
    private static int danmaku_type = -1;
    private static float j;
    private static float k;
    private static int l;
    private SharedPreferences d;
    private SharedPreferences e;

    public static final float[] speeds = {2.0f,1.75f,1.5f,1.25f,1.0f,0.75f,0.5f};
    private static int speed_id = -1;
    private static int mode_id = -1;

    private abd(@NonNull Context context) {
        this.d = context.getSharedPreferences("bili_preference", 0);
        this.e = context.getSharedPreferences("bili_upgrade", 0);
    }

    public static abd a(@NonNull Context context) {
        if (c == null) {
            j(context);
        }
        return c;
    }

    private static synchronized void j(Context context) {
        synchronized (abd.class) {
            if (c == null) {
                c = new abd(context);
            }
        }
    }

    public SharedPreferences a() {
        return this.d;
    }

    public static void a(Context context, boolean z) {
        a(context).a().edit().putBoolean("is_new_world", z).apply();
        if (z) {
            f = 1;
        } else {
            f = 2;
            // 关闭隐藏功能时，等同取消个性化右侧菜单中的电子书功能
            int menuConfig = get_player_menu_config(context);
            if ((menuConfig & MENU_EBOOK) != 0) {
                menuConfig = menuConfig & ~MENU_EBOOK;
                set_player_menu_config(context, menuConfig);
                Log.i("abd", "关闭隐藏功能，自动取消电子书菜单项");
            }
        }
    }

    public static boolean b(Context context) {
        if (f != 0) {
            return f == 1;
        }
        boolean z = a(context).a().getBoolean("is_new_world", false);
        if (z) {
            f = 1;
        } else {
            f = 2;
        }
        return z;
    }

    public static void b(Context context, boolean z) {
        a(context).a().edit().putBoolean("is_show_live", z).apply();
        if (z) {
            g = 1;
        } else {
            g = 2;
        }
    }

    public static boolean c(Context context) {
        if (g != 0) {
            return g == 1;
        }
        boolean z = a(context).a().getBoolean("is_show_live", false);
        if (z) {
            g = 1;
        } else {
            g = 2;
        }
        return z;
    }

    public static void a(Context context, int i2) {
        a(context).a().edit().putInt("video_play_quality", i2).apply();
        h = i2;
    }

    public static int d(Context context) {
        if (h == 0) {
            int i2 = a(context).a().getInt("video_play_quality", 64);
            h = i2;
            return i2;
        }
        return h;
    }

    public static void c(Context context, boolean z) {
        int type = z ? 0b11110010 : 0;
        a(context).a().edit().putInt("danmaku_text_show_type", type).apply();
        danmaku_type = type;
        for(int i=0;i<10;i++)PlayerMenuRight.danmaku_valid_list[i]=((danmaku_type>>i)&1)>0;
    }

    public static boolean e(Context context) {
        if (danmaku_type == -1) {
            danmaku_type = a(context).a().getInt("danmaku_text_show_type", 0b11110010);
        }
        return danmaku_type>0;
    }

    public static void set_danmaku_type(Context context, int type) {
        a(context).a().edit().putInt("danmaku_text_show_type", type).apply();
        danmaku_type = type;
    }

    public static int get_danmaku_type(Context context) {
        if (danmaku_type == -1) {
            danmaku_type = a(context).a().getInt("danmaku_text_show_type", 0b11110010);
        }
        return danmaku_type;
    }

    public static void a(Context context, float f2) {
        a(context).a().edit().putFloat("danmaku_text_size", f2).apply();
        j = f2;
        DanmakuClient.mScale = f2;
    }

    public static float f(Context context) {
        if (j == 0.0f) {
            float f2 = a(context).a().getFloat("danmaku_text_size", 0.7f);
            j = f2;
            return f2;
        }
        return j;
    }

    private static float subtitleSize = 0.0f;

    public static void set_subtitle_size(Context context, float f2) {
        a(context).a().edit().putFloat("subtitle_text_size", f2).apply();
        subtitleSize = f2;
    }

    public static float get_subtitle_size(Context context) {
        if (subtitleSize == 0.0f) {
            subtitleSize = a(context).a().getFloat("subtitle_text_size", 0.7f);
        }
        return subtitleSize;
    }

    public static void b(Context context, float f2) {
        a(context).a().edit().putFloat("danmaku_text_alpha", f2).apply();
        k = f2;
        DanmakuClient.mAlpha = (int)(f2*255);
    }

    public static float g(Context context) {
        if (k == 0.0f) {
            float f2 = a(context).a().getFloat("danmaku_text_alpha", 1.0f);
            k = f2;
            return f2;
        }
        return k;
    }

    public static void b(Context context, int i2) {
        a(context).a().edit().putInt("live_video_play_type", i2).apply();
        l = i2;
        wm.a().d(i2);
    }

    public static int h(Context context) {
        if (l == 0) {
            int i2 = a(context).a().getInt("live_video_play_type", 2);
            l = i2;
            return i2;
        }
        return l;
    }

    public static String i(Context context) {
        return a(context).a().getString("live_wallpaper", "");
    }


    public static void set_speed_id(Context context, int id) {
        a(context).a().edit().putInt("video_speed_id", id).apply();
        speed_id = id;
    }

    public static int get_speed_id(Context context) {
        if (speed_id == -1) {
            speed_id = a(context).a().getInt("video_speed_id", 4);
        }
        return speed_id;
    }

    public static float get_speed(int id) {
        return speeds[id];
    }

    public static void set_mode_id(Context context, int id) {
        a(context).a().edit().putInt("play_mode_id", id).apply();
        mode_id = id;
    }

    public static int get_mode_id(Context context) {
        if (mode_id == -1) {
            mode_id = a(context).a().getInt("play_mode_id", 0);
        }
        return mode_id;
    }

    public static void set_filter_path(Context context, String filter_path) {
        a(context).a().edit().putString("filter_rule_path", filter_path).apply();
    }

    public static String get_filter_path(Context context) {
        return a(context).a().getString("filter_rule_path", "");
    }

    public static void set_skip_categories(Context context, Set<String> skip_categories) {
        try{
            a(context).a().edit().putString("skip_categories", JSON.toJSONString(skip_categories)).apply();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    public static Set<String> get_skip_categories(Context context) {
        HashSet<String> h = new HashSet<String>();
        try{
            String jsonStr = a(context).a().getString("skip_categories", "");
            if (jsonStr != null && !jsonStr.isEmpty()) {
                JSONArray ja = JSON.parseArray(jsonStr);
                if (ja != null) {
                    for(int i=0;i<ja.size();i++)h.add(ja.getString(i));
                }
            }
            if (h.isEmpty()) {
                h.add("intro");
                h.add("outro");
                h.add("sponsor");
            }
        }
        catch(Exception e){
            e.printStackTrace();
            h.add("intro");
            h.add("outro");
            h.add("sponsor");
        }
        return h;
    }

    public static void set_personal_config(Context context, String key, Object value) {
        try{
            JSONObject config = get_personal_config(context);
            config.put(key, value);
            a(context).a().edit().putString("personal_config", config.toString()).apply();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static JSONObject get_personal_config(Context context) {
        JSONObject config = null;
        String default_config = "{\"filter_on\":false,\"progressbar_on\":false,\"fastquit_on\":false,\"auto_update\":false}";
        try{
            config = JSON.parseObject(a(context).a().getString("personal_config", default_config));
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return config;
    }

    private static int homeDefaultType = -1;

    public static void set_home_default(Context context, int type) {
        a(context).a().edit().putInt("home_default_type", type).apply();
        homeDefaultType = type;
    }

    public static int get_home_default(Context context) {
        if (homeDefaultType == -1) {
            homeDefaultType = a(context).a().getInt("home_default_type", 0);
        }
        return homeDefaultType;
    }

    private static int homeColumnType = -1;

    public static void set_home_column(Context context, int columns) {
        a(context).a().edit().putInt("home_column_type", columns).apply();
        homeColumnType = columns;
    }

    public static int get_home_column(Context context) {
        if (homeColumnType == -1) {
            homeColumnType = a(context).a().getInt("home_column_type", 2);
        }
        return homeColumnType;
    }

    private static int recommendApiType = -1;
    public static final int RECOMMEND_API_WEB = 0;
    public static final int RECOMMEND_API_APP = 1;

    public static void set_recommend_api_type(Context context, int type) {
        a(context).a().edit().putInt("recommend_api_type", type).apply();
        recommendApiType = type;
    }

    public static int get_recommend_api_type(Context context) {
        if (recommendApiType == -1) {
            recommendApiType = a(context).a().getInt("recommend_api_type", RECOMMEND_API_WEB);
        }
        return recommendApiType;
    }

    private static int otherColumnType = -1;
    public static final int OTHER_COLUMN_NORMAL = 0;
    public static final int OTHER_COLUMN_COMPACT = 1;

    public static void set_other_column(Context context, int type) {
        a(context).a().edit().putInt("other_column_type", type).apply();
        otherColumnType = type;
    }

    public static int get_other_column(Context context) {
        if (otherColumnType == -1) {
            otherColumnType = a(context).a().getInt("other_column_type", OTHER_COLUMN_COMPACT);
        }
        return otherColumnType;
    }

    private static int imageSizeType = -1;

    public static void set_image_size(Context context, int type) {
        a(context).a().edit().putInt("image_size_type", type).apply();
        imageSizeType = type;
    }

    public static int get_image_size(Context context) {
        if (imageSizeType == -1) {
            imageSizeType = a(context).a().getInt("image_size_type", 1);
        }
        return imageSizeType;
    }

    private static int spaceDynamicMode = -1;
    public static final int SPACE_MODE_DYNAMIC = 0;
    public static final int SPACE_MODE_ALL = 1;

    public static void set_space_dynamic_mode(Context context, int mode) {
        a(context).a().edit().putInt("space_dynamic_mode", mode).apply();
        spaceDynamicMode = mode;
    }

    public static int get_space_dynamic_mode(Context context) {
        if (spaceDynamicMode == -1) {
            spaceDynamicMode = a(context).a().getInt("space_dynamic_mode", SPACE_MODE_ALL);
        }
        return spaceDynamicMode;
    }

    public static boolean is_hd_image(Context context) {
        return get_image_size(context) == 0;
    }

    public static String get_thumb_url(Context context, String url, int type) {
        if (url == null || url.isEmpty()) return url;
        if (is_hd_image(context)) return url;
        switch (type) {
            case 0: return ach.a(context, url);
            case 1: return ach.b(context, url);
            case 2: return ach.c(context, url);
            case 3: return ach.d(context, url);
            default: return url;
        }
    }

    public static String get_thumb_url_a(Context context, String url) {
        return get_thumb_url(context, url, 0);
    }

    public static String get_thumb_url_b(Context context, String url) {
        return get_thumb_url(context, url, 1);
    }

    public static String get_thumb_url_c(Context context, String url) {
        return get_thumb_url(context, url, 2);
    }

    public static String get_thumb_url_d(Context context, String url) {
        return get_thumb_url(context, url, 3);
    }

    public static String get_thumb_url_with_size(Context context, String url, int width, int height) {
        if (url == null || url.isEmpty()) return url;
        if (is_hd_image(context)) return url;
        return ach.a(context, url, width, height);
    }

    private static int cacheLimitType = -1;

    public static void set_cache_limit(Context context, int type) {
        a(context).a().edit().putInt("cache_limit_type", type).apply();
        cacheLimitType = type;
    }

    public static int get_cache_limit(Context context) {
        if (cacheLimitType == -1) {
            cacheLimitType = a(context).a().getInt("cache_limit_type", 1);
        }
        return cacheLimitType;
    }

    public static int get_cache_limit_mb(Context context) {
        int type = get_cache_limit(context);
        switch (type) {
            case 0: return 50;
            case 1: return 100;
            case 2: return 300;
            case 3: return 500;
            default: return 100;
        }
    }

    private static int topTabConfig = -1;
    public static final int TAB_PERSONAL_RECOMMEND = 1;
    public static final int TAB_HOT_RECOMMEND = 2;
    public static final int TAB_LIVE = 4;
    public static final int TAB_AREA = 8;
    public static final int TAB_BANGUMI = 16;
    public static final int TAB_PGC = 32;
    public static final int TAB_ALL = TAB_PERSONAL_RECOMMEND | TAB_HOT_RECOMMEND | TAB_LIVE | TAB_AREA | TAB_BANGUMI | TAB_PGC;

    public static void set_top_tab_config(Context context, int config) {
        if (config == 0) config = TAB_PERSONAL_RECOMMEND;
        a(context).a().edit().putInt("top_tab_config", config).apply();
        topTabConfig = config;
    }

    public static int get_top_tab_config(Context context) {
        if (topTabConfig == -1) {
            topTabConfig = a(context).a().getInt("top_tab_config", TAB_ALL);
        }
        if (topTabConfig == 0) topTabConfig = TAB_PERSONAL_RECOMMEND;
        return topTabConfig;
    }

    public static boolean is_tab_enabled(Context context, int tabFlag) {
        return (get_top_tab_config(context) & tabFlag) != 0;
    }

    // Player right menu config
    public static final int MENU_QUALITY = 1;
    public static final int MENU_DANMAKU = 2;
    public static final int MENU_RATIO = 4;
    public static final int MENU_ADJUST = 8;
    public static final int MENU_SIZE = 16;
    public static final int MENU_ALPHA = 32;
    public static final int MENU_SPEED = 64;
    public static final int MENU_MODE = 128;
    public static final int MENU_SUBTITLE = 256;
    public static final int MENU_CHAPTER = 512;
    public static final int MENU_SKIP = 1024;
    public static final int MENU_AUDIO_BALANCE = 2048;
    public static final int MENU_SUBTITLE_SIZE = 4096;
    public static final int MENU_EBOOK = 8192; // 电子书菜单项
    public static final int MENU_ALL = MENU_QUALITY | MENU_DANMAKU | MENU_RATIO | MENU_ADJUST | MENU_SIZE | MENU_ALPHA | MENU_SPEED | MENU_MODE | MENU_SUBTITLE | MENU_CHAPTER | MENU_SKIP | MENU_AUDIO_BALANCE | MENU_SUBTITLE_SIZE; // 注意：MENU_EBOOK默认不启用
    
    private static int playerMenuConfig = -1;
    
    public static void set_player_menu_config(Context context, int config) {
        if (config == 0) config = MENU_QUALITY;
        a(context).a().edit().putInt("player_menu_config", config).apply();
        playerMenuConfig = config;
    }
    
    public static int get_player_menu_config(Context context) {
        if (playerMenuConfig == -1) {
            playerMenuConfig = a(context).a().getInt("player_menu_config", MENU_ALL);
        }
        if (playerMenuConfig == 0) playerMenuConfig = MENU_QUALITY;
        return playerMenuConfig;
    }
    
    public static boolean is_menu_enabled(Context context, int menuFlag) {
        return (get_player_menu_config(context) & menuFlag) != 0;
    }

    // CDN preference: 0=auto, 1=bilivideo, 2=mcdn, 3=manual
    public static final int CDN_PREF_AUTO = 0;
    public static final int CDN_PREF_BILIVIDEO = 1;
    public static final int CDN_PREF_MCDN = 2;
    public static final int CDN_PREF_MANUAL = 3;
    private static int cdnPreference = -1;

    public static void set_cdn_preference(Context context, int pref) {
        a(context).a().edit().putInt("cdn_preference", pref).apply();
        cdnPreference = pref;
    }

    public static int get_cdn_preference(Context context) {
        if (cdnPreference == -1) {
            cdnPreference = a(context).a().getInt("cdn_preference", CDN_PREF_AUTO);
        }
        return cdnPreference;
    }

    public static boolean is_cdn_manual(Context context) {
        return get_cdn_preference(context) == CDN_PREF_MANUAL;
    }

    public static void prefetchCoverToMemoryCache(Context context, String coverUrl) {
        if (coverUrl == null || coverUrl.isEmpty()) {
            return;
        }
        try {
            android.net.Uri uri = android.net.Uri.parse(coverUrl);
            com.facebook.imagepipeline.request.ImageRequestBuilder builder = com.facebook.imagepipeline.request.ImageRequestBuilder.a(uri);
            com.facebook.imagepipeline.request.ImageRequest imageRequest = builder.o();
            aoy imagePipelineFactory = ajq.b();
            if (imagePipelineFactory != null) {
                aov imagePipeline = imagePipelineFactory.h();
                if (imagePipeline != null) {
                    imagePipeline.b(imageRequest, null);
                }
            }
        } catch (Exception e) {
        }
    }

    private static final String SKIP_PREFIX = "skip_time_";

    public static String getVideoSkipKey(long avid) {
        return SKIP_PREFIX + "video_" + avid;
    }

    public static String getListSkipKey(String seasonId) {
        return SKIP_PREFIX + "list_" + seasonId;
    }

    public static String getUpSkipKey(long mid) {
        return SKIP_PREFIX + "up_" + mid;
    }

    public static void setSkipTime(Context context, String key, long intro, long outro) {
        a(context).a().edit().putLong(key + "_intro", intro).putLong(key + "_outro", outro).apply();
    }

    public static long[] getSkipTime(Context context, String key) {
        long intro = a(context).a().getLong(key + "_intro", 0);
        long outro = a(context).a().getLong(key + "_outro", 0);
        if (intro == 0 && outro == 0) {
            return null;
        }
        return new long[]{intro, outro};
    }

    public static void clearSkipTime(Context context, String key) {
        a(context).a().edit().remove(key + "_intro").remove(key + "_outro").apply();
    }

    private static int playerType = -1;

    public static void set_player_type(Context context, int type) {
        a(context).a().edit().putInt("player_type", type).apply();
        playerType = type;
    }

    public static int get_player_type(Context context) {
        if (playerType == -1) {
            playerType = a(context).a().getInt("player_type",
                PlayerSelector.PLAYER_IJK);
        }
        return playerType;
    }

    public static boolean is_exo_player_selected(Context context) {
        return get_player_type(context) == PlayerSelector.PLAYER_EXO;
    }

    private static int livePlayerType = -1;

    public static void set_live_player_type(Context context, int type) {
        a(context).a().edit().putInt("live_player_type", type).apply();
        livePlayerType = type;
    }

    public static int get_live_player_type(Context context) {
        if (livePlayerType == -1) {
            livePlayerType = a(context).a().getInt("live_player_type",
                PlayerSelector.PLAYER_IJK);
        }
        return livePlayerType;
    }

    public static boolean is_exo_live_player_selected(Context context) {
        return get_live_player_type(context) == PlayerSelector.PLAYER_EXO;
    }

    private static final String KEY_AUDIO_BALANCE_LEVEL = "audio_balance_level";
    private static String audioBalanceLevel = null;

    public static String get_audio_balance_level(Context context) {
        if (audioBalanceLevel == null) {
            audioBalanceLevel = a(context).a().getString(KEY_AUDIO_BALANCE_LEVEL, "off");
        }
        return audioBalanceLevel;
    }

    public static void set_audio_balance_level(Context context, String level) {
        a(context).a().edit().putString(KEY_AUDIO_BALANCE_LEVEL, level).apply();
        audioBalanceLevel = level;
    }

    // 渲染视图类型常量
    public static final int RENDER_VIEW_SURFACE = 1; // SurfaceView
    public static final int RENDER_VIEW_TEXTURE = 2; // TextureView

    private static final String KEY_RENDER_VIEW_TYPE = "render_view_type";
    private static int renderViewType = -1;

    public static int get_render_view_type(Context context) {
        if (renderViewType == -1) {
            renderViewType = a(context).a().getInt(KEY_RENDER_VIEW_TYPE, RENDER_VIEW_SURFACE);
        }
        return renderViewType;
    }

    public static void set_render_view_type(Context context, int type) {
        a(context).a().edit().putInt(KEY_RENDER_VIEW_TYPE, type).apply();
        renderViewType = type;
        // 同步更新到BiliFilter
        mybl.BiliFilter.prefer_videoview = type;
    }

    public static boolean is_texture_view_selected(Context context) {
        return get_render_view_type(context) == RENDER_VIEW_TEXTURE;
    }

    private static final String SUBTITLE_PREFIX = "subtitle_";

    public static String getVideoSubtitleKey(long avid) {
        return SUBTITLE_PREFIX + "video_" + avid;
    }

    public static String getListSubtitleKey(String listKey) {
        return SUBTITLE_PREFIX + "list_" + listKey;
    }

    public static void setSubtitleSettings(Context context, String key, int subtitleId, float subtitleSize) {
        // Log.i("SubtitleCache", "setSubtitleSettings: key=" + key + ", subtitleId=" + subtitleId + ", subtitleSize=" + subtitleSize);
        a(context).a().edit()
            .putInt(key + "_id", subtitleId)
            .putFloat(key + "_size", subtitleSize)
            .apply();
    }

    public static int[] getSubtitleSettings(Context context, String key) {
        int id = a(context).a().getInt(key + "_id", -1);
        float size = a(context).a().getFloat(key + "_size", -1.0f);
        // Log.i("SubtitleCache", "getSubtitleSettings: key=" + key + ", id=" + id + ", size=" + size);
        if (id == -1 && size == -1.0f) {
            return null;
        }
        return new int[]{id, (int)(size * 100)};
    }

    public static void clearSubtitleSettings(Context context, String key) {
        // Log.i("SubtitleCache", "clearSubtitleSettings: key=" + key);
        a(context).a().edit()
            .remove(key + "_id")
            .remove(key + "_size")
            .apply();
    }
}