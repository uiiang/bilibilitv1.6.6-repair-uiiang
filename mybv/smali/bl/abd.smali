.class public Lbl/abd;
.super Ljava/lang/Object;
.source "abd.java"


# static fields
.field public static final CDN_PREF_AUTO:I = 0x0

.field public static final CDN_PREF_BILIVIDEO:I = 0x1

.field public static final CDN_PREF_MANUAL:I = 0x3

.field public static final CDN_PREF_MCDN:I = 0x2

.field private static final KEY_AUDIO_BALANCE_LEVEL:Ljava/lang/String; = "audio_balance_level"

.field private static final KEY_RENDER_VIEW_TYPE:Ljava/lang/String; = "render_view_type"

.field public static final MENU_ADJUST:I = 0x8

.field public static final MENU_ALL:I = 0x1fff

.field public static final MENU_ALPHA:I = 0x20

.field public static final MENU_AUDIO_BALANCE:I = 0x800

.field public static final MENU_CHAPTER:I = 0x200

.field public static final MENU_DANMAKU:I = 0x2

.field public static final MENU_EBOOK:I = 0x2000

.field public static final MENU_MODE:I = 0x80

.field public static final MENU_QUALITY:I = 0x1

.field public static final MENU_RATIO:I = 0x4

.field public static final MENU_SIZE:I = 0x10

.field public static final MENU_SKIP:I = 0x400

.field public static final MENU_SPEED:I = 0x40

.field public static final MENU_SUBTITLE:I = 0x100

.field public static final MENU_SUBTITLE_SIZE:I = 0x1000

.field public static final OTHER_COLUMN_COMPACT:I = 0x1

.field public static final OTHER_COLUMN_NORMAL:I = 0x0

.field public static final RECOMMEND_API_APP:I = 0x1

.field public static final RECOMMEND_API_WEB:I = 0x0

.field public static final RENDER_VIEW_SURFACE:I = 0x1

.field public static final RENDER_VIEW_TEXTURE:I = 0x2

.field private static final SKIP_PREFIX:Ljava/lang/String; = "skip_time_"

.field public static final SPACE_MODE_ALL:I = 0x1

.field public static final SPACE_MODE_DYNAMIC:I = 0x0

.field private static final SUBTITLE_PREFIX:Ljava/lang/String; = "subtitle_"

.field public static final TAB_ALL:I = 0x3f

.field public static final TAB_AREA:I = 0x8

.field public static final TAB_BANGUMI:I = 0x10

.field public static final TAB_HOT_RECOMMEND:I = 0x2

.field public static final TAB_LIVE:I = 0x4

.field public static final TAB_PERSONAL_RECOMMEND:I = 0x1

.field public static final TAB_PGC:I = 0x20

.field public static final a:[F

.field private static audioBalanceLevel:Ljava/lang/String;

.field public static final b:[F

.field private static c:Lbl/abd;

.field private static cacheLimitType:I

.field private static cdnPreference:I

.field private static danmaku_type:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static homeColumnType:I

.field private static homeDefaultType:I

.field private static imageSizeType:I

.field private static j:F

.field private static k:F

.field private static l:I

.field private static livePlayerType:I

.field private static mode_id:I

.field private static otherColumnType:I

.field private static playerMenuConfig:I

.field private static playerType:I

.field private static recommendApiType:I

.field private static renderViewType:I

.field private static spaceDynamicMode:I

.field private static speed_id:I

.field public static final speeds:[F

.field private static subtitleSize:F

.field private static topTabConfig:I


# instance fields
.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, -0x1

    .line 17
    new-array v0, v2, [F

    fill-array-data v0, :array_40

    sput-object v0, Lbl/abd;->a:[F

    .line 18
    new-array v0, v2, [F

    fill-array-data v0, :array_54

    sput-object v0, Lbl/abd;->b:[F

    .line 23
    sput v1, Lbl/abd;->danmaku_type:I

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_68

    sput-object v0, Lbl/abd;->speeds:[F

    .line 31
    sput v1, Lbl/abd;->speed_id:I

    .line 32
    sput v1, Lbl/abd;->mode_id:I

    .line 164
    const/4 v0, 0x0

    sput v0, Lbl/abd;->subtitleSize:F

    .line 305
    sput v1, Lbl/abd;->homeDefaultType:I

    .line 319
    sput v1, Lbl/abd;->homeColumnType:I

    .line 333
    sput v1, Lbl/abd;->recommendApiType:I

    .line 349
    sput v1, Lbl/abd;->otherColumnType:I

    .line 365
    sput v1, Lbl/abd;->imageSizeType:I

    .line 379
    sput v1, Lbl/abd;->spaceDynamicMode:I

    .line 433
    sput v1, Lbl/abd;->cacheLimitType:I

    .line 458
    sput v1, Lbl/abd;->topTabConfig:I

    .line 502
    sput v1, Lbl/abd;->playerMenuConfig:I

    .line 527
    sput v1, Lbl/abd;->cdnPreference:I

    .line 595
    sput v1, Lbl/abd;->playerType:I

    .line 614
    sput v1, Lbl/abd;->livePlayerType:I

    .line 634
    const/4 v0, 0x0

    sput-object v0, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    .line 653
    sput v1, Lbl/abd;->renderViewType:I

    return-void

    .line 17
    :array_40
    .array-data 4
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f99999a    # 1.2f
    .end array-data

    .line 18
    :array_54
    .array-data 4
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 30
    :array_68
    .array-data 4
        0x40000000    # 2.0f
        0x3fe00000    # 1.75f
        0x3fc00000    # 1.5f
        0x3fa00000    # 1.25f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "bili_preference"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbl/abd;->d:Landroid/content/SharedPreferences;

    .line 36
    const-string v0, "bili_upgrade"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbl/abd;->e:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbl/abd;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    sget-object v0, Lbl/abd;->c:Lbl/abd;

    if-nez v0, :cond_7

    .line 41
    invoke-static {p0}, Lbl/abd;->j(Landroid/content/Context;)V

    .line 43
    :cond_7
    sget-object v0, Lbl/abd;->c:Lbl/abd;

    return-object v0
.end method

.method public static a(Landroid/content/Context;F)V
    .locals 2

    .prologue
    .line 150
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "danmaku_text_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    sput p1, Lbl/abd;->j:F

    .line 152
    sput p1, Lmybl/DanmakuClient;->mScale:F

    .line 153
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 110
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video_play_quality"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    sput p1, Lbl/abd;->h:I

    .line 112
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_new_world"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    if-eqz p1, :cond_1b

    .line 61
    const/4 v0, 0x1

    sput v0, Lbl/abd;->f:I

    .line 72
    :cond_1a
    :goto_1a
    return-void

    .line 63
    :cond_1b
    const/4 v0, 0x2

    sput v0, Lbl/abd;->f:I

    .line 65
    invoke-static {p0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v0

    .line 66
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_1a

    .line 67
    and-int/lit16 v0, v0, -0x2001

    .line 68
    invoke-static {p0, v0}, Lbl/abd;->set_player_menu_config(Landroid/content/Context;I)V

    .line 69
    const-string v0, "abd"

    const-string v1, "\u5173\u95ed\u9690\u85cf\u529f\u80fd\uff0c\u81ea\u52a8\u53d6\u6d88\u7535\u5b50\u4e66\u83dc\u5355\u9879"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static add_account(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 724
    :try_start_0
    invoke-static {p0}, Lbl/abd;->get_accounts(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 725
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 726
    const-string v2, "username"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    if-eqz p3, :cond_15

    .line 728
    const-string v2, "avatar"

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_15
    const-string v2, "account_info"

    invoke-virtual {v1, v2, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string v2, "passport_info"

    invoke-virtual {v1, v2, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v1

    invoke-virtual {v1}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "accounts_info"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 737
    :goto_3b
    return-void

    .line 734
    :catch_3c
    move-exception v0

    .line 735
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public static b(Landroid/content/Context;F)V
    .locals 2

    .prologue
    .line 179
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "danmaku_text_alpha"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    sput p1, Lbl/abd;->k:F

    .line 181
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    sput v0, Lmybl/DanmakuClient;->mAlpha:I

    .line 182
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 194
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live_video_play_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    sput p1, Lbl/abd;->l:I

    .line 196
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbl/wm;->d(I)V

    .line 197
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 88
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_show_live"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    if-eqz p1, :cond_1b

    .line 90
    const/4 v0, 0x1

    sput v0, Lbl/abd;->g:I

    .line 94
    :goto_1a
    return-void

    .line 92
    :cond_1b
    const/4 v0, 0x2

    sput v0, Lbl/abd;->g:I

    goto :goto_1a
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 75
    sget v2, Lbl/abd;->f:I

    if-eqz v2, :cond_d

    .line 76
    sget v2, Lbl/abd;->f:I

    if-ne v2, v0, :cond_b

    .line 84
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 76
    goto :goto_a

    .line 78
    :cond_d
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v2

    invoke-virtual {v2}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "is_new_world"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 79
    if-eqz v1, :cond_21

    .line 80
    sput v0, Lbl/abd;->f:I

    :goto_1f
    move v0, v1

    .line 84
    goto :goto_a

    .line 82
    :cond_21
    const/4 v0, 0x2

    sput v0, Lbl/abd;->f:I

    goto :goto_1f
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_31

    const/16 v0, 0xf2

    .line 125
    :goto_5
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v2

    invoke-virtual {v2}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "danmaku_text_show_type"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    sput v0, Lbl/abd;->danmaku_type:I

    move v2, v1

    .line 127
    :goto_1d
    const/16 v0, 0xa

    if-ge v2, v0, :cond_35

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    sget v0, Lbl/abd;->danmaku_type:I

    shr-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_33

    const/4 v0, 0x1

    :goto_2b
    aput-boolean v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    :cond_31
    move v0, v1

    .line 124
    goto :goto_5

    :cond_33
    move v0, v1

    .line 127
    goto :goto_2b

    .line 128
    :cond_35
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 97
    sget v2, Lbl/abd;->g:I

    if-eqz v2, :cond_d

    .line 98
    sget v2, Lbl/abd;->g:I

    if-ne v2, v0, :cond_b

    .line 106
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 98
    goto :goto_a

    .line 100
    :cond_d
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v2

    invoke-virtual {v2}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "is_show_live"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    if-eqz v1, :cond_21

    .line 102
    sput v0, Lbl/abd;->g:I

    :goto_1f
    move v0, v1

    .line 106
    goto :goto_a

    .line 104
    :cond_21
    const/4 v0, 0x2

    sput v0, Lbl/abd;->g:I

    goto :goto_1f
.end method

.method public static clearSkipTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 592
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_intro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_outro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 593
    return-void
.end method

.method public static clearSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 703
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 706
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 707
    return-void
.end method

.method public static d(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 115
    sget v0, Lbl/abd;->h:I

    if-nez v0, :cond_17

    .line 116
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "video_play_quality"

    const/16 v2, 0x40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    sput v0, Lbl/abd;->h:I

    .line 120
    :goto_16
    return v0

    :cond_17
    sget v0, Lbl/abd;->h:I

    goto :goto_16
.end method

.method public static del_account(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 741
    :try_start_0
    invoke-static {p0}, Lbl/abd;->get_accounts(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 742
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v1

    invoke-virtual {v1}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "accounts_info"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 747
    :goto_20
    return-void

    .line 744
    :catch_21
    move-exception v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 131
    sget v0, Lbl/abd;->danmaku_type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 132
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "danmaku_text_show_type"

    const/16 v2, 0xf2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->danmaku_type:I

    .line 134
    :cond_17
    sget v0, Lbl/abd;->danmaku_type:I

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static f(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 156
    sget v0, Lbl/abd;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    .line 157
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "danmaku_text_size"

    const v2, 0x3f333333    # 0.7f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 158
    sput v0, Lbl/abd;->j:F

    .line 161
    :goto_1a
    return v0

    :cond_1b
    sget v0, Lbl/abd;->j:F

    goto :goto_1a
.end method

.method public static g(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 185
    sget v0, Lbl/abd;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    .line 186
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "danmaku_text_alpha"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 187
    sput v0, Lbl/abd;->k:F

    .line 190
    :goto_19
    return v0

    :cond_1a
    sget v0, Lbl/abd;->k:F

    goto :goto_19
.end method

.method public static getListSkipKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip_time_list_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListSubtitleKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subtitle_list_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 583
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_intro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 584
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_outro"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 585
    cmp-long v0, v2, v6

    if-nez v0, :cond_4a

    cmp-long v0, v4, v6

    if-nez v0, :cond_4a

    .line 586
    const/4 v0, 0x0

    .line 588
    :goto_49
    return-object v0

    :cond_4a
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    goto :goto_49
.end method

.method public static getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    .line 692
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 693
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 695
    if-ne v1, v5, :cond_49

    cmpl-float v0, v2, v4

    if-nez v0, :cond_49

    .line 696
    const/4 v0, 0x0

    .line 698
    :goto_48
    return-object v0

    :cond_49
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    goto :goto_48
.end method

.method public static getUpSkipKey(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip_time_up_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSkipKey(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip_time_video_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSubtitleKey(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subtitle_video_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_accounts(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .prologue
    .line 715
    :try_start_0
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accounts_info"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 718
    :goto_14
    return-object v0

    .line 716
    :catch_15
    move-exception v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 718
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_14
.end method

.method public static get_audio_balance_level(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 637
    sget-object v0, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 638
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "audio_balance_level"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    .line 640
    :cond_16
    sget-object v0, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    return-object v0
.end method

.method public static get_cache_limit(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 441
    sget v0, Lbl/abd;->cacheLimitType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 442
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cache_limit_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->cacheLimitType:I

    .line 444
    :cond_16
    sget v0, Lbl/abd;->cacheLimitType:I

    return v0
.end method

.method public static get_cache_limit_mb(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 448
    invoke-static {p0}, Lbl/abd;->get_cache_limit(Landroid/content/Context;)I

    move-result v1

    .line 449
    packed-switch v1, :pswitch_data_14

    .line 454
    :goto_9
    :pswitch_9
    return v0

    .line 450
    :pswitch_a
    const/16 v0, 0x32

    goto :goto_9

    .line 452
    :pswitch_d
    const/16 v0, 0x12c

    goto :goto_9

    .line 453
    :pswitch_10
    const/16 v0, 0x1f4

    goto :goto_9

    .line 449
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public static get_cdn_preference(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 535
    sget v0, Lbl/abd;->cdnPreference:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 536
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cdn_preference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->cdnPreference:I

    .line 538
    :cond_16
    sget v0, Lbl/abd;->cdnPreference:I

    return v0
.end method

.method public static get_danmaku_type(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 143
    sget v0, Lbl/abd;->danmaku_type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 144
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "danmaku_text_show_type"

    const/16 v2, 0xf2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->danmaku_type:I

    .line 146
    :cond_17
    sget v0, Lbl/abd;->danmaku_type:I

    return v0
.end method

.method public static get_filter_path(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "filter_rule_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_home_column(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 327
    sget v0, Lbl/abd;->homeColumnType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 328
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_column_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->homeColumnType:I

    .line 330
    :cond_16
    sget v0, Lbl/abd;->homeColumnType:I

    return v0
.end method

.method public static get_home_default(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 313
    sget v0, Lbl/abd;->homeDefaultType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 314
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_default_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->homeDefaultType:I

    .line 316
    :cond_16
    sget v0, Lbl/abd;->homeDefaultType:I

    return v0
.end method

.method public static get_image_size(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 373
    sget v0, Lbl/abd;->imageSizeType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 374
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "image_size_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->imageSizeType:I

    .line 376
    :cond_16
    sget v0, Lbl/abd;->imageSizeType:I

    return v0
.end method

.method public static get_live_player_type(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 622
    sget v0, Lbl/abd;->livePlayerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 623
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "live_player_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->livePlayerType:I

    .line 626
    :cond_16
    sget v0, Lbl/abd;->livePlayerType:I

    return v0
.end method

.method public static get_mode_id(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 235
    sget v0, Lbl/abd;->mode_id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 236
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "play_mode_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->mode_id:I

    .line 238
    :cond_16
    sget v0, Lbl/abd;->mode_id:I

    return v0
.end method

.method public static get_other_column(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 359
    sget v0, Lbl/abd;->otherColumnType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 360
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "other_column_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->otherColumnType:I

    .line 362
    :cond_16
    sget v0, Lbl/abd;->otherColumnType:I

    return v0
.end method

.method public static get_personal_config(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    const-string v1, "{\"filter_on\":false,\"progressbar_on\":false,\"fastquit_on\":false,\"auto_update\":false}"

    .line 297
    :try_start_3
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v2

    invoke-virtual {v2}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "personal_config"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_16

    move-result-object v0

    .line 302
    :goto_15
    return-object v0

    .line 299
    :catch_16
    move-exception v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static get_player_menu_config(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 511
    sget v0, Lbl/abd;->playerMenuConfig:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 512
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "player_menu_config"

    const/16 v2, 0x1fff

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->playerMenuConfig:I

    .line 514
    :cond_17
    sget v0, Lbl/abd;->playerMenuConfig:I

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    sput v0, Lbl/abd;->playerMenuConfig:I

    .line 515
    :cond_1e
    sget v0, Lbl/abd;->playerMenuConfig:I

    return v0
.end method

.method public static get_player_type(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 603
    sget v0, Lbl/abd;->playerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 604
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "player_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->playerType:I

    .line 607
    :cond_16
    sget v0, Lbl/abd;->playerType:I

    return v0
.end method

.method public static get_recommend_api_type(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 343
    sget v0, Lbl/abd;->recommendApiType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 344
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recommend_api_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->recommendApiType:I

    .line 346
    :cond_16
    sget v0, Lbl/abd;->recommendApiType:I

    return v0
.end method

.method public static get_render_view_type(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 656
    sget v0, Lbl/abd;->renderViewType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 657
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "render_view_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->renderViewType:I

    .line 659
    :cond_16
    sget v0, Lbl/abd;->renderViewType:I

    return v0
.end method

.method public static get_skip_categories(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 261
    :try_start_5
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "skip_categories"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 263
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_34

    .line 265
    const/4 v0, 0x0

    :goto_24
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 268
    :cond_34
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 269
    const-string v0, "intro"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v0, "outro"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    const-string v0, "sponsor"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_49} :catch_4a

    .line 280
    :cond_49
    :goto_49
    return-object v1

    .line 274
    :catch_4a
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const-string v0, "intro"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v0, "outro"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v0, "sponsor"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_49
.end method

.method public static get_space_dynamic_mode(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 389
    sget v0, Lbl/abd;->spaceDynamicMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 390
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "space_dynamic_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->spaceDynamicMode:I

    .line 392
    :cond_16
    sget v0, Lbl/abd;->spaceDynamicMode:I

    return v0
.end method

.method public static get_speed(I)F
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lbl/abd;->speeds:[F

    aget v0, v0, p0

    return v0
.end method

.method public static get_speed_id(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 219
    sget v0, Lbl/abd;->speed_id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 220
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "video_speed_id"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->speed_id:I

    .line 222
    :cond_16
    sget v0, Lbl/abd;->speed_id:I

    return v0
.end method

.method public static get_subtitle_size(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 172
    sget v0, Lbl/abd;->subtitleSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    .line 173
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "subtitle_text_size"

    const v2, 0x3f333333    # 0.7f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lbl/abd;->subtitleSize:F

    .line 175
    :cond_1a
    sget v0, Lbl/abd;->subtitleSize:F

    return v0
.end method

.method public static get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 407
    :cond_8
    :goto_8
    return-object p1

    .line 401
    :cond_9
    invoke-static {p0}, Lbl/abd;->is_hd_image(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 402
    packed-switch p2, :pswitch_data_28

    goto :goto_8

    .line 403
    :pswitch_13
    invoke-static {p0, p1}, Lbl/ach;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 404
    :pswitch_18
    invoke-static {p0, p1}, Lbl/ach;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 405
    :pswitch_1d
    invoke-static {p0, p1}, Lbl/ach;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 406
    :pswitch_22
    invoke-static {p0, p1}, Lbl/ach;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 402
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_13
        :pswitch_18
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method

.method public static get_thumb_url_a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbl/abd;->get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_thumb_url_b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lbl/abd;->get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lbl/abd;->get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_thumb_url_d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lbl/abd;->get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_thumb_url_with_size(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 430
    :cond_8
    :goto_8
    return-object p1

    .line 429
    :cond_9
    invoke-static {p0}, Lbl/abd;->is_hd_image(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 430
    invoke-static {p0, p1, p2, p3}, Lbl/ach;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public static get_top_tab_config(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 474
    sget v0, Lbl/abd;->topTabConfig:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 475
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "top_tab_config"

    const/16 v2, 0x3f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->topTabConfig:I

    .line 477
    :cond_17
    sget v0, Lbl/abd;->topTabConfig:I

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    sput v0, Lbl/abd;->topTabConfig:I

    .line 478
    :cond_1e
    sget v0, Lbl/abd;->topTabConfig:I

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 200
    sget v0, Lbl/abd;->l:I

    if-nez v0, :cond_16

    .line 201
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "live_video_play_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 202
    sput v0, Lbl/abd;->l:I

    .line 205
    :goto_15
    return v0

    :cond_16
    sget v0, Lbl/abd;->l:I

    goto :goto_15
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "live_wallpaper"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static is_cdn_manual(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 542
    invoke-static {p0}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static is_exo_live_player_selected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 630
    invoke-static {p0}, Lbl/abd;->get_live_player_type(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static is_exo_player_selected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 611
    invoke-static {p0}, Lbl/abd;->get_player_type(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static is_hd_image(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 396
    invoke-static {p0}, Lbl/abd;->get_image_size(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static is_menu_enabled(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 519
    invoke-static {p0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static is_tab_enabled(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 482
    invoke-static {p0}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static is_texture_view_selected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 670
    invoke-static {p0}, Lbl/abd;->get_render_view_type(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static declared-synchronized j(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 47
    const-class v1, Lbl/abd;

    monitor-enter v1

    :try_start_3
    const-class v2, Lbl/abd;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    .line 48
    :try_start_6
    sget-object v0, Lbl/abd;->c:Lbl/abd;

    if-nez v0, :cond_11

    .line 49
    new-instance v0, Lbl/abd;

    invoke-direct {v0, p0}, Lbl/abd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbl/abd;->c:Lbl/abd;

    .line 51
    :cond_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_14

    .line 52
    monitor-exit v1

    return-void

    .line 51
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 47
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 546
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 562
    :cond_8
    :goto_8
    return-void

    .line 550
    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 551
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 553
    invoke-static {}, Lbl/ajq;->b()Lbl/aoy;

    move-result-object v1

    .line 554
    if-eqz v1, :cond_8

    .line 555
    invoke-virtual {v1}, Lbl/aoy;->h()Lbl/aov;

    move-result-object v1

    .line 556
    if-eqz v1, :cond_8

    .line 557
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbl/aov;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lbl/aji;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_8

    .line 560
    :catch_26
    move-exception v0

    goto :goto_8
.end method

.method public static setSkipTime(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 579
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_intro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_outro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 580
    return-void
.end method

.method public static setSubtitleSettings(Landroid/content/Context;Ljava/lang/String;IF)V
    .locals 3

    .prologue
    .line 685
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 689
    return-void
.end method

.method public static set_audio_balance_level(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 644
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "audio_balance_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 645
    sput-object p1, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public static set_cache_limit(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 436
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cache_limit_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 437
    sput p1, Lbl/abd;->cacheLimitType:I

    .line 438
    return-void
.end method

.method public static set_cdn_preference(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 530
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cdn_preference"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 531
    sput p1, Lbl/abd;->cdnPreference:I

    .line 532
    return-void
.end method

.method public static set_danmaku_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 138
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "danmaku_text_show_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    sput p1, Lbl/abd;->danmaku_type:I

    .line 140
    return-void
.end method

.method public static set_filter_path(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter_rule_path"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    return-void
.end method

.method public static set_home_column(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 322
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "home_column_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 323
    sput p1, Lbl/abd;->homeColumnType:I

    .line 324
    return-void
.end method

.method public static set_home_default(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 308
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "home_default_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    sput p1, Lbl/abd;->homeDefaultType:I

    .line 310
    return-void
.end method

.method public static set_image_size(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 368
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "image_size_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    sput p1, Lbl/abd;->imageSizeType:I

    .line 370
    return-void
.end method

.method public static set_live_player_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 617
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live_player_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    sput p1, Lbl/abd;->livePlayerType:I

    .line 619
    return-void
.end method

.method public static set_mode_id(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 230
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "play_mode_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    sput p1, Lbl/abd;->mode_id:I

    .line 232
    return-void
.end method

.method public static set_other_column(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 354
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "other_column_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    sput p1, Lbl/abd;->otherColumnType:I

    .line 356
    return-void
.end method

.method public static set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 285
    :try_start_0
    invoke-static {p0}, Lbl/abd;->get_personal_config(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v1

    invoke-virtual {v1}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "personal_config"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 291
    :goto_20
    return-void

    .line 288
    :catch_21
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public static set_player_menu_config(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 505
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 506
    :cond_3
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "player_menu_config"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    sput p1, Lbl/abd;->playerMenuConfig:I

    .line 508
    return-void
.end method

.method public static set_player_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 598
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "player_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 599
    sput p1, Lbl/abd;->playerType:I

    .line 600
    return-void
.end method

.method public static set_recommend_api_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 338
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recommend_api_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    sput p1, Lbl/abd;->recommendApiType:I

    .line 340
    return-void
.end method

.method public static set_render_view_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 663
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "render_view_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 664
    sput p1, Lbl/abd;->renderViewType:I

    .line 666
    sput p1, Lmybl/BiliFilter;->prefer_videoview:I

    .line 667
    return-void
.end method

.method public static set_skip_categories(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    :try_start_0
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "skip_categories"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 256
    :goto_19
    return-void

    .line 253
    :catch_1a
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public static set_space_dynamic_mode(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 384
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "space_dynamic_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    sput p1, Lbl/abd;->spaceDynamicMode:I

    .line 386
    return-void
.end method

.method public static set_speed_id(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 214
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video_speed_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    sput p1, Lbl/abd;->speed_id:I

    .line 216
    return-void
.end method

.method public static set_subtitle_size(Landroid/content/Context;F)V
    .locals 2

    .prologue
    .line 167
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitle_text_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    sput p1, Lbl/abd;->subtitleSize:F

    .line 169
    return-void
.end method

.method public static set_top_tab_config(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 468
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 469
    :cond_3
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "top_tab_config"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 470
    sput p1, Lbl/abd;->topTabConfig:I

    .line 471
    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbl/abd;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method
