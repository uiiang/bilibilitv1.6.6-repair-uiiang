.class public Lbl/aef3$c;
.super Lbl/adv;
.source "aef3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aef3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public n:Lcom/bilibili/tv/widget/ScalableImageView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Lcom/bilibili/tv/widget/DrawRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 214
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lbl/aef3$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lbl/aef3$c;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 216
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lbl/aef3$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aef3$c;->o:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lbl/aef3$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aef3$c;->p:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lbl/aef3$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aef3$c;->q:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lbl/aef3$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aef3$c;->r:Landroid/widget/TextView;

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbl/aef3$c;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lbl/aef3$c;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lbl/aef3$c;->r:Landroid/widget/TextView;

    const v4, 0x7f060179

    const v5, 0x7f0500a7

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    move-object v0, p1

    .line 223
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lbl/aef3$c;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 224
    iget-object v0, p0, Lbl/aef3$c;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 225
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 231
    if-nez v1, :cond_b

    .line 238
    :cond_a
    :goto_a
    return-void

    .line 234
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 235
    instance-of v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v2, :cond_a

    .line 236
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v2, v1, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method
