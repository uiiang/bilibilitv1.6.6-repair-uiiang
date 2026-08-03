.class Lbl/xw$36;
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
    .line 4205
    iput-object p1, p0, Lbl/xw$36;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4208
    iget-object v0, p0, Lbl/xw$36;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->saveReadingProgress()V
    invoke-static {v0}, Lbl/xw;->access$3800(Lbl/xw;)V

    .line 4209
    iget-object v0, p0, Lbl/xw$36;->this$0:Lbl/xw;

    const/4 v1, 0x0

    # setter for: Lbl/xw;->saveProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lbl/xw;->access$3902(Lbl/xw;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4210
    return-void
.end method
