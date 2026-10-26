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

.field private ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

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

    .line 58
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 59
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 60
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 61
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 62
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 63
    const/4 v0, 0x4

    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 64
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 65
    const/4 v0, 0x1

    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 66
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 77
    new-array v0, v2, [Z

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    .line 78
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_level:I

    .line 85
    new-array v0, v2, [Z

    fill-array-data v0, :array_34

    sput-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_last_valid_list:[Z

    return-void

    .line 77
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

    .line 85
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

    .line 181
    invoke-direct {p0, p1}, Lbl/aay;-><init>(Landroid/content/Context;)V

    .line 49
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

    .line 182
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 183
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 184
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 185
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 186
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 187
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 188
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 189
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 190
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 191
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 192
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 196
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "20"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "22"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "24"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "26"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "28"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "30"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "32"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "34"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "36"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "38"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 209
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "System"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "Light"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "Dark"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "Sepia"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "Slate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v1, "OLED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuValidList()V

    .line 220
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuMergeDuplicate()V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
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

    .line 225
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 226
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 227
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 228
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 229
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 230
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 231
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 232
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 233
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 234
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 235
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 238
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuValidList()V

    .line 241
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuMergeDuplicate()V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
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

    .line 246
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 247
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 248
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 249
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 250
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 251
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 252
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 253
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 254
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 255
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 256
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 259
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuValidList()V

    .line 262
    invoke-static {}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->loadDanmakuMergeDuplicate()V

    .line 263
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

.method private cancelIncognitoMode()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 705
    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 706
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_12

    .line 707
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput-boolean v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    .line 710
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->markNoHistoryCancelled(J)V

    .line 712
    :cond_12
    const-string v1, "HistoryDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CANCEL_INCOGNITO] sNoHistoryPlayMode=false, paramsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    :cond_24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 714
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", params.mNoHistoryPlay="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-boolean v3, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v4, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", avid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v4, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    :goto_5f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", globalDefaultUnchanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 716
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_default_no_history(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void

    .line 715
    :cond_7d
    const-string v0, ""

    goto :goto_5f
.end method

.method private d(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 974
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMode(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 976
    packed-switch p1, :pswitch_data_3c

    .line 1014
    :goto_e
    :pswitch_e
    return-void

    .line 978
    :pswitch_f
    invoke-static {v3}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 981
    :pswitch_13
    invoke-static {v2}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 984
    :pswitch_17
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 987
    :pswitch_1b
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 990
    :pswitch_1f
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 993
    :pswitch_23
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 996
    :pswitch_27
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 1003
    :cond_2b
    packed-switch p1, :pswitch_data_5c

    goto :goto_e

    .line 1005
    :pswitch_2f
    invoke-static {v3}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 1008
    :pswitch_33
    invoke-static {v2}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 1011
    :pswitch_37
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_e

    .line 976
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_e
        :pswitch_1b
        :pswitch_1f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_23
        :pswitch_e
        :pswitch_e
        :pswitch_27
    .end packed-switch

    .line 1003
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_33
        :pswitch_37
    .end packed-switch
.end method

.method private f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 965
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMode(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 969
    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_16
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private getOriginalMenuIndex(I)I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMode(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 425
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result p1

    .line 434
    :cond_e
    :goto_e
    return p1

    .line 429
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_2a

    if-ltz p1, :cond_2a

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 430
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_e

    .line 434
    :cond_2a
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_e

    const/4 p1, -0x1

    goto :goto_e
.end method

.method private getSubtitleIdFromCache()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1340
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v1, :cond_6

    .line 1356
    :cond_5
    :goto_5
    return v0

    .line 1344
    :cond_6
    const/4 v1, 0x0

    .line 1346
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1347
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

    .line 1348
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1351
    :cond_30
    if-nez v1, :cond_42

    .line 1352
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v1

    .line 1353
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1356
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

    .line 1360
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v1, :cond_7

    .line 1372
    :cond_6
    :goto_6
    return v0

    .line 1362
    :cond_7
    const/4 v1, 0x0

    .line 1364
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1365
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

    .line 1368
    :cond_31
    if-nez v1, :cond_43

    .line 1369
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1372
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
    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    if-eqz v0, :cond_20

    if-ltz p1, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 142
    const-string v0, "\u65e0"

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 148
    :cond_20
    :goto_20
    return-void

    .line 146
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->jumpToChapter(I)V

    goto :goto_20
.end method

.method public static loadDanmakuMergeDuplicate()V
    .locals 4

    .prologue
    .line 411
    :try_start_0
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->loadFromPrefs(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 416
    :goto_7
    return-void

    .line 412
    :catch_8
    move-exception v0

    .line 413
    const-string v1, "PlayerMenuRight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6\u5408\u5e76\u91cd\u590d\u72b6\u6001\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static loadDanmakuValidList()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 393
    :try_start_1
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    const-string v2, "danmaku_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/MainApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 394
    const-string v2, "danmaku_valid_list"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 397
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 398
    :goto_21
    array-length v2, v1

    if-ge v0, v2, :cond_58

    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_58

    .line 399
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-object v3, v1, v0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v2, v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_38

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 402
    :catch_38
    move-exception v0

    .line 403
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

    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    :cond_58
    return-void
.end method

.method private saveDanmakuValidList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 373
    :try_start_1
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    const-string v2, "danmaku_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/MainApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 374
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 376
    :goto_16
    sget-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_39

    .line 377
    sget-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_36

    const-string v0, "1"

    :goto_23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    sget-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_32

    .line 379
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 377
    :cond_36
    const-string v0, "0"

    goto :goto_23

    .line 382
    :cond_39
    const-string v0, "danmaku_valid_list"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_46

    .line 388
    :goto_45
    return-void

    .line 384
    :catch_46
    move-exception v0

    .line 385
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

    .line 386
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method private saveSpeedSettings()V
    .locals 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_8

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    if-gez v0, :cond_9

    .line 1403
    :cond_8
    :goto_8
    return-void

    .line 1400
    :cond_9
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    invoke-static {v0, v1, v2}, Lbl/abd;->saveSpeedSettingByParams(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;I)V

    goto :goto_8
.end method

.method private saveSubtitleSettings()V
    .locals 5

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_5

    .line 1394
    :goto_4
    return-void

    .line 1380
    :cond_5
    const v0, 0x3f333333    # 0.7f

    .line 1381
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    if-ltz v1, :cond_28

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1382
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1385
    :cond_28
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 1386
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

    .line 1387
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v2

    .line 1388
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    invoke-static {v3, v1, v4, v0}, Lbl/abd;->setSubtitleSettings(Landroid/content/Context;Ljava/lang/String;IF)V

    .line 1389
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->clearSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 1391
    :cond_62
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v1

    .line 1392
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
    .line 613
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 614
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 615
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 616
    new-instance v6, Lcom/bilibili/tv/player/widget/PlayerMenuRight$3;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(I)I

    move-result v1

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$3;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Landroid/content/Context;II)V

    .line 622
    new-instance v0, Lbl/aas;

    invoke-direct {v0, p0, v6}, Lbl/aas;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Lbl/aax;)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 623
    new-instance v0, Lbl/aat;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lbl/aat;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;FIIF)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 624
    return-object v6
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1167
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_d

    .line 1169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1171
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 1172
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 658
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 659
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 660
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 661
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 662
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 663
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    :cond_19
    :goto_19
    return-void

    .line 668
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    move v3, v4

    .line 669
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 670
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 671
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 672
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 674
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 675
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 676
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 677
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 680
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 681
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public a(IIJ)V
    .locals 1

    .prologue
    .line 1406
    new-instance v0, Lbl/aav;

    invoke-direct {v0, p0, p1, p2}, Lbl/aav;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;II)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1407
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

    .line 441
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 608
    :cond_a
    :goto_a
    return-void

    .line 444
    :cond_b
    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    if-eqz v0, :cond_a

    .line 448
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 449
    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$1;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$1;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 458
    :cond_2a
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 459
    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$2;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$2;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 468
    :cond_3e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_61

    .line 470
    :try_start_41
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    .line 472
    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v5}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMode(Ljava/util/List;)Z

    move-result v5

    .line 475
    packed-switch v1, :pswitch_data_2c2

    .line 596
    :cond_50
    :goto_50
    :pswitch_50
    if-eqz v3, :cond_2b4

    .line 597
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V
    :try_end_61
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_61} :catch_be

    .line 607
    :cond_61
    :goto_61
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 477
    :pswitch_65
    :try_start_65
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v1, :cond_50

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-ltz v1, :cond_50

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 478
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_50

    .line 482
    :pswitch_86
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    if-eqz v1, :cond_50

    .line 483
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 485
    const/4 v1, -0x1

    if-eq v6, v1, :cond_50

    move v5, v3

    move v1, v3

    .line 487
    :goto_95
    const/16 v7, 0xa

    if-ge v5, v7, :cond_a3

    .line 488
    sget-object v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_a0

    move v1, v2

    .line 487
    :cond_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 491
    :cond_a3
    packed-switch v6, :pswitch_data_2e2

    .line 511
    :pswitch_a6
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v2, v6, 0x1

    aget-boolean v1, v1, v2

    .line 512
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v1, :cond_b6

    move v3, v4

    :cond_b6
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 513
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_bc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_65 .. :try_end_bc} :catch_be

    goto/16 :goto_a

    .line 603
    :catch_be
    move-exception v1

    .line 604
    const-string v1, "PlayerMenuRight"

    const-string v2, "Menu data error, why?"

    invoke-static {v1, v2}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 493
    :pswitch_c7
    :try_start_c7
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v1, :cond_df

    :goto_d0
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 494
    if-eqz v1, :cond_e1

    const-string v1, "\u5f39\u5e55\u5f00"

    :goto_d7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    goto/16 :goto_a

    :cond_df
    move v4, v3

    .line 493
    goto :goto_d0

    .line 494
    :cond_e1
    const-string v1, "\u5f39\u5e55\u5173"

    goto :goto_d7

    .line 498
    :pswitch_e4
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 499
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 502
    :pswitch_f4
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    .line 503
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v1, :cond_10a

    :goto_102
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 504
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_10a
    move v4, v3

    .line 503
    goto :goto_102

    .line 507
    :pswitch_10c
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v2

    if-eqz v2, :cond_121

    :goto_119
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 508
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_121
    move v4, v3

    .line 507
    goto :goto_119

    .line 520
    :pswitch_123
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    if-eqz v1, :cond_50

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    if-ltz v1, :cond_50

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 521
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 527
    :pswitch_145
    if-eqz v5, :cond_169

    .line 529
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 530
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 534
    :cond_169
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v1, :cond_50

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    if-ltz v1, :cond_50

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 535
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 540
    :pswitch_18b
    if-eqz v5, :cond_1af

    .line 542
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 543
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 547
    :cond_1af
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v1, :cond_50

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    if-ltz v1, :cond_50

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 548
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 553
    :pswitch_1d1
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 554
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 559
    :pswitch_1f3
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 560
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 567
    :pswitch_215
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_50

    .line 568
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    if-ne p2, v1, :cond_22a

    :goto_227
    move v3, v2

    goto/16 :goto_50

    :cond_22a
    move v2, v3

    goto :goto_227

    .line 574
    :pswitch_22c
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 575
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 579
    :pswitch_24e
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 580
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 584
    :pswitch_270
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    if-eqz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 585
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 589
    :pswitch_292
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    if-eqz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    if-ltz v1, :cond_50

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 590
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    sget v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_50

    .line 601
    :cond_2b4
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_2bf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c7 .. :try_end_2bf} :catch_be

    goto/16 :goto_61

    .line 475
    nop

    :pswitch_data_2c2
    .packed-switch 0x0
        :pswitch_65
        :pswitch_86
        :pswitch_123
        :pswitch_50
        :pswitch_145
        :pswitch_18b
        :pswitch_1d1
        :pswitch_1f3
        :pswitch_215
        :pswitch_50
        :pswitch_22c
        :pswitch_24e
        :pswitch_270
        :pswitch_292
    .end packed-switch

    .line 491
    :pswitch_data_2e2
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_e4
        :pswitch_f4
        :pswitch_a6
        :pswitch_a6
        :pswitch_a6
        :pswitch_a6
        :pswitch_10c
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1230
    :goto_6
    return-void

    .line 1178
    :cond_7
    if-eqz p1, :cond_34

    .line 1179
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_24

    .line 1180
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    .line 1181
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$5;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1197
    :cond_24
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c()V

    .line 1198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    goto :goto_6

    .line 1203
    :cond_34
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_4f

    .line 1204
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    .line 1205
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1227
    :cond_4f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1228
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1229
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1023
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v1

    .line 1024
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 1028
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMode(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1031
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 1032
    sparse-switch v2, :sswitch_data_4c

    .line 1097
    :goto_18
    :pswitch_18
    :sswitch_18
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    .line 1098
    return v1

    .line 1034
    :sswitch_1e
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    goto :goto_18

    .line 1037
    :sswitch_21
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    goto :goto_18

    .line 1040
    :sswitch_24
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    goto :goto_18

    .line 1051
    :cond_27
    packed-switch v2, :pswitch_data_5e

    :pswitch_2a
    goto :goto_18

    .line 1053
    :pswitch_2b
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    goto :goto_18

    .line 1056
    :pswitch_2e
    const/4 v0, 0x1

    .line 1057
    goto :goto_18

    .line 1059
    :pswitch_30
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    goto :goto_18

    .line 1062
    :pswitch_33
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    goto :goto_18

    .line 1065
    :pswitch_36
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    goto :goto_18

    .line 1068
    :pswitch_39
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    goto :goto_18

    .line 1071
    :pswitch_3c
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    goto :goto_18

    .line 1074
    :pswitch_3f
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_18

    .line 1083
    :pswitch_42
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    goto :goto_18

    .line 1086
    :pswitch_45
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18

    .line 1089
    :pswitch_48
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    goto :goto_18

    .line 1032
    nop

    :sswitch_data_4c
    .sparse-switch
        0x4 -> :sswitch_1e
        0x5 -> :sswitch_21
        0xa -> :sswitch_24
        0xd -> :sswitch_18
    .end sparse-switch

    .line 1051
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2e
        :pswitch_30
        :pswitch_2a
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_18
        :pswitch_18
        :pswitch_42
        :pswitch_45
        :pswitch_48
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
    .line 723
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    .line 727
    const-string v1, "\u53d6\u6d88\u65e0\u75d5"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 728
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->cancelIncognitoMode()V

    .line 729
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 730
    const/4 v1, 0x1

    .line 960
    :goto_15
    return v1

    .line 736
    :cond_16
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v1, :cond_30

    invoke-static/range {p5 .. p5}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMenuItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 737
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->dispatch(Ljava/lang/String;Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 738
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 739
    const/4 v1, 0x1

    goto :goto_15

    .line 743
    :cond_30
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 744
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 745
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v1

    .line 746
    if-eqz v1, :cond_43

    .line 747
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 749
    :cond_43
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    .line 750
    invoke-direct {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(I)V

    .line 751
    const/4 v1, 0x1

    goto :goto_15

    .line 753
    :cond_4c
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-nez v1, :cond_88

    .line 754
    const/4 v1, 0x0

    .line 947
    :cond_51
    :goto_51
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 948
    if-eqz v1, :cond_6d

    .line 949
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 950
    if-eqz v1, :cond_6d

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-eqz v2, :cond_6d

    .line 951
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 954
    :cond_6d
    instance-of v1, p3, Landroid/widget/TextView;

    if-eqz v1, :cond_86

    .line 955
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 956
    if-eqz v1, :cond_86

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-eqz v2, :cond_86

    .line 957
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 960
    :cond_86
    const/4 v1, 0x1

    goto :goto_15

    .line 755
    :cond_88
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 756
    const/4 v1, 0x0

    goto :goto_15

    .line 758
    :cond_90
    const/4 v1, 0x0

    .line 759
    const-string v2, "\u5206\u96c6"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 760
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 761
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->P()V

    .line 762
    const/4 v1, 0x1

    goto/16 :goto_15

    .line 765
    :cond_a7
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 767
    if-nez v2, :cond_111

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_be

    iget v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-ne p2, v3, :cond_111

    .line 768
    :cond_be
    const/4 v1, 0x0

    .line 775
    :cond_bf
    :goto_bf
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b5

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b5

    .line 778
    packed-switch p2, :pswitch_data_4a4

    .line 820
    :pswitch_d0
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v3, p2, 0x1

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v4, p2, 0x1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_20e

    const/4 v1, 0x1

    :goto_dd
    aput-boolean v1, v2, v3

    .line 821
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v3, p2, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_211

    const/16 v1, 0xff

    :goto_f2
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 824
    :cond_f5
    :goto_f5
    const/4 v2, 0x0

    .line 825
    const/4 v1, 0x0

    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 826
    const/4 v1, 0x0

    move v3, v1

    :goto_fb
    const/16 v1, 0xa

    if-ge v3, v1, :cond_214

    .line 827
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_4a0

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    const/4 v2, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    const/4 v1, 0x1

    .line 826
    :goto_10d
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_fb

    .line 769
    :cond_111
    if-nez v2, :cond_bf

    .line 770
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 771
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->e(I)V

    .line 772
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 773
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    goto :goto_bf

    .line 780
    :pswitch_121
    const/4 v1, 0x0

    .line 781
    const/4 v2, 0x0

    :goto_123
    const/16 v3, 0xa

    if-ge v2, v3, :cond_131

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_12e

    const/4 v1, 0x1

    :cond_12e
    add-int/lit8 v2, v2, 0x1

    goto :goto_123

    .line 783
    :cond_131
    if-eqz v1, :cond_15e

    .line 785
    const/4 v1, 0x0

    :goto_134
    const/16 v2, 0xa

    if-ge v1, v2, :cond_143

    .line 786
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_last_valid_list:[Z

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_134

    .line 788
    :cond_143
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

    goto :goto_f5

    .line 791
    :cond_15e
    const/4 v1, 0x0

    :goto_15f
    const/16 v2, 0xa

    if-ge v1, v2, :cond_f5

    .line 792
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_last_valid_list:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_15f

    .line 797
    :pswitch_16e
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

    .line 798
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5f39\u5e55\u5c4f\u853d\u7b49\u7ea7"

    .line 799
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight$4;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$4;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Landroid/view/ViewGroup;)V

    .line 800
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 808
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 809
    const/4 v1, 0x1

    goto/16 :goto_15

    .line 811
    :pswitch_1d0
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v3, 0x1

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v4, 0x1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_1df

    const/4 v1, 0x1

    :goto_1db
    aput-boolean v1, v2, v3

    goto/16 :goto_f5

    :cond_1df
    const/4 v1, 0x0

    goto :goto_1db

    .line 814
    :pswitch_1e1
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v1

    if-nez v1, :cond_20c

    const/4 v1, 0x1

    .line 815
    :goto_1e8
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->setMergeEnabled(Z)V

    .line 816
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->saveToPrefs(Landroid/content/Context;)V

    .line 817
    const-string v2, "PlayerMenuRight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5408\u5e76\u91cd\u590d\u5207\u6362: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f5

    .line 814
    :cond_20c
    const/4 v1, 0x0

    goto :goto_1e8

    .line 820
    :cond_20e
    const/4 v1, 0x0

    goto/16 :goto_dd

    .line 821
    :cond_211
    const/4 v1, 0x0

    goto/16 :goto_f2

    .line 829
    :cond_214
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-eqz v2, :cond_27d

    const/16 v1, 0xff

    :goto_228
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 830
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_27f

    const-string v2, "\u5f39\u5e55\u5f00"

    :goto_238
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
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

    if-eqz v1, :cond_282

    const/16 v1, 0xff

    :goto_254
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 832
    const/4 v1, 0x4

    move v2, v1

    :goto_259
    const/16 v1, 0x8

    if-ge v2, v1, :cond_286

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

    if-eqz v1, :cond_284

    const/16 v1, 0xff

    :goto_276
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_259

    .line 829
    :cond_27d
    const/4 v1, 0x0

    goto :goto_228

    .line 830
    :cond_27f
    const-string v2, "\u5f39\u5e55\u5173"

    goto :goto_238

    .line 831
    :cond_282
    const/4 v1, 0x0

    goto :goto_254

    .line 832
    :cond_284
    const/4 v1, 0x0

    goto :goto_276

    .line 833
    :cond_286
    const/4 v1, 0x7

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b3

    const/16 v1, 0xff

    :goto_29e
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 834
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 835
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_danmaku_type(I)V

    .line 838
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveDanmakuValidList()V

    .line 839
    const/4 v1, 0x1

    goto/16 :goto_15

    .line 833
    :cond_2b3
    const/4 v1, 0x0

    goto :goto_29e

    .line 841
    :cond_2b5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2cc

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2cc

    .line 842
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->f(I)V

    .line 843
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 844
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 846
    :cond_2cc
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2df

    .line 847
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->adjust_screen(I)V

    .line 848
    const/4 v1, 0x1

    goto/16 :goto_15

    .line 851
    :cond_2df
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMode(Ljava/util/List;)Z

    move-result v3

    .line 852
    if-nez v3, :cond_312

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v4, :cond_312

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_312

    const/4 v4, 0x4

    if-ne v2, v4, :cond_312

    .line 853
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

    .line 854
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 855
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 857
    :cond_312
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v4, :cond_342

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_342

    .line 860
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

    .line 861
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 862
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 864
    :cond_342
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v4, :cond_375

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_375

    .line 865
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

    .line 866
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 867
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 870
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSpeedSettings()V

    .line 873
    :cond_375
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v4, :cond_388

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_388

    .line 874
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 875
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 880
    :cond_388
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    if-eqz v4, :cond_3a3

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3a3

    .line 881
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 882
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 883
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 884
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSubtitleSettings()V

    .line 886
    :cond_3a3
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    if-eqz v4, :cond_3d7

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3d7

    const/16 v4, 0xc

    if-ne v2, v4, :cond_3d7

    .line 887
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

    .line 888
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 889
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 890
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 891
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSubtitleSettings()V

    .line 895
    :cond_3d7
    if-eqz v3, :cond_404

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v4, :cond_404

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 896
    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_404

    const/4 v4, 0x4

    if-ne v2, v4, :cond_404

    .line 898
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

    .line 899
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 900
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 905
    :cond_404
    if-eqz v3, :cond_421

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v4, :cond_421

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 906
    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_421

    const/4 v4, 0x5

    if-ne v2, v4, :cond_421

    .line 908
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_color_theme(I)V

    .line 909
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 910
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 915
    :cond_421
    if-eqz v3, :cond_43f

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v4, :cond_43f

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 916
    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_43f

    const/16 v4, 0xa

    if-ne v2, v4, :cond_43f

    .line 918
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_percent(I)V

    .line 919
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 920
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 924
    :cond_43f
    if-eqz v3, :cond_45d

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    if-eqz v3, :cond_45d

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    .line 925
    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_45d

    const/16 v3, 0xd

    if-ne v2, v3, :cond_45d

    .line 927
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_video_position(I)V

    .line 928
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 929
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 932
    :cond_45d
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    if-eqz v2, :cond_471

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_471

    .line 933
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->jumpToChapter(I)V

    .line 934
    const/4 v1, 0x1

    goto/16 :goto_15

    .line 936
    :cond_471
    const-string v2, "\u8df3\u8fc7\u8bbe\u7f6e"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_487

    .line 937
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 938
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->showSkipSettingDialog()V

    .line 939
    const/4 v1, 0x1

    goto/16 :goto_15

    .line 941
    :cond_487
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 942
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 943
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 944
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v2, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_audio_balance_level(I)V

    goto/16 :goto_51

    :cond_4a0
    move v1, v2

    goto/16 :goto_10d

    .line 778
    nop

    :pswitch_data_4a4
    .packed-switch 0x0
        :pswitch_121
        :pswitch_16e
        :pswitch_1d0
        :pswitch_d0
        :pswitch_d0
        :pswitch_d0
        :pswitch_d0
        :pswitch_1e1
    .end packed-switch
.end method

.method public final a(Lbl/aax;Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 628
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 629
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    .line 630
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 631
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

    .line 654
    :cond_2b
    :goto_2b
    return v0

    .line 633
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 634
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 635
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 636
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    .line 637
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 641
    goto :goto_2b

    .line 638
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 639
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    goto :goto_3f

    .line 642
    :cond_47
    if-nez p4, :cond_4f

    const/16 v1, 0x13

    if-ne p5, v1, :cond_4f

    move v0, v6

    .line 643
    goto :goto_2b

    .line 644
    :cond_4f
    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    .line 645
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 646
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    .line 647
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v1

    .line 648
    invoke-virtual {p1}, Lbl/aax;->a()I

    move-result v2

    .line 649
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2b

    move v0, v6

    .line 650
    goto :goto_2b
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 177
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
    .locals 3
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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1105
    if-le p1, v1, :cond_5

    .line 1162
    :goto_4
    return-object v0

    .line 1108
    :cond_5
    if-ge p1, v1, :cond_a

    .line 1109
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    goto :goto_4

    .line 1111
    :cond_a
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    .line 1112
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMode(Ljava/util/List;)Z

    move-result v2

    .line 1114
    packed-switch v1, :pswitch_data_4c

    goto :goto_4

    .line 1116
    :pswitch_18
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 1119
    :pswitch_1b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    goto :goto_4

    .line 1122
    :pswitch_1e
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    goto :goto_4

    .line 1125
    :pswitch_21
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    goto :goto_4

    .line 1129
    :pswitch_24
    if-eqz v2, :cond_29

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    goto :goto_4

    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_4

    .line 1133
    :pswitch_2c
    if-eqz v2, :cond_31

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    goto :goto_4

    :cond_31
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_4

    .line 1136
    :pswitch_34
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    goto :goto_4

    .line 1139
    :pswitch_37
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    goto :goto_4

    .line 1142
    :pswitch_3a
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    goto :goto_4

    .line 1145
    :pswitch_3d
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    goto :goto_4

    .line 1148
    :pswitch_40
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    goto :goto_4

    .line 1151
    :pswitch_43
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto :goto_4

    .line 1154
    :pswitch_46
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    goto :goto_4

    .line 1157
    :pswitch_49
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    goto :goto_4

    .line 1114
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_2c
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 695
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
    .line 1243
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    .line 1244
    return-void
.end method

.method public final c(II)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1410
    packed-switch p1, :pswitch_data_1a

    .line 1426
    :cond_4
    :goto_4
    return-void

    .line 1412
    :pswitch_5
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-eq v0, p2, :cond_4

    .line 1413
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 1414
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c(I)V

    goto :goto_4

    .line 1419
    :pswitch_f
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    if-eq v0, p2, :cond_4

    .line 1420
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 1421
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c(I)V

    goto :goto_4

    .line 1410
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

    .line 1282
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 1283
    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 1284
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 1285
    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 1286
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 1287
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 1288
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 686
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 687
    new-instance v0, Lbl/aau;

    invoke-direct {v0, p0}, Lbl/aau;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    .line 689
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 690
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
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
    .line 1259
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 1260
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 1261
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
    .line 170
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    .line 171
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 172
    return-void
.end method

.method public init_chapter(Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    .line 153
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 154
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    const-string v1, "\u65e0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_16
    return-void

    .line 158
    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 159
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_37

    .line 161
    const-string v2, "content"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 163
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
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
    .line 1247
    const/4 v1, 0x0

    if-lez p2, :cond_26

    const-string v0, "\u5f39\u5e55\u5f00"

    :goto_5
    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1248
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

    .line 1249
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    .line 1250
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 1251
    return-void

    .line 1247
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
    .line 1297
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    .line 1298
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 1300
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
    .line 1270
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 1271
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 1272
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
    .line 1238
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    .line 1239
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 1240
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
    .line 1264
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    .line 1265
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 1266
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
    .line 1254
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 1255
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 1256
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
    .line 1291
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    .line 1292
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 1294
    return-void
.end method

.method public init_subtitle(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    .line 1304
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    const-string v2, "\u5173\u95ed\u5b57\u5e55"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    if-nez p1, :cond_14

    .line 1306
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 1320
    :goto_13
    return-void

    .line 1309
    :cond_14
    const-string v0, "subtitles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 1310
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

    .line 1312
    :cond_33
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getSubtitleIdFromCache()I

    move-result v0

    .line 1313
    if-ltz v0, :cond_44

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_44

    .line 1314
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_13

    .line 1318
    :cond_44
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

    .line 1323
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    .line 1325
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getSubtitleSizeFromCache()F

    move-result v1

    .line 1326
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1c

    .line 1327
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1328
    if-ltz v1, :cond_19

    .line 1329
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 1337
    :goto_18
    return-void

    .line 1331
    :cond_19
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18

    .line 1334
    :cond_1c
    const/4 v1, -0x1

    if-ne p2, v1, :cond_20

    move p2, v0

    .line 1335
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
    .line 1276
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    .line 1277
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 1278
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    return v0
.end method

.method public setEbookActions(Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    .line 276
    return-void
.end method

.method public setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 286
    iput-object p3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    .line 288
    if-nez p1, :cond_10

    .line 290
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 291
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->clearEbookReadingPageLists()V

    .line 292
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 293
    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    .line 368
    :goto_f
    return-void

    .line 298
    :cond_10
    invoke-static {p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->buildEbookMenus(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 302
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v4

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 306
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "25%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "30%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "35%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "40%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "45%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "50%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getScreenPercent()I

    move-result v0

    .line 313
    if-ltz v0, :cond_64

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_65

    .line 314
    :cond_64
    const/4 v0, 0x1

    .line 316
    :cond_65
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_percent_id:I

    .line 318
    if-nez p2, :cond_a2

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getVideoPosition()I

    move-result v0

    .line 326
    if-ltz v0, :cond_9a

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_9b

    :cond_9a
    move v0, v1

    .line 329
    :cond_9b
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->video_position_id:I

    .line 330
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->clearEbookReadingPageLists()V

    goto/16 :goto_f

    .line 333
    :cond_a2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 334
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "20"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "22"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "24"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "26"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "28"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "30"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "32"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "34"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "36"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "38"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v5

    .line 345
    const/4 v3, 0x4

    move v2, v1

    .line 346
    :goto_f5
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_15c

    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_156

    .line 352
    :goto_111
    sput v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 356
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "System"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Light"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Dark"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Sepia"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Slate"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "OLED"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 363
    if-ltz v0, :cond_152

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_15a

    .line 366
    :cond_152
    :goto_152
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    goto/16 :goto_f

    .line 346
    :cond_156
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f5

    :cond_15a
    move v1, v0

    goto :goto_152

    :cond_15c
    move v2, v3

    goto :goto_111
.end method

.method public setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    .line 267
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
    .line 270
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 271
    return-void
.end method

.method public setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 420
    return-void
.end method
