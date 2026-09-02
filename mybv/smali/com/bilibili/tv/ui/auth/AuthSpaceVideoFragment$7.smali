.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;
.super Lbl/vn;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->createLocateCallback(II[I[Lcom/alibaba/fastjson/JSONObject;)Lbl/vn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

.field final synthetic val$gen:I

.field final synthetic val$pending:[I

.field final synthetic val$results:[Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I[Lcom/alibaba/fastjson/JSONObject;I[I)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$slot:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$results:[Lcom/alibaba/fastjson/JSONObject;

    iput p4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$gen:I

    iput-object p5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$pending:[I

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$results:[Lcom/alibaba/fastjson/JSONObject;

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$slot:I

    aput-object p1, v0, v1

    .line 463
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$gen:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$pending:[I

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$results:[Lcom/alibaba/fastjson/JSONObject;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->onLocateResponse(I[I[Lcom/alibaba/fastjson/JSONObject;)V
    invoke-static {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I[I[Lcom/alibaba/fastjson/JSONObject;)V

    .line 464
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 446
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 454
    const-string v0, "AuthSpaceVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteLocate slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$slot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 456
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$results:[Lcom/alibaba/fastjson/JSONObject;

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$slot:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 457
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$gen:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$pending:[I

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->val$results:[Lcom/alibaba/fastjson/JSONObject;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->onLocateResponse(I[I[Lcom/alibaba/fastjson/JSONObject;)V
    invoke-static {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I[I[Lcom/alibaba/fastjson/JSONObject;)V

    .line 458
    return-void
.end method
