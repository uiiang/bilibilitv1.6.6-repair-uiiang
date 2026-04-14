.class Lbl/xj$1;
.super Ljava/lang/Object;
.source "xj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xj;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xj;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finalParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;


# direct methods
.method constructor <init>(Lbl/xj;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lbl/xj$1;->this$0:Lbl/xj;

    iput-object p2, p0, Lbl/xj$1;->val$finalParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput-object p3, p0, Lbl/xj$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lbl/xj$1;->val$finalParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    new-instance v1, Lbl/xj$1$1;

    invoke-direct {v1, p0}, Lbl/xj$1$1;-><init>(Lbl/xj$1;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->initPlayInfo(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 106
    :goto_a
    return-void

    .line 103
    :catch_b
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method
