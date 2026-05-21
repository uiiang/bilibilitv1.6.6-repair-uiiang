.class Lmybl/ProgressiveLocalHttpProxy$2;
.super Ljava/lang/Object;
.source "ProgressiveLocalHttpProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/ProgressiveLocalHttpProxy;->acceptConnections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/ProgressiveLocalHttpProxy;

.field final synthetic val$clientSocket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lmybl/ProgressiveLocalHttpProxy;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lmybl/ProgressiveLocalHttpProxy$2;->this$0:Lmybl/ProgressiveLocalHttpProxy;

    iput-object p2, p0, Lmybl/ProgressiveLocalHttpProxy$2;->val$clientSocket:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy$2;->this$0:Lmybl/ProgressiveLocalHttpProxy;

    iget-object v1, p0, Lmybl/ProgressiveLocalHttpProxy$2;->val$clientSocket:Ljava/net/Socket;

    # invokes: Lmybl/ProgressiveLocalHttpProxy;->handleClient(Ljava/net/Socket;)V
    invoke-static {v0, v1}, Lmybl/ProgressiveLocalHttpProxy;->access$100(Lmybl/ProgressiveLocalHttpProxy;Ljava/net/Socket;)V

    .line 94
    return-void
.end method
