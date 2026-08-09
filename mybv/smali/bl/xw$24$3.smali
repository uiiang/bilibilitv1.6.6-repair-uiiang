.class Lbl/xw$24$3;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$24;

.field final synthetic val$finalException:Ljava/lang/Exception;

.field final synthetic val$finalFragment:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw$24;Lbl/xw;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 2449
    iput-object p1, p0, Lbl/xw$24$3;->this$1:Lbl/xw$24;

    iput-object p2, p0, Lbl/xw$24$3;->val$finalFragment:Lbl/xw;

    iput-object p3, p0, Lbl/xw$24$3;->val$finalException:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2452
    iget-object v0, p0, Lbl/xw$24$3;->val$finalFragment:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2453
    iget-object v0, p0, Lbl/xw$24$3;->val$finalFragment:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u6790\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$24$3;->val$finalException:Ljava/lang/Exception;

    .line 2454
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2453
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2455
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2457
    :cond_2f
    return-void
.end method
