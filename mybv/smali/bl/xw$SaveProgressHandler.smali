.class Lbl/xw$SaveProgressHandler;
.super Landroid/os/Handler;
.source "xw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/xw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveProgressHandler"
.end annotation


# instance fields
.field private fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbl/xw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/xw$SaveProgressHandler;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lbl/xw$SaveProgressHandler;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/xw;

    .line 85
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 86
    # invokes: Lbl/xw;->saveReadingProgress()V
    invoke-static {v0}, Lbl/xw;->access$000(Lbl/xw;)V

    .line 88
    :cond_13
    return-void
.end method
