.class Lcom/bilibili/tv/ui/history/HistorySideActivity$1;
.super Ljava/lang/Object;
.source "HistorySideActivity.java"

# interfaces
.implements Lbl/MoreActionKeyHandler$Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistorySideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    sget-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    sget v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    if-ltz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$1;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity;

    # invokes: Lcom/bilibili/tv/ui/history/HistorySideActivity;->showDeleteConfirmDialog()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->access$000(Lcom/bilibili/tv/ui/history/HistorySideActivity;)V

    .line 105
    :cond_11
    return-void
.end method
