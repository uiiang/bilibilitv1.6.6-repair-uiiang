.class Lbl/MoreActionKeyHandler$1;
.super Ljava/lang/Object;
.source "MoreActionKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/MoreActionKeyHandler;->handle(Landroid/view/KeyEvent;Lbl/MoreActionKeyHandler$Trigger;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/MoreActionKeyHandler;


# direct methods
.method constructor <init>(Lbl/MoreActionKeyHandler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lbl/MoreActionKeyHandler$1;->this$0:Lbl/MoreActionKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lbl/MoreActionKeyHandler$1;->this$0:Lbl/MoreActionKeyHandler;

    const/4 v1, 0x1

    # setter for: Lbl/MoreActionKeyHandler;->fired:Z
    invoke-static {v0, v1}, Lbl/MoreActionKeyHandler;->access$002(Lbl/MoreActionKeyHandler;Z)Z

    .line 51
    iget-object v0, p0, Lbl/MoreActionKeyHandler$1;->this$0:Lbl/MoreActionKeyHandler;

    # getter for: Lbl/MoreActionKeyHandler;->trigger:Lbl/MoreActionKeyHandler$Trigger;
    invoke-static {v0}, Lbl/MoreActionKeyHandler;->access$100(Lbl/MoreActionKeyHandler;)Lbl/MoreActionKeyHandler$Trigger;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 52
    iget-object v0, p0, Lbl/MoreActionKeyHandler$1;->this$0:Lbl/MoreActionKeyHandler;

    # getter for: Lbl/MoreActionKeyHandler;->trigger:Lbl/MoreActionKeyHandler$Trigger;
    invoke-static {v0}, Lbl/MoreActionKeyHandler;->access$100(Lbl/MoreActionKeyHandler;)Lbl/MoreActionKeyHandler$Trigger;

    move-result-object v0

    invoke-interface {v0}, Lbl/MoreActionKeyHandler$Trigger;->run()V

    .line 54
    :cond_17
    return-void
.end method
