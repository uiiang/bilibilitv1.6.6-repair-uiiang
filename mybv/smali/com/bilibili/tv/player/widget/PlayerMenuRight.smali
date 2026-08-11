.class public Lcom/bilibili/tv/player/widget/PlayerMenuRight;
.super Lbl/aay;
.source "PlayerMenuRight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/aay",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DANMAKU_PREFS_NAME:Ljava/lang/String; = "danmaku_settings"

.field private static final DANMAKU_VALID_KEY:Ljava/lang/String; = "danmaku_valid_list"

.field public static audio_balance_id:I

.field private static danmaku_last_valid_list:[Z

.field public static danmaku_level:I

.field public static danmaku_valid_list:[Z

.field public static ebook_color_theme_id:I

.field public static ebook_font_size_id:I

.field public static ebook_percent_id:I

.field public static mode_id:I

.field public static speed_id:I

.field public static subtitle_id:I

.field public static subtitle_size_id:I

.field public static video_position_id:I


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private adjust_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alpha_id:I

.field private alpha_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public audio_balance_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/animation/Animation;

.field private c:Z

.field public chapter_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

.field private danmaku_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private danmaku_type:I

.field public ebook_color_theme_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ebook_font_size_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ebook_percent_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private main_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private menuIndexMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mode_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

.field private q:I

.field private quality_id:I

.field private quality_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/Runnable;

.field private ratio_id:I

.field private ratio_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size_id:I

.field private size_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public speed_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subtitle_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subtitle_size_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public video_position_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 59
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 60
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 61
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 62
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 63
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 64
    const/4 v0, 0x4

    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 65
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 67
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 78
    new-array v0, v2, [Z

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    .line 79
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_level:I

    .line 86
    new-array v0, v2, [Z

    fill-array-data v0, :array_34

    sput-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_last_valid_list:[Z

    return-void

    .line 78
    nop

    :array_2a
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 86
    nop

    :array_34
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 198
    invoke-direct {p0, p1}, Lbl/aay;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u65cb\u8f6c"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u955c\u50cf"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    .line 199
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 200
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 201
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 202
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 203
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 204
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 205
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 206
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 207
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 208
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 209
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "20"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "22"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "24"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "26"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "28"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "30"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "32"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "34"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "36"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "38"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 226
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "System"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "Light"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "Dark"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "Sepia"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "Slate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "OLED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuValidList()V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 238
    invoke-direct {p0, p1, p2}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u65cb\u8f6c"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u955c\u50cf"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    .line 239
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 240
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 241
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 242
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 243
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 244
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 245
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 246
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 247
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 248
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 249
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 252
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuValidList()V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u65cb\u8f6c"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u955c\u50cf"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    .line 257
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 258
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 259
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 260
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 261
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 262
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 263
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 264
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 265
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 266
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 267
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 270
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuValidList()V

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    return p1
.end method

.method private d(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 948
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 950
    :cond_f
    packed-switch p1, :pswitch_data_40

    .line 988
    :goto_12
    :pswitch_12
    return-void

    .line 952
    :pswitch_13
    invoke-static {v3}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 955
    :pswitch_17
    invoke-static {v2}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 958
    :pswitch_1b
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 961
    :pswitch_1f
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 964
    :pswitch_23
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 967
    :pswitch_27
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 970
    :pswitch_2b
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 977
    :cond_2f
    packed-switch p1, :pswitch_data_60

    goto :goto_12

    .line 979
    :pswitch_33
    invoke-static {v3}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 982
    :pswitch_37
    invoke-static {v2}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 985
    :pswitch_3b
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 950
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_12
        :pswitch_1f
        :pswitch_23
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_27
        :pswitch_12
        :pswitch_12
        :pswitch_2b
    .end packed-switch

    .line 977
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_33
        :pswitch_37
        :pswitch_3b
    .end packed-switch
.end method

.method private f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 940
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 943
    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    if-nez v1, :cond_d

    :cond_1e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private getOriginalMenuIndex(I)I
    .locals 3

    .prologue
    const/16 v1, 0xa

    const/4 v0, -0x1

    .line 325
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 332
    :cond_f
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v2, :cond_1d

    :cond_17
    const/4 v2, 0x1

    .line 335
    :goto_18
    packed-switch p1, :pswitch_data_4c

    :cond_1b
    :goto_1b
    :pswitch_1b
    move p1, v0

    .line 374
    :cond_1c
    :goto_1c
    return p1

    .line 332
    :cond_1d
    const/4 v2, 0x0

    goto :goto_18

    .line 345
    :pswitch_1f
    if-eqz v2, :cond_1b

    const/4 v0, 0x4

    goto :goto_1b

    .line 350
    :pswitch_23
    if-eqz v2, :cond_27

    const/4 v0, 0x5

    goto :goto_1b

    :cond_27
    move v0, v1

    goto :goto_1b

    .line 355
    :pswitch_29
    if-eqz v2, :cond_2d

    :goto_2b
    move v0, v1

    .line 356
    goto :goto_1b

    .line 355
    :cond_2d
    const/16 v1, 0xd

    goto :goto_2b

    .line 370
    :cond_30
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_1c

    if-ltz p1, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1c

    .line 335
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_29
        :pswitch_1b
    .end packed-switch
.end method

.method private getSubtitleIdFromCache()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1378
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v1, :cond_6

    .line 1394
    :cond_5
    :goto_5
    return v0

    .line 1382
    :cond_6
    const/4 v1, 0x0

    .line 1384
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtitle_list_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1389
    :cond_30
    if-nez v1, :cond_42

    .line 1390
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v1

    .line 1391
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1394
    :cond_42
    if-eqz v1, :cond_5

    const/4 v0, 0x0

    aget v0, v1, v0

    goto :goto_5
.end method

.method private getSubtitleSizeFromCache()F
    .locals 4

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 1398
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v1, :cond_7

    .line 1410
    :cond_6
    :goto_6
    return v0

    .line 1400
    :cond_7
    const/4 v1, 0x0

    .line 1402
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1403
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subtitle_list_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1406
    :cond_31
    if-nez v1, :cond_43

    .line 1407
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1410
    :cond_43
    if-eqz v1, :cond_6

    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_6
.end method

.method private jumpToChapter(I)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    if-eqz v0, :cond_20

    if-ltz p1, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 159
    const-string v0, "\u65e0"

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 165
    :cond_20
    :goto_20
    return-void

    .line 163
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->jumpToChapter(I)V

    goto :goto_20
.end method

.method public static loadDanmakuValidList()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 304
    :try_start_1
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    const-string v2, "danmaku_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/MainApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 305
    const-string v2, "danmaku_valid_list"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 308
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 309
    :goto_21
    array-length v2, v1

    if-ge v0, v2, :cond_58

    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_58

    .line 310
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-object v3, v1, v0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v2, v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_38

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 313
    :catch_38
    move-exception v0

    .line 314
    const-string v1, "PlayerMenuRight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6\u5f39\u5e55\u5f00\u5173\u72b6\u6001\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    :cond_58
    return-void
.end method

.method private saveDanmakuValidList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 284
    :try_start_1
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    const-string v2, "danmaku_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/MainApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 285
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 287
    :goto_16
    sget-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_39

    .line 288
    sget-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_36

    const-string v0, "1"

    :goto_23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    sget-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_32

    .line 290
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 288
    :cond_36
    const-string v0, "0"

    goto :goto_23

    .line 293
    :cond_39
    const-string v0, "danmaku_valid_list"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_46

    .line 299
    :goto_45
    return-void

    .line 295
    :catch_46
    move-exception v0

    .line 296
    const-string v1, "PlayerMenuRight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f13\u5b58\u5f39\u5e55\u5f00\u5173\u72b6\u6001\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method private saveSubtitleSettings()V
    .locals 5

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_5

    .line 1432
    :goto_4
    return-void

    .line 1418
    :cond_5
    const v0, 0x3f333333    # 0.7f

    .line 1419
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    if-ltz v1, :cond_28

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1420
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1423
    :cond_28
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtitle_list_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1425
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v2

    .line 1426
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    invoke-static {v3, v1, v4, v0}, Lbl/abd;->setSubtitleSettings(Landroid/content/Context;Ljava/lang/String;IF)V

    .line 1427
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->clearSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 1429
    :cond_62
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    invoke-static {v2, v1, v3, v0}, Lbl/abd;->setSubtitleSettings(Landroid/content/Context;Ljava/lang/String;IF)V

    goto :goto_4
.end method


# virtual methods
.method public a(I)Lbl/aaw;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lbl/aaw",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 548
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 549
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 550
    new-instance v6, Lcom/bilibili/tv/player/widget/PlayerMenuRight$3;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(I)I

    move-result v1

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$3;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Landroid/content/Context;II)V

    .line 556
    new-instance v0, Lbl/aas;

    invoke-direct {v0, p0, v6}, Lbl/aas;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Lbl/aax;)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 557
    new-instance v0, Lbl/aat;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lbl/aat;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;FIIF)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 558
    return-object v6
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1202
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 1203
    if-eqz v0, :cond_d

    .line 1204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1206
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 1207
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 592
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 593
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 594
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 595
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 596
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 597
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 616
    :cond_19
    :goto_19
    return-void

    .line 602
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    move v3, v4

    .line 603
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 604
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 605
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 606
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 603
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 608
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 609
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 610
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 611
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 614
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 615
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public a(IIJ)V
    .locals 1

    .prologue
    .line 1435
    new-instance v0, Lbl/aav;

    invoke-direct {v0, p0, p1, p2}, Lbl/aav;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;II)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1436
    return-void
.end method

.method public bridge synthetic a(IILbl/aaz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IILbl/aaz;Ljava/lang/String;)V

    return-void
.end method

.method public a(IILbl/aaz;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 381
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 542
    :cond_a
    :goto_a
    return-void

    .line 384
    :cond_b
    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 385
    if-eqz v0, :cond_a

    .line 388
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 389
    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$1;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$1;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 398
    :cond_2a
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 399
    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$2;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$2;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 408
    :cond_3e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_69

    .line 410
    :try_start_41
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v5

    .line 412
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6d

    :cond_53
    move v1, v2

    .line 415
    :goto_54
    packed-switch v5, :pswitch_data_2c8

    :cond_57
    move v1, v3

    .line 530
    :goto_58
    if-eqz v1, :cond_2bb

    .line 531
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V
    :try_end_69
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_69} :catch_c8

    .line 541
    :cond_69
    :goto_69
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_6d
    move v1, v3

    .line 412
    goto :goto_54

    .line 417
    :pswitch_6f
    :try_start_6f
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v1, :cond_57

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-ltz v1, :cond_57

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 418
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_58

    .line 422
    :pswitch_90
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    if-eqz v1, :cond_57

    .line 423
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 425
    const/4 v1, -0x1

    if-eq v6, v1, :cond_116

    move v5, v3

    move v1, v3

    .line 427
    :goto_9f
    const/16 v7, 0xa

    if-ge v5, v7, :cond_ad

    .line 428
    sget-object v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_aa

    move v1, v2

    .line 427
    :cond_aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 431
    :cond_ad
    packed-switch v6, :pswitch_data_2e8

    .line 447
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v2, v6, 0x1

    aget-boolean v1, v1, v2

    .line 448
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v1, :cond_c0

    move v3, v4

    :cond_c0
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 449
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_c6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6f .. :try_end_c6} :catch_c8

    goto/16 :goto_a

    .line 537
    :catch_c8
    move-exception v1

    .line 538
    const-string v1, "PlayerMenuRight"

    const-string v2, "Menu data error, why?"

    invoke-static {v1, v2}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 433
    :pswitch_d1
    :try_start_d1
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v1, :cond_e9

    :goto_da
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 434
    if-eqz v1, :cond_eb

    const-string v1, "\u5f39\u5e55\u5f00"

    :goto_e1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    goto/16 :goto_a

    :cond_e9
    move v4, v3

    .line 433
    goto :goto_da

    .line 434
    :cond_eb
    const-string v1, "\u5f39\u5e55\u5173"

    goto :goto_e1

    .line 438
    :pswitch_ee
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 439
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 442
    :pswitch_fe
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    .line 443
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v1, :cond_114

    :goto_10c
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 444
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_114
    move v4, v3

    .line 443
    goto :goto_10c

    :cond_116
    move v1, v3

    .line 453
    goto/16 :goto_58

    .line 456
    :pswitch_119
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    if-eqz v1, :cond_57

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    if-ltz v1, :cond_57

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 457
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    :pswitch_13b
    move v1, v3

    .line 461
    goto/16 :goto_58

    .line 463
    :pswitch_13e
    if-eqz v1, :cond_162

    .line 465
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 466
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 470
    :cond_162
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v1, :cond_57

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    if-ltz v1, :cond_57

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 471
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 476
    :pswitch_184
    if-eqz v1, :cond_1a8

    .line 478
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 479
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 483
    :cond_1a8
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v1, :cond_57

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    if-ltz v1, :cond_57

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 484
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 489
    :pswitch_1ca
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 490
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 495
    :pswitch_1ec
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 496
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 501
    :pswitch_20e
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 502
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    :pswitch_230
    move v1, v3

    .line 506
    goto/16 :goto_58

    .line 508
    :pswitch_233
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 509
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 513
    :pswitch_255
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 514
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 518
    :pswitch_277
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 519
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 523
    :pswitch_299
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    if-eqz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    if-ltz v1, :cond_57

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 524
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_58

    .line 535
    :cond_2bb
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_2c6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d1 .. :try_end_2c6} :catch_c8

    goto/16 :goto_69

    .line 415
    :pswitch_data_2c8
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_90
        :pswitch_119
        :pswitch_13b
        :pswitch_13e
        :pswitch_184
        :pswitch_1ca
        :pswitch_1ec
        :pswitch_20e
        :pswitch_230
        :pswitch_233
        :pswitch_255
        :pswitch_277
        :pswitch_299
    .end packed-switch

    .line 431
    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_ee
        :pswitch_fe
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1210
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1265
    :goto_6
    return-void

    .line 1213
    :cond_7
    if-eqz p1, :cond_34

    .line 1214
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_24

    .line 1215
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    .line 1216
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$5;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1232
    :cond_24
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c()V

    .line 1233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    goto :goto_6

    .line 1238
    :cond_34
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_4f

    .line 1239
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    .line 1240
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1262
    :cond_4f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1263
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1264
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 997
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v2

    .line 998
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v3

    .line 1002
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1005
    :cond_16
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v3, :cond_27

    .line 1007
    :cond_1e
    :goto_1e
    packed-switch p2, :pswitch_data_60

    .line 1081
    :cond_21
    :goto_21
    :pswitch_21
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    .line 1082
    return v2

    :cond_27
    move v1, v0

    .line 1005
    goto :goto_1e

    .line 1017
    :pswitch_29
    if-eqz v1, :cond_21

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    goto :goto_21

    .line 1022
    :pswitch_2e
    if-eqz v1, :cond_33

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    goto :goto_21

    :cond_33
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    goto :goto_21

    .line 1027
    :pswitch_36
    if-eqz v1, :cond_21

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    goto :goto_21

    .line 1035
    :cond_3b
    packed-switch v3, :pswitch_data_6e

    :pswitch_3e
    goto :goto_21

    .line 1037
    :pswitch_3f
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    goto :goto_21

    :pswitch_42
    move v0, v1

    .line 1041
    goto :goto_21

    .line 1043
    :pswitch_44
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    goto :goto_21

    .line 1046
    :pswitch_47
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    goto :goto_21

    .line 1049
    :pswitch_4a
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    goto :goto_21

    .line 1052
    :pswitch_4d
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    goto :goto_21

    .line 1055
    :pswitch_50
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    goto :goto_21

    .line 1058
    :pswitch_53
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_21

    .line 1067
    :pswitch_56
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    goto :goto_21

    .line 1070
    :pswitch_59
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_21

    .line 1073
    :pswitch_5c
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    goto :goto_21

    .line 1007
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_21
        :pswitch_21
        :pswitch_29
        :pswitch_2e
        :pswitch_36
    .end packed-switch

    .line 1035
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_42
        :pswitch_44
        :pswitch_3e
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_21
        :pswitch_21
        :pswitch_56
        :pswitch_59
        :pswitch_5c
    .end packed-switch
.end method

.method public bridge synthetic a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 38
    move-object v5, p5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    .line 638
    const-string v1, "\u7ae0\u8282\u5217\u8868"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 639
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 640
    const-string v1, "EbookReader"

    const-string v2, "\u7ae0\u8282\u5217\u8868\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_21

    .line 642
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->showChapterList()V

    .line 644
    :cond_21
    const/4 v1, 0x1

    .line 935
    :goto_22
    return v1

    .line 647
    :cond_23
    const-string v1, "\u5b57\u4f53\u5927\u5c0f"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 648
    const-string v1, "EbookReader"

    const-string v2, "\u5b57\u4f53\u5927\u5c0f\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_34
    const-string v1, "\u5c4f\u5e55\u5360\u6bd4"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 654
    const-string v1, "EbookReader"

    const-string v2, "\u5c4f\u5e55\u5360\u6bd4\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_45
    const-string v1, "\u9009\u62e9\u6587\u4ef6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 660
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 661
    const-string v1, "EbookReader"

    const-string v2, "\u9009\u62e9\u6587\u4ef6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_63

    .line 663
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookFileChooser()V

    .line 665
    :cond_63
    const/4 v1, 0x1

    goto :goto_22

    .line 668
    :cond_65
    const-string v1, "\u6e05\u7a7a\u4e66\u67b6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 669
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 670
    const-string v1, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u4e66\u67b6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_83

    .line 672
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->clearBookshelf()V

    .line 674
    :cond_83
    const/4 v1, 0x1

    goto :goto_22

    .line 677
    :cond_85
    const-string v1, "\u9000\u51fa\u9605\u8bfb"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 678
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 679
    const-string v1, "EbookReader"

    const-string v2, "\u9000\u51fa\u9605\u8bfb\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 681
    const/4 v1, 0x1

    goto :goto_22

    .line 684
    :cond_a1
    const-string v1, "\u5173\u95ed\u4e66\u7c4d"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 685
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 686
    const-string v1, "EbookReader"

    const-string v2, "\u5173\u95ed\u4e66\u7c4d\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_bf

    .line 688
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->closeCurrentBook()V

    .line 690
    :cond_bf
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 693
    :cond_c2
    const-string v1, "\u5173\u95ed\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 694
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 695
    const-string v1, "EbookReader"

    const-string v2, "\u5173\u95ed\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 697
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 701
    :cond_df
    const-string v1, "\u63a7\u5236\u89c6\u9891"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 702
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 703
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    const-string v2, "video"

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->switchControlTarget(Ljava/lang/String;)V

    .line 704
    const-string v1, "EbookReader"

    const-string v2, "\u63a7\u5236\u89c6\u9891\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 709
    :cond_fe
    const-string v1, "\u63a7\u5236\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 710
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 711
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    const-string v2, "ebook"

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->switchControlTarget(Ljava/lang/String;)V

    .line 712
    const-string v1, "EbookReader"

    const-string v2, "\u63a7\u5236\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 716
    :cond_11d
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 717
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 718
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v1

    .line 719
    if-eqz v1, :cond_130

    .line 720
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 722
    :cond_130
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    .line 723
    invoke-direct {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(I)V

    .line 724
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 726
    :cond_13a
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-nez v1, :cond_177

    .line 727
    const/4 v1, 0x0

    .line 922
    :cond_13f
    :goto_13f
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 923
    if-eqz v1, :cond_15b

    .line 924
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 925
    if-eqz v1, :cond_15b

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-eqz v2, :cond_15b

    .line 926
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 929
    :cond_15b
    instance-of v1, p3, Landroid/widget/TextView;

    if-eqz v1, :cond_174

    .line 930
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 931
    if-eqz v1, :cond_174

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-eqz v2, :cond_174

    .line 932
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 935
    :cond_174
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 728
    :cond_177
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v1

    if-eqz v1, :cond_180

    .line 729
    const/4 v1, 0x0

    goto/16 :goto_22

    .line 731
    :cond_180
    const-string v1, "\u5206\u96c6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 732
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 733
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->P()V

    .line 734
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 737
    :cond_196
    const-string v1, "\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    .line 738
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 739
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 740
    const-string v1, "PlayerMenuRight"

    const-string v2, "\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 743
    :cond_1b3
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c2

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-ne p2, v1, :cond_212

    .line 744
    :cond_1c2
    const/4 v1, 0x0

    .line 751
    :goto_1c3
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_36a

    .line 754
    packed-switch p2, :pswitch_data_570

    .line 790
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v3, p2, 0x1

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v4, p2, 0x1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_2e0

    const/4 v1, 0x1

    :goto_1de
    aput-boolean v1, v2, v3

    .line 791
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v3, p2, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2e3

    const/16 v1, 0xff

    :goto_1f3
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 794
    :cond_1f6
    :goto_1f6
    const/4 v2, 0x0

    .line 795
    const/4 v1, 0x0

    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 796
    const/4 v1, 0x0

    move v3, v1

    :goto_1fc
    const/16 v1, 0xa

    if-ge v3, v1, :cond_2e6

    .line 797
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_56d

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    const/4 v2, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    const/4 v1, 0x1

    .line 796
    :goto_20e
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1fc

    .line 746
    :cond_212
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 747
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->e(I)V

    .line 748
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 749
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    goto :goto_1c3

    .line 756
    :pswitch_220
    const/4 v1, 0x0

    .line 757
    const/4 v2, 0x0

    :goto_222
    const/16 v3, 0xa

    if-ge v2, v3, :cond_230

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_22d

    const/4 v1, 0x1

    :cond_22d
    add-int/lit8 v2, v2, 0x1

    goto :goto_222

    .line 759
    :cond_230
    if-eqz v1, :cond_25d

    .line 761
    const/4 v1, 0x0

    :goto_233
    const/16 v2, 0xa

    if-ge v1, v2, :cond_242

    .line 762
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_last_valid_list:[Z

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_233

    .line 764
    :cond_242
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v2, 0x1

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v4, 0x4

    sget-object v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v6, 0x5

    sget-object v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v8, 0x6

    sget-object v9, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-boolean v11, v9, v10

    aput-boolean v11, v7, v8

    aput-boolean v11, v5, v6

    aput-boolean v11, v3, v4

    aput-boolean v11, v1, v2

    goto :goto_1f6

    .line 767
    :cond_25d
    const/4 v1, 0x0

    :goto_25e
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1f6

    .line 768
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_last_valid_list:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_25e

    .line 773
    :pswitch_26d
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "4"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "10"

    aput-object v3, v1, v2

    .line 774
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5f39\u5e55\u5c4f\u853d\u7b49\u7ea7"

    .line 775
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight$4;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$4;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Landroid/view/ViewGroup;)V

    .line 776
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 783
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 784
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 785
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 787
    :pswitch_2cf
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v3, 0x1

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v4, 0x1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_2de

    const/4 v1, 0x1

    :goto_2da
    aput-boolean v1, v2, v3

    goto/16 :goto_1f6

    :cond_2de
    const/4 v1, 0x0

    goto :goto_2da

    .line 790
    :cond_2e0
    const/4 v1, 0x0

    goto/16 :goto_1de

    .line 791
    :cond_2e3
    const/4 v1, 0x0

    goto/16 :goto_1f3

    .line 799
    :cond_2e6
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-eqz v2, :cond_34f

    const/16 v1, 0xff

    :goto_2fa
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 800
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_351

    const-string v2, "\u5f39\u5e55\u5f00"

    :goto_30a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    const/4 v1, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_354

    const/16 v1, 0xff

    :goto_326
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 802
    const/4 v1, 0x4

    move v2, v1

    :goto_32b
    const/16 v1, 0x8

    if-ge v2, v1, :cond_358

    add-int/lit8 v1, v2, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_356

    const/16 v1, 0xff

    :goto_348
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_32b

    .line 799
    :cond_34f
    const/4 v1, 0x0

    goto :goto_2fa

    .line 800
    :cond_351
    const-string v2, "\u5f39\u5e55\u5173"

    goto :goto_30a

    .line 801
    :cond_354
    const/4 v1, 0x0

    goto :goto_326

    .line 802
    :cond_356
    const/4 v1, 0x0

    goto :goto_348

    .line 803
    :cond_358
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 804
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_danmaku_type(I)V

    .line 807
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveDanmakuValidList()V

    .line 808
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 810
    :cond_36a
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_37e

    .line 811
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->f(I)V

    .line 812
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 813
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 815
    :cond_37e
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_391

    .line 816
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->adjust_screen(I)V

    .line 817
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 819
    :cond_391
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v3

    .line 821
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_3a3

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_518

    :cond_3a3
    const/4 v2, 0x1

    .line 822
    :goto_3a4
    if-nez v2, :cond_3d1

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v4, :cond_3d1

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3d1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3d1

    .line 823
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v4, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->a(F)V

    .line 824
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 825
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 827
    :cond_3d1
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v4, :cond_3ec

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3ec

    .line 830
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v4, :cond_3ec

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51b

    .line 840
    :cond_3ec
    :goto_3ec
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v4, :cond_41c

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_41c

    .line 841
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "x"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v4, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->switch_speed(F)V

    .line 842
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 843
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 848
    :cond_41c
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v4, :cond_42f

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42f

    .line 849
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 850
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 855
    :cond_42f
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    if-eqz v4, :cond_44a

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_44a

    .line 856
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 857
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 858
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 859
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSubtitleSettings()V

    .line 861
    :cond_44a
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    if-eqz v4, :cond_47e

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_47e

    const/16 v4, 0xc

    if-ne v3, v4, :cond_47e

    .line 862
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v4, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_subtitle_size(F)V

    .line 863
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 864
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 865
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 866
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSubtitleSettings()V

    .line 870
    :cond_47e
    if-eqz v2, :cond_4ab

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v4, :cond_4ab

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 871
    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4ab

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4ab

    .line 873
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v4, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_font_size(F)V

    .line 874
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 875
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 880
    :cond_4ab
    if-eqz v2, :cond_4c8

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v4, :cond_4c8

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 881
    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4c8

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4c8

    .line 883
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_color_theme(I)V

    .line 884
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 885
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 890
    :cond_4c8
    if-eqz v2, :cond_4e6

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v4, :cond_4e6

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 891
    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4e6

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4e6

    .line 893
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_percent(I)V

    .line 894
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 895
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 899
    :cond_4e6
    if-eqz v2, :cond_504

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    if-eqz v2, :cond_504

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    .line 900
    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_504

    const/16 v2, 0xd

    if-ne v3, v2, :cond_504

    .line 902
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_video_position(I)V

    .line 903
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 904
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 907
    :cond_504
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    if-eqz v2, :cond_53e

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53e

    .line 908
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->jumpToChapter(I)V

    .line 909
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 821
    :cond_518
    const/4 v2, 0x0

    goto/16 :goto_3a4

    .line 835
    :cond_51b
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "f"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v4, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->b(F)V

    .line 836
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 837
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    goto/16 :goto_3ec

    .line 911
    :cond_53e
    const-string v2, "\u8df3\u8fc7\u8bbe\u7f6e"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_554

    .line 912
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 913
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->showSkipSettingDialog()V

    .line 914
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 916
    :cond_554
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_13f

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 917
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 918
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 919
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v2, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_audio_balance_level(I)V

    goto/16 :goto_13f

    :cond_56d
    move v1, v2

    goto/16 :goto_20e

    .line 754
    :pswitch_data_570
    .packed-switch 0x0
        :pswitch_220
        :pswitch_26d
        :pswitch_2cf
    .end packed-switch
.end method

.method public final a(Lbl/aax;Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 562
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 563
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    .line 564
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 565
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lbl/aax;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v2, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move v0, v6

    .line 588
    :cond_2b
    :goto_2b
    return v0

    .line 567
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 568
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 569
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 570
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    .line 571
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 575
    goto :goto_2b

    .line 572
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 573
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    goto :goto_3f

    .line 576
    :cond_47
    if-nez p4, :cond_4f

    const/16 v1, 0x13

    if-ne p5, v1, :cond_4f

    move v0, v6

    .line 577
    goto :goto_2b

    .line 578
    :cond_4f
    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    .line 579
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 580
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    .line 581
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v1

    .line 582
    invoke-virtual {p1}, Lbl/aax;->a()I

    move-result v2

    .line 583
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2b

    move v0, v6

    .line 584
    goto :goto_2b
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const v0, 0x7f0a0063

    :goto_6
    return v0

    :cond_7
    const v0, 0x7f0a0064

    goto :goto_6
.end method

.method public b(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1089
    if-le p1, v0, :cond_6

    move-object v0, v1

    .line 1197
    :goto_5
    return-object v0

    .line 1092
    :cond_6
    if-ge p1, v0, :cond_b

    .line 1093
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    goto :goto_5

    .line 1095
    :cond_b
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 1096
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1098
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1099
    packed-switch v2, :pswitch_data_9a

    move-object v0, v1

    .line 1145
    goto :goto_5

    .line 1096
    :cond_28
    const/4 v0, 0x0

    goto :goto_1b

    .line 1101
    :pswitch_2a
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_5

    .line 1104
    :pswitch_2d
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    goto :goto_5

    .line 1107
    :pswitch_30
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    goto :goto_5

    .line 1110
    :pswitch_33
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    goto :goto_5

    .line 1114
    :pswitch_36
    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    goto :goto_5

    :cond_3b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_5

    .line 1118
    :pswitch_3e
    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    goto :goto_5

    :cond_43
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_5

    .line 1121
    :pswitch_46
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    goto :goto_5

    .line 1124
    :pswitch_49
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    goto :goto_5

    .line 1127
    :pswitch_4c
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    goto :goto_5

    .line 1130
    :pswitch_4f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    goto :goto_5

    .line 1133
    :pswitch_52
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    goto :goto_5

    .line 1136
    :pswitch_55
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto :goto_5

    .line 1139
    :pswitch_58
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    goto :goto_5

    .line 1142
    :pswitch_5b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    goto :goto_5

    .line 1151
    :cond_5e
    packed-switch v2, :pswitch_data_ba

    move-object v0, v1

    .line 1154
    goto :goto_5

    .line 1156
    :pswitch_63
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_5

    .line 1159
    :pswitch_66
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    goto :goto_5

    .line 1162
    :pswitch_69
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    goto :goto_5

    .line 1166
    :pswitch_6c
    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    goto :goto_5

    :cond_71
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_5

    .line 1170
    :pswitch_74
    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    goto :goto_5

    :cond_79
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_5

    .line 1173
    :pswitch_7c
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    goto :goto_5

    .line 1176
    :pswitch_7f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    goto :goto_5

    .line 1179
    :pswitch_82
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    goto :goto_5

    .line 1182
    :pswitch_85
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    goto/16 :goto_5

    .line 1185
    :pswitch_89
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    goto/16 :goto_5

    .line 1188
    :pswitch_8d
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto/16 :goto_5

    .line 1191
    :pswitch_91
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    goto/16 :goto_5

    .line 1194
    :pswitch_95
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    goto/16 :goto_5

    .line 1099
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_3e
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    .line 1151
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_63
        :pswitch_66
        :pswitch_69
        :pswitch_6c
        :pswitch_74
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
        :pswitch_85
        :pswitch_89
        :pswitch_8d
        :pswitch_91
        :pswitch_95
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 629
    return-void
.end method

.method public b(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    .line 1283
    return-void
.end method

.method public final c(II)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1439
    packed-switch p1, :pswitch_data_1a

    .line 1455
    :cond_4
    :goto_4
    return-void

    .line 1441
    :pswitch_5
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-eq v0, p2, :cond_4

    .line 1442
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 1443
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c(I)V

    goto :goto_4

    .line 1448
    :pswitch_f
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    if-eq v0, p2, :cond_4

    .line 1449
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 1450
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c(I)V

    goto :goto_4

    .line 1439
    nop

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_5
        :pswitch_f
    .end packed-switch
.end method

.method public clearEbookReadingPageLists()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1321
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 1322
    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 1323
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 1324
    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 1325
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 1326
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 1327
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 621
    new-instance v0, Lbl/aau;

    invoke-direct {v0, p0}, Lbl/aau;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    .line 623
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 624
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 625
    return-void
.end method

.method public init_alpha(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 1299
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 1300
    return-void
.end method

.method public init_audio_balance(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    .line 188
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 189
    return-void
.end method

.method public init_chapter(Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    .line 170
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 171
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    const-string v1, "\u65e0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_16
    return-void

    .line 175
    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 176
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_37

    .line 178
    const-string v2, "content"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 180
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public init_danmaku(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1286
    const/4 v1, 0x0

    if-lez p2, :cond_26

    const-string v0, "\u5f39\u5e55\u5f00"

    :goto_5
    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c4f\u853d\u7b49\u7ea7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1288
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    .line 1289
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 1290
    return-void

    .line 1286
    :cond_26
    const-string v0, "\u5f39\u5e55\u5173"

    goto :goto_5
.end method

.method public init_mode(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    .line 1337
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 1339
    return-void
.end method

.method public init_percent(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 1310
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 1311
    return-void
.end method

.method public init_quality(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    .line 1278
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 1279
    return-void
.end method

.method public init_ratio(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    .line 1304
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 1305
    return-void
.end method

.method public init_size(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 1294
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 1295
    return-void
.end method

.method public init_speed(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    .line 1331
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 1333
    return-void
.end method

.method public init_subtitle(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    .line 1343
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    const-string v2, "\u5173\u95ed\u5b57\u5e55"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    if-nez p1, :cond_14

    .line 1345
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 1358
    :goto_13
    return-void

    .line 1348
    :cond_14
    const-string v0, "subtitles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 1349
    :goto_1b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_33

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "lan_doc"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1351
    :cond_33
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getSubtitleIdFromCache()I

    move-result v0

    .line 1352
    if-ltz v0, :cond_44

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 1353
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_13

    .line 1355
    :cond_44
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_60

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "lan"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ai-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x1

    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_13

    .line 1356
    :cond_60
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_13
.end method

.method public init_subtitle_size(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 1361
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    .line 1363
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getSubtitleSizeFromCache()F

    move-result v1

    .line 1364
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1c

    .line 1365
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1366
    if-ltz v1, :cond_19

    .line 1367
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 1375
    :goto_18
    return-void

    .line 1369
    :cond_19
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18

    .line 1372
    :cond_1c
    const/4 v1, -0x1

    if-ne p2, v1, :cond_20

    move p2, v0

    .line 1373
    :cond_20
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18
.end method

.method public init_video_position(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    .line 1316
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 1317
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 1269
    iget-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    return v0
.end method

.method public setEpisodeMenuString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f:Ljava/lang/String;

    .line 1274
    return-void
.end method

.method public setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    .line 275
    return-void
.end method

.method public setMenuIndexMap(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 279
    return-void
.end method

.method public setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 321
    return-void
.end method
