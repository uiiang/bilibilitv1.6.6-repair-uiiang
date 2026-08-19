.class public Lcom/bilibili/tv/newplayer/widget/LivePlayerController;
.super Landroid/widget/FrameLayout;
.source "LivePlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field public audioBalanceList:Lbl/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/cj",
            "<",
            "Lbl/wn;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/TextView;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

.field private e:Landroid/widget/FrameLayout;

.field private ebookModeActive:Z

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Z

.field private k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

.field private l:Lbl/wr;

.field private m:Lmybl/BiliLiveContent;

.field private n:[Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

.field private o:Lbl/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/cj",
            "<",
            "Lbl/wn;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lbl/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/cj",
            "<",
            "Lbl/wn;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/Runnable;

.field public qualitys:Lbl/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/cj",
            "<",
            "Lbl/wn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AVATAR:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_DISPLAY:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_SIZE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_ALPHA:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->MIRROR_REVERSAL:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->VIDEO_QUALITY:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->n:[Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    .line 88
    invoke-direct {p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AVATAR:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_DISPLAY:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_SIZE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_ALPHA:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->MIRROR_REVERSAL:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->VIDEO_QUALITY:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->n:[Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    .line 103
    invoke-direct {p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 107
    const v0, 0x7f0a0042

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->g:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->b:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$1;

    invoke-direct {v2, p0, p1, v1, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$1;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->n:[Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    array-length v4, v3

    move v0, v1

    :goto_49
    if-ge v0, v4, :cond_53

    aget-object v5, v3, v0

    .line 139
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 141
    :cond_53
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-direct {v0, p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    .line 142
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 143
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->e:Landroid/widget/FrameLayout;

    .line 144
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->f:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v0, Lbl/cj;

    sget-object v2, Lbl/abd;->a:[F

    array-length v2, v2

    invoke-direct {v0, v2}, Lbl/cj;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->o:Lbl/cj;

    move v0, v1

    .line 147
    :goto_87
    sget-object v2, Lbl/abd;->a:[F

    array-length v2, v2

    if-ge v0, v2, :cond_a9

    .line 148
    new-instance v2, Lbl/wn;

    invoke-direct {v2}, Lbl/wn;-><init>()V

    .line 149
    sget-object v3, Lbl/abd;->a:[F

    aget v3, v3, v0

    .line 150
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lbl/wn;->a:Ljava/lang/String;

    .line 151
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lbl/wn;->b:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->o:Lbl/cj;

    invoke-virtual {v3, v0, v2}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 154
    :cond_a9
    new-instance v0, Lbl/cj;

    sget-object v2, Lbl/abd;->b:[F

    array-length v2, v2

    invoke-direct {v0, v2}, Lbl/cj;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->p:Lbl/cj;

    move v0, v1

    .line 155
    :goto_b4
    sget-object v2, Lbl/abd;->b:[F

    array-length v2, v2

    if-ge v0, v2, :cond_d6

    .line 156
    new-instance v2, Lbl/wn;

    invoke-direct {v2}, Lbl/wn;-><init>()V

    .line 157
    sget-object v3, Lbl/abd;->b:[F

    aget v3, v3, v0

    .line 158
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lbl/wn;->a:Ljava/lang/String;

    .line 159
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lbl/wn;->b:Ljava/lang/Object;

    .line 160
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->p:Lbl/cj;

    invoke-virtual {v3, v0, v2}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 164
    :cond_d6
    new-instance v0, Lbl/cj;

    invoke-direct {v0, v6}, Lbl/cj;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    .line 165
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "\u5173"

    aput-object v2, v0, v1

    const-string v2, "\u6807\u51c6"

    aput-object v2, v0, v7

    const-string v2, "\u9ad8\u52a8\u6001"

    aput-object v2, v0, v8

    .line 166
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v1

    const-string v3, "standard"

    aput-object v3, v2, v7

    const-string v3, "high_dynamic"

    aput-object v3, v2, v8

    .line 167
    :goto_f9
    if-ge v1, v6, :cond_110

    .line 168
    new-instance v3, Lbl/wn;

    invoke-direct {v3}, Lbl/wn;-><init>()V

    .line 169
    aget-object v4, v0, v1

    iput-object v4, v3, Lbl/wn;->a:Ljava/lang/String;

    .line 170
    aget-object v4, v2, v1

    iput-object v4, v3, Lbl/wn;->b:Ljava/lang/Object;

    .line 171
    iget-object v4, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    invoke-virtual {v4, v1, v3}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    .line 173
    :cond_110
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lmybl/BiliLiveContent;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lbl/cj;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->o:Lbl/cj;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lbl/cj;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->p:Lbl/cj;

    return-object v0
.end method

.method private findFloatIndex([FF)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 358
    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_f

    .line 359
    aget v2, p1, v0

    cmpl-float v2, v2, p2

    if-nez v2, :cond_c

    .line 363
    :goto_b
    return v0

    .line 358
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    move v0, v1

    .line 363
    goto :goto_b
.end method

.method private findQualityIndex()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 367
    .line 368
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    if-eqz v0, :cond_26

    move v0, v1

    move v2, v1

    .line 369
    :goto_d
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 370
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    aget v1, v1, v0

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget v3, v3, Lmybl/BiliLiveContent;->mCurrentQuality:I

    if-ne v1, v3, :cond_27

    move v1, v0

    .line 369
    :goto_21
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_d

    :cond_25
    move v1, v2

    .line 375
    :cond_26
    return v1

    :cond_27
    move v1, v2

    goto :goto_21
.end method

.method private qualityName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    sparse-switch p1, :sswitch_data_14

    .line 389
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 381
    :sswitch_8
    const-string v0, "\u539f\u753b"

    goto :goto_7

    .line 383
    :sswitch_b
    const-string v0, "\u84dd\u5149"

    goto :goto_7

    .line 385
    :sswitch_e
    const-string v0, "\u8d85\u6e05"

    goto :goto_7

    .line 387
    :sswitch_11
    const-string v0, "\u9ad8\u6e05"

    goto :goto_7

    .line 379
    :sswitch_data_14
    .sparse-switch
        0x96 -> :sswitch_11
        0xfa -> :sswitch_e
        0x190 -> :sswitch_b
        0x2710 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 473
    return-void

    .line 472
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    if-eqz v0, :cond_7

    .line 533
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->b()V

    .line 535
    :cond_7
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    if-ne v0, p1, :cond_6

    .line 529
    :goto_5
    return-void

    .line 483
    :cond_6
    if-eqz p1, :cond_3c

    .line 484
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->e:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lbl/aap;->a(Landroid/view/View;)V

    .line 486
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->h:Landroid/view/animation/Animation;

    if-nez v0, :cond_2b

    .line 487
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->h:Landroid/view/animation/Animation;

    .line 488
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$2;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 503
    :cond_2b
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setBackgroundResource(I)V

    .line 504
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    goto :goto_5

    .line 508
    :cond_3c
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    .line 509
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->i:Landroid/view/animation/Animation;

    if-nez v0, :cond_5c

    .line 510
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->i:Landroid/view/animation/Animation;

    .line 511
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->i:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$3;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 527
    :cond_5c
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 528
    iput-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    goto :goto_5
.end method

.method public b()V
    .locals 4

    .prologue
    .line 539
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 540
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$4;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    .line 547
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 548
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0xdac

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    return-void
.end method

.method public getShow()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    return v0
.end method

.method public initRightMenu(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-nez v0, :cond_e

    .line 355
    :cond_d
    :goto_d
    return-void

    .line 262
    :cond_e
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v0

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 267
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_34

    .line 268
    const-string v6, "\u5f39\u5e55\u5f00\u5173"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_34
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_44

    .line 273
    const-string v6, "\u5f39\u5e55\u5927\u5c0f"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_44
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_54

    .line 278
    const-string v6, "\u5f39\u5e55\u900f\u660e"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_54
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_65

    .line 283
    const-string v6, "\u955c\u50cf"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_65
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_76

    .line 288
    const-string v6, "\u753b\u8d28"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_76
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8b

    .line 295
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->ebookModeActive:Z

    if-eqz v0, :cond_c6

    .line 296
    const-string v0, "\u63a7\u5236\u7535\u5b50\u4e66"

    .line 295
    :goto_80
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_8b
    invoke-virtual {p1, v4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->init_main(Ljava/util/List;)V

    .line 301
    invoke-virtual {p1, v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->setMenuIndexMap(Ljava/util/List;)V

    .line 304
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 305
    const-string v0, "\u5f39\u5e55\u5f00"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    const-string v0, "\u5f39\u5e55\u5173"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    const-string v0, "\u5408\u5e76\u91cd\u590d"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-boolean v0, v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    if-eqz v0, :cond_c9

    move v0, v1

    :goto_ac
    invoke-virtual {p1, v4, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->init_danmaku_display(Ljava/util/List;I)V

    .line 311
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 312
    sget-object v5, Lbl/abd;->a:[F

    array-length v6, v5

    move v0, v1

    :goto_b8
    if-ge v0, v6, :cond_cb

    aget v7, v5, v0

    .line 313
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 297
    :cond_c6
    const-string v0, "\u7535\u5b50\u4e66"

    goto :goto_80

    :cond_c9
    move v0, v2

    .line 308
    goto :goto_ac

    .line 315
    :cond_cb
    sget-object v0, Lbl/abd;->a:[F

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findFloatIndex([FF)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->init_size(Ljava/util/List;I)V

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    sget-object v5, Lbl/abd;->b:[F

    array-length v6, v5

    move v0, v1

    :goto_e9
    if-ge v0, v6, :cond_f7

    aget v7, v5, v0

    .line 320
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    .line 322
    :cond_f7
    sget-object v0, Lbl/abd;->b:[F

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findFloatIndex([FF)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->init_alpha(Ljava/util/List;I)V

    .line 325
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 326
    const-string v0, "\u955c\u50cf\u5f00"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v0, "\u955c\u50cf\u5173"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->p()Z

    move-result v0

    if-eqz v0, :cond_140

    move v0, v1

    :goto_124
    invoke-virtual {p1, v4, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->init_mirror(Ljava/util/List;I)V

    .line 331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget-object v5, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    array-length v6, v5

    move v0, v1

    :goto_132
    if-ge v0, v6, :cond_142

    aget v7, v5, v0

    .line 333
    invoke-direct {p0, v7}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualityName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_132

    :cond_140
    move v0, v2

    .line 328
    goto :goto_124

    .line 335
    :cond_142
    invoke-direct {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findQualityIndex()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->init_quality(Ljava/util/List;I)V

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    const-string v4, "\u5173"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v4, "\u6807\u51c6"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v4, "\u9ad8\u52a8\u6001"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_audio_balance_level(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 344
    const-string v5, "standard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_183

    .line 349
    :goto_171
    invoke-virtual {p1, v0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->init_audio_balance(Ljava/util/List;I)V

    .line 352
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 353
    instance-of v0, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 354
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->updateAudioBalanceMenu(Z)V

    goto/16 :goto_d

    .line 346
    :cond_183
    const-string v2, "high_dynamic"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18d

    move v2, v3

    .line 347
    goto :goto_171

    :cond_18d
    move v2, v1

    goto :goto_171
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800d6

    if-eq v0, v1, :cond_18

    .line 565
    :cond_17
    :goto_17
    return-void

    .line 556
    :cond_18
    invoke-static {}, Lbl/wm;->e()Z

    move-result v0

    .line 557
    if-eqz v0, :cond_29

    .line 558
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->e()V

    .line 564
    :goto_23
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_17

    .line 560
    :cond_29
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->f()V

    .line 561
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 562
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    goto :goto_23
.end method

.method public onMenuClosed()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_9

    .line 467
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    .line 469
    :cond_9
    return-void
.end method

.method public setAudioBalance(I)V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    if-eqz v0, :cond_e

    if-ltz p1, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    invoke-virtual {v0}, Lbl/cj;->b()I

    move-result v0

    if-lt p1, v0, :cond_f

    .line 462
    :cond_e
    :goto_e
    return-void

    .line 451
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    invoke-virtual {v0, p1}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/wn;

    .line 452
    iget-object v1, v0, Lbl/wn;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 453
    iget-object v1, v0, Lbl/wn;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 454
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->set_audio_balance_level(Landroid/content/Context;Ljava/lang/String;)V

    .line 455
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->fromPrefValue(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    move-result-object v1

    .line 456
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbl/wm;->setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 457
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_e

    .line 459
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u97f3\u9891\u5e73\u8861\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lbl/wn;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public setBiliLive(Lmybl/BiliLiveContent;)V
    .locals 4

    .prologue
    .line 202
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    .line 203
    new-instance v0, Lbl/cj;

    iget-object v1, p1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lbl/cj;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualitys:Lbl/cj;

    .line 204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 205
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u539f\u753b"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u84dd\u5149"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/16 v0, 0xfa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u8d85\u6e05"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v0, 0x96

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u9ad8\u6e05"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    move v1, v0

    :goto_3f
    iget-object v0, p1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    array-length v0, v0

    if-ge v1, v0, :cond_6c

    .line 210
    new-instance v3, Lbl/wn;

    invoke-direct {v3}, Lbl/wn;-><init>()V

    .line 211
    iget-object v0, p1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lbl/wn;->a:Ljava/lang/String;

    .line 212
    iget-object v0, p1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lbl/wn;->b:Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualitys:Lbl/cj;

    invoke-virtual {v0, v1, v3}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 209
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    .line 215
    :cond_6c
    return-void
.end method

.method public setControllerListener(Lbl/wr;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->l:Lbl/wr;

    .line 191
    return-void
.end method

.method public setDanmakuAlpha(F)V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_9

    .line 414
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setDanmakuAlpha(F)V

    .line 416
    :cond_9
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->b(Landroid/content/Context;F)V

    .line 417
    return-void
.end method

.method public setDanmakuDisplay(Z)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-nez v0, :cond_5

    .line 401
    :cond_4
    :goto_4
    return-void

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-boolean v0, v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    if-eq v0, p1, :cond_4

    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->a(Z)V

    goto :goto_4
.end method

.method public setDanmakuSize(F)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_9

    .line 406
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->setDanmakuSize(F)V

    .line 408
    :cond_9
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->a(Landroid/content/Context;F)V

    .line 409
    return-void
.end method

.method public setEbookModeActive(Z)V
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->ebookModeActive:Z

    .line 199
    return-void
.end method

.method public setFirstText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public setPlayer(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    .line 195
    return-void
.end method

.method public setQuality(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 428
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualitys:Lbl/cj;

    if-eqz v0, :cond_13

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualitys:Lbl/cj;

    invoke-virtual {v0}, Lbl/cj;->b()I

    move-result v0

    if-lt p1, v0, :cond_14

    .line 444
    :cond_13
    :goto_13
    return-void

    .line 431
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualitys:Lbl/cj;

    invoke-virtual {v0, p1}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/wn;

    .line 432
    iget-object v1, v0, Lbl/wn;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 433
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 434
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget-object v0, v0, Lbl/wn;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 435
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->getPlayUrl()I

    move-result v0

    if-ne v0, v5, :cond_49

    if-eqz v1, :cond_49

    .line 436
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u540e\u53ef\u83b7\u53d6\u66f4\u9ad8\u753b\u8d28"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    :cond_49
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_13

    .line 439
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget-object v1, v1, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget-object v4, v4, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    iget v3, v3, Lmybl/BiliLiveContent;->mRoomId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V

    .line 441
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    goto :goto_13
.end method

.method public setSecondText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public setUpAvatar(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->a(Ljava/lang/String;)V

    .line 187
    :cond_9
    return-void
.end method

.method public toggleMirror()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    if-eqz v0, :cond_9

    .line 422
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->o()V

    .line 424
    :cond_9
    return-void
.end method

.method public updateAudioBalanceMenu()V
    .locals 5

    .prologue
    .line 218
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_11

    .line 250
    :cond_10
    :goto_10
    return-void

    .line 222
    :cond_11
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 223
    instance-of v2, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 225
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    .line 227
    sget-object v4, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AUDIO_BALANCE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    if-ne v0, v4, :cond_26

    .line 228
    const/4 v0, 0x1

    .line 233
    :goto_37
    if-eqz v2, :cond_74

    if-nez v0, :cond_74

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AUDIO_BALANCE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    .line 237
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 239
    :cond_65
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    .line 240
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    goto :goto_10

    .line 241
    :cond_74
    if-nez v2, :cond_10

    if-eqz v0, :cond_10

    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AUDIO_BALANCE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    .line 245
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 247
    :cond_a2
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    .line 248
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    goto/16 :goto_10

    :cond_b2
    move v0, v1

    goto :goto_37
.end method
