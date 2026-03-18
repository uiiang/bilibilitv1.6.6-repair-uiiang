.class public final Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "WeeklyVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
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
.field private b:Lcom/alibaba/fastjson/JSONArray;

.field final synthetic this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)V
    .locals 1

    .prologue
    .line 265
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 266
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 282
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 265
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x3e8

    const/16 v7, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 288
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    instance-of v0, p1, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    if-eqz v0, :cond_12e

    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 291
    const-string v0, "pic"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 292
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v2, "pic"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 294
    :cond_3a
    const-string v0, "title"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    move-object v0, p1

    .line 295
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_52
    const-string v0, "owner"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 298
    const/4 v0, 0x0

    .line 299
    if-eqz v1, :cond_169

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_169

    .line 300
    const-string v0, "name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 302
    :goto_6a
    if-eqz v1, :cond_76

    move-object v0, p1

    .line 303
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_76
    const-string v0, "stat"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_b2

    move-object v0, p1

    .line 307
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "view"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const-string v0, "danmaku"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 309
    if-lez v1, :cond_12f

    move-object v0, p1

    .line 310
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 311
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    :cond_b2
    :goto_b2
    const-string v0, "pubdate"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 317
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_13b

    move-object v0, p1

    .line 318
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v7

    mul-long v0, v2, v4

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 318
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 321
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :goto_dc
    const-string v0, "duration"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 326
    const/16 v0, 0xe10

    if-lt v1, v0, :cond_146

    move-object v0, p1

    .line 327
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "%d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, v1, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :goto_113
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 332
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 335
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_12e
    return-void

    :cond_12f
    move-object v0, p1

    .line 313
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->access$500(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b2

    :cond_13b
    move-object v0, p1

    .line 323
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_dc

    :cond_146
    move-object v0, p1

    .line 329
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "%02d:%02d"

    new-array v3, v10, [Ljava/lang/Object;

    div-int/lit8 v4, v1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_113

    :cond_169
    move-object v1, v0

    goto/16 :goto_6a
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    .prologue
    .line 274
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 276
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 277
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->d()V

    .line 278
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 341
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 343
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_2d

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 347
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2d

    .line 348
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 349
    const-string v2, "aid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 350
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 353
    :cond_2d
    return-void
.end method
