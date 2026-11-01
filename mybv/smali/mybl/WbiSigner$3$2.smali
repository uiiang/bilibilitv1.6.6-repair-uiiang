.class Lmybl/WbiSigner$3$2;
.super Ljava/lang/Object;
.source "WbiSigner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/WbiSigner$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmybl/WbiSigner$3;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmybl/WbiSigner$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lmybl/WbiSigner$3$2;->this$1:Lmybl/WbiSigner$3;

    iput-object p2, p0, Lmybl/WbiSigner$3$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lmybl/WbiSigner$3$2;->this$1:Lmybl/WbiSigner$3;

    iget-object v0, v0, Lmybl/WbiSigner$3;->val$callback:Lmybl/WbiSigner$WbiSignCallback;

    iget-object v1, p0, Lmybl/WbiSigner$3$2;->val$query:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmybl/WbiSigner$WbiSignCallback;->onSignReady(Ljava/lang/String;)V

    .line 188
    return-void
.end method
