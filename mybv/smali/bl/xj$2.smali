.class Lbl/xj$2;
.super Ljava/lang/Object;
.source "xj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xj;->checkSkip(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xj;

.field final synthetic val$finalXl:Lbl/xl;


# direct methods
.method constructor <init>(Lbl/xj;Lbl/xl;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lbl/xj$2;->this$0:Lbl/xj;

    iput-object p2, p0, Lbl/xj$2;->val$finalXl:Lbl/xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "SkipDebug"

    const-string v1, "Calling onCompletion for outro skip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lbl/xj$2;->val$finalXl:Lbl/xl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbl/xl;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 210
    return-void
.end method
