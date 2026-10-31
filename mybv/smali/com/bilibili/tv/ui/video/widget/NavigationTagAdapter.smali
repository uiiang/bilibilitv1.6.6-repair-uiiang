.class public Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "NavigationTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;,
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;,
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;,
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;,
        Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;
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
    .line 279
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
    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 240
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->context:Landroid/content/Context;

    .line 242
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 243
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
    .line 248
    if-ltz p2, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_b

    .line 275
    :cond_a
    :goto_a
    return-void

    .line 252
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    .line 253
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    if-ne p2, v1, :cond_42

    const/4 v1, 0x1

    .line 255
    :goto_18
    iget-object v2, p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 258
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;

    if-eqz v1, :cond_35

    .line 259
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;

    iget-object v2, p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, p2, v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;->setupFocusBoundary(Landroid/view/View;II)V

    .line 263
    :cond_35
    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 265
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;-><init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_a

    .line 253
    :cond_42
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 235
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 6

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3a

    if-ltz p1, :cond_3a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3a

    .line 343
    :try_start_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_3a

    .line 345
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

    .line 346
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

    .line 351
    :goto_38
    return-object v0

    .line 348
    :catch_39
    move-exception v0

    .line 351
    :cond_3a
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public getGroupIndexForVideoPosition(I)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 121
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

    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e6

    move v1, v2

    .line 124
    :goto_32
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_bd

    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v4, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 126
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

    .line 128
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

    .line 130
    if-lt p1, v4, :cond_b8

    if-ge p1, v0, :cond_b8

    .line 131
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

    .line 141
    :goto_b1
    return v1

    .line 126
    :cond_b2
    const v0, 0x7fffffff

    goto :goto_5a

    :cond_b6
    move v3, v2

    .line 128
    goto :goto_8a

    .line 124
    :cond_b8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_32

    .line 135
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

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_b1

    .line 139
    :cond_e6
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    div-int v1, p1, v0

    .line 140
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
    .line 145
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    return v0
.end method

.method public getItemRange(I)[I
    .locals 4

    .prologue
    .line 149
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 150
    :cond_a
    const/4 v0, 0x0

    .line 162
    :goto_b
    return-object v0

    .line 153
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v2, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 156
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 162
    :goto_2e
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    move-object v0, v1

    goto :goto_b

    .line 159
    :cond_39
    const v0, 0x7fffffff

    goto :goto_2e
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->label:Ljava/lang/String;

    .line 218
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    return v0
.end method

.method public getStartIndex(I)I
    .locals 1

    .prologue
    .line 208
    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 209
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;->startIndex:I

    .line 211
    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public getTagCount()I
    .locals 1

    .prologue
    .line 283
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
    .line 355
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 5

    .prologue
    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_31

    .line 293
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

    .line 294
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

    .line 303
    :cond_31
    :goto_31
    return-void

    .line 295
    :catch_32
    move-exception v0

    .line 297
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

    .line 298
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

    .line 299
    :catch_57
    move-exception v0

    goto :goto_31
.end method

.method public scrollToPositionWithOffset(I)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2a

    if-ltz p1, :cond_2a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 307
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    .line 313
    :cond_1c
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$3;-><init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    .line 336
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->pendingScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 338
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
    .line 106
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 110
    :cond_f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->d()V

    .line 118
    :goto_12
    return-void

    .line 114
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 117
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->d()V

    goto :goto_12
.end method

.method public setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;

    .line 231
    return-void
.end method

.method public setOnTagClickListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;

    .line 227
    return-void
.end method

.method public setOnTagFocusListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;

    .line 223
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 4

    .prologue
    .line 166
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    if-eq v0, p1, :cond_3c

    .line 167
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 168
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 170
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_3c

    .line 173
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 175
    new-instance v2, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;-><init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;III)V

    .line 188
    :try_start_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "o"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 191
    if-eqz v0, :cond_3d

    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_3c
    :goto_3c
    return-void

    .line 194
    :cond_3d
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_41

    goto :goto_3c

    .line 196
    :catch_41
    move-exception v0

    .line 197
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
    .locals 8

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 73
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->groupSize:I

    .line 74
    iput-object p3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tagBinder:Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;

    .line 76
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    if-gt p1, p2, :cond_4b

    .line 78
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->d()V

    .line 79
    const-string v0, "LoadPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[navTag] setTags total="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " <= groupSize="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | notify="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_4a
    return-void

    .line 84
    :cond_4b
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int v4, v0, p2

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_53
    if-ge v1, v4, :cond_96

    .line 87
    mul-int v5, v1, p2

    .line 88
    add-int/lit8 v0, v1, 0x1

    mul-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v6, p1, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 90
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tagBinder:Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;

    if-eqz v6, :cond_7a

    .line 91
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tagBinder:Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;

    invoke-interface {v6, v1, v5, v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagBinder;->generateLabel(IIII)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_6c
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    new-instance v7, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    invoke-direct {v7, v0, v5}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    .line 93
    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    .line 98
    :cond_96
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->selectedPosition:I

    .line 99
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->d()V

    .line 100
    const-string v0, "LoadPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[navTag] setTags total="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | groupSize="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | tagCount="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->tags:Ljava/util/List;

    .line 101
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | notify="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a
.end method
