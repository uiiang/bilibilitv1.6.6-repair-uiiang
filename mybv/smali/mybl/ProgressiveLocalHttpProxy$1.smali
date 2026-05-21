.class Lmybl/ProgressiveLocalHttpProxy$1;
.super Ljava/lang/Object;
.source "ProgressiveLocalHttpProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/ProgressiveLocalHttpProxy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/ProgressiveLocalHttpProxy;


# direct methods
.method constructor <init>(Lmybl/ProgressiveLocalHttpProxy;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lmybl/ProgressiveLocalHttpProxy$1;->this$0:Lmybl/ProgressiveLocalHttpProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmybl/ProgressiveLocalHttpProxy$1;->this$0:Lmybl/ProgressiveLocalHttpProxy;

    # invokes: Lmybl/ProgressiveLocalHttpProxy;->acceptConnections()V
    invoke-static {v0}, Lmybl/ProgressiveLocalHttpProxy;->access$000(Lmybl/ProgressiveLocalHttpProxy;)V

    .line 39
    return-void
.end method
