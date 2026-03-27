.class Lmybl/DeviceIdentityManager$3;
.super Ljava/lang/Object;
.source "DeviceIdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/DeviceIdentityManager;->refreshBiliTicketAsync()V
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
    .line 216
    iput-object p1, p0, Lmybl/DeviceIdentityManager$3;->this$0:Lmybl/DeviceIdentityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lmybl/DeviceIdentityManager$3;->this$0:Lmybl/DeviceIdentityManager;

    # invokes: Lmybl/DeviceIdentityManager;->fetchBiliTicket()V
    invoke-static {v0}, Lmybl/DeviceIdentityManager;->access$600(Lmybl/DeviceIdentityManager;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 224
    :goto_5
    return-void

    .line 221
    :catch_6
    move-exception v0

    .line 222
    const-string v1, "DeviceIdentity"

    const-string v2, "Error refreshing bili_ticket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
