.class public Lbl/abd;
.super Ljava/lang/Object;
.source "abd.java"


# static fields
.field public static final CDN_PREF_AUTO:I = 0x0

.field public static final CDN_PREF_BILIVIDEO:I = 0x1

.field public static final CDN_PREF_MANUAL:I = 0x3

.field public static final CDN_PREF_MCDN:I = 0x2

.field private static final KEY_AUDIO_BALANCE_LEVEL:Ljava/lang/String; = "audio_balance_level"

.field public static final MENU_ADJUST:I = 0x8

.field public static final MENU_ALL:I = 0xfff

.field public static final MENU_ALPHA:I = 0x20

.field public static final MENU_AUDIO_BALANCE:I = 0x800

.field public static final MENU_CHAPTER:I = 0x200

.field public static final MENU_DANMAKU:I = 0x2

.field public static final MENU_MODE:I = 0x80

.field public static final MENU_QUALITY:I = 0x1

.field public static final MENU_RATIO:I = 0x4

.field public static final MENU_SIZE:I = 0x10

.field public static final MENU_SKIP:I = 0x400

.field public static final MENU_SPEED:I = 0x40

.field public static final MENU_SUBTITLE:I = 0x100

.field public static final OTHER_COLUMN_COMPACT:I = 0x1

.field public static final OTHER_COLUMN_NORMAL:I = 0x0

.field private static final SKIP_PREFIX:Ljava/lang/String; = "skip_time_"

.field public static final SPACE_MODE_ALL:I = 0x1

.field public static final SPACE_MODE_DYNAMIC:I = 0x0

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

.field private static mode_id:I

.field private static otherColumnType:I

.field private static playerMenuConfig:I

.field private static playerType:I

.field private static spaceDynamicMode:I

.field private static speed_id:I

.field public static final speeds:[F

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

    .line 16
    new-array v0, v2, [F

    fill-array-data v0, :array_38

    sput-object v0, Lbl/abd;->a:[F

    .line 17
    new-array v0, v2, [F

    fill-array-data v0, :array_4c

    sput-object v0, Lbl/abd;->b:[F

    .line 22
    sput v1, Lbl/abd;->danmaku_type:I

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_60

    sput-object v0, Lbl/abd;->speeds:[F

    .line 30
    sput v1, Lbl/abd;->speed_id:I

    .line 31
    sput v1, Lbl/abd;->mode_id:I

    .line 283
    sput v1, Lbl/abd;->homeDefaultType:I

    .line 297
    sput v1, Lbl/abd;->homeColumnType:I

    .line 311
    sput v1, Lbl/abd;->otherColumnType:I

    .line 327
    sput v1, Lbl/abd;->imageSizeType:I

    .line 341
    sput v1, Lbl/abd;->spaceDynamicMode:I

    .line 395
    sput v1, Lbl/abd;->cacheLimitType:I

    .line 420
    sput v1, Lbl/abd;->topTabConfig:I

    .line 462
    sput v1, Lbl/abd;->playerMenuConfig:I

    .line 487
    sput v1, Lbl/abd;->cdnPreference:I

    .line 555
    sput v1, Lbl/abd;->playerType:I

    .line 575
    const/4 v0, 0x0

    sput-object v0, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    return-void

    .line 16
    nop

    :array_38
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

    .line 17
    :array_4c
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

    .line 29
    :array_60
    .array-data 4
        0x40000000    # 2.0f
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "bili_preference"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbl/abd;->d:Landroid/content/SharedPreferences;

    .line 35
    const-string v0, "bili_upgrade"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbl/abd;->e:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbl/abd;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    sget-object v0, Lbl/abd;->c:Lbl/abd;

    if-nez v0, :cond_7

    .line 40
    invoke-static {p0}, Lbl/abd;->j(Landroid/content/Context;)V

    .line 42
    :cond_7
    sget-object v0, Lbl/abd;->c:Lbl/abd;

    return-object v0
.end method

.method public static a(Landroid/content/Context;F)V
    .locals 2

    .prologue
    .line 142
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

    .line 143
    sput p1, Lbl/abd;->j:F

    .line 144
    sput p1, Lmybl/DanmakuClient;->mScale:F

    .line 145
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 102
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

    .line 103
    sput p1, Lbl/abd;->h:I

    .line 104
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 58
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

    .line 59
    if-eqz p1, :cond_1b

    .line 60
    const/4 v0, 0x1

    sput v0, Lbl/abd;->f:I

    .line 64
    :goto_1a
    return-void

    .line 62
    :cond_1b
    const/4 v0, 0x2

    sput v0, Lbl/abd;->f:I

    goto :goto_1a
.end method

.method public static b(Landroid/content/Context;F)V
    .locals 2

    .prologue
    .line 157
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

    .line 158
    sput p1, Lbl/abd;->k:F

    .line 159
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    sput v0, Lmybl/DanmakuClient;->mAlpha:I

    .line 160
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 172
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

    .line 173
    sput p1, Lbl/abd;->l:I

    .line 174
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbl/wm;->d(I)V

    .line 175
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 80
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

    .line 81
    if-eqz p1, :cond_1b

    .line 82
    const/4 v0, 0x1

    sput v0, Lbl/abd;->g:I

    .line 86
    :goto_1a
    return-void

    .line 84
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

    .line 67
    sget v2, Lbl/abd;->f:I

    if-eqz v2, :cond_d

    .line 68
    sget v2, Lbl/abd;->f:I

    if-ne v2, v0, :cond_b

    .line 76
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 68
    goto :goto_a

    .line 70
    :cond_d
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v2

    invoke-virtual {v2}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "is_new_world"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    if-eqz v1, :cond_21

    .line 72
    sput v0, Lbl/abd;->f:I

    :goto_1f
    move v0, v1

    .line 76
    goto :goto_a

    .line 74
    :cond_21
    const/4 v0, 0x2

    sput v0, Lbl/abd;->f:I

    goto :goto_1f
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 116
    if-eqz p1, :cond_31

    const/16 v0, 0xf2

    .line 117
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

    .line 118
    sput v0, Lbl/abd;->danmaku_type:I

    move v2, v1

    .line 119
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

    .line 116
    goto :goto_5

    :cond_33
    move v0, v1

    .line 119
    goto :goto_2b

    .line 120
    :cond_35
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 89
    sget v2, Lbl/abd;->g:I

    if-eqz v2, :cond_d

    .line 90
    sget v2, Lbl/abd;->g:I

    if-ne v2, v0, :cond_b

    .line 98
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 90
    goto :goto_a

    .line 92
    :cond_d
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v2

    invoke-virtual {v2}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "is_show_live"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 93
    if-eqz v1, :cond_21

    .line 94
    sput v0, Lbl/abd;->g:I

    :goto_1f
    move v0, v1

    .line 98
    goto :goto_a

    .line 96
    :cond_21
    const/4 v0, 0x2

    sput v0, Lbl/abd;->g:I

    goto :goto_1f
.end method

.method public static clearSkipTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 552
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

    .line 553
    return-void
.end method

.method public static d(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 107
    sget v0, Lbl/abd;->h:I

    if-nez v0, :cond_17

    .line 108
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "video_play_quality"

    const/16 v2, 0x40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    sput v0, Lbl/abd;->h:I

    .line 112
    :goto_16
    return v0

    :cond_17
    sget v0, Lbl/abd;->h:I

    goto :goto_16
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 123
    sget v0, Lbl/abd;->danmaku_type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 124
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "danmaku_text_show_type"

    const/16 v2, 0xf2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->danmaku_type:I

    .line 126
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
    .line 148
    sget v0, Lbl/abd;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    .line 149
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "danmaku_text_size"

    const v2, 0x3f333333    # 0.7f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 150
    sput v0, Lbl/abd;->j:F

    .line 153
    :goto_1a
    return v0

    :cond_1b
    sget v0, Lbl/abd;->j:F

    goto :goto_1a
.end method

.method public static g(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 163
    sget v0, Lbl/abd;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    .line 164
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "danmaku_text_alpha"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 165
    sput v0, Lbl/abd;->k:F

    .line 168
    :goto_19
    return v0

    :cond_1a
    sget v0, Lbl/abd;->k:F

    goto :goto_19
.end method

.method public static getListSkipKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
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

.method public static getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 543
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

    .line 544
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

    .line 545
    cmp-long v0, v2, v6

    if-nez v0, :cond_4a

    cmp-long v0, v4, v6

    if-nez v0, :cond_4a

    .line 546
    const/4 v0, 0x0

    .line 548
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

.method public static getUpSkipKey(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
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
    .line 527
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

.method public static get_audio_balance_level(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 578
    sget-object v0, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 579
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "audio_balance_level"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    .line 581
    :cond_16
    sget-object v0, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    return-object v0
.end method

.method public static get_cache_limit(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 403
    sget v0, Lbl/abd;->cacheLimitType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 404
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cache_limit_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->cacheLimitType:I

    .line 406
    :cond_16
    sget v0, Lbl/abd;->cacheLimitType:I

    return v0
.end method

.method public static get_cache_limit_mb(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 410
    invoke-static {p0}, Lbl/abd;->get_cache_limit(Landroid/content/Context;)I

    move-result v1

    .line 411
    packed-switch v1, :pswitch_data_14

    .line 416
    :goto_9
    :pswitch_9
    return v0

    .line 412
    :pswitch_a
    const/16 v0, 0x32

    goto :goto_9

    .line 414
    :pswitch_d
    const/16 v0, 0x12c

    goto :goto_9

    .line 415
    :pswitch_10
    const/16 v0, 0x1f4

    goto :goto_9

    .line 411
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
    .line 495
    sget v0, Lbl/abd;->cdnPreference:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 496
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cdn_preference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->cdnPreference:I

    .line 498
    :cond_16
    sget v0, Lbl/abd;->cdnPreference:I

    return v0
.end method

.method public static get_danmaku_type(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 135
    sget v0, Lbl/abd;->danmaku_type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 136
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "danmaku_text_show_type"

    const/16 v2, 0xf2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->danmaku_type:I

    .line 138
    :cond_17
    sget v0, Lbl/abd;->danmaku_type:I

    return v0
.end method

.method public static get_filter_path(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
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
    .line 305
    sget v0, Lbl/abd;->homeColumnType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 306
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_column_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->homeColumnType:I

    .line 308
    :cond_16
    sget v0, Lbl/abd;->homeColumnType:I

    return v0
.end method

.method public static get_home_default(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 291
    sget v0, Lbl/abd;->homeDefaultType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 292
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_default_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->homeDefaultType:I

    .line 294
    :cond_16
    sget v0, Lbl/abd;->homeDefaultType:I

    return v0
.end method

.method public static get_image_size(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 335
    sget v0, Lbl/abd;->imageSizeType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 336
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "image_size_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->imageSizeType:I

    .line 338
    :cond_16
    sget v0, Lbl/abd;->imageSizeType:I

    return v0
.end method

.method public static get_mode_id(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 213
    sget v0, Lbl/abd;->mode_id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 214
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "play_mode_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->mode_id:I

    .line 216
    :cond_16
    sget v0, Lbl/abd;->mode_id:I

    return v0
.end method

.method public static get_other_column(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 321
    sget v0, Lbl/abd;->otherColumnType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 322
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "other_column_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->otherColumnType:I

    .line 324
    :cond_16
    sget v0, Lbl/abd;->otherColumnType:I

    return v0
.end method

.method public static get_personal_config(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    const-string v1, "{\"filter_on\":false,\"progressbar_on\":false,\"fastquit_on\":false,\"auto_update\":false}"

    .line 275
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

    .line 280
    :goto_15
    return-object v0

    .line 277
    :catch_16
    move-exception v1

    .line 278
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static get_player_menu_config(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 471
    sget v0, Lbl/abd;->playerMenuConfig:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 472
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "player_menu_config"

    const/16 v2, 0xfff

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->playerMenuConfig:I

    .line 474
    :cond_17
    sget v0, Lbl/abd;->playerMenuConfig:I

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    sput v0, Lbl/abd;->playerMenuConfig:I

    .line 475
    :cond_1e
    sget v0, Lbl/abd;->playerMenuConfig:I

    return v0
.end method

.method public static get_player_type(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 563
    sget v0, Lbl/abd;->playerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 564
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "player_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->playerType:I

    .line 567
    :cond_16
    sget v0, Lbl/abd;->playerType:I

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
    .line 237
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 239
    :try_start_5
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "skip_categories"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 241
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 242
    if-eqz v2, :cond_34

    .line 243
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

    .line 246
    :cond_34
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 247
    const-string v0, "intro"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v0, "outro"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v0, "sponsor"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_49} :catch_4a

    .line 258
    :cond_49
    :goto_49
    return-object v1

    .line 252
    :catch_4a
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    const-string v0, "intro"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v0, "outro"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v0, "sponsor"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_49
.end method

.method public static get_space_dynamic_mode(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 351
    sget v0, Lbl/abd;->spaceDynamicMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 352
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "space_dynamic_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->spaceDynamicMode:I

    .line 354
    :cond_16
    sget v0, Lbl/abd;->spaceDynamicMode:I

    return v0
.end method

.method public static get_speed(I)F
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lbl/abd;->speeds:[F

    aget v0, v0, p0

    return v0
.end method

.method public static get_speed_id(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 197
    sget v0, Lbl/abd;->speed_id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 198
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "video_speed_id"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->speed_id:I

    .line 200
    :cond_16
    sget v0, Lbl/abd;->speed_id:I

    return v0
.end method

.method public static get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 369
    :cond_8
    :goto_8
    return-object p1

    .line 363
    :cond_9
    invoke-static {p0}, Lbl/abd;->is_hd_image(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 364
    packed-switch p2, :pswitch_data_28

    goto :goto_8

    .line 365
    :pswitch_13
    invoke-static {p0, p1}, Lbl/ach;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 366
    :pswitch_18
    invoke-static {p0, p1}, Lbl/ach;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 367
    :pswitch_1d
    invoke-static {p0, p1}, Lbl/ach;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 368
    :pswitch_22
    invoke-static {p0, p1}, Lbl/ach;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 364
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
    .line 374
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbl/abd;->get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_thumb_url_b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lbl/abd;->get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lbl/abd;->get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_thumb_url_d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lbl/abd;->get_thumb_url(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_thumb_url_with_size(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 392
    :cond_8
    :goto_8
    return-object p1

    .line 391
    :cond_9
    invoke-static {p0}, Lbl/abd;->is_hd_image(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 392
    invoke-static {p0, p1, p2, p3}, Lbl/ach;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public static get_top_tab_config(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 436
    sget v0, Lbl/abd;->topTabConfig:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 437
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "top_tab_config"

    const/16 v2, 0x3f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbl/abd;->topTabConfig:I

    .line 439
    :cond_17
    sget v0, Lbl/abd;->topTabConfig:I

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    sput v0, Lbl/abd;->topTabConfig:I

    .line 440
    :cond_1e
    sget v0, Lbl/abd;->topTabConfig:I

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 178
    sget v0, Lbl/abd;->l:I

    if-nez v0, :cond_16

    .line 179
    invoke-static {p0}, Lbl/abd;->a(Landroid/content/Context;)Lbl/abd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/abd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "live_video_play_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 180
    sput v0, Lbl/abd;->l:I

    .line 183
    :goto_15
    return v0

    :cond_16
    sget v0, Lbl/abd;->l:I

    goto :goto_15
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
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
    .line 502
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

.method public static is_exo_player_selected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 571
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
    .line 358
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
    .line 479
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
    .line 444
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

.method private static declared-synchronized j(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    const-class v1, Lbl/abd;

    monitor-enter v1

    :try_start_3
    const-class v2, Lbl/abd;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    .line 47
    :try_start_6
    sget-object v0, Lbl/abd;->c:Lbl/abd;

    if-nez v0, :cond_11

    .line 48
    new-instance v0, Lbl/abd;

    invoke-direct {v0, p0}, Lbl/abd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbl/abd;->c:Lbl/abd;

    .line 50
    :cond_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_14

    .line 51
    monitor-exit v1

    return-void

    .line 50
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

    .line 46
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 506
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 522
    :cond_8
    :goto_8
    return-void

    .line 510
    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 511
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 513
    invoke-static {}, Lbl/ajq;->b()Lbl/aoy;

    move-result-object v1

    .line 514
    if-eqz v1, :cond_8

    .line 515
    invoke-virtual {v1}, Lbl/aoy;->h()Lbl/aov;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_8

    .line 517
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbl/aov;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lbl/aji;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_8

    .line 520
    :catch_26
    move-exception v0

    goto :goto_8
.end method

.method public static setSkipTime(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 539
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

    .line 540
    return-void
.end method

.method public static set_audio_balance_level(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 585
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

    .line 586
    sput-object p1, Lbl/abd;->audioBalanceLevel:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public static set_cache_limit(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 398
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

    .line 399
    sput p1, Lbl/abd;->cacheLimitType:I

    .line 400
    return-void
.end method

.method public static set_cdn_preference(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 490
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

    .line 491
    sput p1, Lbl/abd;->cdnPreference:I

    .line 492
    return-void
.end method

.method public static set_danmaku_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 130
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

    .line 131
    sput p1, Lbl/abd;->danmaku_type:I

    .line 132
    return-void
.end method

.method public static set_filter_path(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
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

    .line 221
    return-void
.end method

.method public static set_home_column(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 300
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

    .line 301
    sput p1, Lbl/abd;->homeColumnType:I

    .line 302
    return-void
.end method

.method public static set_home_default(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 286
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

    .line 287
    sput p1, Lbl/abd;->homeDefaultType:I

    .line 288
    return-void
.end method

.method public static set_image_size(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 330
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

    .line 331
    sput p1, Lbl/abd;->imageSizeType:I

    .line 332
    return-void
.end method

.method public static set_mode_id(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 208
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

    .line 209
    sput p1, Lbl/abd;->mode_id:I

    .line 210
    return-void
.end method

.method public static set_other_column(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 316
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

    .line 317
    sput p1, Lbl/abd;->otherColumnType:I

    .line 318
    return-void
.end method

.method public static set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 263
    :try_start_0
    invoke-static {p0}, Lbl/abd;->get_personal_config(Landroid/content/Context;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
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

    .line 269
    :goto_20
    return-void

    .line 266
    :catch_21
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public static set_player_menu_config(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 465
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 466
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

    .line 467
    sput p1, Lbl/abd;->playerMenuConfig:I

    .line 468
    return-void
.end method

.method public static set_player_type(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 558
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

    .line 559
    sput p1, Lbl/abd;->playerType:I

    .line 560
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
    .line 229
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

    .line 234
    :goto_19
    return-void

    .line 231
    :catch_1a
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public static set_space_dynamic_mode(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 346
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

    .line 347
    sput p1, Lbl/abd;->spaceDynamicMode:I

    .line 348
    return-void
.end method

.method public static set_speed_id(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 192
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

    .line 193
    sput p1, Lbl/abd;->speed_id:I

    .line 194
    return-void
.end method

.method public static set_top_tab_config(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 430
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 431
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

    .line 432
    sput p1, Lbl/abd;->topTabConfig:I

    .line 433
    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/abd;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method
