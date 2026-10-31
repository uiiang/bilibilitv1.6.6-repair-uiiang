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

.field private indexBadgeManagedByBinder:Z

.field private nextFocusDownId:I

.field private perfBindCount:I

.field private perfBindTotalMs:J

.field private showIndexBadge:Z

.field private useCompactLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 35
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    .line 36
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 37
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    .line 39
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->indexBadgeManagedByBinder:Z

    .line 40
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    .line 41
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    .line 42
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentCid:J

    .line 43
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindTotalMs:J

    .line 47
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindCount:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 51
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

    .line 39
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->indexBadgeManagedByBinder:Z

    .line 40
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    .line 41
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    .line 42
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentCid:J

    .line 43
    iput v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    .line 46
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindTotalMs:J

    .line 47
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindCount:I

    .line 52
    invoke-static {p1}, Lbl/abd;->get_other_column(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2e

    :goto_2b
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 53
    return-void

    :cond_2e
    move v0, v1

    .line 52
    goto :goto_2b
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
    .line 190
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V

    .line 193
    :cond_9
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_22

    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->indexBadgeManagedByBinder:Z

    if-nez v1, :cond_22

    .line 195
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    if-eqz v1, :cond_51

    .line 196
    invoke-direct {p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getIndexBadgeText(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_22
    :goto_22
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    .line 204
    if-eqz v0, :cond_33

    .line 205
    invoke-direct {p0, v0, p3, p4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setupFocusBoundary(Landroid/view/View;II)V

    .line 206
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    .line 207
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 210
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    if-eqz v0, :cond_46

    .line 211
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$3;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_46
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 230
    return-void

    .line 200
    :cond_51
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22
.end method

.method private bindNormalHolder(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;II)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V

    .line 150
    :cond_9
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1e

    .line 152
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    if-eqz v1, :cond_4d

    .line 153
    invoke-direct {p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getIndexBadgeText(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :cond_1e
    :goto_1e
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 161
    if-eqz v0, :cond_2f

    .line 162
    invoke-direct {p0, v0, p3, p4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setupFocusBoundary(Landroid/view/View;II)V

    .line 163
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 164
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 167
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    if-eqz v0, :cond_42

    .line 168
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_42
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    return-void

    .line 157
    :cond_4d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e
.end method

.method private getIndexBadgeText(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-nez v0, :cond_d

    .line 234
    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_c
    return-object v0

    .line 237
    :cond_d
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    invoke-interface {v0, p1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 238
    const-string v0, "\u5f53\u524d\u64ad\u653e"

    goto :goto_c

    .line 241
    :cond_20
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    invoke-interface {v0, p1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 242
    const-string v0, "\u5f53\u524d\u89c6\u9891"

    goto :goto_c

    .line 245
    :cond_33
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    if-lez v0, :cond_44

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    invoke-interface {v0, p1, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 246
    const-string v0, "\u5f53\u524d\u89c6\u9891"

    goto :goto_c

    .line 249
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

    .line 253
    if-nez p1, :cond_4

    .line 264
    :goto_3
    return-void

    .line 254
    :cond_4
    if-nez p2, :cond_19

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 259
    :goto_d
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_1d

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3

    .line 257
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_d

    .line 262
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 268
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
    .line 109
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
    .line 114
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 115
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->Companion:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    move-result-object v0

    .line 117
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 6

    .prologue
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 125
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 128
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    if-eqz v0, :cond_83

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    invoke-direct {p0, v0, v1, p2, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->bindNormalHolder(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;II)V

    .line 134
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 135
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindTotalMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindTotalMs:J

    .line 136
    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindCount:I

    .line 137
    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindCount:I

    rem-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_38

    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_82

    .line 138
    :cond_38
    const-string v2, "LoadPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[card] bind pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | cost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms | binds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | bindTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->perfBindTotalMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms | type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    if-eqz v0, :cond_8e

    const-string v0, "normal"

    :goto_77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_82
    return-void

    .line 130
    :cond_83
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    if-eqz v0, :cond_1c

    move-object v0, p1

    .line 131
    check-cast v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-direct {p0, v0, v1, p2, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->bindCompactHolder(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;II)V

    goto :goto_1c

    .line 142
    :cond_8e
    const-string v0, "compact"

    goto :goto_77
.end method

.method public getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    return-object v0
.end method

.method public getCurrentCid()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentCid:J

    return-wide v0
.end method

.method public getCurrentPlayingCid()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    return-wide v0
.end method

.method public getCurrentSeasonId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    return v0
.end method

.method public getCurrentVideoId()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    return-wide v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_e

    if-ltz p1, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 295
    :cond_e
    const/4 v0, 0x0

    .line 297
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
    .line 68
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    return v0
.end method

.method public isUseCompactLayout()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    return v0
.end method

.method public setCurrentCid(J)V
    .locals 1

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentCid:J

    .line 93
    return-void
.end method

.method public setCurrentPlayingCid(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentPlayingCid:J

    .line 77
    return-void
.end method

.method public setCurrentSeasonId(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentSeasonId:I

    .line 101
    return-void
.end method

.method public setCurrentVideoId(J)V
    .locals 1

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->currentVideoId:J

    .line 85
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
    .line 272
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 273
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    .line 274
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->d()V

    .line 275
    return-void
.end method

.method public setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;

    .line 279
    return-void
.end method

.method public setIndexBadgeManagedByBinder(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->indexBadgeManagedByBinder:Z

    .line 73
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0

    .prologue
    .line 290
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    .line 291
    return-void
.end method

.method public setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    .line 283
    return-void
.end method

.method public setOnItemFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;

    .line 287
    return-void
.end method

.method public setShowIndexBadge(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->showIndexBadge:Z

    .line 65
    return-void
.end method

.method public setUseCompactLayout(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 57
    return-void
.end method
