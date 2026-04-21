.class Lbl/xj$1$1;
.super Ljava/lang/Object;
.source "xj.java"

# interfaces
.implements Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xj$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xj$1;


# direct methods
.method constructor <init>(Lbl/xj$1;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lbl/xj$1$1;->this$1:Lbl/xj$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayInfoFailed(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 105
    const-string v0, "xj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlayInfo failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onPlayInfoReady(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lbl/xj$1$1;->this$1:Lbl/xj$1;

    iget-object v0, v0, Lbl/xj$1;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    .line 94
    iget-object v0, p0, Lbl/xj$1$1;->this$1:Lbl/xj$1;

    iget-object v0, v0, Lbl/xj$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lbl/xj$1$1$1;

    invoke-direct {v1, p0, p1}, Lbl/xj$1$1$1;-><init>(Lbl/xj$1$1;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    :cond_12
    return-void
.end method
