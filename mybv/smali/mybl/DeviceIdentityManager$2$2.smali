.class Lmybl/DeviceIdentityManager$2$2;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lmybl/DeviceIdentityManager$2;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lmybl/DeviceIdentityManager$2$2;->this$1:Lmybl/DeviceIdentityManager$2;

    iput-object p2, p0, Lmybl/DeviceIdentityManager$2$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lmybl/DeviceIdentityManager$2$2;->this$1:Lmybl/DeviceIdentityManager$2;

    iget-object v0, v0, Lmybl/DeviceIdentityManager$2;->val$callback:Lmybl/DeviceIdentityManager$InitCallback;

    iget-object v1, p0, Lmybl/DeviceIdentityManager$2$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lmybl/DeviceIdentityManager$InitCallback;->onError(Ljava/lang/Exception;)V

    .line 121
    return-void
.end method
