.class public final Lcom/bilibili/tv/ui/bangumi/follow/NewFollowBangumiActivity$c$a;
.super Ljava/lang/Object;
.source "NewFollowBangumiActivity.java"

# interfaces
.implements Lbl/nw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/bangumi/follow/NewFollowBangumiActivity$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Lbl/adv;


# direct methods
.method constructor <init>(Lbl/adv;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p1, p0, Lcom/bilibili/tv/ui/bangumi/follow/NewFollowBangumiActivity$c$a;->a:Lbl/adv;

    .line 449
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 436
    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 453
    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    const-string v0, "loadedImage"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/follow/NewFollowBangumiActivity$c$a;->a:Lbl/adv;

    check-cast v0, Lcom/bilibili/tv/ui/bangumi/follow/NewFollowBangumiActivity$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/bangumi/follow/NewFollowBangumiActivity$d;->B()Landroid/view/View;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 458
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 462
    :goto_21
    return-void

    .line 460
    :cond_22
    const v1, 0x7f050022

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_21
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 442
    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    const-string v0, "failReason"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    return-void
.end method
