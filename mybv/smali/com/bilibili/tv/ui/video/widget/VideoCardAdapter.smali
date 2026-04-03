.class public Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "VideoCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.field private static final TAG:Ljava/lang/String; = "CardAdapter"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 111
    :goto_5
    const-string v1, "CardAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemCount | return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v0

    .line 110
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 3

    .prologue
    .line 29
    const-string v0, "CardAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder | viewType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 35
    const-string v2, "CardAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder | position="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | totalSize="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_79

    move v0, v1

    .line 36
    :goto_1f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | binder="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | holderClass="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_83

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    if-nez v0, :cond_86

    .line 41
    const-string v0, "CardAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | holder\u7c7b\u578b\u4e0d\u5339\u914d\uff0c\u8df3\u8fc7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_78
    return-void

    .line 35
    :cond_79
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1f

    .line 37
    :cond_80
    const-string v0, "null"

    goto :goto_37

    .line 38
    :cond_83
    const-string v0, "null"

    goto :goto_4b

    :cond_86
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    .line 45
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 47
    const-string v5, "CardAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBindViewHolder | position="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " | itemClass="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_134

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :goto_b0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v2, :cond_138

    .line 51
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    invoke-interface {v2, v0, v4, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V

    .line 55
    :goto_c4
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 56
    if-eqz v2, :cond_115

    .line 57
    iget-object v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 58
    if-nez p2, :cond_158

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 63
    :goto_d7
    add-int/lit8 v6, v5, -0x1

    if-ne p2, v6, :cond_15d

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 68
    :goto_e2
    const-string v6, "CardAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBindViewHolder | position="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " | \u7126\u70b9\u8fb9\u754c | isFirst="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p2, :cond_161

    move v2, v3

    :goto_fc
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " | isLast="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_163

    :goto_10a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_115
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    if-eqz v1, :cond_128

    .line 75
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;

    invoke-direct {v2, p0, p2, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_128
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Landroid/support/v7/widget/RecyclerView$v;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_78

    .line 48
    :cond_134
    const-string v2, "null"

    goto/16 :goto_b0

    .line 53
    :cond_138
    const-string v2, "CardAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBindViewHolder | position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | binder\u4e3anull\uff0c\u65e0\u6cd5\u7ed1\u5b9a\u6570\u636e!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    .line 61
    :cond_158
    invoke-virtual {v2, v7}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto/16 :goto_d7

    .line 66
    :cond_15d
    invoke-virtual {v2, v7}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_e2

    :cond_161
    move v2, v1

    .line 68
    goto :goto_fc

    :cond_163
    move v3, v1

    goto :goto_10a
.end method

.method public getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_e

    if-ltz p1, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_3e

    .line 135
    :cond_e
    const-string v1, "CardAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem | position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | \u8d8a\u754c! totalSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_37

    const/4 v0, 0x0

    .line 136
    :goto_2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_36
    return-object v0

    .line 135
    :cond_37
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2a

    .line 139
    :cond_3e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_36
.end method

.method public setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V
    .locals 3
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
    .line 116
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->dataList:Ljava/util/List;

    .line 117
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    .line 118
    const-string v1, "CardAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData | dataSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_37

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | binderClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3c

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->d()V

    .line 121
    return-void

    .line 118
    :cond_37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_14

    .line 119
    :cond_3c
    const-string v0, "null"

    goto :goto_28
.end method

.method public setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;)V
    .locals 3

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;

    .line 125
    const-string v1, "CardAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusBoundaryHandler | handler="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "\u5df2\u8bbe\u7f6e"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 125
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V
    .locals 3

    .prologue
    .line 129
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    .line 130
    const-string v1, "CardAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnItemClickListener | listener="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "\u5df2\u8bbe\u7f6e"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 130
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method
