.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3$1;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;->onMenuClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->savedFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->savedFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->savedFocusView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$602(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Landroid/view/View;)Landroid/view/View;

    .line 238
    :cond_1d
    return-void
.end method
