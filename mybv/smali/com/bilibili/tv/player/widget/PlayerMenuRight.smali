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
.field public static audio_balance_id:I

.field public static danmaku_level:I

.field public static danmaku_valid_list:[Z

.field public static ebook_color_theme_id:I

.field public static ebook_font_size_id:I

.field public static mode_id:I

.field public static speed_id:I

.field public static subtitle_id:I

.field public static subtitle_size_id:I


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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
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

    .line 74
    const/16 v0, 0xa

    new-array v0, v0, [Z

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    .line 75
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_level:I

    return-void

    .line 74
    nop

    :array_1e
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

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 218
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

    .line 219
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 220
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 221
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 222
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 223
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 224
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 225
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 226
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 227
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 228
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 229
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 233
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

    .line 234
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 235
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 236
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 237
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 238
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 239
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 240
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 241
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 242
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 243
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 244
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 245
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

    .line 760
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 762
    :cond_f
    packed-switch p1, :pswitch_data_38

    .line 794
    :goto_12
    :pswitch_12
    return-void

    .line 764
    :pswitch_13
    invoke-static {v3}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 767
    :pswitch_17
    invoke-static {v2}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 770
    :pswitch_1b
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 773
    :pswitch_1f
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 776
    :pswitch_23
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 783
    :cond_27
    packed-switch p1, :pswitch_data_48

    goto :goto_12

    .line 785
    :pswitch_2b
    invoke-static {v3}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 788
    :pswitch_2f
    invoke-static {v2}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 791
    :pswitch_33
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 762
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_12
        :pswitch_1f
        :pswitch_23
    .end packed-switch

    .line 783
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
    .end packed-switch
.end method

.method private f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 752
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 755
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
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 261
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 263
    :cond_d
    packed-switch p1, :pswitch_data_38

    move p1, v0

    .line 283
    :cond_11
    :goto_11
    return p1

    :pswitch_12
    move p1, v0

    .line 265
    goto :goto_11

    :pswitch_14
    move p1, v0

    .line 267
    goto :goto_11

    .line 269
    :pswitch_16
    const/4 p1, 0x4

    goto :goto_11

    .line 271
    :pswitch_18
    const/4 p1, 0x5

    goto :goto_11

    :pswitch_1a
    move p1, v0

    .line 273
    goto :goto_11

    .line 280
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_11

    .line 263
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method private getSubtitleIdFromCache()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1104
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v1, :cond_6

    .line 1125
    :cond_5
    :goto_5
    return v0

    .line 1111
    :cond_6
    const/4 v1, 0x0

    .line 1113
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1114
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

    .line 1115
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1119
    :cond_30
    if-nez v1, :cond_42

    .line 1120
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v1

    .line 1121
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1125
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

    .line 1129
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v1, :cond_7

    .line 1141
    :cond_6
    :goto_6
    return v0

    .line 1131
    :cond_7
    const/4 v1, 0x0

    .line 1133
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1134
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

    .line 1137
    :cond_31
    if-nez v1, :cond_43

    .line 1138
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1141
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

.method private saveSubtitleSettings()V
    .locals 5

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_5

    .line 1168
    :goto_4
    return-void

    .line 1150
    :cond_5
    const v0, 0x3f333333    # 0.7f

    .line 1151
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    if-ltz v1, :cond_28

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1152
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1157
    :cond_28
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 1158
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

    .line 1159
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    invoke-static {v3, v1, v4, v0}, Lbl/abd;->setSubtitleSettings(Landroid/content/Context;Ljava/lang/String;IF)V

    .line 1162
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->clearSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 1164
    :cond_62
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v1

    .line 1166
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
    .line 403
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 404
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 405
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 406
    new-instance v6, Lcom/bilibili/tv/player/widget/PlayerMenuRight$3;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(I)I

    move-result v1

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$3;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Landroid/content/Context;II)V

    .line 412
    new-instance v0, Lbl/aas;

    invoke-direct {v0, p0, v6}, Lbl/aas;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Lbl/aax;)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 413
    new-instance v0, Lbl/aat;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lbl/aat;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;FIIF)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 414
    return-object v6
.end method

.method public a()V
    .locals 2

    .prologue
    .line 948
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 949
    if-eqz v0, :cond_d

    .line 950
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 952
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 953
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 448
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 449
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 450
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 451
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 452
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 453
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    :cond_19
    :goto_19
    return-void

    .line 458
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    move v3, v4

    .line 459
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 460
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 461
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 462
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 464
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 465
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 467
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 470
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 471
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public a(IIJ)V
    .locals 1

    .prologue
    .line 1171
    new-instance v0, Lbl/aav;

    invoke-direct {v0, p0, p1, p2}, Lbl/aav;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;II)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1172
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
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/16 v3, 0xff

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v0

    if-nez v0, :cond_16

    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_17

    .line 398
    :cond_16
    :goto_16
    return-void

    .line 293
    :cond_17
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 294
    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$1;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$1;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 303
    :cond_2b
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 304
    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$2;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$2;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 313
    :cond_3f
    const/4 v1, 0x2

    if-ne p1, v1, :cond_25a

    .line 315
    :try_start_42
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v6

    .line 317
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v1, :cond_2b5

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    if-ltz v1, :cond_2b5

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2b5

    if-ne v6, v8, :cond_2b5

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    iget v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b5

    .line 320
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_2b5

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_108

    move v5, v4

    .line 327
    :goto_79
    const/16 v1, 0xc

    if-ne v6, v1, :cond_a0

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    if-eqz v1, :cond_a0

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    if-ltz v1, :cond_a0

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    iget-object v7, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_a0

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    sget v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    move v5, v2

    .line 332
    :cond_a0
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10b

    :cond_ac
    if-ne v6, v8, :cond_10b

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v1, :cond_10b

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    if-ltz v1, :cond_10b

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    iget-object v7, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 334
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_10b

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    sget v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 335
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    move v5, v2

    .line 342
    :cond_d1
    :goto_d1
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    iget v7, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12f

    move v1, v2

    .line 372
    :goto_e2
    if-nez v1, :cond_241

    .line 373
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 379
    :goto_ef
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 380
    const/4 v1, -0x1

    if-eq v6, v1, :cond_25a

    move v5, v4

    move v1, v4

    .line 382
    :goto_fa
    const/16 v7, 0xa

    if-ge v5, v7, :cond_25f

    sget-object v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_105

    move v1, v2

    :cond_105
    add-int/lit8 v5, v5, 0x1

    goto :goto_fa

    :cond_108
    move v5, v2

    .line 324
    goto/16 :goto_79

    .line 337
    :cond_10b
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v1, :cond_d1

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    if-ltz v1, :cond_d1

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    iget-object v7, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_d1

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    sget v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    move v5, v2

    .line 339
    goto :goto_d1

    .line 344
    :cond_12f
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    iget v7, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141

    move v1, v2

    .line 345
    goto :goto_e2

    .line 346
    :cond_141
    if-eqz v5, :cond_145

    move v1, v2

    .line 347
    goto :goto_e2

    .line 348
    :cond_145
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v1, :cond_179

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    if-ltz v1, :cond_179

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_179

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    iget v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_179

    .line 351
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_2b2

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_176

    move v1, v4

    goto/16 :goto_e2

    :cond_176
    move v1, v2

    .line 355
    goto/16 :goto_e2

    .line 357
    :cond_179
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v1, :cond_19e

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    if-ltz v1, :cond_19e

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_19e

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19e

    move v1, v2

    .line 358
    goto/16 :goto_e2

    .line 359
    :cond_19e
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v1, :cond_1c3

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v1, :cond_1c3

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1c3

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c3

    move v1, v2

    .line 360
    goto/16 :goto_e2

    .line 361
    :cond_1c3
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    if-eqz v1, :cond_1e8

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    if-ltz v1, :cond_1e8

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1e8

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    move v1, v2

    .line 362
    goto/16 :goto_e2

    .line 363
    :cond_1e8
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v1, :cond_20d

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    if-ltz v1, :cond_20d

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_20d

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20d

    move v1, v2

    .line 364
    goto/16 :goto_e2

    .line 365
    :cond_20d
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_2b2

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b2

    const/4 v1, 0x5

    if-ne v6, v1, :cond_2b2

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v1, :cond_2b2

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    if-ltz v1, :cond_2b2

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 367
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2b2

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 368
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b2

    move v1, v2

    .line 370
    goto/16 :goto_e2

    .line 376
    :cond_241
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/16 v5, 0xff

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 377
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V
    :try_end_250
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_250} :catch_252

    goto/16 :goto_ef

    .line 393
    :catch_252
    move-exception v1

    .line 394
    const-string v1, "PlayerMenuRight"

    const-string v2, "Menu data error, why?"

    invoke-static {v1, v2}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_25a
    :goto_25a
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 383
    :cond_25f
    packed-switch v6, :pswitch_data_2b8

    .line 390
    :try_start_262
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v5, v6, 0x1

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_2b0

    move v1, v3

    :goto_272
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_25a

    .line 385
    :pswitch_276
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v1, :cond_28b

    :goto_27f
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 386
    if-eqz v1, :cond_28d

    const-string v1, "\u5f39\u5e55\u5f00"

    :goto_286
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    :cond_28b
    move v3, v4

    .line 385
    goto :goto_27f

    .line 386
    :cond_28d
    const-string v1, "\u5f39\u5e55\u5173"

    goto :goto_286

    .line 388
    :pswitch_290
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_25a

    .line 389
    :pswitch_29c
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v5, 0x1

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_2ae

    :goto_2aa
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_2ad
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_262 .. :try_end_2ad} :catch_252

    goto :goto_25a

    :cond_2ae
    move v3, v4

    goto :goto_2aa

    :cond_2b0
    move v1, v4

    .line 390
    goto :goto_272

    :cond_2b2
    move v1, v4

    goto/16 :goto_e2

    :cond_2b5
    move v5, v4

    goto/16 :goto_79

    .line 383
    :pswitch_data_2b8
    .packed-switch 0x0
        :pswitch_276
        :pswitch_290
        :pswitch_29c
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1011
    :goto_6
    return-void

    .line 959
    :cond_7
    if-eqz p1, :cond_34

    .line 960
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_24

    .line 961
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    .line 962
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$5;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 978
    :cond_24
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c()V

    .line 979
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    goto :goto_6

    .line 984
    :cond_34
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_4f

    .line 985
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    .line 986
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1008
    :cond_4f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1009
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1010
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 803
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v1

    .line 804
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 808
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 810
    :cond_15
    packed-switch p2, :pswitch_data_46

    .line 875
    :goto_18
    :pswitch_18
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    .line 876
    return v1

    .line 818
    :pswitch_1e
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    goto :goto_18

    .line 821
    :pswitch_21
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    goto :goto_18

    .line 832
    :cond_24
    packed-switch v2, :pswitch_data_54

    :pswitch_27
    goto :goto_18

    .line 834
    :pswitch_28
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    goto :goto_18

    .line 837
    :pswitch_2b
    const/4 v0, 0x1

    .line 838
    goto :goto_18

    .line 840
    :pswitch_2d
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    goto :goto_18

    .line 843
    :pswitch_30
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    goto :goto_18

    .line 846
    :pswitch_33
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    goto :goto_18

    .line 849
    :pswitch_36
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    goto :goto_18

    .line 852
    :pswitch_39
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    goto :goto_18

    .line 855
    :pswitch_3c
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_18

    .line 864
    :pswitch_3f
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    goto :goto_18

    .line 867
    :pswitch_42
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18

    .line 810
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_1e
        :pswitch_21
        :pswitch_18
    .end packed-switch

    .line 832
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_28
        :pswitch_2b
        :pswitch_2d
        :pswitch_27
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_18
        :pswitch_18
        :pswitch_3f
        :pswitch_42
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
    .line 491
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    .line 494
    const-string v1, "\u7ae0\u8282\u5217\u8868"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 495
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 496
    const-string v1, "EbookReader"

    const-string v2, "\u7ae0\u8282\u5217\u8868\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_27

    .line 498
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->showChapterList()V

    .line 500
    :cond_27
    const/4 v1, 0x1

    .line 747
    :goto_28
    return v1

    .line 503
    :cond_29
    const-string v1, "\u5b57\u4f53\u5927\u5c0f"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 504
    const-string v1, "EbookReader"

    const-string v2, "\u5b57\u4f53\u5927\u5c0f\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_3a
    const-string v1, "\u9009\u62e9\u6587\u4ef6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 510
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 511
    const-string v1, "EbookReader"

    const-string v2, "\u9009\u62e9\u6587\u4ef6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_5e

    .line 513
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookFileChooser()V

    .line 515
    :cond_5e
    const/4 v1, 0x1

    goto :goto_28

    .line 518
    :cond_60
    const-string v1, "\u6e05\u7a7a\u4e66\u67b6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 519
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 520
    const-string v1, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u4e66\u67b6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_84

    .line 522
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->clearBookshelf()V

    .line 524
    :cond_84
    const/4 v1, 0x1

    goto :goto_28

    .line 527
    :cond_86
    const-string v1, "\u9000\u51fa\u9605\u8bfb"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 528
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 529
    const-string v1, "EbookReader"

    const-string v2, "\u9000\u51fa\u9605\u8bfb\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 531
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 533
    :cond_a6
    const/4 v1, 0x1

    goto :goto_28

    .line 536
    :cond_a8
    const-string v1, "\u5173\u95ed\u4e66\u7c4d"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 537
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 538
    const-string v1, "EbookReader"

    const-string v2, "\u5173\u95ed\u4e66\u7c4d\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_cc

    .line 540
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->closeCurrentBook()V

    .line 542
    :cond_cc
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 545
    :cond_cf
    const-string v1, "\u5173\u95ed\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 546
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 547
    const-string v1, "EbookReader"

    const-string v2, "\u5173\u95ed\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 549
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 551
    :cond_ef
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 555
    :cond_f2
    const-string v1, "\u63a7\u5236\u89c6\u9891"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_117

    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 556
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 557
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    const-string v2, "video"

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->switchControlTarget(Ljava/lang/String;)V

    .line 558
    const-string v1, "EbookReader"

    const-string v2, "\u63a7\u5236\u89c6\u9891\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 563
    :cond_117
    const-string v1, "\u63a7\u5236\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13c

    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 564
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 565
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    const-string v2, "ebook"

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->switchControlTarget(Ljava/lang/String;)V

    .line 566
    const-string v1, "EbookReader"

    const-string v2, "\u63a7\u5236\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 570
    :cond_13c
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 571
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 572
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v1

    .line 573
    if-eqz v1, :cond_14f

    .line 574
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 576
    :cond_14f
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    .line 577
    invoke-direct {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(I)V

    .line 578
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 580
    :cond_159
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-nez v1, :cond_188

    .line 581
    const/4 v1, 0x0

    .line 740
    :cond_15e
    :goto_15e
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 741
    if-eqz v1, :cond_173

    .line 742
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 744
    :cond_173
    instance-of v1, p3, Landroid/widget/TextView;

    if-eqz v1, :cond_185

    .line 745
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 747
    :cond_185
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 582
    :cond_188
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v1

    if-eqz v1, :cond_191

    .line 583
    const/4 v1, 0x0

    goto/16 :goto_28

    .line 585
    :cond_191
    const-string v1, "\u5206\u96c6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 586
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 587
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->P()V

    .line 588
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 591
    :cond_1a7
    const-string v1, "\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_1ca

    .line 592
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 593
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 594
    const-string v1, "PlayerMenuRight"

    const-string v2, "\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 597
    :cond_1ca
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d9

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-ne p2, v1, :cond_229

    .line 598
    :cond_1d9
    const/4 v1, 0x0

    .line 605
    :goto_1da
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_360

    .line 608
    packed-switch p2, :pswitch_data_576

    .line 629
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v3, p2, 0x1

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v4, p2, 0x1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_2d9

    const/4 v1, 0x1

    :goto_1f5
    aput-boolean v1, v2, v3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v3, p2, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2dc

    const/16 v1, 0xff

    :goto_20a
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 631
    :goto_20d
    const/4 v2, 0x0

    .line 632
    const/4 v1, 0x0

    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 633
    const/4 v1, 0x0

    move v3, v1

    :goto_213
    const/16 v1, 0xa

    if-ge v3, v1, :cond_2df

    .line 634
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_572

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    const/4 v2, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    const/4 v1, 0x1

    .line 633
    :goto_225
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_213

    .line 600
    :cond_229
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 601
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->e(I)V

    .line 602
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 603
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    goto :goto_1da

    .line 610
    :pswitch_237
    const/4 v1, 0x0

    .line 611
    const/4 v2, 0x0

    :goto_239
    const/16 v3, 0xa

    if-ge v2, v3, :cond_247

    sget-object v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_244

    const/4 v1, 0x1

    :cond_244
    add-int/lit8 v2, v2, 0x1

    goto :goto_239

    .line 612
    :cond_247
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v3, 0x1

    sget-object v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v5, 0x4

    sget-object v6, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v7, 0x5

    sget-object v8, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v9, 0x6

    sget-object v10, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v11, 0x7

    if-nez v1, :cond_264

    const/4 v1, 0x1

    :goto_259
    aput-boolean v1, v10, v11

    aput-boolean v1, v8, v9

    aput-boolean v1, v6, v7

    aput-boolean v1, v4, v5

    aput-boolean v1, v2, v3

    goto :goto_20d

    :cond_264
    const/4 v1, 0x0

    goto :goto_259

    .line 615
    :pswitch_266
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

    .line 616
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5f39\u5e55\u5c4f\u853d\u7b49\u7ea7"

    .line 617
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight$4;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$4;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Landroid/view/ViewGroup;)V

    .line 618
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 625
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 626
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 627
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 628
    :pswitch_2c8
    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v3, 0x1

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v4, 0x1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_2d7

    const/4 v1, 0x1

    :goto_2d3
    aput-boolean v1, v2, v3

    goto/16 :goto_20d

    :cond_2d7
    const/4 v1, 0x0

    goto :goto_2d3

    .line 629
    :cond_2d9
    const/4 v1, 0x0

    goto/16 :goto_1f5

    :cond_2dc
    const/4 v1, 0x0

    goto/16 :goto_20a

    .line 636
    :cond_2df
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-eqz v2, :cond_348

    const/16 v1, 0xff

    :goto_2f3
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 637
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_34a

    const-string v2, "\u5f39\u5e55\u5f00"

    :goto_303
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
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

    if-eqz v1, :cond_34d

    const/16 v1, 0xff

    :goto_31f
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 639
    const/4 v1, 0x4

    move v2, v1

    :goto_324
    const/16 v1, 0x8

    if-ge v2, v1, :cond_351

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

    if-eqz v1, :cond_34f

    const/16 v1, 0xff

    :goto_341
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_324

    .line 636
    :cond_348
    const/4 v1, 0x0

    goto :goto_2f3

    .line 637
    :cond_34a
    const-string v2, "\u5f39\u5e55\u5173"

    goto :goto_303

    .line 638
    :cond_34d
    const/4 v1, 0x0

    goto :goto_31f

    .line 639
    :cond_34f
    const/4 v1, 0x0

    goto :goto_341

    .line 640
    :cond_351
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 641
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_danmaku_type(I)V

    .line 642
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 644
    :cond_360
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_374

    .line 645
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->f(I)V

    .line 646
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 647
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 649
    :cond_374
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_387

    .line 650
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->adjust_screen(I)V

    .line 651
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 653
    :cond_387
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 654
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v3, :cond_3b8

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b8

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b8

    .line 655
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->a(F)V

    .line 656
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 657
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 659
    :cond_3b8
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v3, :cond_3d3

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3d3

    .line 662
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v3, :cond_3d3

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4d7

    .line 672
    :cond_3d3
    :goto_3d3
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v3, :cond_403

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_403

    .line 673
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "x"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->switch_speed(F)V

    .line 674
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 675
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 677
    :cond_403
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v3, :cond_416

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_416

    .line 678
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 679
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 681
    :cond_416
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    if-eqz v3, :cond_431

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_431

    .line 682
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 683
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 684
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 685
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSubtitleSettings()V

    .line 687
    :cond_431
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    if-eqz v3, :cond_465

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_465

    const/16 v3, 0xc

    if-ne v2, v3, :cond_465

    .line 688
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_subtitle_size(F)V

    .line 689
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 690
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 691
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 692
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSubtitleSettings()V

    .line 697
    :cond_465
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v3, :cond_471

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4fa

    :cond_471
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v3, :cond_4fa

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 698
    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4fa

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4fa

    .line 700
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_font_size(F)V

    .line 701
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 702
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 713
    :cond_49c
    :goto_49c
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v3, :cond_4a8

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_527

    :cond_4a8
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v3, :cond_527

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 714
    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_527

    const/4 v3, 0x5

    if-ne v2, v3, :cond_527

    .line 716
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_color_theme(I)V

    .line 717
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 718
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 725
    :cond_4c3
    :goto_4c3
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    if-eqz v2, :cond_543

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_543

    .line 726
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->jumpToChapter(I)V

    .line 727
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 667
    :cond_4d7
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "f"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->b(F)V

    .line 668
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 669
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    goto/16 :goto_3d3

    .line 703
    :cond_4fa
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v3, :cond_49c

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_49c

    const/4 v3, 0x2

    if-ne v2, v3, :cond_49c

    .line 705
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_font_size(F)V

    .line 706
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 707
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    goto/16 :goto_49c

    .line 719
    :cond_527
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v3, :cond_4c3

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4c3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4c3

    .line 721
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_color_theme(I)V

    .line 722
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    .line 723
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_color_theme_id:I

    goto :goto_4c3

    .line 729
    :cond_543
    const-string v2, "\u8df3\u8fc7\u8bbe\u7f6e"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_559

    .line 730
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 731
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->showSkipSettingDialog()V

    .line 732
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 734
    :cond_559
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_15e

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 735
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 736
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 737
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v2, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_audio_balance_level(I)V

    goto/16 :goto_15e

    :cond_572
    move v1, v2

    goto/16 :goto_225

    .line 608
    nop

    :pswitch_data_576
    .packed-switch 0x0
        :pswitch_237
        :pswitch_266
        :pswitch_2c8
    .end packed-switch
.end method

.method public final a(Lbl/aax;Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 418
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 419
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    .line 420
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 421
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

    .line 444
    :cond_2b
    :goto_2b
    return v0

    .line 423
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 424
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 425
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 426
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    .line 427
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 431
    goto :goto_2b

    .line 428
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 429
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    goto :goto_3f

    .line 432
    :cond_47
    if-nez p4, :cond_4f

    const/16 v1, 0x13

    if-ne p5, v1, :cond_4f

    move v0, v6

    .line 433
    goto :goto_2b

    .line 434
    :cond_4f
    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    .line 435
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 436
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    .line 437
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v1

    .line 438
    invoke-virtual {p1}, Lbl/aax;->a()I

    move-result v2

    .line 439
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2b

    move v0, v6

    .line 440
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 883
    if-le p1, v1, :cond_5

    .line 942
    :goto_4
    return-object v0

    .line 886
    :cond_5
    if-ge p1, v1, :cond_a

    .line 887
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    goto :goto_4

    .line 889
    :cond_a
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    .line 890
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 891
    packed-switch v1, :pswitch_data_4c

    :pswitch_19
    goto :goto_4

    .line 893
    :pswitch_1a
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 896
    :pswitch_1d
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    goto :goto_4

    .line 899
    :pswitch_20
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    goto :goto_4

    .line 902
    :pswitch_23
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    goto :goto_4

    .line 905
    :pswitch_26
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_4

    .line 908
    :pswitch_29
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_4

    .line 911
    :pswitch_2c
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    goto :goto_4

    .line 914
    :pswitch_2f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    goto :goto_4

    .line 917
    :pswitch_32
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    goto :goto_4

    .line 920
    :pswitch_35
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    goto :goto_4

    .line 923
    :pswitch_38
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto :goto_4

    .line 926
    :pswitch_3b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    goto :goto_4

    .line 933
    :cond_3e
    packed-switch v1, :pswitch_data_6a

    goto :goto_4

    .line 938
    :pswitch_42
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 940
    :pswitch_45
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    goto :goto_4

    .line 942
    :pswitch_48
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    goto :goto_4

    .line 891
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_19
        :pswitch_38
        :pswitch_3b
    .end packed-switch

    .line 933
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_45
        :pswitch_48
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 485
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
    .line 1028
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    .line 1029
    return-void
.end method

.method public final c(II)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1175
    packed-switch p1, :pswitch_data_1a

    .line 1191
    :cond_4
    :goto_4
    return-void

    .line 1177
    :pswitch_5
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-eq v0, p2, :cond_4

    .line 1178
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 1179
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c(I)V

    goto :goto_4

    .line 1184
    :pswitch_f
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    if-eq v0, p2, :cond_4

    .line 1185
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 1186
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c(I)V

    goto :goto_4

    .line 1175
    nop

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_5
        :pswitch_f
    .end packed-switch
.end method

.method public e()V
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 477
    new-instance v0, Lbl/aau;

    invoke-direct {v0, p0}, Lbl/aau;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    .line 479
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 480
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
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
    .line 1044
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 1045
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 1046
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
    .line 1032
    const/4 v1, 0x0

    if-lez p2, :cond_26

    const-string v0, "\u5f39\u5e55\u5f00"

    :goto_5
    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1033
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

    .line 1034
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    .line 1035
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 1036
    return-void

    .line 1032
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
    .line 1059
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    .line 1060
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 1061
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
    .line 1023
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    .line 1024
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 1025
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
    .line 1049
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    .line 1050
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 1051
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
    .line 1039
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 1040
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 1041
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
    .line 1054
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    .line 1055
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 1056
    return-void
.end method

.method public init_subtitle(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    .line 1065
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    const-string v2, "\u5173\u95ed\u5b57\u5e55"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    if-nez p1, :cond_14

    .line 1067
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 1084
    :goto_13
    return-void

    .line 1071
    :cond_14
    const-string v0, "subtitles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 1072
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

    .line 1074
    :cond_33
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getSubtitleIdFromCache()I

    move-result v0

    .line 1076
    if-ltz v0, :cond_44

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 1077
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_13

    .line 1080
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

    .line 1081
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

    .line 1087
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    .line 1089
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getSubtitleSizeFromCache()F

    move-result v1

    .line 1090
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1c

    .line 1091
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1092
    if-ltz v1, :cond_19

    .line 1093
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 1101
    :goto_18
    return-void

    .line 1095
    :cond_19
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18

    .line 1098
    :cond_1c
    const/4 v1, -0x1

    if-ne p2, v1, :cond_20

    move p2, v0

    .line 1099
    :cond_20
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    return v0
.end method

.method public setEpisodeMenuString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f:Ljava/lang/String;

    .line 1020
    return-void
.end method

.method public setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    .line 249
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
    .line 252
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 253
    return-void
.end method

.method public setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 257
    return-void
.end method
