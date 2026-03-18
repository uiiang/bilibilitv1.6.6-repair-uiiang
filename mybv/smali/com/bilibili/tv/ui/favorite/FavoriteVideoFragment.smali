.class public final Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
.super Lbl/ady;
.source "FavoriteVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$e;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;

.field private static final i:Ljava/lang/String; = "FavoriteVideoFragment"

.field private static final j:I = 0x2


# instance fields
.field private c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

.field private d:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;

.field private e:Z

.field private f:I

.field private fid:J

.field private folderId:J

.field private folderType:I

.field private g:Z

.field private h:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/widget/LinearLayout;

.field private headerTitle:Landroid/widget/TextView;

.field private hintSort:Landroid/widget/TextView;

.field private mid:J

.field private sortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->Companion:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 60
    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 61
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    .line 72
    const-string v0, "mtime"

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->e:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->e:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    return v0
.end method

.method static synthetic access$408(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    return v0
.end method

.method private loadCollectionVideos()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 365
    iget-wide v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->fid:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3c

    iget-wide v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->mid:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3c

    .line 366
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 367
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->mid:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->fid:J

    iget v10, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    move-object v9, v8

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;-><init>(JJJLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v11, v1}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->getFavoriteSearchedVideoList(Ljava/lang/String;Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 369
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 483
    :goto_3b
    return-void

    .line 414
    :cond_3c
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    iget v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    const/16 v4, 0x14

    .line 415
    invoke-interface {v0, v2, v3, v1, v4}, Lmybl/MyBiliApiService;->getFavoriteUserSeason(JII)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 416
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_3b
.end method

.method private loadCourseVideos()V
    .locals 4

    .prologue
    .line 486
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 487
    invoke-interface {v0, v2, v3}, Lmybl/MyBiliApiService;->getPugvSeason(J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$4;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 488
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 534
    return-void
.end method

.method private loadVideoFavoriteVideos()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_5f

    .line 302
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 303
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 304
    if-eqz v1, :cond_5f

    if-eqz v0, :cond_5f

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://space.bilibili.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/favlist?fid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ftype=create"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 307
    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    iget v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    const/16 v5, 0x28

    const-string v6, ""

    iget-object v7, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    const-string v10, "web"

    const-string v11, "333.1387"

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v12

    move v9, v8

    invoke-interface/range {v1 .. v13}, Lmybl/MyBiliApiService;->getFavoriteResourceList(JIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 308
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 362
    :cond_5f
    return-void
.end method

.method public static newInstance(JI)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;-><init>()V

    .line 90
    iput-wide p0, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 91
    iput p2, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    .line 92
    return-object v0
.end method

.method public static newInstance(JIJJ)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;-><init>()V

    .line 97
    iput-wide p0, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 98
    iput p2, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    .line 99
    iput-wide p3, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->fid:J

    .line 100
    iput-wide p5, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->mid:J

    .line 101
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 158
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 160
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 161
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 162
    if-nez v0, :cond_20

    .line 163
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.favorite.FavoriteSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_20
    new-instance v2, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 168
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 169
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 170
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 171
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 172
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 173
    new-instance v3, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 174
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 175
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 177
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->i()V

    .line 178
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->d:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;

    .line 179
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->b()V

    .line 180
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 286
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    packed-switch v0, :pswitch_data_16

    .line 297
    :goto_8
    return-void

    .line 288
    :pswitch_9
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadVideoFavoriteVideos()V

    goto :goto_8

    .line 291
    :pswitch_d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCollectionVideos()V

    goto :goto_8

    .line 294
    :pswitch_11
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCourseVideos()V

    goto :goto_8

    .line 286
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    if-eqz v0, :cond_19

    .line 258
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 259
    if-nez v0, :cond_11

    .line 260
    invoke-static {}, Lbl/bbi;->a()V

    .line 262
    :cond_11
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a()I

    move-result v0

    if-lez v0, :cond_19

    .line 263
    const/4 v0, 0x1

    .line 266
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 152
    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 153
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    .line 154
    return-void
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 280
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->b()V

    .line 281
    return-void
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    return-wide v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return v0
.end method

.method public isVideoFavoriteMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 144
    iget v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 106
    const v0, 0x7f0a008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    const v0, 0x7f080199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 108
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f08019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 112
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 113
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    move-object v0, v1

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 272
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;

    iput-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->d:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$b;

    .line 273
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 274
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 137
    :cond_8
    :goto_8
    return-void

    .line 132
    :cond_9
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    if-eqz v0, :cond_8

    .line 134
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->d_()V

    goto :goto_8
.end method

.method public updateHeaderInfo(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 118
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    if-lez p2, :cond_29

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u89c6\u9891"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_39

    .line 124
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_39
    return-void

    .line 124
    :cond_3a
    const/16 v0, 0x8

    goto :goto_36
.end method
