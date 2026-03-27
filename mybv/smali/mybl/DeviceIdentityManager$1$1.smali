.class Lmybl/DeviceIdentityManager$1$1;
.super Ljava/lang/Object;
.source "DeviceIdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/DeviceIdentityManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmybl/DeviceIdentityManager$1;


# direct methods
.method constructor <init>(Lmybl/DeviceIdentityManager$1;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmybl/DeviceIdentityManager$1$1;->this$1:Lmybl/DeviceIdentityManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmybl/DeviceIdentityManager$1$1;->this$1:Lmybl/DeviceIdentityManager$1;

    iget-object v0, v0, Lmybl/DeviceIdentityManager$1;->val$callback:Lmybl/DeviceIdentityManager$InitCallback;

    invoke-interface {v0}, Lmybl/DeviceIdentityManager$InitCallback;->onSuccess()V

    .line 95
    return-void
.end method
