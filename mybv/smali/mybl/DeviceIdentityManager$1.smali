.class Lmybl/DeviceIdentityManager$1;
.super Ljava/lang/Object;
.source "DeviceIdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/DeviceIdentityManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/DeviceIdentityManager;


# direct methods
.method constructor <init>(Lmybl/DeviceIdentityManager;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lmybl/DeviceIdentityManager$1;->this$0:Lmybl/DeviceIdentityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lmybl/DeviceIdentityManager$1;->this$0:Lmybl/DeviceIdentityManager;

    # invokes: Lmybl/DeviceIdentityManager;->refreshFromNetwork()V
    invoke-static {v0}, Lmybl/DeviceIdentityManager;->access$000(Lmybl/DeviceIdentityManager;)V

    .line 80
    const-string v0, "DeviceIdentity"

    const-string v1, "Device identity refreshed from network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 84
    :goto_c
    return-void

    .line 81
    :catch_d
    move-exception v0

    .line 82
    const-string v1, "DeviceIdentity"

    const-string v2, "Error refreshing device identity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
