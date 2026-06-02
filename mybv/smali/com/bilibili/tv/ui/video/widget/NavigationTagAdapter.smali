.class public Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "NavigationTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;,
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;,
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;,
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;,
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private clickListener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;

.field private context:Landroid/content/Context;

.field private focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;

.field private groupSize:I

.field private listener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;

.field private pendingScrollRunnable:Ljava/lang/Runnable;

.field private selectedPosition:I

.field private tagBinder:Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 234
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->context:Landroid/content/Context;

    .line 236
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->a(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;I)V
    .locals 4

    .prologue
    .line 242
    if-ltz p2, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_b

    .line 269
    :cond_a
    :goto_a
    return-void

    .line 246
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    .line 247
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    if-ne p2, v1, :cond_42

    const/4 v1, 0x1

    .line 249
    :goto_18
    iget-object v2, p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 252
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;

    if-eqz v1, :cond_35

    .line 253
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;

    iget-object v2, p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, p2, v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;->setupFocusBoundary(Landroid/view/View;II)V

    .line 257
    :cond_35
    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 259
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;-><init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_a

    .line 247
    :cond_42
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 229
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 6

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3a

    if-ltz p1, :cond_3a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3a

    .line 337
    :try_start_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_3a

    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 340
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_38} :catch_39

    .line 345
    :goto_38
    return-object v0

    .line 342
    :catch_39
    move-exception v0

    .line 345
    :cond_3a
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public getGroupIndexForVideoPosition(I)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string v0, "NavTagFocusBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getGroupIndexForVideoPosition] videoPosition="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | tags.size()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e6

    move v1, v2

    .line 118
    :goto_32
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_bd

    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v4, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 120
    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b2

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 122
    :goto_5a
    const-string v5, "NavTagFocusBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getGroupIndexForVideoPosition] checking tag["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]: currentStart="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", nextStart="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", condition="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lt p1, v4, :cond_b6

    if-ge p1, v0, :cond_b6

    const/4 v3, 0x1

    :goto_8a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-lt p1, v4, :cond_b8

    if-ge p1, v0, :cond_b8

    .line 125
    const-string v0, "NavTagFocusBug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getGroupIndexForVideoPosition] matched! returning tagIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_b1
    return v1

    .line 120
    :cond_b2
    const v0, 0x7fffffff

    goto :goto_5a

    :cond_b6
    move v3, v2

    .line 122
    goto :goto_8a

    .line 118
    :cond_b8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_32

    .line 129
    :cond_bd
    const-string v0, "NavTagFocusBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getGroupIndexForVideoPosition] no match, returning last tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_b1

    .line 133
    :cond_e6
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    div-int v1, p1, v0

    .line 134
    const-string v0, "NavTagFocusBug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getGroupIndexForVideoPosition] no tags, fallback to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1
.end method

.method public getGroupSize()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    return v0
.end method

.method public getItemRange(I)[I
    .locals 4

    .prologue
    .line 143
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 144
    :cond_a
    const/4 v0, 0x0

    .line 156
    :goto_b
    return-object v0

    .line 147
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v2, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 150
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 151
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 156
    :goto_2e
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    move-object v0, v1

    goto :goto_b

    .line 153
    :cond_39
    const v0, 0x7fffffff

    goto :goto_2e
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->label:Ljava/lang/String;

    .line 212
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    return v0
.end method

.method public getStartIndex(I)I
    .locals 1

    .prologue
    .line 202
    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 203
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 205
    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public getTagCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_31

    .line 287
    :try_start_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_32

    .line 297
    :cond_31
    :goto_31
    return-void

    .line 289
    :catch_32
    move-exception v0

    .line 291
    :try_start_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "scrollToPosition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_56} :catch_57

    goto :goto_31

    .line 293
    :catch_57
    move-exception v0

    goto :goto_31
.end method

.method public scrollToPositionWithOffset(I)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2a

    if-ltz p1, :cond_2a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 301
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 302
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    .line 307
    :cond_1c
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;-><init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    .line 330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 332
    :cond_2a
    return-void
.end method

.method public setCustomTags(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 100
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    .line 102
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    :cond_f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->d()V

    .line 112
    :goto_12
    return-void

    .line 108
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 111
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->d()V

    goto :goto_12
.end method

.method public setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;

    .line 225
    return-void
.end method

.method public setOnTagClickListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;

    .line 221
    return-void
.end method

.method public setOnTagFocusListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;

    .line 217
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 4

    .prologue
    .line 160
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    if-eq v0, p1, :cond_3c

    .line 161
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 162
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 164
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_3c

    .line 167
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 169
    new-instance v2, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;-><init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;III)V

    .line 182
    :try_start_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "o"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 185
    if-eqz v0, :cond_3d

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_3c
    :goto_3c
    return-void

    .line 188
    :cond_3d
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_41

    goto :goto_3c

    .line 190
    :catch_41
    move-exception v0

    .line 191
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3c
.end method

.method public setTags(I)V
    .locals 2

    .prologue
    .line 64
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V

    .line 65
    return-void
.end method

.method public setTags(II)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V

    .line 69
    return-void
.end method

.method public setTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V
    .locals 6

    .prologue
    .line 72
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    .line 73
    iput-object p3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tagBinder:Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;

    .line 75
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    if-gt p1, p2, :cond_f

    .line 77
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->d()V

    .line 97
    :goto_e
    return-void

    .line 81
    :cond_f
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int v2, v0, p2

    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_17
    if-ge v1, v2, :cond_5a

    .line 84
    mul-int v3, v1, p2

    .line 85
    add-int/lit8 v0, v1, 0x1

    mul-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, p1, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 87
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tagBinder:Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;

    if-eqz v4, :cond_3e

    .line 88
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tagBinder:Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;

    invoke-interface {v4, v1, v3, v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;->generateLabel(IIII)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_30
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    new-instance v5, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    invoke-direct {v5, v0, v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 90
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 95
    :cond_5a
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 96
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->d()V

    goto :goto_e
.end method
