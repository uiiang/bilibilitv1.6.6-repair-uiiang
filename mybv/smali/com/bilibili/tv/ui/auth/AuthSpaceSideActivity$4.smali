.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->requestVideoListFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 598
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_15

    .line 600
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 601
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 602
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 604
    :cond_15
    return-void
.end method
