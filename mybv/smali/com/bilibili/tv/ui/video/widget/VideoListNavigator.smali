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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->blockEpisodeAutoFocus:Z

    return-void
.end method

.method private focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    if-nez p1, :cond_d

    .line 194
    const-string v0, "ListNav"

    const-string v2, "focusSection | section\u4e3anull!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 238
    :goto_c
    return v0

    .line 197
    :cond_d
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasData()Z

    move-result v2

    if-nez v2, :cond_31

    .line 198
    const-string v0, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusSection | section\u65e0\u6570\u636e! sectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 199
    goto :goto_c

    .line 202
    :cond_31
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v2

    .line 203
    const-string v3, "ListNav"

    const-string v4, "========== focusSection START =========="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v3, "ListNav"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focusSection | \u76ee\u6807sectionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | \u9884\u671f\u7126\u70b9\u4f4d\u7f6e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPosition()Landroid/view/View;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_cc

    .line 209
    invoke-direct {p0, p1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getChildPosition(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Landroid/view/View;)I

    move-result v1

    .line 210
    const-string v4, "ListNav"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "focusSection | restoreFocus\u6210\u529f | \u9884\u671fposition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " | \u5b9e\u9645position="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | viewClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v1, "ListNav"

    const-string v2, "focusSection | >>> requestFocus\u6267\u884c"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 216
    const-string v2, "ListNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focusSection | <<< requestFocus\u8fd4\u56de "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, "ListNav"

    const-string v2, "========== focusSection END =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 221
    :cond_cc
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 222
    if-eqz v3, :cond_12a

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_12a

    .line 223
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 225
    const-string v4, "ListNav"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "focusSection | restoreFocus\u8fd4\u56denull\uff0cfallback\u5230\u7b2c1\u4e2achild | \u9884\u671fposition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " | fallbackPosition="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v1, "ListNav"

    const-string v2, "focusSection | >>> fallback requestFocus\u6267\u884c"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 230
    const-string v2, "ListNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focusSection | <<< fallback requestFocus\u8fd4\u56de "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v1, "ListNav"

    const-string v2, "========== focusSection END =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 235
    :cond_12a
    const-string v2, "ListNav"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focusSection | \u65e0\u6cd5\u805a\u7126! sectionId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | childCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_164

    .line 236
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_14f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v0, "ListNav"

    const-string v2, "========== focusSection END =========="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 238
    goto/16 :goto_c

    .line 236
    :cond_164
    const-string v0, "rv=null"

    goto :goto_14f
.end method

.method private getChildPosition(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 242
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 250
    :cond_6
    :goto_6
    return v0

    .line 243
    :cond_7
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 244
    if-nez v2, :cond_f

    move v0, v1

    goto :goto_6

    .line 245
    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 246
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p2, :cond_6

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    move v0, v1

    .line 250
    goto :goto_6
.end method

.method private static getKeyName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    sparse-switch p0, :sswitch_data_2a

    .line 96
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

    .line 90
    :sswitch_17
    const-string v0, "DPAD_UP"

    goto :goto_16

    .line 91
    :sswitch_1a
    const-string v0, "DPAD_DOWN"

    goto :goto_16

    .line 92
    :sswitch_1d
    const-string v0, "DPAD_LEFT"

    goto :goto_16

    .line 93
    :sswitch_20
    const-string v0, "DPAD_RIGHT"

    goto :goto_16

    .line 94
    :sswitch_23
    const-string v0, "DPAD_CENTER"

    goto :goto_16

    .line 95
    :sswitch_26
    const-string v0, "ENTER"

    goto :goto_16

    .line 89
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
    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
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

    .line 320
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    .line 321
    :goto_1e
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasData()Z

    move-result v4

    .line 322
    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    .line 323
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 320
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 326
    :cond_2c
    const-string v0, "ListNav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVisibleSections | total="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | visible+hasData="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v2
.end method

.method private handleDown(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z
    .locals 6
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    const-string v0, "ListNav"

    const-string v3, "handleDown | \u5f00\u59cb\u5904\u7406DOWN\u5bfc\u822a"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz p2, :cond_8b

    .line 119
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getSectionIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    .line 120
    const-string v3, "ListNav"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDown | \u5f53\u524d\u5728section\u5185 | currentIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | visibleSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 121
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-ltz v0, :cond_68

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_68

    .line 124
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 125
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDown | \u8df3\u8f6c\u5230\u4e0b\u4e00\u4e2asection | targetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    .line 151
    :goto_67
    return v0

    .line 128
    :cond_68
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_82

    .line 129
    const-string v0, "ListNav"

    const-string v2, "handleDown | \u5df2\u662f\u6700\u540e\u4e00\u4e2asection\uff0c\u8df3\u8f6c\u5230downTarget"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 131
    goto :goto_67

    .line 133
    :cond_82
    const-string v0, "ListNav"

    const-string v1, "handleDown | \u65e0\u53ef\u8df3\u8f6c\u76ee\u6807\uff0c\u8fd4\u56defalse(\u4e0d\u6d88\u8d39\u4e8b\u4ef6)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 134
    goto :goto_67

    .line 137
    :cond_8b
    const-string v0, "ListNav"

    const-string v3, "handleDown | \u5f53\u524d\u4e0d\u5728\u4efb\u4f55section\u5185\uff0c\u67e5\u627e\u7b2c\u4e00\u4e2a\u53ef\u89c1section"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 139
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasData()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 140
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDown | \u8df3\u8f6c\u5230\u7b2c\u4e00\u4e2a\u6709\u6570\u636e\u7684section | targetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    goto :goto_67

    .line 145
    :cond_c9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e3

    .line 146
    const-string v0, "ListNav"

    const-string v2, "handleDown | \u65e0\u53ef\u89c1section\uff0c\u8df3\u8f6c\u5230downTarget"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 148
    goto :goto_67

    .line 150
    :cond_e3
    const-string v0, "ListNav"

    const-string v1, "handleDown | \u65e0\u4efb\u4f55\u76ee\u6807\uff0c\u8fd4\u56defalse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 151
    goto/16 :goto_67
.end method

.method private handleNavigation(Landroid/view/View;IZ)Z
    .locals 6

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->findSectionContainingView(Landroid/view/View;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    .line 102
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getVisibleSections()Ljava/util/List;

    move-result-object v2

    .line 104
    const-string v3, "ListNav"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNavigation | isUp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | currentSection="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | visibleSectionsCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz p3, :cond_5b

    .line 109
    invoke-direct {p0, p1, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleUp(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z

    move-result v0

    .line 111
    :goto_57
    return v0

    .line 105
    :cond_58
    const-string v0, "null"

    goto :goto_38

    .line 111
    :cond_5b
    invoke-direct {p0, p1, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleDown(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z

    move-result v0

    goto :goto_57
.end method

.method private handleUp(Landroid/view/View;Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/util/List;)Z
    .locals 6
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

    .line 155
    const-string v2, "ListNav"

    const-string v3, "handleUp | \u5f00\u59cb\u5904\u7406UP\u5bfc\u822a"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz p2, :cond_82

    .line 158
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getSectionIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    .line 159
    const-string v3, "ListNav"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUp | \u5f53\u524d\u5728section\u5185 | currentIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | visibleSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-lez v2, :cond_60

    .line 163
    add-int/lit8 v0, v2, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 164
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUp | \u8df3\u8f6c\u5230\u4e0a\u4e00\u4e2asection | targetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    .line 189
    :goto_5f
    return v0

    .line 167
    :cond_60
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_79

    .line 168
    const-string v1, "ListNav"

    const-string v2, "handleUp | \u5df2\u662f\u7b2c\u4e00\u4e2asection\uff0c\u8df3\u8f6c\u5230upTarget"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_5f

    .line 172
    :cond_79
    const-string v0, "ListNav"

    const-string v2, "handleUp | \u65e0\u53ef\u8df3\u8f6c\u76ee\u6807\uff0c\u8fd4\u56defalse"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 173
    goto :goto_5f

    .line 176
    :cond_82
    const-string v2, "ListNav"

    const-string v3, "handleUp | \u5f53\u524d\u4e0d\u5728\u4efb\u4f55section\u5185\uff0c\u67e5\u627e\u6700\u540e\u4e00\u4e2a\u53ef\u89c1section"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bc

    .line 178
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 179
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUp | \u8df3\u8f6c\u5230\u6700\u540e\u4e00\u4e2avisible section | targetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->focusSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    goto :goto_5f

    .line 183
    :cond_bc
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    if-eqz v2, :cond_d5

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d5

    .line 184
    const-string v1, "ListNav"

    const-string v2, "handleUp | \u65e0\u53ef\u89c1section\uff0c\u8df3\u8f6c\u5230upTarget"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_5f

    .line 188
    :cond_d5
    const-string v0, "ListNav"

    const-string v2, "handleUp | \u65e0\u4efb\u4f55\u76ee\u6807\uff0c\u8fd4\u56defalse"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 189
    goto :goto_5f
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 290
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v0, v2

    .line 296
    :goto_7
    return v0

    .line 291
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 292
    :goto_16
    if-eqz v0, :cond_2f

    .line 293
    if-ne v0, p1, :cond_1e

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    move-object v0, v1

    .line 291
    goto :goto_16

    .line 294
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

    .line 296
    goto :goto_7
.end method


# virtual methods
.method public clearSections()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 44
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSections | \u6e05\u9664"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4e2asection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public findSectionById(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 301
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 302
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSectionById | \u627e\u5230 | sectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_30
    return-object v0

    .line 306
    :cond_31
    const-string v0, "ListNav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findSectionById | \u672a\u627e\u5230 | sectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public findSectionContainingView(Landroid/view/View;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 254
    if-nez p1, :cond_c

    .line 255
    const-string v0, "ListNav"

    const-string v1, "findSectionContainingView | view\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 286
    :goto_b
    return-object v0

    .line 258
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 259
    if-ne v0, p1, :cond_3d

    .line 260
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSectionContainingView | \u5339\u914d\u5230section\u672c\u8eab | id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 263
    :cond_3d
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 264
    if-eqz v4, :cond_62

    if-ne v4, p1, :cond_62

    .line 265
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSectionContainingView | \u5339\u914d\u5230recyclerView | id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 268
    :cond_62
    if-eqz v4, :cond_12

    .line 269
    const/4 v1, 0x0

    :goto_65
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_12

    .line 270
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 271
    if-ne v5, p1, :cond_99

    .line 272
    const-string v2, "ListNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findSectionContainingView | \u5339\u914d\u5230\u76f4\u63a5\u5b50view | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 273
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | childIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 276
    :cond_99
    invoke-direct {p0, v5, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 277
    const-string v2, "ListNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findSectionContainingView | \u5339\u914d\u5230\u540e\u4ee3\u5b50view | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | ancestorChildIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 269
    :cond_c7
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 284
    :cond_ca
    const-string v0, "ListNav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSectionContainingView | \u672a\u627e\u5230\u5339\u914dsection | viewClass="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 286
    goto/16 :goto_b
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
    .line 331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionIndex(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 312
    const-string v2, "ListNav"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSectionIndex | sectionId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | index="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v1

    .line 312
    :cond_33
    const-string v0, "null"

    goto :goto_1d
.end method

.method public handleKeyDown(Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 73
    invoke-static {p2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getKeyName(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleKeyDown | keyName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | keyCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | currentFocus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | totalSections="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleNavigation(Landroid/view/View;IZ)Z

    move-result v0

    return v0

    .line 75
    :cond_6b
    const-string v0, "null"

    goto :goto_4a
.end method

.method public handleKeyUp(Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 81
    invoke-static {p2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->getKeyName(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "ListNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleKeyUp | keyName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | keyCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | currentFocus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | totalSections="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    .line 84
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->handleNavigation(Landroid/view/View;IZ)Z

    move-result v0

    return v0

    .line 83
    :cond_6b
    const-string v0, "null"

    goto :goto_4a
.end method

.method public registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 3

    .prologue
    .line 20
    if-nez p1, :cond_a

    .line 21
    const-string v0, "ListNav"

    const-string v1, "registerSection | section\u4e3anull\uff0c\u5ffd\u7565"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_9
    return-void

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v0, "ListNav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSection | \u6ce8\u518c\u6210\u529f | sectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | \u5f53\u524d\u603b\u6570="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | hasData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasData()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 30
    :cond_52
    const-string v0, "ListNav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSection | section\u5df2\u5b58\u5728\uff0c\u8df3\u8fc7 | sectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setBlockEpisodeAutoFocus(Z)V
    .locals 3

    .prologue
    .line 68
    const-string v0, "ListNav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockEpisodeAutoFocus | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->blockEpisodeAutoFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->blockEpisodeAutoFocus:Z

    .line 70
    return-void
.end method

.method public setDownTarget(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->downTarget:Landroid/view/View;

    .line 54
    const-string v1, "ListNav"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDownTarget | view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "OK"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 54
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setEpListView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->epListView:Landroid/view/View;

    .line 59
    const-string v1, "ListNav"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEpListView | view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "OK"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 59
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setEpisodesVideoView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->episodesVideoView:Landroid/view/View;

    .line 64
    const-string v1, "ListNav"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEpisodesVideoView | view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "OK"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 64
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setUpTarget(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->upTarget:Landroid/view/View;

    .line 49
    const-string v1, "ListNav"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpTarget | view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "OK"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 49
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public unregisterSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 36
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    const-string v2, "ListNav"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterSection | sectionId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | \u79fb\u9664\u524d="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | \u79fb\u9664\u540e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->sections:Ljava/util/List;

    .line 38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 37
    :cond_48
    const-string v0, "null"

    goto :goto_22
.end method
