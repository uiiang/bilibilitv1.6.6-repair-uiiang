.class Lmybl/WbiSigner$1$1;
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
    .line 61
    iput-object p1, p0, Lmybl/WbiSigner$1$1;->this$1:Lmybl/WbiSigner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lmybl/WbiSigner$1$1;->this$1:Lmybl/WbiSigner$1;

    iget-object v0, v0, Lmybl/WbiSigner$1;->val$callback:Lmybl/WbiSigner$WbiKeyCallback;

    iget-object v1, p0, Lmybl/WbiSigner$1$1;->this$1:Lmybl/WbiSigner$1;

    iget-object v1, v1, Lmybl/WbiSigner$1;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;
    invoke-static {v1}, Lmybl/WbiSigner;->access$000(Lmybl/WbiSigner;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmybl/WbiSigner$WbiKeyCallback;->onKeysReady(Ljava/lang/String;)V

    .line 65
    return-void
.end method
