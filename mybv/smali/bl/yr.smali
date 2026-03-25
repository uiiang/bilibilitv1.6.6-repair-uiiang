.class public Lbl/yr;
.super Ljava/lang/Object;
.source "yr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mExtraStorage:Landroid/os/Bundle;

    const-string v1, "player_params_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bilibili/tv/player/basic/context/PlayerParams;I)V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mExtraStorage:Landroid/os/Bundle;

    const-string v1, "player_params_season_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    return-void
.end method

.method public static a(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mExtraStorage:Landroid/os/Bundle;

    const-string v1, "player_params_cover"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static b(Lcom/bilibili/tv/player/basic/context/PlayerParams;)I
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mExtraStorage:Landroid/os/Bundle;

    const-string v1, "player_params_season_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mExtraStorage:Landroid/os/Bundle;

    const-string v1, "player_params_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static c(Lcom/bilibili/tv/player/basic/context/PlayerParams;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mExtraStorage:Landroid/os/Bundle;

    const-string v1, "player_params_author"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static d(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mExtraStorage:Landroid/os/Bundle;

    const-string v1, "player_params_cover"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
