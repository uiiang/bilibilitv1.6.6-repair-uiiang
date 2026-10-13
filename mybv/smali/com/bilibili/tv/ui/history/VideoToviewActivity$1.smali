.class Lcom/bilibili/tv/ui/history/VideoToviewActivity$1;
.super Ljava/lang/Object;
.source "VideoToviewActivity.java"

# interfaces
.implements Lbl/MoreActionKeyHandler$Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/VideoToviewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$1;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 260
    sget-wide v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_avid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_47

    sget v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_pos:I

    if-ltz v0, :cond_47

    .line 261
    new-instance v0, Lbl/agb$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$1;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    invoke-direct {v0, v1}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const-string v2, "\u786e\u8ba4\u5220\u9664\u8be5\u6761\u8bb0\u5f55\uff1f"

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$1;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    const v3, 0x7f0c0079

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;

    iget-object v4, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$1;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    invoke-direct {v3, v4}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;-><init>(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$1;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    const v3, 0x7f0c0076

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/tv/ui/history/VideoToviewActivity$CancelButton;->a:Lcom/bilibili/tv/ui/history/VideoToviewActivity$CancelButton;

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 263
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 265
    :cond_47
    return-void
.end method
