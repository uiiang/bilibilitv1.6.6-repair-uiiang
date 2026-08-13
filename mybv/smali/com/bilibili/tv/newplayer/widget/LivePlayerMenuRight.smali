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

    .line 97
    invoke-direct {p0, p1}, Lbl/aay;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 68
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 70
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 98
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 99
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 100
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 101
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 102
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 103
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 104
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 105
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 107
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 68
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 70
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 112
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 113
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 114
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 115
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 116
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 117
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 118
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 119
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 120
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 68
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 70
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 125
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 126
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 127
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 128
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 129
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 130
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 131
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 132
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 133
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 134
    return-void
.end method

.method static synthetic access$002(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 592
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
    .line 150
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v0, :cond_5

    .line 158
    :cond_4
    :goto_4
    return p1

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_20

    if-ltz p1, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 155
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    .line 158
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 p1, -0x1

    goto :goto_4
.end method

.method private isEbookReadingPage()Z
    .locals 1

    .prologue
    .line 165
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

.method private refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 574
    move v1, v2

    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 575
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 576
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_21

    .line 577
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_21

    aget-object v3, v0, v2

    if-eqz v3, :cond_21

    .line 579
    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 574
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 583
    :cond_25
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 584
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_3c

    aget-object v1, v0, v2

    if-eqz v1, :cond_3c

    .line 586
    aget-object v0, v0, v2

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 589
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
    .line 361
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 362
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 363
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 364
    new-instance v6, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b(I)I

    move-result v1

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$1;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Landroid/content/Context;II)V

    .line 370
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;

    invoke-direct {v0, p0, v6}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Lbl/aax;)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 376
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;FIIF)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 382
    return-object v6
.end method

.method public a()V
    .locals 2

    .prologue
    .line 696
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_d

    .line 698
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 700
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 701
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 416
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 417
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 418
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 419
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 420
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 421
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    :cond_19
    :goto_19
    return-void

    .line 425
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    move v3, v4

    .line 426
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 427
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 428
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 429
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 431
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 432
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 433
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 434
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 437
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 438
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public bridge synthetic a(IILbl/aaz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(IILbl/aaz;Ljava/lang/String;)V

    return-void
.end method

.method public a(IILbl/aaz;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 356
    :cond_7
    :goto_7
    return-void

    .line 274
    :cond_8
    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    if-eqz v0, :cond_7

    .line 278
    const/4 v2, 0x2

    if-ne p1, v2, :cond_38

    .line 281
    :try_start_16
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_c1

    .line 283
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookReadingPage()Z

    move-result v2

    .line 284
    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-static {v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(IZ)I

    move-result v2

    .line 285
    sparse-switch v2, :sswitch_data_1b0

    .line 345
    :cond_27
    :goto_27
    if-eqz v1, :cond_198

    .line 346
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_38} :catch_1a5

    .line 355
    :cond_38
    :goto_38
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 287
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

    .line 288
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 292
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

    .line 293
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 297
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

    .line 298
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 302
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

    .line 303
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 310
    :cond_c1
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1c2

    goto/16 :goto_27

    .line 312
    :pswitch_cc
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 313
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 317
    :pswitch_ee
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 318
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 322
    :pswitch_110
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 323
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 327
    :pswitch_132
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 328
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 332
    :pswitch_154
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 333
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 337
    :pswitch_176
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 338
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 349
    :cond_198
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_1a3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c .. :try_end_1a3} :catch_1a5

    goto/16 :goto_38

    .line 351
    :catch_1a5
    move-exception v1

    .line 352
    const-string v1, "LivePlayerMenuRight"

    const-string v2, "Menu data error, why?"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 285
    nop

    :sswitch_data_1b0
    .sparse-switch
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_5d
        0xa -> :sswitch_7e
        0xd -> :sswitch_9f
    .end sparse-switch

    .line 310
    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_ee
        :pswitch_110
        :pswitch_132
        :pswitch_154
        :pswitch_176
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 760
    :cond_6
    :goto_6
    return-void

    .line 707
    :cond_7
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    if-eq v0, p1, :cond_6

    .line 710
    if-eqz p1, :cond_38

    .line 711
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_28

    .line 712
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    .line 713
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 729
    :cond_28
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c()V

    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    goto :goto_6

    .line 735
    :cond_38
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_53

    .line 736
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    .line 737
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 757
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 758
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 759
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 598
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v1

    .line 600
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_26

    .line 602
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookReadingPage()Z

    move-result v2

    .line 603
    invoke-static {p2, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(IZ)I

    move-result v2

    .line 604
    sparse-switch v2, :sswitch_data_40

    .line 646
    :goto_14
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V

    .line 647
    return v1

    .line 606
    :sswitch_1a
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    goto :goto_14

    .line 609
    :sswitch_1d
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    goto :goto_14

    .line 612
    :sswitch_20
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    goto :goto_14

    .line 615
    :sswitch_23
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    goto :goto_14

    .line 622
    :cond_26
    invoke-direct {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_52

    goto :goto_14

    .line 624
    :pswitch_2e
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    goto :goto_14

    .line 627
    :pswitch_31
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    goto :goto_14

    .line 630
    :pswitch_34
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    goto :goto_14

    .line 633
    :pswitch_37
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    goto :goto_14

    .line 636
    :pswitch_3a
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    goto :goto_14

    .line 639
    :pswitch_3d
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    goto :goto_14

    .line 604
    :sswitch_data_40
    .sparse-switch
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_1d
        0xa -> :sswitch_20
        0xd -> :sswitch_23
    .end sparse-switch

    .line 622
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
    .line 25
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

    .line 458
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 462
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v2, :cond_1e

    invoke-static {p5}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMenuItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 463
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-static {p5, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->dispatch(Ljava/lang/String;Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 464
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 570
    :cond_1d
    :goto_1d
    return v1

    .line 470
    :cond_1e
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 471
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 472
    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_1d

    .line 474
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1d

    .line 478
    :cond_30
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    if-nez v2, :cond_36

    move v1, v0

    .line 479
    goto :goto_1d

    .line 481
    :cond_36
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v2

    if-eqz v2, :cond_3e

    move v1, v0

    .line 482
    goto :goto_1d

    .line 485
    :cond_3e
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_d9

    .line 486
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookReadingPage()Z

    move-result v2

    .line 487
    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-static {v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(IZ)I

    move-result v2

    .line 488
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_79

    if-ne v2, v5, :cond_79

    .line 489
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 490
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_75

    .line 491
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

    .line 493
    :cond_75
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_1d

    .line 496
    :cond_79
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_96

    if-ne v2, v6, :cond_96

    .line 497
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_92

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookColorTheme(I)V

    .line 501
    :cond_92
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_1d

    .line 504
    :cond_96
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_b6

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b6

    .line 505
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_b1

    .line 507
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookPercent(I)V

    .line 509
    :cond_b1
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 512
    :cond_b6
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    if-eqz v3, :cond_d6

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_d6

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d6

    .line 513
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 514
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_d1

    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setVideoPosition(I)V

    .line 517
    :cond_d1
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    :cond_d6
    move v1, v0

    .line 521
    goto/16 :goto_1d

    .line 525
    :cond_d9
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 526
    if-nez v2, :cond_100

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v3, :cond_100

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_100

    .line 527
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-eq p2, v2, :cond_1d

    .line 528
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 529
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    if-nez p2, :cond_f8

    move v0, v1

    :cond_f8
    invoke-interface {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuDisplay(Z)V

    .line 530
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 534
    :cond_100
    if-ne v2, v1, :cond_122

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v3, :cond_122

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_122

    .line 535
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 536
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuSize(F)V

    .line 537
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 540
    :cond_122
    const/4 v3, 0x2

    if-ne v2, v3, :cond_145

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v3, :cond_145

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_145

    .line 541
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 542
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuAlpha(F)V

    .line 543
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 546
    :cond_145
    const/4 v3, 0x3

    if-ne v2, v3, :cond_164

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v3, :cond_164

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_164

    .line 547
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    if-eq p2, v0, :cond_1d

    .line 548
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 549
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->toggleMirror()V

    .line 550
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    .line 554
    :cond_164
    if-ne v2, v5, :cond_182

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v3, :cond_182

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_182

    .line 555
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    if-eq p2, v2, :cond_1d

    .line 556
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 557
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setQuality(I)V

    goto/16 :goto_1d

    .line 562
    :cond_182
    if-ne v2, v6, :cond_1a0

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_1a0

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v2, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_1a0

    .line 563
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    if-eq p2, v0, :cond_1d

    .line 564
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 565
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setAudioBalance(I)V

    .line 566
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_1d

    :cond_1a0
    move v1, v0

    .line 570
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

    .line 386
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 387
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 388
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 389
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

    .line 412
    :cond_2b
    :goto_2b
    return v0

    .line 391
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 392
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 393
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 394
    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V

    .line 395
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 399
    goto :goto_2b

    .line 396
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 397
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_3f

    .line 400
    :cond_47
    if-nez p4, :cond_4f

    const/16 v1, 0x13

    if-ne p5, v1, :cond_4f

    move v0, v6

    .line 401
    goto :goto_2b

    .line 402
    :cond_4f
    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    .line 403
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 404
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    .line 405
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v1

    .line 406
    invoke-virtual {p1}, Lbl/aax;->a()I

    move-result v2

    .line 407
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2b

    move v0, v6

    .line 408
    goto :goto_2b
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 93
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

    .line 653
    if-le p1, v1, :cond_5

    .line 690
    :goto_4
    return-object v0

    .line 656
    :cond_5
    if-ge p1, v1, :cond_a

    .line 657
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    goto :goto_4

    .line 659
    :cond_a
    iget-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v1, :cond_26

    .line 661
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookReadingPage()Z

    move-result v1

    .line 662
    invoke-static {p2, v1}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(IZ)I

    move-result v1

    .line 663
    sparse-switch v1, :sswitch_data_40

    goto :goto_4

    .line 665
    :sswitch_1a
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    goto :goto_4

    .line 667
    :sswitch_1d
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    goto :goto_4

    .line 669
    :sswitch_20
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    goto :goto_4

    .line 671
    :sswitch_23
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    goto :goto_4

    .line 676
    :cond_26
    invoke-direct {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_52

    goto :goto_4

    .line 678
    :pswitch_2e
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    goto :goto_4

    .line 680
    :pswitch_31
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_4

    .line 682
    :pswitch_34
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_4

    .line 684
    :pswitch_37
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    goto :goto_4

    .line 686
    :pswitch_3a
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 688
    :pswitch_3d
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto :goto_4

    .line 663
    :sswitch_data_40
    .sparse-switch
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_1d
        0xa -> :sswitch_20
        0xd -> :sswitch_23
    .end sparse-switch

    .line 676
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
    .line 443
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 444
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    .line 451
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 452
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
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
    .line 782
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 783
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 784
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
    .line 797
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    .line 798
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 799
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
    .line 772
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    .line 773
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 774
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
    .line 768
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    .line 769
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
    .line 787
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    .line 788
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 789
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
    .line 792
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    .line 793
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 794
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
    .line 777
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    .line 778
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 779
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    return v0
.end method

.method public setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 176
    iput-boolean p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 177
    iput-object p3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    .line 179
    if-nez p1, :cond_13

    .line 181
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 182
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 183
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 184
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 185
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    .line 265
    :goto_12
    return-void

    .line 190
    :cond_13
    invoke-static {p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->buildEbookMenus(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    .line 191
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 194
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v4

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "25%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "30%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "35%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "40%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "45%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "50%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getScreenPercent()I

    move-result v0

    .line 205
    if-ltz v0, :cond_62

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_63

    .line 206
    :cond_62
    const/4 v0, 0x1

    .line 208
    :cond_63
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 210
    if-nez p2, :cond_a4

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getVideoPosition()I

    move-result v0

    .line 218
    if-ltz v0, :cond_98

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_99

    :cond_98
    move v0, v1

    .line 221
    :cond_99
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 222
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 223
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 264
    :goto_9f
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c()V

    goto/16 :goto_12

    .line 226
    :cond_a4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "20"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "22"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "24"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "26"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "28"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "30"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "32"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "34"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "36"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "38"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v5

    .line 238
    const/4 v3, 0x4

    move v2, v1

    .line 239
    :goto_f7
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_160

    .line 240
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

    .line 245
    :goto_113
    iput v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 249
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "System"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Light"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Dark"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Sepia"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Slate"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "OLED"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 256
    if-ltz v0, :cond_154

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_15e

    .line 259
    :cond_154
    :goto_154
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 260
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    goto/16 :goto_9f

    .line 239
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
    .line 137
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    .line 138
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
    .line 141
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 142
    return-void
.end method

.method public updateAudioBalanceMenu(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 802
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_c

    .line 833
    :cond_b
    :goto_b
    return-void

    .line 806
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_56

    move v2, v1

    .line 807
    :goto_19
    if-eqz p1, :cond_1e

    if-eqz v2, :cond_1e

    move v0, v1

    .line 808
    :cond_1e
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 809
    if-eqz v0, :cond_6d

    if-nez v2, :cond_6d

    .line 812
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u7535\u5b50\u4e66"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 813
    if-ltz v0, :cond_58

    .line 814
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 815
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_52

    if-ltz v0, :cond_52

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 816
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 824
    :cond_52
    :goto_52
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c(I)V

    goto :goto_b

    :cond_56
    move v2, v0

    .line 806
    goto :goto_19

    .line 819
    :cond_58
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_52

    .line 821
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 825
    :cond_6d
    if-nez v0, :cond_b

    if-eqz v2, :cond_b

    .line 826
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 827
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 828
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_93

    if-ltz v0, :cond_93

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_93

    .line 829
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 831
    :cond_93
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c(I)V

    goto/16 :goto_b
.end method
