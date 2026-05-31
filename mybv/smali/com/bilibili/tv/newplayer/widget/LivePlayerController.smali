.class public Lcom/bilibili/tv/newplayer/widget/LivePlayerController;
.super Landroid/widget/FrameLayout;
.source "LivePlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AVATAR:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_DISPLAY:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_SIZE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_ALPHA:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->MIRROR_REVERSAL:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->VIDEO_QUALITY:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->n:[Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    .line 87
    invoke-direct {p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AVATAR:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_DISPLAY:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_SIZE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->DANMAKU_ALPHA:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->MIRROR_REVERSAL:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->VIDEO_QUALITY:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->n:[Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    .line 102
    invoke-direct {p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 106
    const v0, 0x7f0a0042

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->g:Landroid/widget/LinearLayout;

    .line 108
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->b:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$1;

    invoke-direct {v2, p0, p1, v1, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$1;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->n:[Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    array-length v4, v3

    move v0, v1

    :goto_49
    if-ge v0, v4, :cond_53

    aget-object v5, v3, v0

    .line 138
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 140
    :cond_53
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-direct {v0, p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 142
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->e:Landroid/widget/FrameLayout;

    .line 143
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->f:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v0, Lbl/cj;

    sget-object v2, Lbl/abd;->a:[F

    array-length v2, v2

    invoke-direct {v0, v2}, Lbl/cj;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->o:Lbl/cj;

    move v0, v1

    .line 146
    :goto_87
    sget-object v2, Lbl/abd;->a:[F

    array-length v2, v2

    if-ge v0, v2, :cond_a9

    .line 147
    new-instance v2, Lbl/wn;

    invoke-direct {v2}, Lbl/wn;-><init>()V

    .line 148
    sget-object v3, Lbl/abd;->a:[F

    aget v3, v3, v0

    .line 149
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lbl/wn;->a:Ljava/lang/String;

    .line 150
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lbl/wn;->b:Ljava/lang/Object;

    .line 151
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->o:Lbl/cj;

    invoke-virtual {v3, v0, v2}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 153
    :cond_a9
    new-instance v0, Lbl/cj;

    sget-object v2, Lbl/abd;->b:[F

    array-length v2, v2

    invoke-direct {v0, v2}, Lbl/cj;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->p:Lbl/cj;

    move v0, v1

    .line 154
    :goto_b4
    sget-object v2, Lbl/abd;->b:[F

    array-length v2, v2

    if-ge v0, v2, :cond_d6

    .line 155
    new-instance v2, Lbl/wn;

    invoke-direct {v2}, Lbl/wn;-><init>()V

    .line 156
    sget-object v3, Lbl/abd;->b:[F

    aget v3, v3, v0

    .line 157
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lbl/wn;->a:Ljava/lang/String;

    .line 158
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lbl/wn;->b:Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->p:Lbl/cj;

    invoke-virtual {v3, v0, v2}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 163
    :cond_d6
    new-instance v0, Lbl/cj;

    invoke-direct {v0, v6}, Lbl/cj;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    .line 164
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "\u5173"

    aput-object v2, v0, v1

    const-string v2, "\u6807\u51c6"

    aput-object v2, v0, v7

    const-string v2, "\u9ad8\u52a8\u6001"

    aput-object v2, v0, v8

    .line 165
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v1

    const-string v3, "standard"

    aput-object v3, v2, v7

    const-string v3, "high_dynamic"

    aput-object v3, v2, v8

    .line 166
    :goto_f9
    if-ge v1, v6, :cond_110

    .line 167
    new-instance v3, Lbl/wn;

    invoke-direct {v3}, Lbl/wn;-><init>()V

    .line 168
    aget-object v4, v0, v1

    iput-object v4, v3, Lbl/wn;->a:Ljava/lang/String;

    .line 169
    aget-object v4, v2, v1

    iput-object v4, v3, Lbl/wn;->b:Ljava/lang/Object;

    .line 170
    iget-object v4, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    invoke-virtual {v4, v1, v3}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    .line 172
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


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 249
    return-void

    .line 248
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    if-eqz v0, :cond_7

    .line 309
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->b()V

    .line 311
    :cond_7
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    if-ne v0, p1, :cond_6

    .line 305
    :goto_5
    return-void

    .line 259
    :cond_6
    if-eqz p1, :cond_3c

    .line 260
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->e:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lbl/aap;->a(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->h:Landroid/view/animation/Animation;

    if-nez v0, :cond_2b

    .line 263
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->h:Landroid/view/animation/Animation;

    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$2;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 279
    :cond_2b
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->setBackgroundResource(I)V

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    goto :goto_5

    .line 284
    :cond_3c
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->requestFocus()Z

    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->i:Landroid/view/animation/Animation;

    if-nez v0, :cond_5c

    .line 286
    invoke-virtual {p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->i:Landroid/view/animation/Animation;

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->i:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$3;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 303
    :cond_5c
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    iput-boolean v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    goto :goto_5
.end method

.method public b()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 316
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$4;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    .line 323
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0xdac

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    return-void
.end method

.method public getShow()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->j:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 329
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

    .line 341
    :cond_17
    :goto_17
    return-void

    .line 332
    :cond_18
    invoke-static {}, Lbl/wm;->e()Z

    move-result v0

    .line 333
    if-eqz v0, :cond_29

    .line 334
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->e()V

    .line 340
    :goto_23
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_17

    .line 336
    :cond_29
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    invoke-virtual {v1}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->f()V

    .line 337
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 338
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    goto :goto_23
.end method

.method public setBiliLive(Lmybl/BiliLiveContent;)V
    .locals 4

    .prologue
    .line 197
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;

    .line 198
    new-instance v0, Lbl/cj;

    iget-object v1, p1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lbl/cj;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualitys:Lbl/cj;

    .line 199
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 200
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u539f\u753b"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u84dd\u5149"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/16 v0, 0xfa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u8d85\u6e05"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v0, 0x96

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u9ad8\u6e05"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_3f
    iget-object v0, p1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    array-length v0, v0

    if-ge v1, v0, :cond_6c

    .line 205
    new-instance v3, Lbl/wn;

    invoke-direct {v3}, Lbl/wn;-><init>()V

    .line 206
    iget-object v0, p1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lbl/wn;->a:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lbl/wn;->b:Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualitys:Lbl/cj;

    invoke-virtual {v0, v1, v3}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 204
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    .line 210
    :cond_6c
    return-void
.end method

.method public setControllerListener(Lbl/wr;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->l:Lbl/wr;

    .line 190
    return-void
.end method

.method public setFirstText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public setPlayer(Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    .line 194
    return-void
.end method

.method public setSecondText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public setUpAvatar(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->a(Ljava/lang/String;)V

    .line 186
    :cond_9
    return-void
.end method

.method public updateAudioBalanceMenu()V
    .locals 5

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_11

    .line 245
    :cond_10
    :goto_10
    return-void

    .line 217
    :cond_11
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v0

    invoke-virtual {v0}, Lbl/wm;->i()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 218
    instance-of v2, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 220
    const/4 v1, 0x0

    .line 221
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

    .line 222
    sget-object v4, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AUDIO_BALANCE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    if-ne v0, v4, :cond_26

    .line 223
    const/4 v0, 0x1

    .line 228
    :goto_37
    if-eqz v2, :cond_74

    if-nez v0, :cond_74

    .line 229
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AUDIO_BALANCE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
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

    .line 232
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 234
    :cond_65
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    goto :goto_10

    .line 236
    :cond_74
    if-nez v2, :cond_10

    if-eqz v0, :cond_10

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->AUDIO_BALANCE:Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
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

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 242
    :cond_a2
    new-instance v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->d:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    goto/16 :goto_10

    :cond_b2
    move v0, v1

    goto :goto_37
.end method
