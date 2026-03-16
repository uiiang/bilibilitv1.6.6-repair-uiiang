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
    .line 262
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 263
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 279
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 262
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 285
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    instance-of v0, p1, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    if-eqz v0, :cond_f4

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 288
    const-string v0, "pic"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 289
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "pic"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 291
    :cond_36
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move-object v0, p1

    .line 292
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_4e
    const-string v0, "owner"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 295
    const/4 v0, 0x0

    .line 296
    if-eqz v1, :cond_118

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 297
    const-string v0, "name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 299
    :goto_66
    if-eqz v1, :cond_72

    move-object v0, p1

    .line 300
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_72
    const-string v0, "stat"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_a2

    move-object v0, p1

    .line 304
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "view"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 305
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "danmaku"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lbl/adh;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_a2
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 308
    const/16 v0, 0xe10

    if-lt v1, v0, :cond_f5

    move-object v0, p1

    .line 309
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

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

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :goto_d9
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 314
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 316
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 317
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_f4
    return-void

    :cond_f5
    move-object v0, p1

    .line 311
    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v0

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

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d9

    :cond_118
    move-object v1, v0

    goto/16 :goto_66
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    .prologue
    .line 271
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 273
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->d()V

    .line 275
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 323
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_2d

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 329
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2d

    .line 330
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 331
    const-string v2, "aid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 332
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 335
    :cond_2d
    return-void
.end method
