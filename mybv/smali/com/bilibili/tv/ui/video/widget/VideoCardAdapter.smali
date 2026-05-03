.class public Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "VideoCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_COMPACT:I = 0x1

.field private static final VIEW_TYPE_NORMAL:I


# instance fields
.field private binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

.field private clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

.field private currentCid:J

.field private currentPlayingCid:J

.field private currentSeasonId:I

.field private currentVideoId:J

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;

.field private focusListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;

.field private nextFocusDownId:I

.field private showIndexBadge:Z

.field private useCompactLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 35
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    .line 36
    iput-boolean v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 37
    iput-boolean v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    .line 38
    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    .line 39
    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    .line 40
    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentCid:J

    .line 41
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 35
    iput v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    .line 36
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 37
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    .line 38
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    .line 39
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    .line 40
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentCid:J

    .line 41
    iput v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    .line 46
    invoke-static {p1}, Lbl/abd;->get_other_column(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_26

    :goto_23
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 47
    return-void

    :cond_26
    move v0, v1

    .line 46
    goto :goto_23
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;

    return-object v0
.end method

.method private bindCompactHolder(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;II)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V

    .line 171
    :cond_9
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_1e

    .line 173
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    if-eqz v1, :cond_4d

    .line 174
    invoke-direct {p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getIndexBadgeText(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_1e
    :goto_1e
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    .line 182
    if-eqz v0, :cond_2f

    .line 183
    invoke-direct {p0, v0, p3, p4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setupFocusBoundary(Landroid/view/View;II)V

    .line 184
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 185
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 188
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    if-eqz v0, :cond_42

    .line 189
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$3;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_42
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    return-void

    .line 178
    :cond_4d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e
.end method

.method private bindNormalHolder(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;II)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V

    .line 128
    :cond_9
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1e

    .line 130
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    if-eqz v1, :cond_4d

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getIndexBadgeText(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :cond_1e
    :goto_1e
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 139
    if-eqz v0, :cond_2f

    .line 140
    invoke-direct {p0, v0, p3, p4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setupFocusBoundary(Landroid/view/View;II)V

    .line 141
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 142
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 145
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    if-eqz v0, :cond_42

    .line 146
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_42
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    return-void

    .line 135
    :cond_4d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e
.end method

.method private getIndexBadgeText(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-nez v0, :cond_d

    .line 212
    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_c
    return-object v0

    .line 215
    :cond_d
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    invoke-interface {v0, p1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 216
    const-string v0, "\u5f53\u524d\u64ad\u653e"

    goto :goto_c

    .line 219
    :cond_20
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    invoke-interface {v0, p1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 220
    const-string v0, "\u5f53\u524d\u89c6\u9891"

    goto :goto_c

    .line 223
    :cond_33
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    if-lez v0, :cond_44

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    invoke-interface {v0, p1, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 224
    const-string v0, "\u5f53\u524d\u89c6\u9891"

    goto :goto_c

    .line 227
    :cond_44
    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private setupFocusBoundary(Landroid/view/View;II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 231
    if-nez p1, :cond_4

    .line 242
    :goto_3
    return-void

    .line 232
    :cond_4
    if-nez p2, :cond_19

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 237
    :goto_d
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_1d

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3

    .line 235
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_d

    .line 240
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 105
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->Companion:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    move-result-object v0

    .line 107
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 114
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 117
    instance-of v2, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    if-eqz v2, :cond_18

    .line 118
    check-cast p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->bindNormalHolder(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;II)V

    .line 122
    :cond_17
    :goto_17
    return-void

    .line 119
    :cond_18
    instance-of v2, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    if-eqz v2, :cond_17

    .line 120
    check-cast p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->bindCompactHolder(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;II)V

    goto :goto_17
.end method

.method public getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    return-object v0
.end method

.method public getCurrentCid()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentCid:J

    return-wide v0
.end method

.method public getCurrentPlayingCid()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    return-wide v0
.end method

.method public getCurrentSeasonId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    return v0
.end method

.method public getCurrentVideoId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    return-wide v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_e

    if-ltz p1, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 273
    :cond_e
    const/4 v0, 0x0

    .line 275
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public isShowIndexBadge()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    return v0
.end method

.method public isUseCompactLayout()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    return v0
.end method

.method public setCurrentCid(J)V
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentCid:J

    .line 83
    return-void
.end method

.method public setCurrentPlayingCid(J)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    .line 67
    return-void
.end method

.method public setCurrentSeasonId(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    .line 91
    return-void
.end method

.method public setCurrentVideoId(J)V
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    .line 75
    return-void
.end method

.method public setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 251
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    .line 252
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->d()V

    .line 253
    return-void
.end method

.method public setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;

    .line 257
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0

    .prologue
    .line 268
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    .line 269
    return-void
.end method

.method public setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    .line 261
    return-void
.end method

.method public setOnItemFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;

    .line 265
    return-void
.end method

.method public setShowIndexBadge(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    .line 59
    return-void
.end method

.method public setUseCompactLayout(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 51
    return-void
.end method
