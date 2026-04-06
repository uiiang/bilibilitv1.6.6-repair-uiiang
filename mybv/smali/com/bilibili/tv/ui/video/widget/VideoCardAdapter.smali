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

.field private useCompactLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 34
    const/4 v2, -0x1

    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    .line 35
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 40
    invoke-static {p1}, Lbl/abd;->get_other_column(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_1a

    :goto_17
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 41
    return-void

    :cond_1a
    move v0, v1

    .line 40
    goto :goto_17
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;

    return-object v0
.end method

.method private bindCompactHolder(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;II)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V

    .line 115
    :cond_9
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    .line 116
    if-eqz v0, :cond_1a

    .line 117
    invoke-direct {p0, v0, p3, p4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setupFocusBoundary(Landroid/view/View;II)V

    .line 118
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 119
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 122
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    if-eqz v0, :cond_2d

    .line 123
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$3;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_2d
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    return-void
.end method

.method private bindNormalHolder(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;II)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V

    .line 82
    :cond_9
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 83
    if-eqz v0, :cond_1a

    .line 84
    invoke-direct {p0, v0, p3, p4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setupFocusBoundary(Landroid/view/View;II)V

    .line 85
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 86
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 89
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    if-eqz v0, :cond_2d

    .line 90
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_2d
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 109
    return-void
.end method

.method private setupFocusBoundary(Landroid/view/View;II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 145
    if-nez p1, :cond_4

    .line 156
    :goto_3
    return-void

    .line 146
    :cond_4
    if-nez p2, :cond_19

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 151
    :goto_d
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_1d

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3

    .line 149
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_d

    .line 154
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 160
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
    .line 53
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
    .line 58
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 59
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->Companion:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;->create(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    move-result-object v0

    .line 61
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
    .line 67
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 71
    instance-of v2, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    if-eqz v2, :cond_18

    .line 72
    check-cast p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->bindNormalHolder(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;II)V

    .line 76
    :cond_17
    :goto_17
    return-void

    .line 73
    :cond_18
    instance-of v2, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    if-eqz v2, :cond_17

    .line 74
    check-cast p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->bindCompactHolder(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;II)V

    goto :goto_17
.end method

.method public getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_e

    if-ltz p1, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 187
    :cond_e
    const/4 v0, 0x0

    .line 189
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public isUseCompactLayout()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    return v0
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
    .line 164
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 165
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    .line 166
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->d()V

    .line 167
    return-void
.end method

.method public setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;

    .line 171
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->nextFocusDownId:I

    .line 183
    return-void
.end method

.method public setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    .line 175
    return-void
.end method

.method public setOnItemFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;

    .line 179
    return-void
.end method

.method public setUseCompactLayout(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->useCompactLayout:Z

    .line 45
    return-void
.end method
