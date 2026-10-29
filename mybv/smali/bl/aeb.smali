.class public final Lbl/aeb;
.super Lbl/adc$a;
.source "aeb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aeb$a;,
        Lbl/aeb$b;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/aeb$b;


# instance fields
.field private n:Lcom/bilibili/tv/widget/ScalableImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lbl/aeb$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/aeb$b;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/aeb;->Companion:Lbl/aeb$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lbl/adc$a;-><init>(Landroid/view/View;)V

    .line 33
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lbl/aeb;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 35
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->o:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->p:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->q:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->r:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->s:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->t:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbl/aeb;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lbl/aeb;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lbl/aeb;->r:Landroid/widget/TextView;

    const v4, 0x7f060179

    const v5, 0x7f0500a7

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 45
    if-nez v0, :cond_76

    .line 46
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_76
    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$i;->width:I

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_88

    .line 51
    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    :cond_88
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbl/aeb;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lbl/aeb;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lbl/aeb;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbl/aeb;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0800a6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    instance-of v0, p1, Lbl/aeb$a;

    if-eqz v0, :cond_6f

    .line 79
    check-cast p1, Lbl/aeb$a;

    .line 80
    invoke-virtual {p1}, Lbl/aeb$a;->a()Lcom/bilibili/tv/api/area/BiliVideoV2;

    move-result-object v0

    .line 81
    if-nez v0, :cond_15

    .line 82
    invoke-static {}, Lbl/bbi;->a()V

    .line 84
    :cond_15
    iget-object v1, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 85
    iget-object v1, p0, Lbl/aeb;->o:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_20
    iget-object v1, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->name:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 88
    iget-object v1, p0, Lbl/aeb;->p:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2b
    iget-object v1, p0, Lbl/aeb;->q:Landroid/widget/TextView;

    iget v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->play:I

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lbl/aeb;->r:Landroid/widget/TextView;

    iget v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->danmaku:I

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lbl/aeb;->s:Landroid/widget/TextView;

    iget v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->duration:I

    invoke-static {v1, v2, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDuration(Landroid/widget/TextView;IZ)V

    .line 93
    iget-object v1, p0, Lbl/aeb;->t:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->pubdate:J

    invoke-static {v1, v2, v3, v7, v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V

    .line 94
    iget-object v1, p0, Lbl/aeb;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    iget-object v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->cover:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lbl/aeb$a;->b()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 96
    iget-object v1, p0, Lbl/aeb;->a:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 100
    :goto_65
    iget-object v1, p0, Lbl/aeb;->a:Landroid/view/View;

    .line 101
    const-string v2, "itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :cond_6f
    return-void

    .line 98
    :cond_70
    iget-object v1, p0, Lbl/aeb;->a:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_65
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 108
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 113
    instance-of v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;

    if-eqz v2, :cond_1c

    if-nez v1, :cond_1d

    .line 123
    :cond_1c
    :goto_1c
    return-void

    .line 116
    :cond_1d
    check-cast v0, Lcom/bilibili/tv/api/area/BiliVideoV2;

    .line 117
    iget-object v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->jumpTo:Ljava/lang/String;

    .line 118
    const-string v3, "av"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 119
    invoke-virtual {v0}, Lcom/bilibili/tv/api/area/BiliVideoV2;->videoId()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lbl/adl;->a(JLandroid/content/Context;)V

    goto :goto_1c

    .line 120
    :cond_31
    const-string v3, "bangumi"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 121
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/area/BiliVideoV2;->videoId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbl/aeb;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
