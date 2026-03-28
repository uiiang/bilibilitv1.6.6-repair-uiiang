.class public final Lbl/aeb;
.super Lbl/adc$a;
.source "aeb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aeb$b;,
        Lbl/aeb$a;
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
    .line 26
    new-instance v0, Lbl/aeb$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/aeb$b;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/aeb;->Companion:Lbl/aeb$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 37
    invoke-direct {p0, p1}, Lbl/adc$a;-><init>(Landroid/view/View;)V

    .line 38
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lbl/aeb;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 40
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->o:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->p:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->q:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->r:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->s:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lbl/aeb;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aeb;->t:Landroid/widget/TextView;

    .line 46
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 49
    const v3, 0x7f060179

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 50
    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    const v3, 0x7f0500a7

    invoke-static {v3}, Lbl/adl;->d(I)I

    move-result v3

    .line 54
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    iget-object v3, p0, Lbl/aeb;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v0, p0, Lbl/aeb;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lbl/aeb;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 61
    if-nez v0, :cond_b5

    .line 62
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_b5
    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$i;->width:I

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_c7

    .line 67
    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 69
    :cond_c7
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbl/aeb;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbl/aeb;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lbl/aeb;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbl/aeb;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const v9, 0x7f0800a6

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    instance-of v0, p1, Lbl/aeb$a;

    if-eqz v0, :cond_b7

    .line 95
    check-cast p1, Lbl/aeb$a;

    .line 96
    invoke-virtual {p1}, Lbl/aeb$a;->a()Lcom/bilibili/tv/api/area/BiliVideoV2;

    move-result-object v0

    .line 97
    if-nez v0, :cond_15

    .line 98
    invoke-static {}, Lbl/bbi;->a()V

    .line 100
    :cond_15
    iget-object v1, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 101
    iget-object v1, p0, Lbl/aeb;->o:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_20
    iget-object v1, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->name:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 104
    iget-object v1, p0, Lbl/aeb;->p:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_2b
    iget-object v1, p0, Lbl/aeb;->q:Landroid/widget/TextView;

    iget v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->play:I

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lbl/aeb;->r:Landroid/widget/TextView;

    iget v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->danmaku:I

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget v1, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->duration:I

    .line 109
    const/16 v2, 0xe10

    if-lt v1, v2, :cond_b8

    .line 110
    iget-object v2, p0, Lbl/aeb;->s:Landroid/widget/TextView;

    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit16 v5, v1, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit16 v5, v1, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_6f
    iget-wide v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->pubdate:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_d6

    .line 115
    iget-object v1, p0, Lbl/aeb;->t:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->pubdate:J

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lbl/aeb;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_87
    iget-object v1, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->cover:Ljava/lang/String;

    if-eqz v1, :cond_9e

    .line 121
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->cover:Ljava/lang/String;

    invoke-static {v2, v3}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbl/aeb;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v2, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 123
    :cond_9e
    invoke-virtual {p1}, Lbl/aeb$a;->b()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 124
    iget-object v1, p0, Lbl/aeb;->a:Landroid/view/View;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 128
    :goto_ad
    iget-object v1, p0, Lbl/aeb;->a:Landroid/view/View;

    .line 129
    const-string v2, "itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :cond_b7
    return-void

    .line 112
    :cond_b8
    iget-object v2, p0, Lbl/aeb;->s:Landroid/widget/TextView;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    .line 118
    :cond_d6
    iget-object v1, p0, Lbl/aeb;->t:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_87

    .line 126
    :cond_de
    iget-object v1, p0, Lbl/aeb;->a:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_ad
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 136
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 141
    instance-of v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;

    if-eqz v2, :cond_1c

    if-nez v1, :cond_1d

    .line 151
    :cond_1c
    :goto_1c
    return-void

    .line 144
    :cond_1d
    check-cast v0, Lcom/bilibili/tv/api/area/BiliVideoV2;

    .line 145
    iget-object v2, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->jumpTo:Ljava/lang/String;

    .line 146
    const-string v3, "av"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 147
    invoke-virtual {v0}, Lcom/bilibili/tv/api/area/BiliVideoV2;->videoId()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lbl/adl;->a(JLandroid/content/Context;)V

    goto :goto_1c

    .line 148
    :cond_31
    const-string v3, "bangumi"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 149
    sget-object v2, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/area/BiliVideoV2;->videoId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbl/aeb;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
