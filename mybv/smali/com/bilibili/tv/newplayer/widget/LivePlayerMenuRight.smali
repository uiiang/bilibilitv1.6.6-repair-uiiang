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
    .line 637
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

.method private isEbookReadingPage()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private refreshDanmakuDisplayDots(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 613
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-nez v0, :cond_8

    .line 634
    :cond_7
    return-void

    :cond_8
    move v1, v2

    .line 616
    :goto_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 617
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 618
    instance-of v3, v0, Landroid/widget/TextView;

    if-nez v3, :cond_23

    .line 616
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 621
    :cond_23
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 622
    if-eqz v3, :cond_1f

    aget-object v0, v3, v2

    if-eqz v0, :cond_1f

    .line 625
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 627
    const-string v4, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 628
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v0

    .line 632
    :goto_43
    aget-object v3, v3, v2

    if-eqz v0, :cond_55

    const/16 v0, 0xff

    :goto_49
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1f

    .line 630
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

    .line 632
    goto :goto_49
.end method

.method private refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 590
    move v1, v2

    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 591
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 592
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_21

    .line 593
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_21

    aget-object v3, v0, v2

    if-eqz v3, :cond_21

    .line 595
    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 590
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 599
    :cond_25
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 600
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_3c

    aget-object v1, v0, v2

    if-eqz v1, :cond_3c

    .line 602
    aget-object v0, v0, v2

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 605
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
    .line 369
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 370
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 371
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 372
    new-instance v6, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b(I)I

    move-result v1

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$1;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Landroid/content/Context;II)V

    .line 378
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;

    invoke-direct {v0, p0, v6}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Lbl/aax;)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 384
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;FIIF)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 390
    return-object v6
.end method

.method public a()V
    .locals 2

    .prologue
    .line 741
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_d

    .line 743
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 745
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 746
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 424
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 425
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 426
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 427
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 428
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 429
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    :cond_19
    :goto_19
    return-void

    .line 433
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    move v3, v4

    .line 434
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 435
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 436
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 437
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 439
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 440
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 441
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 442
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 445
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 446
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

    .line 273
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 364
    :cond_7
    :goto_7
    return-void

    .line 276
    :cond_8
    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    if-eqz v0, :cond_7

    .line 280
    const/4 v2, 0x2

    if-ne p1, v2, :cond_38

    .line 283
    :try_start_16
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_c1

    .line 285
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookReadingPage()Z

    move-result v2

    .line 286
    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-static {v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(IZ)I

    move-result v2

    .line 287
    sparse-switch v2, :sswitch_data_1c0

    .line 353
    :cond_27
    :goto_27
    if-eqz v1, :cond_1a8

    .line 354
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_38} :catch_1b5

    .line 363
    :cond_38
    :goto_38
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 289
    :sswitch_3c
    :try_start_3c
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 290
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 294
    :sswitch_5d
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 295
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 299
    :sswitch_7e
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 300
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 304
    :sswitch_9f
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 305
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 312
    :cond_c1
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1d2

    goto/16 :goto_27

    .line 316
    :pswitch_cc
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v2, :cond_27

    if-eqz p4, :cond_27

    .line 317
    const-string v2, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 318
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v1

    goto/16 :goto_27

    .line 319
    :cond_e0
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 320
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 325
    :pswitch_fe
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 326
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 330
    :pswitch_120
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 331
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 335
    :pswitch_142
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 336
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 340
    :pswitch_164
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 341
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 345
    :pswitch_186
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 346
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 357
    :cond_1a8
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_1b3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c .. :try_end_1b3} :catch_1b5

    goto/16 :goto_38

    .line 359
    :catch_1b5
    move-exception v1

    .line 360
    const-string v1, "LivePlayerMenuRight"

    const-string v2, "Menu data error, why?"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 287
    nop

    :sswitch_data_1c0
    .sparse-switch
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_5d
        0xa -> :sswitch_7e
        0xd -> :sswitch_9f
    .end sparse-switch

    .line 312
    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_fe
        :pswitch_120
        :pswitch_142
        :pswitch_164
        :pswitch_186
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 805
    :cond_6
    :goto_6
    return-void

    .line 752
    :cond_7
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    if-eq v0, p1, :cond_6

    .line 755
    if-eqz p1, :cond_38

    .line 756
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_28

    .line 757
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    .line 758
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 774
    :cond_28
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c()V

    .line 775
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    goto :goto_6

    .line 780
    :cond_38
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_53

    .line 781
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    .line 782
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 802
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 803
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 804
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 643
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v1

    .line 645
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_26

    .line 647
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookReadingPage()Z

    move-result v2

    .line 648
    invoke-static {p2, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(IZ)I

    move-result v2

    .line 649
    sparse-switch v2, :sswitch_data_40

    .line 691
    :goto_14
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V

    .line 692
    return v1

    .line 651
    :sswitch_1a
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    goto :goto_14

    .line 654
    :sswitch_1d
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    goto :goto_14

    .line 657
    :sswitch_20
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    goto :goto_14

    .line 660
    :sswitch_23
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    goto :goto_14

    .line 667
    :cond_26
    invoke-direct {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_52

    goto :goto_14

    .line 669
    :pswitch_2e
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    goto :goto_14

    .line 672
    :pswitch_31
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    goto :goto_14

    .line 675
    :pswitch_34
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    goto :goto_14

    .line 678
    :pswitch_37
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    goto :goto_14

    .line 681
    :pswitch_3a
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    goto :goto_14

    .line 684
    :pswitch_3d
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    goto :goto_14

    .line 649
    :sswitch_data_40
    .sparse-switch
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_1d
        0xa -> :sswitch_20
        0xd -> :sswitch_23
    .end sparse-switch

    .line 667
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
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

    .line 466
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 470
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v2, :cond_1e

    invoke-static {p5}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMenuItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 471
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-static {p5, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->dispatch(Ljava/lang/String;Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 472
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 586
    :cond_1d
    :goto_1d
    return v1

    .line 478
    :cond_1e
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 479
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 480
    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_1d

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1d

    .line 486
    :cond_30
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    if-nez v2, :cond_36

    move v1, v0

    .line 487
    goto :goto_1d

    .line 489
    :cond_36
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v2

    if-eqz v2, :cond_3e

    move v1, v0

    .line 490
    goto :goto_1d

    .line 493
    :cond_3e
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_d9

    .line 494
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookReadingPage()Z

    move-result v2

    .line 495
    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-static {v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(IZ)I

    move-result v2

    .line 496
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_79

    if-ne v2, v5, :cond_79

    .line 497
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_75

    .line 499
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

    .line 501
    :cond_75
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_1d

    .line 504
    :cond_79
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_96

    if-ne v2, v6, :cond_96

    .line 505
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_92

    .line 507
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookColorTheme(I)V

    .line 509
    :cond_92
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_1d

    .line 512
    :cond_96
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_b6

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b6

    .line 513
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 514
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_b1

    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookPercent(I)V

    .line 517
    :cond_b1
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 520
    :cond_b6
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    if-eqz v3, :cond_d6

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_d6

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d6

    .line 521
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 522
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_d1

    .line 523
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setVideoPosition(I)V

    .line 525
    :cond_d1
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    :cond_d6
    move v1, v0

    .line 529
    goto/16 :goto_1d

    .line 533
    :cond_d9
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 534
    if-nez v2, :cond_136

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v3, :cond_136

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_136

    .line 535
    const-string v2, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 538
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v2

    if-nez v2, :cond_fc

    move v0, v1

    .line 539
    :cond_fc
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->setMergeEnabled(Z)V

    .line 540
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->saveToPrefs(Landroid/content/Context;)V

    .line 541
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

    .line 542
    invoke-direct {p0, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDanmakuDisplayDots(Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 543
    :cond_123
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-eq p2, v2, :cond_1d

    .line 544
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 545
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    if-nez p2, :cond_12e

    move v0, v1

    :cond_12e
    invoke-interface {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuDisplay(Z)V

    .line 546
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 550
    :cond_136
    if-ne v2, v1, :cond_158

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v3, :cond_158

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_158

    .line 551
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuSize(F)V

    .line 553
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 556
    :cond_158
    const/4 v3, 0x2

    if-ne v2, v3, :cond_17b

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v3, :cond_17b

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_17b

    .line 557
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuAlpha(F)V

    .line 559
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 562
    :cond_17b
    const/4 v3, 0x3

    if-ne v2, v3, :cond_19a

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v3, :cond_19a

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_19a

    .line 563
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    if-eq p2, v0, :cond_1d

    .line 564
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 565
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->toggleMirror()V

    .line 566
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 570
    :cond_19a
    if-ne v2, v5, :cond_1b8

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v3, :cond_1b8

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1b8

    .line 571
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    if-eq p2, v2, :cond_1d

    .line 572
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 573
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 574
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setQuality(I)V

    goto/16 :goto_1d

    .line 578
    :cond_1b8
    if-ne v2, v6, :cond_1d6

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_1d6

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v2, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_1d6

    .line 579
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    if-eq p2, v0, :cond_1d

    .line 580
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 581
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setAudioBalance(I)V

    .line 582
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    :cond_1d6
    move v1, v0

    .line 586
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

    .line 394
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 395
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 396
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 397
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

    .line 420
    :cond_2b
    :goto_2b
    return v0

    .line 399
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 400
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 401
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 402
    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V

    .line 403
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 407
    goto :goto_2b

    .line 404
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 405
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_3f

    .line 408
    :cond_47
    if-nez p4, :cond_4f

    const/16 v1, 0x13

    if-ne p5, v1, :cond_4f

    move v0, v6

    .line 409
    goto :goto_2b

    .line 410
    :cond_4f
    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    .line 411
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 412
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    .line 413
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v1

    .line 414
    invoke-virtual {p1}, Lbl/aax;->a()I

    move-result v2

    .line 415
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2b

    move v0, v6

    .line 416
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

    .line 698
    if-le p1, v1, :cond_5

    .line 735
    :goto_4
    return-object v0

    .line 701
    :cond_5
    if-ge p1, v1, :cond_a

    .line 702
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    goto :goto_4

    .line 704
    :cond_a
    iget-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v1, :cond_26

    .line 706
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookReadingPage()Z

    move-result v1

    .line 707
    invoke-static {p2, v1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(IZ)I

    move-result v1

    .line 708
    sparse-switch v1, :sswitch_data_40

    goto :goto_4

    .line 710
    :sswitch_1a
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    goto :goto_4

    .line 712
    :sswitch_1d
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    goto :goto_4

    .line 714
    :sswitch_20
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    goto :goto_4

    .line 716
    :sswitch_23
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    goto :goto_4

    .line 721
    :cond_26
    invoke-direct {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_52

    goto :goto_4

    .line 723
    :pswitch_2e
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    goto :goto_4

    .line 725
    :pswitch_31
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_4

    .line 727
    :pswitch_34
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_4

    .line 729
    :pswitch_37
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    goto :goto_4

    .line 731
    :pswitch_3a
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 733
    :pswitch_3d
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto :goto_4

    .line 708
    :sswitch_data_40
    .sparse-switch
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_1d
        0xa -> :sswitch_20
        0xd -> :sswitch_23
    .end sparse-switch

    .line 721
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method

.method public e()V
    .locals 4

    .prologue
    .line 451
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 452
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    .line 459
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 460
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
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
    .line 827
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 828
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 829
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
    .line 842
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    .line 843
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 844
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
    .line 817
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    .line 818
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 819
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
    .line 813
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    .line 814
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
    .line 832
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    .line 833
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 834
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
    .line 837
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    .line 838
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 839
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
    .line 822
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    .line 823
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 824
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    return v0
.end method

.method public setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 179
    iput-object p3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    .line 181
    if-nez p1, :cond_13

    .line 183
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 184
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 185
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 186
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 187
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    .line 267
    :goto_12
    return-void

    .line 192
    :cond_13
    invoke-static {p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->buildEbookMenus(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    .line 193
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 196
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v4

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "25%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "30%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "35%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "40%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "45%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "50%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getScreenPercent()I

    move-result v0

    .line 207
    if-ltz v0, :cond_62

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_63

    .line 208
    :cond_62
    const/4 v0, 0x1

    .line 210
    :cond_63
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 212
    if-nez p2, :cond_a4

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    .line 215
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getVideoPosition()I

    move-result v0

    .line 220
    if-ltz v0, :cond_98

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_99

    :cond_98
    move v0, v1

    .line 223
    :cond_99
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 224
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 225
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 266
    :goto_9f
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c()V

    goto/16 :goto_12

    .line 228
    :cond_a4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "20"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "22"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "24"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "26"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "28"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "30"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "32"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "34"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "36"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "38"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v5

    .line 240
    const/4 v3, 0x4

    move v2, v1

    .line 241
    :goto_f7
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_160

    .line 242
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

    .line 247
    :goto_113
    iput v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "System"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Light"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Dark"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Sepia"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Slate"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "OLED"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 258
    if-ltz v0, :cond_154

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_15e

    .line 261
    :cond_154
    :goto_154
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 262
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    goto/16 :goto_9f

    .line 241
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

    .line 847
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_c

    .line 878
    :cond_b
    :goto_b
    return-void

    .line 851
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_56

    move v2, v1

    .line 852
    :goto_19
    if-eqz p1, :cond_1e

    if-eqz v2, :cond_1e

    move v0, v1

    .line 853
    :cond_1e
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 854
    if-eqz v0, :cond_6d

    if-nez v2, :cond_6d

    .line 857
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u7535\u5b50\u4e66"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 858
    if-ltz v0, :cond_58

    .line 859
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 860
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_52

    if-ltz v0, :cond_52

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 861
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 869
    :cond_52
    :goto_52
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c(I)V

    goto :goto_b

    :cond_56
    move v2, v0

    .line 851
    goto :goto_19

    .line 864
    :cond_58
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_52

    .line 866
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 870
    :cond_6d
    if-nez v0, :cond_b

    if-eqz v2, :cond_b

    .line 871
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 872
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 873
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_93

    if-ltz v0, :cond_93

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_93

    .line 874
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 876
    :cond_93
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c(I)V

    goto/16 :goto_b
.end method
