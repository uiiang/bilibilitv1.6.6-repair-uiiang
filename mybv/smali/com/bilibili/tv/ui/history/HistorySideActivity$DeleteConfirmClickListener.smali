.class Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;
.super Ljava/lang/Object;
.source "HistorySideActivity.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistorySideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteConfirmClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity;


# direct methods
.method private constructor <init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;Lcom/bilibili/tv/ui/history/HistorySideActivity$1;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;-><init>(Lcom/bilibili/tv/ui/history/HistorySideActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$DeleteConfirmClickListener;->this$0:Lcom/bilibili/tv/ui/history/HistorySideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 225
    instance-of v1, v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    if-eqz v1, :cond_f

    .line 226
    check-cast v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->deleteCurrentHistory()V

    .line 228
    :cond_f
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 229
    return-void
.end method
