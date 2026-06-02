.class public final Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;
.super Ljava/lang/Object;
.source "BangumiEpisodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;IIIIZ)Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            ">;",
            "Ljava/lang/String;",
            "IIIIZ)",
            "Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIIIZ)Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIZ)",
            "Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;"
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "episodes"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v0, "seasonId"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v1, "bundle_episodes"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    const-string v1, "bundle_season_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "bundle_season_title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "bundle_pos"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v1, "bundle_season_type"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v1, "bundle_start"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "bundle_end"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v1, "bundle_is_paid"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    new-instance v1, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;-><init>()V

    .line 79
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method
