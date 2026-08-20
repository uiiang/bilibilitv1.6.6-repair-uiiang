.class public Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;
.super Lbl/aay;
.source "LivePlayerMenuRight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;
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
.field private static final MENU_ORIGINAL_ALPHA:I = 0x2

.field private static final MENU_ORIGINAL_AUDIO_BALANCE:I = 0x5

.field private static final MENU_ORIGINAL_DANMAKU_DISPLAY:I = 0x0

.field private static final MENU_ORIGINAL_EBOOK:I = 0x6

.field private static final MENU_ORIGINAL_MIRROR:I = 0x3

.field private static final MENU_ORIGINAL_QUALITY:I = 0x4

.field private static final MENU_ORIGINAL_SIZE:I = 0x1


# instance fields
.field private a:Landroid/view/animation/Animation;

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

.field private audio_balance_id:I

.field private audio_balance_list:Ljava/util/List;
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

.field private d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

.field private danmaku_display_id:I

.field private danmaku_display_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

.field private ebook_color_theme_id:I

.field private ebook_color_theme_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ebook_font_size_id:I

.field private ebook_font_size_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ebook_percent_id:I

.field private ebook_percent_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ebook_video_position_id:I

.field private ebook_video_position_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isEbookMode:Z

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

.field private mirror_id:I

.field private mirror_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lbl/aay;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 70
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 72
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 100
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 101
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 102
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 103
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 104
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 105
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 106
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 107
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 109
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 70
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 72
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 114
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 115
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 116
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 117
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 118
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 119
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 120
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 121
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 122
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 70
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 72
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 127
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 128
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 129
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 130
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 131
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 132
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 133
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 134
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 135
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 136
    return-void
.end method

.method static synthetic access$002(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private getOriginalMenuIndex(I)I
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v0, :cond_5

    .line 160
    :cond_4
    :goto_4
    return p1

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_20

    if-ltz p1, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    .line 160
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 p1, -0x1

    goto :goto_4
.end method

.method private refreshDanmakuDisplayDots(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 606
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-nez v0, :cond_8

    .line 627
    :cond_7
    return-void

    :cond_8
    move v1, v2

    .line 609
    :goto_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 610
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 611
    instance-of v3, v0, Landroid/widget/TextView;

    if-nez v3, :cond_23

    .line 609
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 614
    :cond_23
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 615
    if-eqz v3, :cond_1f

    aget-object v0, v3, v2

    if-eqz v0, :cond_1f

    .line 618
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 620
    const-string v4, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 621
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v0

    .line 625
    :goto_43
    aget-object v3, v3, v2

    if-eqz v0, :cond_55

    const/16 v0, 0xff

    :goto_49
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1f

    .line 623
    :cond_4d
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-ne v1, v0, :cond_53

    const/4 v0, 0x1

    goto :goto_43

    :cond_53
    move v0, v2

    goto :goto_43

    :cond_55
    move v0, v2

    .line 625
    goto :goto_49
.end method

.method private refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 583
    move v1, v2

    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 584
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 585
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_21

    .line 586
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_21

    aget-object v3, v0, v2

    if-eqz v3, :cond_21

    .line 588
    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 583
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 592
    :cond_25
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 593
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_3c

    aget-object v1, v0, v2

    if-eqz v1, :cond_3c

    .line 595
    aget-object v0, v0, v2

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 598
    :cond_3c
    return-void
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
    .line 363
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 364
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 365
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 366
    new-instance v6, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b(I)I

    move-result v1

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$1;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Landroid/content/Context;II)V

    .line 372
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;

    invoke-direct {v0, p0, v6}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Lbl/aax;)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 378
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;FIIF)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 384
    return-object v6
.end method

.method public a()V
    .locals 2

    .prologue
    .line 732
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_d

    .line 734
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 736
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 737
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 418
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 419
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 420
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 421
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 422
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 423
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    :cond_19
    :goto_19
    return-void

    .line 427
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    move v3, v4

    .line 428
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 429
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 430
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 431
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 433
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 434
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 435
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 436
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 439
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 440
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public bridge synthetic a(IILbl/aaz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(IILbl/aaz;Ljava/lang/String;)V

    return-void
.end method

.method public a(IILbl/aaz;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    :cond_7
    :goto_7
    return-void

    .line 271
    :cond_8
    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    if-eqz v0, :cond_7

    .line 275
    const/4 v2, 0x2

    if-ne p1, v2, :cond_36

    .line 278
    :try_start_16
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_bf

    .line 280
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-static {v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result v2

    .line 281
    sparse-switch v2, :sswitch_data_1be

    .line 347
    :cond_25
    :goto_25
    if-eqz v1, :cond_1a6

    .line 348
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V
    :try_end_36
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_36} :catch_1b3

    .line 357
    :cond_36
    :goto_36
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 283
    :sswitch_3a
    :try_start_3a
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 284
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_25

    .line 288
    :sswitch_5b
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 289
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_25

    .line 293
    :sswitch_7c
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 294
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_25

    .line 298
    :sswitch_9d
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 299
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_25

    .line 306
    :cond_bf
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1d0

    goto/16 :goto_25

    .line 310
    :pswitch_ca
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v2, :cond_25

    if-eqz p4, :cond_25

    .line 311
    const-string v2, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 312
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v1

    goto/16 :goto_25

    .line 313
    :cond_de
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 314
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_25

    .line 319
    :pswitch_fc
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 320
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_25

    .line 324
    :pswitch_11e
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 325
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_25

    .line 329
    :pswitch_140
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 330
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_25

    .line 334
    :pswitch_162
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 335
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_25

    .line 339
    :pswitch_184
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 340
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_25

    .line 351
    :cond_1a6
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_1b1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_1b1} :catch_1b3

    goto/16 :goto_36

    .line 353
    :catch_1b3
    move-exception v1

    .line 354
    const-string v1, "LivePlayerMenuRight"

    const-string v2, "Menu data error, why?"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 281
    nop

    :sswitch_data_1be
    .sparse-switch
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_5b
        0xa -> :sswitch_7c
        0xd -> :sswitch_9d
    .end sparse-switch

    .line 306
    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_fc
        :pswitch_11e
        :pswitch_140
        :pswitch_162
        :pswitch_184
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 796
    :cond_6
    :goto_6
    return-void

    .line 743
    :cond_7
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    if-eq v0, p1, :cond_6

    .line 746
    if-eqz p1, :cond_38

    .line 747
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_28

    .line 748
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    .line 749
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 765
    :cond_28
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c()V

    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    goto :goto_6

    .line 771
    :cond_38
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_53

    .line 772
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    .line 773
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 793
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 794
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 795
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 636
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v1

    .line 638
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_24

    .line 640
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    invoke-static {v2, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result v2

    .line 641
    sparse-switch v2, :sswitch_data_3e

    .line 683
    :goto_12
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V

    .line 684
    return v1

    .line 643
    :sswitch_18
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    goto :goto_12

    .line 646
    :sswitch_1b
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    goto :goto_12

    .line 649
    :sswitch_1e
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    goto :goto_12

    .line 652
    :sswitch_21
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    goto :goto_12

    .line 659
    :cond_24
    invoke-direct {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_50

    goto :goto_12

    .line 661
    :pswitch_2c
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    goto :goto_12

    .line 664
    :pswitch_2f
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    goto :goto_12

    .line 667
    :pswitch_32
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    goto :goto_12

    .line 670
    :pswitch_35
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    goto :goto_12

    .line 673
    :pswitch_38
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    goto :goto_12

    .line 676
    :pswitch_3b
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    goto :goto_12

    .line 641
    :sswitch_data_3e
    .sparse-switch
        0x4 -> :sswitch_18
        0x5 -> :sswitch_1b
        0xa -> :sswitch_1e
        0xd -> :sswitch_21
    .end sparse-switch

    .line 659
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method public bridge synthetic a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 27
    move-object v5, p5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 460
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 464
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v2, :cond_1e

    invoke-static {p5}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMenuItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 465
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-static {p5, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->dispatch(Ljava/lang/String;Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 466
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 579
    :cond_1d
    :goto_1d
    return v1

    .line 472
    :cond_1e
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 473
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 474
    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_1d

    .line 476
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1d

    .line 480
    :cond_30
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    if-nez v2, :cond_36

    move v1, v0

    .line 481
    goto :goto_1d

    .line 483
    :cond_36
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v2

    if-eqz v2, :cond_3e

    move v1, v0

    .line 484
    goto :goto_1d

    .line 487
    :cond_3e
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_d7

    .line 488
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-static {v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result v2

    .line 489
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_77

    if-ne v2, v5, :cond_77

    .line 490
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 491
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_73

    .line 492
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookFontSize(F)V

    .line 494
    :cond_73
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_1d

    .line 497
    :cond_77
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_94

    if-ne v2, v6, :cond_94

    .line 498
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_90

    .line 500
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookColorTheme(I)V

    .line 502
    :cond_90
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_1d

    .line 505
    :cond_94
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_b4

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b4

    .line 506
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 507
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_af

    .line 508
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookPercent(I)V

    .line 510
    :cond_af
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 513
    :cond_b4
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    if-eqz v3, :cond_d4

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_d4

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d4

    .line 514
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_cf

    .line 516
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setVideoPosition(I)V

    .line 518
    :cond_cf
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    :cond_d4
    move v1, v0

    .line 522
    goto/16 :goto_1d

    .line 526
    :cond_d7
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 527
    if-nez v2, :cond_134

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v3, :cond_134

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_134

    .line 528
    const-string v2, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 531
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v2

    if-nez v2, :cond_fa

    move v0, v1

    .line 532
    :cond_fa
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->setMergeEnabled(Z)V

    .line 533
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->saveToPrefs(Landroid/content/Context;)V

    .line 534
    const-string v2, "LivePlayerMenuRight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5408\u5e76\u91cd\u590d\u5207\u6362: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDanmakuDisplayDots(Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 536
    :cond_121
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-eq p2, v2, :cond_1d

    .line 537
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 538
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    if-nez p2, :cond_12c

    move v0, v1

    :cond_12c
    invoke-interface {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuDisplay(Z)V

    .line 539
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 543
    :cond_134
    if-ne v2, v1, :cond_156

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v3, :cond_156

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_156

    .line 544
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuSize(F)V

    .line 546
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 549
    :cond_156
    const/4 v3, 0x2

    if-ne v2, v3, :cond_179

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v3, :cond_179

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_179

    .line 550
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 551
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuAlpha(F)V

    .line 552
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 555
    :cond_179
    const/4 v3, 0x3

    if-ne v2, v3, :cond_198

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v3, :cond_198

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_198

    .line 556
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    if-eq p2, v0, :cond_1d

    .line 557
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->toggleMirror()V

    .line 559
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 563
    :cond_198
    if-ne v2, v5, :cond_1b6

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v3, :cond_1b6

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1b6

    .line 564
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    if-eq p2, v2, :cond_1d

    .line 565
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 566
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 567
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setQuality(I)V

    goto/16 :goto_1d

    .line 571
    :cond_1b6
    if-ne v2, v6, :cond_1d4

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_1d4

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v2, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_1d4

    .line 572
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    if-eq p2, v0, :cond_1d

    .line 573
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 574
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setAudioBalance(I)V

    .line 575
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    :cond_1d4
    move v1, v0

    .line 579
    goto/16 :goto_1d
.end method

.method public final a(Lbl/aax;Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbl/aax",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II",
            "Landroid/view/KeyEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 388
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 389
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 390
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 391
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Landroid/view/View;)I

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

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move v0, v6

    .line 414
    :cond_2b
    :goto_2b
    return v0

    .line 393
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 394
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 395
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 396
    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V

    .line 397
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 401
    goto :goto_2b

    .line 398
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 399
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_3f

    .line 402
    :cond_47
    if-nez p4, :cond_4f

    const/16 v1, 0x13

    if-ne p5, v1, :cond_4f

    move v0, v6

    .line 403
    goto :goto_2b

    .line 404
    :cond_4f
    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    .line 405
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 406
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    .line 407
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v1

    .line 408
    invoke-virtual {p1}, Lbl/aax;->a()I

    move-result v2

    .line 409
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2b

    move v0, v6

    .line 410
    goto :goto_2b
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 95
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
    .locals 2
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

    .line 690
    if-le p1, v1, :cond_5

    .line 726
    :goto_4
    return-object v0

    .line 693
    :cond_5
    if-ge p1, v1, :cond_a

    .line 694
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    goto :goto_4

    .line 696
    :cond_a
    iget-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v1, :cond_24

    .line 698
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    invoke-static {v1, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result v1

    .line 699
    sparse-switch v1, :sswitch_data_3e

    goto :goto_4

    .line 701
    :sswitch_18
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    goto :goto_4

    .line 703
    :sswitch_1b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    goto :goto_4

    .line 705
    :sswitch_1e
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    goto :goto_4

    .line 707
    :sswitch_21
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    goto :goto_4

    .line 712
    :cond_24
    invoke-direct {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_50

    goto :goto_4

    .line 714
    :pswitch_2c
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    goto :goto_4

    .line 716
    :pswitch_2f
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_4

    .line 718
    :pswitch_32
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_4

    .line 720
    :pswitch_35
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    goto :goto_4

    .line 722
    :pswitch_38
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 724
    :pswitch_3b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto :goto_4

    .line 699
    :sswitch_data_3e
    .sparse-switch
        0x4 -> :sswitch_18
        0x5 -> :sswitch_1b
        0xa -> :sswitch_1e
        0xd -> :sswitch_21
    .end sparse-switch

    .line 712
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method public e()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 446
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    .line 453
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 454
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
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
    .line 818
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 819
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 820
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
    .line 833
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    .line 834
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 835
    return-void
.end method

.method public init_danmaku_display(Ljava/util/List;I)V
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
    .line 808
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    .line 809
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 810
    return-void
.end method

.method public init_main(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    .line 805
    return-void
.end method

.method public init_mirror(Ljava/util/List;I)V
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
    .line 823
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    .line 824
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 825
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
    .line 828
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    .line 829
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 830
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
    .line 813
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    .line 814
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 815
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    return v0
.end method

.method public setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 174
    iput-object p3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    .line 176
    if-nez p1, :cond_13

    .line 178
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 179
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 180
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 181
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 182
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    .line 262
    :goto_12
    return-void

    .line 187
    :cond_13
    invoke-static {p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->buildEbookMenus(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    .line 188
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 191
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v4

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 195
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "25%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "30%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "35%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "40%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "45%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "50%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getScreenPercent()I

    move-result v0

    .line 202
    if-ltz v0, :cond_62

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_63

    .line 203
    :cond_62
    const/4 v0, 0x1

    .line 205
    :cond_63
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 207
    if-nez p2, :cond_a4

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getVideoPosition()I

    move-result v0

    .line 215
    if-ltz v0, :cond_98

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_99

    :cond_98
    move v0, v1

    .line 218
    :cond_99
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 219
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 220
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 261
    :goto_9f
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c()V

    goto/16 :goto_12

    .line 223
    :cond_a4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 224
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "20"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "22"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "24"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "26"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "28"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "30"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "32"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "34"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "36"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "38"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v5

    .line 235
    const/4 v3, 0x4

    move v2, v1

    .line 236
    :goto_f7
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_160

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_15a

    .line 242
    :goto_113
    iput v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "System"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Light"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Dark"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Sepia"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Slate"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "OLED"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 253
    if-ltz v0, :cond_154

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_15e

    .line 256
    :cond_154
    :goto_154
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 257
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    goto/16 :goto_9f

    .line 236
    :cond_15a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f7

    :cond_15e
    move v1, v0

    goto :goto_154

    :cond_160
    move v2, v3

    goto :goto_113
.end method

.method public setListener(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    .line 140
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
    .line 143
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 144
    return-void
.end method

.method public updateAudioBalanceMenu(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 838
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_c

    .line 869
    :cond_b
    :goto_b
    return-void

    .line 842
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_56

    move v2, v1

    .line 843
    :goto_19
    if-eqz p1, :cond_1e

    if-eqz v2, :cond_1e

    move v0, v1

    .line 844
    :cond_1e
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 845
    if-eqz v0, :cond_6d

    if-nez v2, :cond_6d

    .line 848
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u7535\u5b50\u4e66"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 849
    if-ltz v0, :cond_58

    .line 850
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 851
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_52

    if-ltz v0, :cond_52

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 852
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 860
    :cond_52
    :goto_52
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c(I)V

    goto :goto_b

    :cond_56
    move v2, v0

    .line 842
    goto :goto_19

    .line 855
    :cond_58
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_52

    .line 857
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 861
    :cond_6d
    if-nez v0, :cond_b

    if-eqz v2, :cond_b

    .line 862
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 863
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 864
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_93

    if-ltz v0, :cond_93

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_93

    .line 865
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 867
    :cond_93
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c(I)V

    goto/16 :goto_b
.end method
