.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$6;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Lcom/bilibili/tv/player/widget/PlayerMenuRight$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateRightMenuData()V
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
    .line 316
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLevel1MenuItemSelected(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 319
    if-ne p1, v0, :cond_17

    move v1, v0

    .line 321
    :goto_4
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$6;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 322
    instance-of v2, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v2, :cond_16

    .line 323
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 324
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setSortReverse(Z)V

    .line 325
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->refreshData()V

    .line 327
    :cond_16
    return-void

    .line 319
    :cond_17
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4
.end method
