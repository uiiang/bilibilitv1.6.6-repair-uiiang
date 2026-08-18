.class Lmybl/WbiSigner$1;
.super Ljava/lang/Object;
.source "WbiSigner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/WbiSigner;->getMixinKeyAsync(Lmybl/WbiSigner$WbiKeyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/WbiSigner;

.field final synthetic val$callback:Lmybl/WbiSigner$WbiKeyCallback;


# direct methods
.method constructor <init>(Lmybl/WbiSigner;Lmybl/WbiSigner$WbiKeyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lmybl/WbiSigner$1;->this$0:Lmybl/WbiSigner;

    iput-object p2, p0, Lmybl/WbiSigner$1;->val$callback:Lmybl/WbiSigner$WbiKeyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lmybl/WbiSigner$1;->this$0:Lmybl/WbiSigner;

    invoke-virtual {v0}, Lmybl/WbiSigner;->updateKeysBlocking()Z

    move-result v0

    .line 57
    if-eqz v0, :cond_1f

    iget-object v0, p0, Lmybl/WbiSigner$1;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;
    invoke-static {v0}, Lmybl/WbiSigner;->access$000(Lmybl/WbiSigner;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 58
    iget-object v0, p0, Lmybl/WbiSigner$1;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmybl/WbiSigner;->access$100(Lmybl/WbiSigner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmybl/WbiSigner$1$1;

    invoke-direct {v1, p0}, Lmybl/WbiSigner$1$1;-><init>(Lmybl/WbiSigner$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :goto_1e
    return-void

    .line 65
    :cond_1f
    iget-object v0, p0, Lmybl/WbiSigner$1;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmybl/WbiSigner;->access$100(Lmybl/WbiSigner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmybl/WbiSigner$1$2;

    invoke-direct {v1, p0}, Lmybl/WbiSigner$1$2;-><init>(Lmybl/WbiSigner$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method
