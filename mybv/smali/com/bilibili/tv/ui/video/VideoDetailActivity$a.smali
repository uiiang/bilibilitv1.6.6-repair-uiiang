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
    .line 5111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5112
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 5115
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;-><init>()V

    .line 5116
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 5123
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5126
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5127
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5128
    return-object v0
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 5164
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5166
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5167
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5168
    if-eqz p4, :cond_1f

    .line 5169
    const-string v2, "preload_cover"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5171
    :cond_1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5172
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 5132
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5133
    const-string v0, "seasonId"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5136
    const-string v2, "bundle_season_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5138
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 5142
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5143
    const-string v0, "seasonId"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5145
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5146
    const-string v2, "bundle_season_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5147
    if-eqz p3, :cond_22

    .line 5148
    const-string v2, "preload_cover"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5150
    :cond_22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5151
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5119
    const-string v0, "bundle_ac_id"

    return-object v0
.end method

.method public final aForSeason(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 5155
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5158
    const-string v2, "bundle_season_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5160
    return-object v0
.end method
