.class public Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
.super Ljava/lang/Object;
.source "VideoListNavigator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListNav"


# instance fields
.field private blockEpisodeAutoFocus:Z

.field private downTarget:Landroid/view/View;

.field private epListView:Landroid/view/View;

.field private episodesVideoView:Landroid/view/View;

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;"
        }
    .end annotation
.end field

.field private upTarget:Landroid/view/View;

.field private visualOrderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->blockEpisodeAutoFocus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    return-object v0
.end method

.method private focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    if-nez p1, :cond_5

    .line 161
    :cond_4
    :goto_4
    return v0

    .line 144
    :cond_5
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasData()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPosition()Landroid/view/View;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_16

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 151
    goto :goto_4

    .line 154
    :cond_16
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 156
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 158
    goto :goto_4
.end method

.method private getVisibleSections()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 218
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    .line 219
    :goto_1e
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasData()Z

    move-result v4

    .line 220
    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    .line 221
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 218
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 224
    :cond_2c
    return-object v2
.end method

.method private getVisualIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 247
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_e

    .line 251
    :goto_d
    return v0

    .line 246
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_11
    const/4 v0, -0x1

    goto :goto_d
.end method

.method private getVisualSortedSections(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    :goto_d
    return-object v0

    .line 232
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_d
.end method

.method private handleDown(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualSortedSections(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 85
    if-eqz p2, :cond_37

    .line 86
    invoke-direct {p0, p2, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)I

    move-result v3

    .line 88
    if-ltz v3, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_23

    .line 89
    add-int/lit8 v0, v3, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 90
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    .line 108
    :goto_22
    return v0

    .line 92
    :cond_23
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_35

    .line 93
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    :cond_35
    move v0, v1

    .line 96
    goto :goto_22

    .line 99
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_48

    .line 100
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 101
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    goto :goto_22

    .line 104
    :cond_48
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5a

    .line 105
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    :cond_5a
    move v0, v1

    .line 108
    goto :goto_22
.end method

.method private handleNavigation(Landroid/view/View;IZ)Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->findSectionContainingView(Landroid/view/View;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    .line 73
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisibleSections()Ljava/util/List;

    move-result-object v1

    .line 75
    if-eqz p3, :cond_f

    .line 76
    invoke-direct {p0, p1, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleUp(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z

    move-result v0

    .line 78
    :goto_e
    return v0

    :cond_f
    invoke-direct {p0, p1, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleDown(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z

    move-result v0

    goto :goto_e
.end method

.method private handleUp(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualSortedSections(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 114
    if-eqz p2, :cond_2f

    .line 115
    invoke-direct {p0, p2, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)I

    move-result v3

    .line 117
    if-lez v3, :cond_1b

    .line 118
    add-int/lit8 v0, v3, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 119
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    .line 137
    :goto_1a
    return v0

    .line 121
    :cond_1b
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2d

    .line 122
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1a

    :cond_2d
    move v0, v1

    .line 125
    goto :goto_1a

    .line 128
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_46

    .line 129
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 130
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    goto :goto_1a

    .line 133
    :cond_46
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_58

    .line 134
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1a

    :cond_58
    move v0, v1

    .line 137
    goto :goto_1a
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v0, v2

    .line 198
    :goto_7
    return v0

    .line 193
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 194
    :goto_16
    if-eqz v0, :cond_2f

    .line 195
    if-ne v0, p1, :cond_1e

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    move-object v0, v1

    .line 193
    goto :goto_16

    .line 196
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_16

    :cond_2d
    move-object v0, v1

    goto :goto_16

    :cond_2f
    move v0, v2

    .line 198
    goto :goto_7
.end method


# virtual methods
.method public clearSections()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    return-void
.end method

.method public findSectionById(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 203
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 207
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public findSectionContainingView(Landroid/view/View;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 165
    if-nez p1, :cond_5

    move-object v0, v2

    .line 188
    :cond_4
    :goto_4
    return-object v0

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 169
    if-eq v0, p1, :cond_4

    .line 172
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 173
    if-eqz v4, :cond_21

    if-eq v4, p1, :cond_4

    .line 176
    :cond_21
    if-eqz v4, :cond_b

    .line 177
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 178
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 179
    if-eq v5, p1, :cond_4

    .line 182
    invoke-direct {p0, v5, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_39
    move-object v0, v2

    .line 188
    goto :goto_4
.end method

.method public getAllSections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 212
    return v0
.end method

.method public handleKeyDown(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleNavigation(Landroid/view/View;IZ)Z

    move-result v0

    return v0
.end method

.method public handleKeyUp(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleNavigation(Landroid/view/View;IZ)Z

    move-result v0

    return v0
.end method

.method public registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 1

    .prologue
    .line 22
    if-nez p1, :cond_3

    .line 28
    :cond_2
    :goto_2
    return-void

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public setBlockEpisodeAutoFocus(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->blockEpisodeAutoFocus:Z

    .line 61
    return-void
.end method

.method public setDownTarget(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    .line 49
    return-void
.end method

.method public setEpListView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->epListView:Landroid/view/View;

    .line 53
    return-void
.end method

.method public setEpisodesVideoView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->episodesVideoView:Landroid/view/View;

    .line 57
    return-void
.end method

.method public setUpTarget(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    .line 45
    return-void
.end method

.method public unregisterSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public updateVisualOrder(II)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
