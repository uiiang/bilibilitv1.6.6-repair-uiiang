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

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Z

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    .line 73
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_level:I

    return-void

    .line 72
    nop

    :array_1c
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

    .line 176
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

    .line 177
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 178
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 179
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 180
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 181
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 182
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 183
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 184
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 185
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 186
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 187
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 191
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "20"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "22"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "24"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "26"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "28"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "30"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "32"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "34"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "36"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v1, "38"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 204
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

    .line 205
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 206
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 207
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 208
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 209
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 210
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 211
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 212
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 213
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 214
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 215
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 219
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

    .line 220
    iput-boolean v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    .line 221
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 222
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 223
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 224
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 225
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 226
    iput v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 227
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 228
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 229
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 230
    sput v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 231
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

    .line 693
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 695
    :cond_f
    packed-switch p1, :pswitch_data_34

    .line 724
    :goto_12
    :pswitch_12
    return-void

    .line 697
    :pswitch_13
    invoke-static {v3}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 700
    :pswitch_17
    invoke-static {v2}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 703
    :pswitch_1b
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 706
    :pswitch_1f
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 713
    :cond_23
    packed-switch p1, :pswitch_data_42

    goto :goto_12

    .line 715
    :pswitch_27
    invoke-static {v3}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 718
    :pswitch_2b
    invoke-static {v2}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 721
    :pswitch_2f
    invoke-static {v1}, Lbl/aai;->a(I)V

    goto :goto_12

    .line 695
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_12
        :pswitch_1f
    .end packed-switch

    .line 713
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method private f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 685
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 688
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

    .line 247
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 249
    :cond_d
    packed-switch p1, :pswitch_data_36

    move p1, v0

    .line 267
    :cond_11
    :goto_11
    return p1

    :pswitch_12
    move p1, v0

    .line 251
    goto :goto_11

    :pswitch_14
    move p1, v0

    .line 253
    goto :goto_11

    .line 255
    :pswitch_16
    const/4 p1, 0x4

    goto :goto_11

    :pswitch_18
    move p1, v0

    .line 257
    goto :goto_11

    .line 264
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_11

    .line 249
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method

.method private getSubtitleIdFromCache()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1031
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v1, :cond_6

    .line 1052
    :cond_5
    :goto_5
    return v0

    .line 1038
    :cond_6
    const/4 v1, 0x0

    .line 1040
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1041
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

    .line 1042
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1046
    :cond_30
    if-nez v1, :cond_42

    .line 1047
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v1

    .line 1048
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1052
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

    .line 1056
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v1, :cond_7

    .line 1068
    :cond_6
    :goto_6
    return v0

    .line 1058
    :cond_7
    const/4 v1, 0x0

    .line 1060
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1061
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

    .line 1064
    :cond_31
    if-nez v1, :cond_43

    .line 1065
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->getSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 1068
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
    .line 135
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    if-eqz v0, :cond_20

    if-ltz p1, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 137
    const-string v0, "\u65e0"

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 143
    :cond_20
    :goto_20
    return-void

    .line 141
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->jumpToChapter(I)V

    goto :goto_20
.end method

.method private saveSubtitleSettings()V
    .locals 5

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_5

    .line 1095
    :goto_4
    return-void

    .line 1077
    :cond_5
    const v0, 0x3f333333    # 0.7f

    .line 1078
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    if-ltz v1, :cond_28

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1079
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1084
    :cond_28
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 1085
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

    .line 1086
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v2

    .line 1088
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    invoke-static {v3, v1, v4, v0}, Lbl/abd;->setSubtitleSettings(Landroid/content/Context;Ljava/lang/String;IF)V

    .line 1089
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->clearSubtitleSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 1091
    :cond_62
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSubtitleKey(J)Ljava/lang/String;

    move-result-object v1

    .line 1093
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
    .line 360
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 361
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 362
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 363
    new-instance v6, Lcom/bilibili/tv/player/widget/PlayerMenuRight$3;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(I)I

    move-result v1

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$3;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Landroid/content/Context;II)V

    .line 369
    new-instance v0, Lbl/aas;

    invoke-direct {v0, p0, v6}, Lbl/aas;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Lbl/aax;)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 370
    new-instance v0, Lbl/aat;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lbl/aat;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;FIIF)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 371
    return-object v6
.end method

.method public a()V
    .locals 2

    .prologue
    .line 875
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_d

    .line 877
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 879
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 880
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 406
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 407
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 408
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 409
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 410
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    :cond_19
    :goto_19
    return-void

    .line 415
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    move v3, v4

    .line 416
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 417
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 418
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 419
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 421
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 422
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 423
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 424
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 427
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 428
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public a(IIJ)V
    .locals 1

    .prologue
    .line 1098
    new-instance v0, Lbl/aav;

    invoke-direct {v0, p0, p1, p2}, Lbl/aav;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;II)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1099
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
    const/4 v8, 0x2

    const/16 v3, 0xff

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 274
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v0

    if-nez v0, :cond_16

    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_17

    .line 355
    :cond_16
    :goto_16
    return-void

    .line 277
    :cond_17
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 278
    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$1;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$1;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 287
    :cond_2b
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 288
    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$2;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$2;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 297
    :cond_3f
    if-ne p1, v8, :cond_1d7

    .line 299
    :try_start_41
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v6

    .line 301
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v1, :cond_232

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    if-ltz v1, :cond_232

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_232

    const/4 v1, 0x4

    if-ne v6, v1, :cond_232

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    iget v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_232

    move v5, v2

    .line 304
    :goto_6d
    const/16 v1, 0xc

    if-ne v6, v1, :cond_94

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    if-eqz v1, :cond_94

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    if-ltz v1, :cond_94

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    iget-object v7, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_94

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    sget v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    move v5, v2

    .line 308
    :cond_94
    if-ne v6, v8, :cond_b9

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v1, :cond_b9

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    if-ltz v1, :cond_b9

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    iget-object v6, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_b9

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    sget v6, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    move v5, v2

    .line 312
    :cond_b9
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    iget v6, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    move v1, v2

    .line 329
    :goto_ca
    if-nez v1, :cond_1be

    .line 330
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 336
    :goto_d7
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 337
    const/4 v1, -0x1

    if-eq v6, v1, :cond_1d7

    move v5, v4

    move v1, v4

    .line 339
    :goto_e2
    const/16 v7, 0xa

    if-ge v5, v7, :cond_1dc

    sget-object v7, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_ed

    move v1, v2

    :cond_ed
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2

    .line 314
    :cond_f0
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    iget v6, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    move v1, v2

    .line 315
    goto :goto_ca

    .line 316
    :cond_102
    if-eqz v5, :cond_106

    move v1, v2

    .line 317
    goto :goto_ca

    .line 318
    :cond_106
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v1, :cond_12a

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    if-ltz v1, :cond_12a

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_12a

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    iget v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    move v1, v2

    .line 319
    goto :goto_ca

    .line 320
    :cond_12a
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v1, :cond_14f

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    if-ltz v1, :cond_14f

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_14f

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14f

    move v1, v2

    .line 321
    goto/16 :goto_ca

    .line 322
    :cond_14f
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v1, :cond_174

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v1, :cond_174

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_174

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_174

    move v1, v2

    .line 323
    goto/16 :goto_ca

    .line 324
    :cond_174
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    if-eqz v1, :cond_199

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    if-ltz v1, :cond_199

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_199

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_199

    move v1, v2

    .line 325
    goto/16 :goto_ca

    .line 326
    :cond_199
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v1, :cond_22f

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    if-ltz v1, :cond_22f

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_22f

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    sget v5, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22f

    move v1, v2

    .line 327
    goto/16 :goto_ca

    .line 333
    :cond_1be
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/16 v5, 0xff

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V
    :try_end_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_1cd} :catch_1cf

    goto/16 :goto_d7

    .line 350
    :catch_1cf
    move-exception v1

    .line 351
    const-string v1, "PlayerMenuRight"

    const-string v2, "Menu data error, why?"

    invoke-static {v1, v2}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1d7
    :goto_1d7
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 340
    :cond_1dc
    packed-switch v6, :pswitch_data_236

    .line 347
    :try_start_1df
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    add-int/lit8 v5, v6, 0x1

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_22d

    move v1, v3

    :goto_1ef
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1d7

    .line 342
    :pswitch_1f3
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v1, :cond_208

    :goto_1fc
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 343
    if-eqz v1, :cond_20a

    const-string v1, "\u5f39\u5e55\u5f00"

    :goto_203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    :cond_208
    move v3, v4

    .line 342
    goto :goto_1fc

    .line 343
    :cond_20a
    const-string v1, "\u5f39\u5e55\u5173"

    goto :goto_203

    .line 345
    :pswitch_20d
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1d7

    .line 346
    :pswitch_219
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    const/4 v5, 0x1

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_22b

    :goto_227
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_22a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1df .. :try_end_22a} :catch_1cf

    goto :goto_1d7

    :cond_22b
    move v3, v4

    goto :goto_227

    :cond_22d
    move v1, v4

    .line 347
    goto :goto_1ef

    :cond_22f
    move v1, v4

    goto/16 :goto_ca

    :cond_232
    move v5, v4

    goto/16 :goto_6d

    .line 340
    nop

    :pswitch_data_236
    .packed-switch 0x0
        :pswitch_1f3
        :pswitch_20d
        :pswitch_219
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 938
    :goto_6
    return-void

    .line 886
    :cond_7
    if-eqz p1, :cond_34

    .line 887
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_24

    .line 888
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    .line 889
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$5;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 905
    :cond_24
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c()V

    .line 906
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 908
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    goto :goto_6

    .line 911
    :cond_34
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_4f

    .line 912
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    .line 913
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$6;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 935
    :cond_4f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 936
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 937
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 733
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v1

    .line 734
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 738
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 740
    :cond_15
    packed-switch p2, :pswitch_data_42

    .line 802
    :goto_18
    :pswitch_18
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    .line 803
    return v1

    .line 748
    :pswitch_1e
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    goto :goto_18

    .line 759
    :cond_21
    packed-switch v2, :pswitch_data_4e

    :pswitch_24
    goto :goto_18

    .line 761
    :pswitch_25
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    goto :goto_18

    .line 764
    :pswitch_28
    const/4 v0, 0x1

    .line 765
    goto :goto_18

    .line 767
    :pswitch_2a
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    goto :goto_18

    .line 770
    :pswitch_2d
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    goto :goto_18

    .line 773
    :pswitch_30
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    goto :goto_18

    .line 776
    :pswitch_33
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    goto :goto_18

    .line 779
    :pswitch_36
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    goto :goto_18

    .line 782
    :pswitch_39
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_18

    .line 791
    :pswitch_3c
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    goto :goto_18

    .line 794
    :pswitch_3f
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18

    .line 740
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_1e
        :pswitch_18
    .end packed-switch

    .line 759
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_28
        :pswitch_2a
        :pswitch_24
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_18
        :pswitch_18
        :pswitch_3c
        :pswitch_3f
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
    .line 448
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    .line 451
    const-string v1, "\u7ae0\u8282\u5217\u8868"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 452
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 453
    const-string v1, "EbookReader"

    const-string v2, "\u7ae0\u8282\u5217\u8868\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_27

    .line 455
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->showChapterList()V

    .line 457
    :cond_27
    const/4 v1, 0x1

    .line 680
    :goto_28
    return v1

    .line 460
    :cond_29
    const-string v1, "\u5b57\u4f53\u5927\u5c0f"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 461
    const-string v1, "EbookReader"

    const-string v2, "\u5b57\u4f53\u5927\u5c0f\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_3a
    const-string v1, "\u9009\u62e9\u6587\u4ef6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 467
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 468
    const-string v1, "EbookReader"

    const-string v2, "\u9009\u62e9\u6587\u4ef6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_5e

    .line 470
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookFileChooser()V

    .line 472
    :cond_5e
    const/4 v1, 0x1

    goto :goto_28

    .line 475
    :cond_60
    const-string v1, "\u6e05\u7a7a\u4e66\u67b6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 476
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 477
    const-string v1, "EbookReader"

    const-string v2, "\u6e05\u7a7a\u4e66\u67b6\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_84

    .line 479
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->clearBookshelf()V

    .line 481
    :cond_84
    const/4 v1, 0x1

    goto :goto_28

    .line 484
    :cond_86
    const-string v1, "\u9000\u51fa\u9605\u8bfb"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 486
    const-string v1, "EbookReader"

    const-string v2, "\u9000\u51fa\u9605\u8bfb\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 488
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 490
    :cond_a6
    const/4 v1, 0x1

    goto :goto_28

    .line 493
    :cond_a8
    const-string v1, "\u5173\u95ed\u4e66\u7c4d"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 494
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 495
    const-string v1, "EbookReader"

    const-string v2, "\u5173\u95ed\u4e66\u7c4d\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-eqz v1, :cond_cc

    .line 497
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->closeCurrentBook()V

    .line 499
    :cond_cc
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 502
    :cond_cf
    const-string v1, "\u5173\u95ed\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 503
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 504
    const-string v1, "EbookReader"

    const-string v2, "\u5173\u95ed\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 506
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 508
    :cond_ef
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 512
    :cond_f2
    const-string v1, "\u63a7\u5236\u89c6\u9891"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_117

    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 513
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 514
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    const-string v2, "video"

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->switchControlTarget(Ljava/lang/String;)V

    .line 515
    const-string v1, "EbookReader"

    const-string v2, "\u63a7\u5236\u89c6\u9891\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 520
    :cond_117
    const-string v1, "\u63a7\u5236\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13c

    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 521
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 522
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    const-string v2, "ebook"

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->switchControlTarget(Ljava/lang/String;)V

    .line 523
    const-string v1, "EbookReader"

    const-string v2, "\u63a7\u5236\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 527
    :cond_13c
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 528
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    .line 529
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v1

    .line 530
    if-eqz v1, :cond_14f

    .line 531
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 533
    :cond_14f
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    .line 534
    invoke-direct {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d(I)V

    .line 535
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 537
    :cond_159
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    if-nez v1, :cond_188

    .line 538
    const/4 v1, 0x0

    .line 673
    :cond_15e
    :goto_15e
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 674
    if-eqz v1, :cond_173

    .line 675
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 677
    :cond_173
    instance-of v1, p3, Landroid/widget/TextView;

    if-eqz v1, :cond_185

    .line 678
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 680
    :cond_185
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 539
    :cond_188
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f()Z

    move-result v1

    if-eqz v1, :cond_191

    .line 540
    const/4 v1, 0x0

    goto/16 :goto_28

    .line 542
    :cond_191
    const-string v1, "\u5206\u96c6"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 543
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 544
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->P()V

    .line 545
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 548
    :cond_1a7
    const-string v1, "\u7535\u5b50\u4e66"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    invoke-static {}, Lcom/bilibili/tv/FeatureConfig;->isEbookReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_1ca

    .line 549
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 550
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->openEbookReader()V

    .line 551
    const-string v1, "PlayerMenuRight"

    const-string v2, "\u7535\u5b50\u4e66\u83dc\u5355\u9879\u88ab\u70b9\u51fb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 554
    :cond_1ca
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d9

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-ne p2, v1, :cond_229

    .line 555
    :cond_1d9
    const/4 v1, 0x0

    .line 562
    :goto_1da
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_360

    .line 565
    packed-switch p2, :pswitch_data_524

    .line 586
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

    .line 588
    :goto_20d
    const/4 v2, 0x0

    .line 589
    const/4 v1, 0x0

    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 590
    const/4 v1, 0x0

    move v3, v1

    :goto_213
    const/16 v1, 0xa

    if-ge v3, v1, :cond_2df

    .line 591
    sget-object v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_520

    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    const/4 v2, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    const/4 v1, 0x1

    .line 590
    :goto_225
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_213

    .line 557
    :cond_229
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 558
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->e(I)V

    .line 559
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 560
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    goto :goto_1da

    .line 567
    :pswitch_237
    const/4 v1, 0x0

    .line 568
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

    .line 569
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

    .line 572
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

    .line 573
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5f39\u5e55\u5c4f\u853d\u7b49\u7ea7"

    .line 574
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/player/widget/PlayerMenuRight$4;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$4;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;Landroid/view/ViewGroup;)V

    .line 575
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 584
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 585
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

    .line 586
    :cond_2d9
    const/4 v1, 0x0

    goto/16 :goto_1f5

    :cond_2dc
    const/4 v1, 0x0

    goto/16 :goto_20a

    .line 593
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

    .line 594
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_34a

    const-string v2, "\u5f39\u5e55\u5f00"

    :goto_303
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
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

    .line 596
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

    .line 593
    :cond_348
    const/4 v1, 0x0

    goto :goto_2f3

    .line 594
    :cond_34a
    const-string v2, "\u5f39\u5e55\u5173"

    goto :goto_303

    .line 595
    :cond_34d
    const/4 v1, 0x0

    goto :goto_31f

    .line 596
    :cond_34f
    const/4 v1, 0x0

    goto :goto_341

    .line 597
    :cond_351
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 598
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    invoke-interface {v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_danmaku_type(I)V

    .line 599
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 601
    :cond_360
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_374

    .line 602
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->f(I)V

    .line 603
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 604
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 606
    :cond_374
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_387

    .line 607
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->adjust_screen(I)V

    .line 608
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 610
    :cond_387
    iget v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 611
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

    .line 612
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

    .line 613
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 614
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 616
    :cond_3b8
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v3, :cond_3e8

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3e8

    .line 617
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

    .line 618
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 619
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 621
    :cond_3e8
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    if-eqz v3, :cond_418

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_418

    .line 622
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

    .line 623
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 624
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 626
    :cond_418
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    if-eqz v3, :cond_42b

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_42b

    .line 627
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 628
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 630
    :cond_42b
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    if-eqz v3, :cond_446

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_446

    .line 631
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 632
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 633
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 634
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSubtitleSettings()V

    .line 636
    :cond_446
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    if-eqz v3, :cond_47a

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_47a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_47a

    .line 637
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

    .line 638
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 639
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 640
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->refresh_subtitle()V

    .line 641
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->saveSubtitleSettings()V

    .line 646
    :cond_47a
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v3, :cond_486

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4c5

    :cond_486
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v3, :cond_4c5

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 647
    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4c5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4c5

    .line 649
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v2, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_font_size(F)V

    .line 650
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 651
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 658
    :cond_4b1
    :goto_4b1
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    if-eqz v2, :cond_4f1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f1

    .line 659
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->jumpToChapter(I)V

    .line 660
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 652
    :cond_4c5
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v3, :cond_4b1

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4b1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b1

    .line 654
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v2, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_ebook_font_size(F)V

    .line 655
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    .line 656
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ebook_font_size_id:I

    goto :goto_4b1

    .line 662
    :cond_4f1
    const-string v2, "\u8df3\u8fc7\u8bbe\u7f6e"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_507

    .line 663
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 664
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->showSkipSettingDialog()V

    .line 665
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 667
    :cond_507
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_15e

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 668
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 669
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 670
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    invoke-interface {v2, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;->set_audio_balance_level(I)V

    goto/16 :goto_15e

    :cond_520
    move v1, v2

    goto/16 :goto_225

    .line 565
    nop

    :pswitch_data_524
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

    .line 375
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 376
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e()V

    .line 377
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 378
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

    .line 401
    :cond_2b
    :goto_2b
    return v0

    .line 380
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 381
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 382
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 383
    iget v1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->e(II)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 388
    goto :goto_2b

    .line 385
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 386
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    goto :goto_3f

    .line 389
    :cond_47
    if-nez p4, :cond_4f

    const/16 v1, 0x13

    if-ne p5, v1, :cond_4f

    move v0, v6

    .line 390
    goto :goto_2b

    .line 391
    :cond_4f
    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    .line 392
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 393
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    .line 394
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v1

    .line 395
    invoke-virtual {p1}, Lbl/aax;->a()I

    move-result v2

    .line 396
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2b

    move v0, v6

    .line 397
    goto :goto_2b
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 172
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

    .line 810
    if-le p1, v1, :cond_5

    .line 869
    :goto_4
    return-object v0

    .line 813
    :cond_5
    if-ge p1, v1, :cond_a

    .line 814
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    goto :goto_4

    .line 816
    :cond_a
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    .line 817
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 818
    packed-switch v1, :pswitch_data_4c

    :pswitch_19
    goto :goto_4

    .line 820
    :pswitch_1a
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 823
    :pswitch_1d
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    goto :goto_4

    .line 826
    :pswitch_20
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    goto :goto_4

    .line 829
    :pswitch_23
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->adjust_list:Ljava/util/List;

    goto :goto_4

    .line 832
    :pswitch_26
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_4

    .line 835
    :pswitch_29
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_4

    .line 838
    :pswitch_2c
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    goto :goto_4

    .line 841
    :pswitch_2f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    goto :goto_4

    .line 844
    :pswitch_32
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    goto :goto_4

    .line 847
    :pswitch_35
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    goto :goto_4

    .line 850
    :pswitch_38
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto :goto_4

    .line 853
    :pswitch_3b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    goto :goto_4

    .line 860
    :cond_3e
    packed-switch v1, :pswitch_data_6a

    goto :goto_4

    .line 865
    :pswitch_42
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 867
    :pswitch_45
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    goto :goto_4

    .line 869
    :pswitch_48
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    goto :goto_4

    .line 818
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

    .line 860
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
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 442
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
    .line 955
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->main_list:Ljava/util/List;

    .line 956
    return-void
.end method

.method public final c(II)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1102
    packed-switch p1, :pswitch_data_1a

    .line 1118
    :cond_4
    :goto_4
    return-void

    .line 1104
    :pswitch_5
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    if-eq v0, p2, :cond_4

    .line 1105
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 1106
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c(I)V

    goto :goto_4

    .line 1111
    :pswitch_f
    iget v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    if-eq v0, p2, :cond_4

    .line 1112
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 1113
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c(I)V

    goto :goto_4

    .line 1102
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
    .line 433
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 434
    new-instance v0, Lbl/aau;

    invoke-direct {v0, p0}, Lbl/aau;-><init>(Lcom/bilibili/tv/player/widget/PlayerMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    .line 436
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
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
    .line 971
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 972
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->alpha_id:I

    .line 973
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
    .line 165
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_list:Ljava/util/List;

    .line 166
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->audio_balance_id:I

    .line 167
    return-void
.end method

.method public init_chapter(Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    .line 148
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 149
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    const-string v1, "\u65e0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_16
    return-void

    .line 153
    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 154
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_37

    .line 156
    const-string v2, "content"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 158
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->chapter_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
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
    .line 959
    const/4 v1, 0x0

    if-lez p2, :cond_26

    const-string v0, "\u5f39\u5e55\u5f00"

    :goto_5
    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 960
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

    .line 961
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_list:Ljava/util/List;

    .line 962
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_type:I

    .line 963
    return-void

    .line 959
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
    .line 986
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_list:Ljava/util/List;

    .line 987
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 988
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
    .line 950
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_list:Ljava/util/List;

    .line 951
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->quality_id:I

    .line 952
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
    .line 976
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_list:Ljava/util/List;

    .line 977
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->ratio_id:I

    .line 978
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
    .line 966
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_list:Ljava/util/List;

    .line 967
    iput p2, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->size_id:I

    .line 968
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
    .line 981
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_list:Ljava/util/List;

    .line 982
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 983
    return-void
.end method

.method public init_subtitle(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    .line 992
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    const-string v2, "\u5173\u95ed\u5b57\u5e55"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    if-nez p1, :cond_14

    .line 994
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 1011
    :goto_13
    return-void

    .line 998
    :cond_14
    const-string v0, "subtitles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 999
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

    .line 1001
    :cond_33
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getSubtitleIdFromCache()I

    move-result v0

    .line 1003
    if-ltz v0, :cond_44

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 1004
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    goto :goto_13

    .line 1007
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

    .line 1008
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

    .line 1014
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_list:Ljava/util/List;

    .line 1016
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->getSubtitleSizeFromCache()F

    move-result v1

    .line 1017
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1c

    .line 1018
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1019
    if-ltz v1, :cond_19

    .line 1020
    sput v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    .line 1028
    :goto_18
    return-void

    .line 1022
    :cond_19
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18

    .line 1025
    :cond_1c
    const/4 v1, -0x1

    if-ne p2, v1, :cond_20

    move p2, v0

    .line 1026
    :cond_20
    sput p2, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_size_id:I

    goto :goto_18
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->c:Z

    return v0
.end method

.method public setEpisodeMenuString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->f:Ljava/lang/String;

    .line 947
    return-void
.end method

.method public setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->d:Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;

    .line 235
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
    .line 238
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 239
    return-void
.end method

.method public setResolveParams(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 243
    return-void
.end method
