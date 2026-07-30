.class Lbl/xw$34;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->scheduleSaveReadingProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 0

    .prologue
    .line 4016
    iput-object p1, p0, Lbl/xw$34;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4019
    iget-object v0, p0, Lbl/xw$34;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->saveReadingProgress()V
    invoke-static {v0}, Lbl/xw;->access$3700(Lbl/xw;)V

    .line 4020
    iget-object v0, p0, Lbl/xw$34;->this$0:Lbl/xw;

    const/4 v1, 0x0

    # setter for: Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lbl/xw;->access$3802(Lbl/xw;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4021
    return-void
.end method
