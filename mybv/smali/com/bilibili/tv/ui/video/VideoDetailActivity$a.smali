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
    .line 4991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4992
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 4995
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;-><init>()V

    .line 4996
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 5003
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5004
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5005
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5006
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5007
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5008
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 5012
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5013
    const-string v0, "seasonId"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5014
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5015
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5016
    const-string v2, "bundle_season_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5017
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5018
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4999
    const-string v0, "bundle_ac_id"

    return-object v0
.end method

.method public final aForSeason(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 5022
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5023
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5024
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5025
    const-string v2, "bundle_season_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5026
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5027
    return-object v0
.end method
