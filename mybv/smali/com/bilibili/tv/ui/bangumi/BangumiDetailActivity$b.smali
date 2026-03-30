.class public final Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "BangumiDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    .line 1259
    invoke-direct {p0, p3}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1260
    const-string v0, "fm"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1261
    iput-object p2, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    .line 1262
    iput-object p4, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->b:Ljava/util/List;

    .line 1263
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->b:Ljava/util/List;

    .line 1277
    if-eqz v0, :cond_9

    .line 1278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1280
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->b:Ljava/util/List;

    .line 1268
    if-nez v0, :cond_7

    .line 1269
    invoke-static {}, Lbl/bbi;->a()V

    .line 1271
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    invoke-static {v0}, Lbl/ads;->b(Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 1286
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    .line 1287
    if-nez v0, :cond_17

    .line 1288
    invoke-static {}, Lbl/bbi;->a()V

    .line 1290
    :cond_17
    const/4 v1, 0x1

    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_d5

    .line 1291
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    .line 1292
    if-nez v0, :cond_2b

    .line 1293
    invoke-static {}, Lbl/bbi;->a()V

    .line 1295
    :cond_2b
    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lbl/abx;->a(I)I

    move-result v0

    .line 1296
    mul-int v2, p1, v0

    .line 1297
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 1298
    if-nez v1, :cond_42

    .line 1299
    invoke-static {}, Lbl/bbi;->a()V

    .line 1301
    :cond_42
    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d2

    .line 1302
    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 1303
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v1

    .line 1304
    if-nez v1, :cond_5a

    .line 1305
    invoke-static {}, Lbl/bbi;->a()V

    .line 1307
    :cond_5a
    iget-object v1, v1, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e7

    .line 1308
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    .line 1309
    if-nez v0, :cond_6d

    .line 1310
    invoke-static {}, Lbl/bbi;->a()V

    .line 1312
    :cond_6d
    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 1314
    :goto_76
    if-ne v2, v1, :cond_93

    .line 1315
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    .line 1316
    if-nez v0, :cond_83

    .line 1317
    invoke-static {}, Lbl/bbi;->a()V

    .line 1319
    :cond_83
    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;

    iget-object v0, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    .line 1320
    const-string v1, "mSeason!!.episodes[start].index"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1343
    :goto_92
    return-object v0

    .line 1323
    :cond_93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1324
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    .line 1325
    if-nez v0, :cond_a3

    .line 1326
    invoke-static {}, Lbl/bbi;->a()V

    .line 1328
    :cond_a3
    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;

    iget-object v0, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->A:Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;
    invoke-static {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;)Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;

    move-result-object v0

    .line 1331
    if-nez v0, :cond_c0

    .line 1332
    invoke-static {}, Lbl/bbi;->a()V

    .line 1334
    :cond_c0
    iget-object v0, v0, Lcom/bilibili/bangumi/api/uniform/BangumiUniformSeason;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;

    iget-object v0, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    .line 1337
    :cond_d2
    const-string v0, ""

    goto :goto_92

    .line 1339
    :cond_d5
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$b;->a:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1340
    const-string v1, "getString(R.string.bangumi_one_episode)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_92

    .line 1343
    :cond_e4
    const-string v0, ""

    goto :goto_92

    :cond_e7
    move v1, v0

    goto :goto_76
.end method
