.class public final Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4581
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 4584
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;-><init>()V

    .line 4585
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 4592
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4593
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4594
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4595
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4596
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4597
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 4601
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4602
    const-string v0, "seasonId"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4603
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4604
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4605
    const-string v2, "bundle_season_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4606
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4607
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4588
    const-string v0, "bundle_ac_id"

    return-object v0
.end method

.method public final aForSeason(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 4611
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4612
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4613
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4614
    const-string v2, "bundle_season_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4615
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4616
    return-object v0
.end method
