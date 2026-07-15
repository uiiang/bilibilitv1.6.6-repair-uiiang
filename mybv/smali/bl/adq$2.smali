.class Lbl/adq$2;
.super Ljava/lang/Object;
.source "adq.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/adq;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/adq;

.field final synthetic val$finalRid:I


# direct methods
.method constructor <init>(Lbl/adq;I)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lbl/adq$2;->this$0:Lbl/adq;

    iput p2, p0, Lbl/adq$2;->val$finalRid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 395
    :try_start_0
    const-string v0, "AreaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[n()] Thread started, finalRid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/adq$2;->val$finalRid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget v0, p0, Lbl/adq$2;->val$finalRid:I

    invoke-static {v0}, Lmybl/RankingRequest;->getRanking(I)Ljava/util/List;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 400
    iget-object v1, p0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v1}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lbl/adq$2$1;

    invoke-direct {v2, p0, v0}, Lbl/adq$2$1;-><init>(Lbl/adq$2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 436
    :cond_36
    :goto_36
    return-void

    .line 424
    :catch_37
    move-exception v0

    .line 425
    const-string v1, "AreaFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[n()] Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    iget-object v0, p0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 427
    iget-object v0, p0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lbl/adq$2$2;

    invoke-direct {v1, p0}, Lbl/adq$2$2;-><init>(Lbl/adq$2;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_36
.end method
