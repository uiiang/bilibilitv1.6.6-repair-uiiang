.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$5;
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
    .line 298
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLevel1MenuItemSelected(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 301
    const-string v0, "pubdate"

    .line 302
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    const-string v0, "click"

    move-object v1, v0

    .line 305
    :goto_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$5;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 306
    instance-of v2, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v2, :cond_1a

    .line 307
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 308
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setOrder(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->refreshData()V

    .line 311
    :cond_1a
    return-void

    .line 303
    :cond_1b
    const/4 v1, 0x2

    if-ne p1, v1, :cond_22

    const-string v0, "stow"

    move-object v1, v0

    goto :goto_8

    :cond_22
    move-object v1, v0

    goto :goto_8
.end method
