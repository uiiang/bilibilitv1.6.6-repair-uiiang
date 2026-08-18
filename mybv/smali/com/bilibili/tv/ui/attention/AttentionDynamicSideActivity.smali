.class public Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "AttentionDynamicSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;
    }
.end annotation


# instance fields
.field private c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

.field private currentTagName:Ljava/lang/String;

.field private currentTagid:J

.field private f:I

.field private g:Z

.field private h:Z

.field private isLoadingTags:Z

.field private needFocusFirstItem:Z

.field private selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

.field private tagItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;",
            ">;"
        }
    .end annotation
.end field

.field private uperItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    .line 51
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 52
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    .line 53
    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->tagItems:Ljava/util/List;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J

    .line 56
    const-string v0, "\u52a8\u6001"

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagName:Ljava/lang/String;

    .line 57
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isLoadingTags:Z

    .line 58
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->needFocusFirstItem:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->needFocusFirstItem:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return p1
.end method

.method static synthetic access$308(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isLoadingTags:Z

    return p1
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->tagItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;J)J
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J

    return-wide p1
.end method

.method private isDescendantOfFragment(Landroid/view/View;Landroid/support/v4/app/Fragment;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 222
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 232
    :goto_6
    return v0

    .line 223
    :cond_7
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 224
    if-nez v2, :cond_12

    move v0, v1

    goto :goto_6

    .line 230
    :cond_f
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 226
    :cond_12
    if-eqz p1, :cond_20

    .line 227
    if-ne p1, v2, :cond_18

    const/4 v0, 0x1

    goto :goto_6

    .line 228
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 229
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_f

    :cond_20
    move v0, v1

    .line 232
    goto :goto_6
.end method

.method private isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 236
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 244
    :goto_6
    return v0

    .line 242
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 238
    :cond_a
    if-eqz p1, :cond_18

    .line 239
    if-ne p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    .line 240
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 241
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 244
    goto :goto_6
.end method

.method private loadAllFollowings()V
    .locals 8

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 286
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_2c

    .line 288
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v7

    .line 289
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    const-string v4, "attention"

    const/16 v5, 0x1e

    iget v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    invoke-interface/range {v1 .. v7}, Lmybl/MyBiliApiService;->getFollowings(JLjava/lang/String;IILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 340
    :goto_2b
    return-void

    .line 337
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 338
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V

    goto :goto_2b
.end method

.method private loadFollowings()V
    .locals 4

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    if-nez v0, :cond_9

    .line 281
    :cond_8
    :goto_8
    return-void

    .line 276
    :cond_9
    iget-wide v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 277
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadAllFollowings()V

    goto :goto_8

    .line 279
    :cond_15
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowingsByTag()V

    goto :goto_8
.end method

.method private loadFollowingsByTag()V
    .locals 10

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 394
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_2e

    .line 396
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v9

    .line 397
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J

    iget v4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    const/16 v5, 0x1e

    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v6

    const-string v8, "333.333"

    invoke-interface/range {v1 .. v9}, Lmybl/MyBiliApiService;->getFollowingsByTag(JIIJLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$4;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 447
    :goto_2d
    return-void

    .line 444
    :cond_2e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 445
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V

    goto :goto_2d
.end method

.method private loadTagList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 343
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isLoadingTags:Z

    if-eqz v0, :cond_6

    .line 389
    :goto_5
    return-void

    .line 347
    :cond_6
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isLoadingTags:Z

    .line 349
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_29

    .line 351
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 352
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    const-string v2, "333.333"

    invoke-interface {v0, v3, v2, v1}, Lmybl/MyBiliApiService;->getRelationTags(ZLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_5

    .line 387
    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isLoadingTags:Z

    goto :goto_5
.end method

.method private loadUperList()V
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x1

    .line 258
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadTagList()V

    .line 260
    iput-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J

    .line 261
    iput v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    .line 262
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    .line 263
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->needFocusFirstItem:Z

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    const-string v4, "\u5168\u90e8\u52a8\u6001"

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V

    .line 269
    return-void
.end method

.method private showTagFilterMenu()V
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->tagItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 478
    :goto_8
    return-void

    .line 454
    :cond_9
    new-instance v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->tagItems:Ljava/util/List;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;J)V

    .line 455
    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->setOnTagSelectedListener(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;)V

    .line 477
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->show()V

    goto :goto_8
.end method

.method private showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    .locals 5

    .prologue
    .line 534
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    if-ne v0, p1, :cond_5

    .line 551
    :goto_4
    return-void

    .line 538
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    .line 541
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->isAllDynamic()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 542
    const-wide/16 v0, -0x1

    const-string v2, "all"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    move-result-object v0

    .line 547
    :goto_18
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 548
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 549
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4

    .line 544
    :cond_2b
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getMid()J

    move-result-wide v0

    const-string v2, "uper"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getFace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    move-result-object v0

    goto :goto_18
.end method

.method private updateUperList()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 481
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    if-eqz v0, :cond_2f

    .line 482
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 483
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_47

    .line 486
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 491
    :goto_14
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    .line 492
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->d()V

    .line 494
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->needFocusFirstItem:Z

    if-eqz v3, :cond_49

    .line 495
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->needFocusFirstItem:Z

    .line 496
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$6;

    invoke-direct {v0, p0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$6;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    if-nez v0, :cond_46

    .line 529
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    .line 531
    :cond_46
    return-void

    :cond_47
    move v0, v1

    .line 488
    goto :goto_14

    .line 505
    :cond_49
    if-eq v0, v1, :cond_5c

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 506
    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$7;

    invoke-direct {v1, p0, v2, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$7;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Landroid/support/v7/widget/RecyclerView;I)V

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2f

    .line 525
    :cond_5c
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_2f
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 76
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u52a8\u6001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadUperList()V

    .line 78
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x13

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    if-nez v0, :cond_10

    .line 126
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 218
    :goto_f
    return v0

    .line 128
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 129
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 130
    if-nez v0, :cond_117

    .line 131
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 132
    if-nez v1, :cond_25

    .line 133
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f

    .line 137
    :cond_25
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 138
    instance-of v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    if-eqz v5, :cond_8c

    .line 139
    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    .line 140
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v5, :cond_60

    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v5}, Lcom/bilibili/tv/widget/DrawTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 141
    if-ne v4, v9, :cond_56

    .line 142
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_60

    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_60

    .line 143
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 144
    if-eqz v5, :cond_60

    .line 145
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 146
    goto :goto_f

    .line 149
    :cond_56
    const/16 v5, 0x15

    if-eq v4, v5, :cond_5e

    const/16 v5, 0x16

    if-ne v4, v5, :cond_60

    :cond_5e
    move v0, v2

    .line 150
    goto :goto_f

    .line 153
    :cond_60
    if-ne v4, v8, :cond_8c

    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_8c

    .line 154
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    .line 155
    if-eqz v5, :cond_8c

    .line 156
    iget-object v6, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v5

    .line 157
    if-ltz v5, :cond_8c

    const/4 v6, 0x2

    if-ge v5, v6, :cond_8c

    .line 158
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v5, :cond_8c

    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v5}, Lcom/bilibili/tv/widget/DrawTextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8c

    .line 159
    iget-object v0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    move v0, v2

    .line 160
    goto :goto_f

    .line 167
    :cond_8c
    sparse-switch v4, :sswitch_data_120

    .line 195
    :cond_8f
    :goto_8f
    if-ne v4, v9, :cond_102

    const/16 v0, 0x82

    .line 199
    :goto_93
    if-eq v0, v3, :cond_117

    .line 201
    :try_start_95
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_117

    .line 203
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_117

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 205
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 206
    instance-of v1, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    if-eqz v1, :cond_117

    .line 207
    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    .line 208
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->isLoading()Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b4} :catch_116

    move-result v0

    if-eqz v0, :cond_117

    move v0, v2

    .line 209
    goto/16 :goto_f

    .line 169
    :sswitch_ba
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v5, "right"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_8f

    .line 175
    :sswitch_d4
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 176
    if-nez v0, :cond_dd

    move v0, v2

    .line 177
    goto/16 :goto_f

    .line 179
    :cond_dd
    instance-of v5, v0, Lbl/adw;

    if-eqz v5, :cond_ec

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_ec

    move v0, v2

    .line 180
    goto/16 :goto_f

    .line 182
    :cond_ec
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_8f

    move-object v0, v1

    .line 183
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_8f

    .line 189
    :sswitch_fc
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showTagFilterMenu()V

    move v0, v2

    .line 190
    goto/16 :goto_f

    .line 196
    :cond_102
    if-ne v4, v8, :cond_107

    const/16 v0, 0x21

    goto :goto_93

    .line 197
    :cond_107
    const/16 v0, 0x15

    if-ne v4, v0, :cond_10e

    const/16 v0, 0x11

    goto :goto_93

    .line 198
    :cond_10e
    const/16 v0, 0x16

    if-ne v4, v0, :cond_11d

    const/16 v0, 0x42

    goto/16 :goto_93

    .line 214
    :catch_116
    move-exception v0

    .line 218
    :cond_117
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_f

    :cond_11d
    move v0, v3

    goto/16 :goto_93

    .line 167
    :sswitch_data_120
    .sparse-switch
        0x15 -> :sswitch_ba
        0x16 -> :sswitch_d4
        0x52 -> :sswitch_fc
    .end sparse-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0a008b

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 250
    const/4 v0, 0x0

    .line 252
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_7
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    .line 120
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 121
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 85
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    .line 86
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 87
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 114
    return-void
.end method
