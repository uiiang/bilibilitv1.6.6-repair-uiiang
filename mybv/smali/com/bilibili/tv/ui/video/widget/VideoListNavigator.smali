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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->blockEpisodeAutoFocus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    return-object v0
.end method

.method private focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    if-nez p1, :cond_5

    .line 250
    :cond_4
    :goto_4
    return v0

    .line 209
    :cond_5
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasData()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    .line 219
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPosition()Landroid/view/View;

    move-result-object v2

    .line 220
    if-eqz v2, :cond_1c

    .line 221
    invoke-direct {p0, p1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getChildPosition(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Landroid/view/View;)I

    .line 227
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 230
    goto :goto_4

    .line 233
    :cond_1c
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 234
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 235
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 244
    goto :goto_4
.end method

.method private getChildPosition(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 254
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 262
    :cond_6
    :goto_6
    return v0

    .line 255
    :cond_7
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 256
    if-nez v2, :cond_f

    move v0, v1

    goto :goto_6

    .line 257
    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 258
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p2, :cond_6

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    move v0, v1

    .line 262
    goto :goto_6
.end method

.method private static getKeyName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    sparse-switch p0, :sswitch_data_2a

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 99
    :sswitch_17
    const-string v0, "DPAD_UP"

    goto :goto_16

    .line 100
    :sswitch_1a
    const-string v0, "DPAD_DOWN"

    goto :goto_16

    .line 101
    :sswitch_1d
    const-string v0, "DPAD_LEFT"

    goto :goto_16

    .line 102
    :sswitch_20
    const-string v0, "DPAD_RIGHT"

    goto :goto_16

    .line 103
    :sswitch_23
    const-string v0, "DPAD_CENTER"

    goto :goto_16

    .line 104
    :sswitch_26
    const-string v0, "ENTER"

    goto :goto_16

    .line 98
    nop

    :sswitch_data_2a
    .sparse-switch
        0x13 -> :sswitch_17
        0x14 -> :sswitch_1a
        0x15 -> :sswitch_1d
        0x16 -> :sswitch_20
        0x17 -> :sswitch_23
        0x42 -> :sswitch_26
    .end sparse-switch
.end method

.method private getSectionIdsString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_45

    .line 367
    if-lez v1, :cond_16

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_16
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 369
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 371
    :cond_45
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
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

    .line 332
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    .line 333
    :goto_1e
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasData()Z

    move-result v4

    .line 334
    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    .line 335
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 332
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 339
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
    .line 376
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 377
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_e

    .line 381
    :goto_d
    return v0

    .line 376
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
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
    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    :goto_d
    return-object v0

    .line 348
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
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

    .line 127
    invoke-direct {p0, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualSortedSections(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 129
    if-eqz p2, :cond_37

    .line 130
    invoke-direct {p0, p2, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)I

    move-result v3

    .line 134
    if-ltz v3, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_23

    .line 135
    add-int/lit8 v0, v3, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 137
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    .line 161
    :goto_22
    return v0

    .line 139
    :cond_23
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_35

    .line 141
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    :cond_35
    move v0, v1

    .line 145
    goto :goto_22

    .line 149
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_48

    .line 150
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 152
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    goto :goto_22

    .line 155
    :cond_48
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5a

    .line 157
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    :cond_5a
    move v0, v1

    .line 161
    goto :goto_22
.end method

.method private handleNavigation(Landroid/view/View;IZ)Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->findSectionContainingView(Landroid/view/View;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    .line 111
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisibleSections()Ljava/util/List;

    move-result-object v1

    .line 117
    if-eqz p3, :cond_f

    .line 118
    invoke-direct {p0, p1, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleUp(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z

    move-result v0

    .line 120
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

    .line 167
    invoke-direct {p0, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualSortedSections(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 169
    if-eqz p2, :cond_2f

    .line 170
    invoke-direct {p0, p2, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisualIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)I

    move-result v3

    .line 174
    if-lez v3, :cond_1b

    .line 175
    add-int/lit8 v0, v3, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 177
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    .line 201
    :goto_1a
    return v0

    .line 179
    :cond_1b
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2d

    .line 181
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1a

    :cond_2d
    move v0, v1

    .line 185
    goto :goto_1a

    .line 189
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_46

    .line 190
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 192
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    goto :goto_1a

    .line 195
    :cond_46
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_58

    .line 197
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1a

    :cond_58
    move v0, v1

    .line 201
    goto :goto_1a
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 302
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v0, v2

    .line 308
    :goto_7
    return v0

    .line 303
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 304
    :goto_16
    if-eqz v0, :cond_2f

    .line 305
    if-ne v0, p1, :cond_1e

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    move-object v0, v1

    .line 303
    goto :goto_16

    .line 306
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

    .line 308
    goto :goto_7
.end method


# virtual methods
.method public clearSections()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 49
    return-void
.end method

.method public findSectionById(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 3

    .prologue
    .line 312
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

    .line 313
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 319
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

    .line 266
    if-nez p1, :cond_5

    move-object v0, v2

    .line 298
    :cond_4
    :goto_4
    return-object v0

    .line 270
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

    .line 271
    if-eq v0, p1, :cond_4

    .line 275
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 276
    if-eqz v4, :cond_21

    if-eq v4, p1, :cond_4

    .line 280
    :cond_21
    if-eqz v4, :cond_b

    .line 281
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 282
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 283
    if-eq v5, p1, :cond_4

    .line 288
    invoke-direct {p0, v5, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_39
    move-object v0, v2

    .line 298
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
    .line 385
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 326
    return v0
.end method

.method public handleKeyDown(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 82
    invoke-static {p2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getKeyName(I)Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleNavigation(Landroid/view/View;IZ)Z

    move-result v0

    return v0
.end method

.method public handleKeyUp(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 90
    invoke-static {p2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getKeyName(I)Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleNavigation(Landroid/view/View;IZ)Z

    move-result v0

    return v0
.end method

.method public registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 1

    .prologue
    .line 23
    if-nez p1, :cond_3

    .line 35
    :cond_2
    :goto_2
    return-void

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public setBlockEpisodeAutoFocus(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->blockEpisodeAutoFocus:Z

    .line 79
    return-void
.end method

.method public setDownTarget(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    .line 64
    return-void
.end method

.method public setEpListView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->epListView:Landroid/view/View;

    .line 69
    return-void
.end method

.method public setEpisodesVideoView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->episodesVideoView:Landroid/view/View;

    .line 74
    return-void
.end method

.method public setUpTarget(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    .line 59
    return-void
.end method

.method public unregisterSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public updateVisualOrder(II)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->visualOrderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
