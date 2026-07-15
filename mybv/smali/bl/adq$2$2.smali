.class Lbl/adq$2$2;
.super Ljava/lang/Object;
.source "adq.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/adq$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/adq$2;


# direct methods
.method constructor <init>(Lbl/adq$2;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lbl/adq$2$2;->this$1:Lbl/adq$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lbl/adq$2$2;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    const/4 v1, 0x0

    # setter for: Lbl/adq;->k:Z
    invoke-static {v0, v1}, Lbl/adq;->access$202(Lbl/adq;Z)Z

    .line 431
    iget-object v0, p0, Lbl/adq$2$2;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->k()V

    .line 432
    return-void
.end method
