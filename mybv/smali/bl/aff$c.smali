.class public final Lbl/aff$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "aff.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/rank/BiliRankV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    if-nez v0, :cond_6

    .line 290
    const/4 v0, 0x0

    .line 296
    :goto_5
    return v0

    .line 292
    :cond_6
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    .line 293
    if-nez v0, :cond_d

    .line 294
    invoke-static {}, Lbl/bbi;->a()V

    .line 296
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lbl/aff$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 240
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    check-cast v0, Lbl/aff$d;

    sget-object v0, Lbl/aff$d;->Companion:Lbl/aff$d$a;

    invoke-virtual {v0, p1}, Lbl/aff$d$a;->a(Landroid/view/ViewGroup;)Lbl/aff$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lbl/aff$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 246
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    if-eqz v0, :cond_c6

    instance-of v0, p1, Lbl/aff$d;

    if-eqz v0, :cond_c6

    .line 248
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    .line 249
    if-nez v0, :cond_17

    .line 250
    invoke-static {}, Lbl/bbi;->a()V

    .line 252
    :cond_17
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/rank/BiliRankV2;

    move-object v1, p1

    .line 253
    check-cast v1, Lbl/aff$d;

    .line 254
    invoke-virtual {v1}, Lbl/aff$d;->A()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v1}, Lbl/aff$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v1}, Lbl/aff$d;->C()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getPlay()I

    move-result v3

    invoke-static {v3}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v1}, Lbl/aff$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getDanmaku()I

    move-result v3

    invoke-static {v3}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getDuration()I

    move-result v2

    .line 259
    const/16 v3, 0xe10

    if-lt v2, v3, :cond_c7

    .line 260
    invoke-virtual {v1}, Lbl/aff$d;->G()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit16 v6, v2, 0xe10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    rem-int/lit16 v6, v2, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_86
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getCover()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbl/aff$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 265
    packed-switch p2, :pswitch_data_108

    .line 276
    invoke-virtual {v1}, Lbl/aff$d;->E()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 279
    :goto_aa
    invoke-virtual {v1}, Lbl/aff$d;->F()Landroid/widget/TextView;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 281
    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_c6
    return-void

    .line 262
    :cond_c7
    invoke-virtual {v1}, Lbl/aff$d;->G()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    div-int/lit8 v6, v2, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_86

    .line 267
    :pswitch_e7
    invoke-virtual {v1}, Lbl/aff$d;->E()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07009a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_aa

    .line 270
    :pswitch_f2
    invoke-virtual {v1}, Lbl/aff$d;->E()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07009d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_aa

    .line 273
    :pswitch_fd
    invoke-virtual {v1}, Lbl/aff$d;->E()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07009c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_aa

    .line 265
    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_f2
        :pswitch_fd
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/rank/BiliRankV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lbl/aff$c;->a:Ljava/util/List;

    .line 302
    invoke-virtual {p0}, Lbl/aff$c;->d()V

    .line 303
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/rank/BiliRankV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 308
    iget-object v1, p0, Lbl/aff$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    invoke-virtual {p0, v0}, Lbl/aff$c;->d(I)V

    .line 310
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 315
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 320
    if-eqz v2, :cond_2d

    instance-of v1, v0, Lcom/bilibili/tv/api/rank/BiliRankV2;

    if-eqz v1, :cond_2d

    .line 322
    :try_start_1c
    check-cast v0, Lcom/bilibili/tv/api/rank/BiliRankV2;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_29} :catch_2e

    move-result-wide v0

    .line 327
    :goto_2a
    invoke-static {v0, v1, v2}, Lbl/adl;->a(JLandroid/content/Context;)V

    .line 329
    :cond_2d
    return-void

    .line 323
    :catch_2e
    move-exception v0

    .line 324
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 325
    const-wide/16 v0, 0x0

    goto :goto_2a
.end method
