.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1$1;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->activityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;->access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    .line 305
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 308
    :cond_16
    :goto_16
    return-void

    .line 307
    :cond_17
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1$1;->this$1:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuAdapter$1;->val$item:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showVideoList(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V

    goto :goto_16
.end method
