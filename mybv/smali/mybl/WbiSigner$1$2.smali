.class Lmybl/WbiSigner$1$2;
.super Ljava/lang/Object;
.source "WbiSigner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/WbiSigner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmybl/WbiSigner$1;


# direct methods
.method constructor <init>(Lmybl/WbiSigner$1;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmybl/WbiSigner$1$2;->this$1:Lmybl/WbiSigner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lmybl/WbiSigner$1$2;->this$1:Lmybl/WbiSigner$1;

    iget-object v0, v0, Lmybl/WbiSigner$1;->val$callback:Lmybl/WbiSigner$WbiKeyCallback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to update WBI keys"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmybl/WbiSigner$WbiKeyCallback;->onError(Ljava/lang/Exception;)V

    .line 69
    return-void
.end method
