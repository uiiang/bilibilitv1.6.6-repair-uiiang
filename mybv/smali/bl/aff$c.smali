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
    .line 231
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    if-nez v0, :cond_6

    .line 286
    const/4 v0, 0x0

    .line 292
    :goto_5
    return v0

    .line 288
    :cond_6
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    .line 289
    if-nez v0, :cond_d

    .line 290
    invoke-static {}, Lbl/bbi;->a()V

    .line 292
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2}, Lbl/aff$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 237
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
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
    .line 231
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lbl/aff$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 243
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    if-eqz v0, :cond_9e

    instance-of v0, p1, Lbl/aff$d;

    if-eqz v0, :cond_9e

    .line 245
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    .line 246
    if-nez v0, :cond_15

    .line 247
    invoke-static {}, Lbl/bbi;->a()V

    .line 249
    :cond_15
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/rank/BiliRankV2;

    move-object v1, p1

    .line 250
    check-cast v1, Lbl/aff$d;

    .line 251
    invoke-virtual {v1}, Lbl/aff$d;->A()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v1}, Lbl/aff$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v1}, Lbl/aff$d;->C()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getPlay()I

    move-result v3

    invoke-static {v3}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v1}, Lbl/aff$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getDanmaku()I

    move-result v3

    invoke-static {v3}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v1}, Lbl/aff$d;->G()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getDuration()I

    move-result v3

    const/4 v4, 0x0

    .line 255
    invoke-static {v2, v3, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDuration(Landroid/widget/TextView;IZ)V

    .line 258
    invoke-virtual {v1}, Lbl/aff$d;->H()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getPub_date()J

    move-result-wide v4

    const/4 v3, 0x1

    .line 257
    invoke-static {v2, v4, v5, v6, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V

    .line 260
    invoke-virtual {v1}, Lbl/aff$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/rank/BiliRankV2;->getCover()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-static {v6, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 261
    packed-switch p2, :pswitch_data_c0

    .line 272
    invoke-virtual {v1}, Lbl/aff$d;->E()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 275
    :goto_82
    invoke-virtual {v1}, Lbl/aff$d;->F()Landroid/widget/TextView;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 277
    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_9e
    return-void

    .line 263
    :pswitch_9f
    invoke-virtual {v1}, Lbl/aff$d;->E()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07009a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_82

    .line 266
    :pswitch_aa
    invoke-virtual {v1}, Lbl/aff$d;->E()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07009d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_82

    .line 269
    :pswitch_b5
    invoke-virtual {v1}, Lbl/aff$d;->E()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f07009c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_82

    .line 261
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_aa
        :pswitch_b5
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
    .line 296
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iput-object p1, p0, Lbl/aff$c;->a:Ljava/util/List;

    .line 298
    invoke-virtual {p0}, Lbl/aff$c;->d()V

    .line 299
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
    .line 302
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lbl/aff$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 304
    iget-object v1, p0, Lbl/aff$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    invoke-virtual {p0, v0}, Lbl/aff$c;->d(I)V

    .line 306
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 311
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 316
    if-eqz v2, :cond_2d

    instance-of v1, v0, Lcom/bilibili/tv/api/rank/BiliRankV2;

    if-eqz v1, :cond_2d

    .line 318
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

    .line 323
    :goto_2a
    invoke-static {v0, v1, v2}, Lbl/adl;->a(JLandroid/content/Context;)V

    .line 325
    :cond_2d
    return-void

    .line 319
    :catch_2e
    move-exception v0

    .line 320
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 321
    const-wide/16 v0, 0x0

    goto :goto_2a
.end method
