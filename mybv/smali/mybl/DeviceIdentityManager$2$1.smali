.class Lmybl/DeviceIdentityManager$2$1;
.super Ljava/lang/Object;
.source "DeviceIdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/DeviceIdentityManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmybl/DeviceIdentityManager$2;


# direct methods
.method constructor <init>(Lmybl/DeviceIdentityManager$2;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lmybl/DeviceIdentityManager$2$1;->this$1:Lmybl/DeviceIdentityManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmybl/DeviceIdentityManager$2$1;->this$1:Lmybl/DeviceIdentityManager$2;

    iget-object v0, v0, Lmybl/DeviceIdentityManager$2;->val$callback:Lmybl/DeviceIdentityManager$InitCallback;

    invoke-interface {v0}, Lmybl/DeviceIdentityManager$InitCallback;->onSuccess()V

    .line 113
    return-void
.end method
