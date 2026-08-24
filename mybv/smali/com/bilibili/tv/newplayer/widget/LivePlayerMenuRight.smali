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

.field public static final MENU_ORIGINAL_UP_NAME:I = -0x1


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

.field private mUpName:Ljava/lang/String;

.field private mUpUid:J

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

    .line 108
    invoke-direct {p0, p1}, Lbl/aay;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 79
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 81
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 109
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 110
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 111
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 112
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 113
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 114
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 115
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 116
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 118
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 79
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 81
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 123
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 124
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 125
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 126
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 127
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 128
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 129
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 130
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 131
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 79
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 81
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 136
    iput-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    .line 137
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 138
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 139
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 140
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 141
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 142
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 143
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 144
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setBackgroundResource(I)V

    .line 145
    return-void
.end method

.method static synthetic access$002(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 665
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
    .line 167
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v0, :cond_5

    .line 175
    :cond_4
    :goto_4
    return p1

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_20

    if-ltz p1, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 172
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    .line 175
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 p1, -0x1

    goto :goto_4
.end method

.method private refreshDanmakuDisplayDots(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 638
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-nez v0, :cond_8

    .line 662
    :cond_7
    return-void

    :cond_8
    move v2, v3

    .line 641
    :goto_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 642
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 643
    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_23

    .line 641
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 646
    :cond_23
    check-cast v0, Landroid/widget/TextView;

    .line 647
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 648
    if-eqz v5, :cond_1f

    aget-object v1, v5, v3

    if-eqz v1, :cond_1f

    .line 651
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 653
    const-string v4, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 654
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v1

    .line 660
    :goto_43
    aget-object v4, v5, v3

    if-eqz v1, :cond_61

    const/16 v0, 0xff

    :goto_49
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1f

    .line 657
    :cond_4d
    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-nez v1, :cond_5c

    const/4 v1, 0x1

    .line 658
    :goto_52
    iget v4, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-nez v4, :cond_5e

    const-string v4, "\u5f39\u5e55\u5f00"

    :goto_58
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_5c
    move v1, v3

    .line 657
    goto :goto_52

    .line 658
    :cond_5e
    const-string v4, "\u5f39\u5e55\u5173"

    goto :goto_58

    :cond_61
    move v0, v3

    .line 660
    goto :goto_49
.end method

.method private refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 615
    move v1, v2

    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 616
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 617
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_21

    .line 618
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_21

    aget-object v3, v0, v2

    if-eqz v3, :cond_21

    .line 620
    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 615
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 624
    :cond_25
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 625
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_3c

    aget-object v1, v0, v2

    if-eqz v1, :cond_3c

    .line 627
    aget-object v0, v0, v2

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 630
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
    .line 383
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 384
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 385
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 386
    new-instance v6, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b(I)I

    move-result v1

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$1;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Landroid/content/Context;II)V

    .line 392
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;

    invoke-direct {v0, p0, v6}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Lbl/aax;)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 398
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;FIIF)V

    invoke-virtual {v6, v0}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 404
    return-object v6
.end method

.method public a()V
    .locals 2

    .prologue
    .line 767
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_d

    .line 769
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 771
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 772
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 438
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 439
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 440
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 441
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 442
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 443
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    :cond_19
    :goto_19
    return-void

    .line 447
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    move v3, v4

    .line 448
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 449
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 450
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 451
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 453
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 454
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 455
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 456
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 459
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 460
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public bridge synthetic a(IILbl/aaz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(IILbl/aaz;Ljava/lang/String;)V

    return-void
.end method

.method public a(IILbl/aaz;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 283
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 378
    :cond_9
    :goto_9
    return-void

    .line 286
    :cond_a
    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    if-eqz v0, :cond_9

    .line 290
    const/4 v3, 0x2

    if-ne p1, v3, :cond_38

    .line 293
    :try_start_18
    iget-boolean v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v3, :cond_c1

    .line 295
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-static {v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result v2

    .line 296
    sparse-switch v2, :sswitch_data_1c4

    .line 367
    :cond_27
    :goto_27
    if-eqz v1, :cond_1b7

    .line 368
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_38} :catch_fe

    .line 377
    :cond_38
    :goto_38
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 298
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

    .line 299
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 303
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

    .line 304
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 308
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

    .line 309
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 313
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

    .line 314
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 321
    :cond_c1
    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1d6

    goto/16 :goto_27

    .line 325
    :pswitch_cc
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v3, :cond_27

    if-eqz p4, :cond_27

    .line 326
    const-string v3, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 327
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v1

    goto/16 :goto_27

    .line 330
    :cond_e0
    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-nez v3, :cond_108

    const/4 v3, 0x1

    .line 331
    :goto_e5
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eqz v3, :cond_ef

    move v1, v2

    :cond_ef
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 332
    if-eqz v3, :cond_10a

    const-string v1, "\u5f39\u5e55\u5f00"

    :goto_f6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V
    :try_end_fc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c .. :try_end_fc} :catch_fe

    goto/16 :goto_9

    .line 373
    :catch_fe
    move-exception v1

    .line 374
    const-string v1, "LivePlayerMenuRight"

    const-string v2, "Menu data error, why?"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    :cond_108
    move v3, v1

    .line 330
    goto :goto_e5

    .line 332
    :cond_10a
    :try_start_10a
    const-string v1, "\u5f39\u5e55\u5173"

    goto :goto_f6

    .line 339
    :pswitch_10d
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 340
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 344
    :pswitch_12f
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 345
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 349
    :pswitch_151
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 350
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 354
    :pswitch_173
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 355
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 359
    :pswitch_195
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 360
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_27

    .line 371
    :cond_1b7
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_1c2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10a .. :try_end_1c2} :catch_fe

    goto/16 :goto_38

    .line 296
    :sswitch_data_1c4
    .sparse-switch
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_5d
        0xa -> :sswitch_7e
        0xd -> :sswitch_9f
    .end sparse-switch

    .line 321
    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_10d
        :pswitch_12f
        :pswitch_151
        :pswitch_173
        :pswitch_195
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 831
    :cond_6
    :goto_6
    return-void

    .line 778
    :cond_7
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    if-eq v0, p1, :cond_6

    .line 781
    if-eqz p1, :cond_38

    .line 782
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_28

    .line 783
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    .line 784
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$5;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 800
    :cond_28
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c()V

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    goto :goto_6

    .line 806
    :cond_38
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_53

    .line 807
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    .line 808
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$6;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 828
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 829
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 830
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 671
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v1

    .line 673
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_24

    .line 675
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    invoke-static {v2, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result v2

    .line 676
    sparse-switch v2, :sswitch_data_3c

    .line 718
    :goto_12
    :pswitch_12
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V

    .line 719
    return v1

    .line 678
    :sswitch_18
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    goto :goto_12

    .line 681
    :sswitch_1b
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    goto :goto_12

    .line 684
    :sswitch_1e
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    goto :goto_12

    .line 687
    :sswitch_21
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    goto :goto_12

    .line 694
    :cond_24
    invoke-direct {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    goto :goto_12

    .line 699
    :pswitch_2c
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    goto :goto_12

    .line 702
    :pswitch_2f
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    goto :goto_12

    .line 705
    :pswitch_32
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    goto :goto_12

    .line 708
    :pswitch_35
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    goto :goto_12

    .line 711
    :pswitch_38
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    goto :goto_12

    .line 676
    nop

    :sswitch_data_3c
    .sparse-switch
        0x4 -> :sswitch_18
        0x5 -> :sswitch_1b
        0xa -> :sswitch_1e
        0xd -> :sswitch_21
    .end sparse-switch

    .line 694
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
    .end packed-switch
.end method

.method public bridge synthetic a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 30
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

    .line 480
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 483
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mUpName:Ljava/lang/String;

    if-eqz v2, :cond_31

    if-ne p1, v1, :cond_31

    if-nez p2, :cond_31

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mUpName:Ljava/lang/String;

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 484
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_2d

    .line 486
    iget-wide v4, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mUpUid:J

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mUpName:Ljava/lang/String;

    invoke-static {v2, v4, v5, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    .line 488
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 611
    :cond_30
    :goto_30
    return v1

    .line 494
    :cond_31
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v2, :cond_47

    invoke-static {p5}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->isEbookMenuItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 495
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-static {p5, v2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->dispatch(Ljava/lang/String;Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 496
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_30

    .line 502
    :cond_47
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 503
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    .line 504
    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_30

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_30

    .line 510
    :cond_59
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    if-nez v2, :cond_5f

    move v1, v0

    .line 511
    goto :goto_30

    .line 513
    :cond_5f
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->f()Z

    move-result v2

    if-eqz v2, :cond_67

    move v1, v0

    .line 514
    goto :goto_30

    .line 517
    :cond_67
    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_101

    .line 518
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-static {v2, v3}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result v2

    .line 519
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_a0

    if-ne v2, v5, :cond_a0

    .line 520
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 521
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_9c

    .line 522
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

    .line 524
    :cond_9c
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_30

    .line 527
    :cond_a0
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    if-eqz v3, :cond_be

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_be

    if-ne v2, v6, :cond_be

    .line 528
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 529
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_b9

    .line 530
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookColorTheme(I)V

    .line 532
    :cond_b9
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    .line 535
    :cond_be
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    if-eqz v3, :cond_de

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_de

    const/16 v3, 0xa

    if-ne v2, v3, :cond_de

    .line 536
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 537
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_d9

    .line 538
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setEbookPercent(I)V

    .line 540
    :cond_d9
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    .line 543
    :cond_de
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    if-eqz v3, :cond_fe

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_fe

    const/16 v3, 0xd

    if-ne v2, v3, :cond_fe

    .line 544
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    if-eqz v0, :cond_f9

    .line 546
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;->setVideoPosition(I)V

    .line 548
    :cond_f9
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    :cond_fe
    move v1, v0

    .line 552
    goto/16 :goto_30

    .line 556
    :cond_101
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v2

    .line 557
    if-nez v2, :cond_162

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    if-eqz v3, :cond_162

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_162

    .line 558
    const-string v2, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 561
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v2

    if-nez v2, :cond_124

    move v0, v1

    .line 562
    :cond_124
    invoke-static {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->setMergeEnabled(Z)V

    .line 563
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->saveToPrefs(Landroid/content/Context;)V

    .line 564
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

    .line 565
    invoke-direct {p0, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDanmakuDisplayDots(Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    .line 568
    :cond_14b
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    if-eqz v2, :cond_15e

    move v2, v1

    .line 569
    :goto_150
    if-eqz v2, :cond_160

    :goto_152
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 570
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuDisplay(Z)V

    .line 571
    invoke-direct {p0, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDanmakuDisplayDots(Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    :cond_15e
    move v2, v0

    .line 568
    goto :goto_150

    :cond_160
    move v0, v1

    .line 569
    goto :goto_152

    .line 575
    :cond_162
    if-ne v2, v1, :cond_184

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    if-eqz v3, :cond_184

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_184

    .line 576
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 577
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuSize(F)V

    .line 578
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    .line 581
    :cond_184
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a7

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    if-eqz v3, :cond_1a7

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1a7

    .line 582
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 583
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setDanmakuAlpha(F)V

    .line 584
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    .line 587
    :cond_1a7
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c6

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    if-eqz v3, :cond_1c6

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1c6

    .line 588
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    if-eq p2, v0, :cond_30

    .line 589
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 590
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->toggleMirror()V

    .line 591
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    .line 595
    :cond_1c6
    if-ne v2, v5, :cond_1e4

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    if-eqz v3, :cond_1e4

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1e4

    .line 596
    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    if-eq p2, v2, :cond_30

    .line 597
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 598
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 599
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setQuality(I)V

    goto/16 :goto_30

    .line 603
    :cond_1e4
    if-ne v2, v6, :cond_202

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    if-eqz v2, :cond_202

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    invoke-interface {v2, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_202

    .line 604
    iget v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    if-eq p2, v0, :cond_30

    .line 605
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 606
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    invoke-interface {v0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;->setAudioBalance(I)V

    .line 607
    invoke-direct {p0, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->refreshDots(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_30

    :cond_202
    move v1, v0

    .line 611
    goto/16 :goto_30
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

    .line 408
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 409
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V

    .line 410
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 411
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

    .line 434
    :cond_2b
    :goto_2b
    return v0

    .line 413
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 414
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 415
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 416
    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e(II)V

    .line 417
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 421
    goto :goto_2b

    .line 418
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 419
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    goto :goto_3f

    .line 422
    :cond_47
    if-nez p4, :cond_4f

    const/16 v1, 0x13

    if-ne p5, v1, :cond_4f

    move v0, v6

    .line 423
    goto :goto_2b

    .line 424
    :cond_4f
    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    .line 425
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 426
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    .line 427
    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v1

    .line 428
    invoke-virtual {p1}, Lbl/aax;->a()I

    move-result v2

    .line 429
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2b

    move v0, v6

    .line 430
    goto :goto_2b
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 104
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

    .line 725
    if-le p1, v1, :cond_5

    .line 761
    :goto_4
    return-object v0

    .line 728
    :cond_5
    if-ge p1, v1, :cond_a

    .line 729
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    goto :goto_4

    .line 731
    :cond_a
    iget-boolean v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v1, :cond_24

    .line 733
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    invoke-static {v1, p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->getOriginalMenuIndex(Ljava/util/List;I)I

    move-result v1

    .line 734
    sparse-switch v1, :sswitch_data_3e

    goto :goto_4

    .line 736
    :sswitch_18
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    goto :goto_4

    .line 738
    :sswitch_1b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    goto :goto_4

    .line 740
    :sswitch_1e
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    goto :goto_4

    .line 742
    :sswitch_21
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    goto :goto_4

    .line 747
    :cond_24
    invoke-direct {p0, p2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getOriginalMenuIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_50

    goto :goto_4

    .line 749
    :pswitch_2c
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    goto :goto_4

    .line 751
    :pswitch_2f
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    goto :goto_4

    .line 753
    :pswitch_32
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    goto :goto_4

    .line 755
    :pswitch_35
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    goto :goto_4

    .line 757
    :pswitch_38
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    goto :goto_4

    .line 759
    :pswitch_3b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    goto :goto_4

    .line 734
    :sswitch_data_3e
    .sparse-switch
        0x4 -> :sswitch_18
        0x5 -> :sswitch_1b
        0xa -> :sswitch_1e
        0xd -> :sswitch_21
    .end sparse-switch

    .line 747
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
    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 466
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    .line 473
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 474
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
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
    .line 853
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_list:Ljava/util/List;

    .line 854
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->alpha_id:I

    .line 855
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
    .line 868
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_list:Ljava/util/List;

    .line 869
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->audio_balance_id:I

    .line 870
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
    .line 843
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_list:Ljava/util/List;

    .line 844
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->danmaku_display_id:I

    .line 845
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
    .line 839
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    .line 840
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
    .line 858
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_list:Ljava/util/List;

    .line 859
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mirror_id:I

    .line 860
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
    .line 863
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_list:Ljava/util/List;

    .line 864
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->quality_id:I

    .line 865
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
    .line 848
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_list:Ljava/util/List;

    .line 849
    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->size_id:I

    .line 850
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c:Z

    return v0
.end method

.method public setEbookMode(ZZLcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    .line 189
    iput-object p3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebookActions:Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;

    .line 191
    if-nez p1, :cond_13

    .line 193
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 194
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 195
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 196
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 197
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    .line 277
    :goto_12
    return-void

    .line 202
    :cond_13
    invoke-static {p2}, Lcom/bilibili/tv/ebook/ui/EbookMenuHelper;->buildEbookMenus(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    .line 203
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 206
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v4

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "25%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "30%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "35%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "40%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "45%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    const-string v2, "50%"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getScreenPercent()I

    move-result v0

    .line 217
    if-ltz v0, :cond_62

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_63

    .line 218
    :cond_62
    const/4 v0, 0x1

    .line 220
    :cond_63
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_percent_id:I

    .line 222
    if-nez p2, :cond_a4

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    .line 225
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u5de6\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    const-string v2, "\u53f3\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getVideoPosition()I

    move-result v0

    .line 230
    if-ltz v0, :cond_98

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_99

    :cond_98
    move v0, v1

    .line 233
    :cond_99
    iput v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_id:I

    .line 234
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 235
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 276
    :goto_9f
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c()V

    goto/16 :goto_12

    .line 238
    :cond_a4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "20"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "22"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "24"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "26"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "28"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "30"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "32"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "34"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "36"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    const-string v2, "38"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v5

    .line 250
    const/4 v3, 0x4

    move v2, v1

    .line 251
    :goto_f7
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_160

    .line 252
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

    .line 257
    :goto_113
    iput v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_font_size_id:I

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "System"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Light"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Dark"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Sepia"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "Slate"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    const-string v2, "OLED"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 268
    if-ltz v0, :cond_154

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_15e

    .line 271
    :cond_154
    :goto_154
    iput v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_color_theme_id:I

    .line 272
    iput-object v6, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->ebook_video_position_list:Ljava/util/List;

    goto/16 :goto_9f

    .line 251
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
    .line 148
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;

    .line 149
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
    .line 152
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    .line 153
    return-void
.end method

.method public setUpInfo(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mUpName:Ljava/lang/String;

    .line 158
    iput-wide p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->mUpUid:J

    .line 159
    return-void
.end method

.method public updateAudioBalanceMenu(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 873
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->isEbookMode:Z

    if-eqz v2, :cond_c

    .line 904
    :cond_b
    :goto_b
    return-void

    .line 877
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_56

    move v2, v1

    .line 878
    :goto_19
    if-eqz p1, :cond_1e

    if-eqz v2, :cond_1e

    move v0, v1

    .line 879
    :cond_1e
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 880
    if-eqz v0, :cond_6d

    if-nez v2, :cond_6d

    .line 883
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u7535\u5b50\u4e66"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 884
    if-ltz v0, :cond_58

    .line 885
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 886
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_52

    if-ltz v0, :cond_52

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 887
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 895
    :cond_52
    :goto_52
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c(I)V

    goto :goto_b

    :cond_56
    move v2, v0

    .line 877
    goto :goto_19

    .line 890
    :cond_58
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v0, :cond_52

    .line 892
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 896
    :cond_6d
    if-nez v0, :cond_b

    if-eqz v2, :cond_b

    .line 897
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v2, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 898
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->main_list:Ljava/util/List;

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 899
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    if-eqz v2, :cond_93

    if-ltz v0, :cond_93

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_93

    .line 900
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->menuIndexMap:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 902
    :cond_93
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->c(I)V

    goto/16 :goto_b
.end method
