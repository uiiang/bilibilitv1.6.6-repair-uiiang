.class Lmybl/DeviceIdentityManager$2;
.super Ljava/lang/Object;
.source "DeviceIdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/DeviceIdentityManager;->initAsync(Landroid/content/Context;Lmybl/DeviceIdentityManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/DeviceIdentityManager;

.field final synthetic val$callback:Lmybl/DeviceIdentityManager$InitCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmybl/DeviceIdentityManager;Landroid/content/Context;Lmybl/DeviceIdentityManager$InitCallback;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    iput-object p2, p0, Lmybl/DeviceIdentityManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lmybl/DeviceIdentityManager$2;->val$callback:Lmybl/DeviceIdentityManager$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 94
    :try_start_1
    iget-object v0, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    iget-object v2, p0, Lmybl/DeviceIdentityManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lmybl/DeviceIdentityManager;->init(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x0

    .line 97
    iget-object v2, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;
    invoke-static {v2}, Lmybl/DeviceIdentityManager;->access$100(Lmybl/DeviceIdentityManager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->buvid3:Ljava/lang/String;
    invoke-static {v2}, Lmybl/DeviceIdentityManager;->access$100(Lmybl/DeviceIdentityManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;
    invoke-static {v2}, Lmybl/DeviceIdentityManager;->access$200(Lmybl/DeviceIdentityManager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->buvid4:Ljava/lang/String;
    invoke-static {v2}, Lmybl/DeviceIdentityManager;->access$200(Lmybl/DeviceIdentityManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_31
    move v0, v1

    .line 100
    :cond_32
    iget-object v2, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;
    invoke-static {v2}, Lmybl/DeviceIdentityManager;->access$300(Lmybl/DeviceIdentityManager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->biliTicket:Ljava/lang/String;
    invoke-static {v2}, Lmybl/DeviceIdentityManager;->access$300(Lmybl/DeviceIdentityManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->biliTicketExpire:J
    invoke-static {v4}, Lmybl/DeviceIdentityManager;->access$400(Lmybl/DeviceIdentityManager;)J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_59

    :cond_58
    move v0, v1

    .line 105
    :cond_59
    if-eqz v0, :cond_60

    .line 106
    iget-object v0, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # invokes: Lmybl/DeviceIdentityManager;->refreshFromNetwork()V
    invoke-static {v0}, Lmybl/DeviceIdentityManager;->access$000(Lmybl/DeviceIdentityManager;)V

    .line 109
    :cond_60
    iget-object v0, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmybl/DeviceIdentityManager;->access$500(Lmybl/DeviceIdentityManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmybl/DeviceIdentityManager$2$1;

    invoke-direct {v1, p0}, Lmybl/DeviceIdentityManager$2$1;-><init>(Lmybl/DeviceIdentityManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_6f

    .line 124
    :goto_6e
    return-void

    .line 115
    :catch_6f
    move-exception v0

    .line 116
    const-string v1, "DeviceIdentity"

    const-string v2, "Init error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    iget-object v1, p0, Lmybl/DeviceIdentityManager$2;->this$0:Lmybl/DeviceIdentityManager;

    # getter for: Lmybl/DeviceIdentityManager;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmybl/DeviceIdentityManager;->access$500(Lmybl/DeviceIdentityManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lmybl/DeviceIdentityManager$2$2;

    invoke-direct {v2, p0, v0}, Lmybl/DeviceIdentityManager$2$2;-><init>(Lmybl/DeviceIdentityManager$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6e
.end method
