.class final Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "BangumiEpisodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private b:Lbl/abx$a;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    iput-object p1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->c:Ljava/util/ArrayList;

    .line 163
    return-void
.end method

.method private final a(Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 249
    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cover:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 250
    iget-object v1, p1, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->cover:Ljava/lang/String;

    invoke-static {p2, v1}, Lbl/abd;->prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    :cond_c
    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->h:Z
    invoke-static {}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$300()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 253
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->c:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/Integer;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1e
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->seasonTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$400(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$500(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->all_episodes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$600(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lbl/xg;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Ljava/util/List;)V

    .line 299
    :goto_35
    return-void

    .line 257
    :cond_36
    iget v1, p1, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->status:I

    .line 258
    const/16 v2, 0xd

    if-eq v1, v2, :cond_cd

    .line 259
    packed-switch v1, :pswitch_data_108

    .line 282
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->c:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/Integer;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4b
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->seasonTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$400(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$500(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->all_episodes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$600(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lbl/xg;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Ljava/util/List;)V

    goto :goto_35

    .line 264
    :pswitch_63
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 265
    const-string v1, "BiliAccount.get(MainApplication.getInstance())"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 267
    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->h:Z
    invoke-static {}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 268
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    const v2, 0x7f0c0053

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_35

    .line 271
    :cond_8f
    sget-object v0, Lcom/bilibili/tv/ui/vip/VipActivity;->Companion:Lcom/bilibili/tv/ui/vip/VipActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$500(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://bangumi.bilibili.com/anime/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->b:Ljava/lang/String;
    invoke-static {v3}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$500(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x75

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/bilibili/tv/ui/vip/VipActivity$a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_35

    .line 274
    :cond_b6
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    .line 275
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 276
    if-nez v1, :cond_c8

    .line 277
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v4.app.FragmentActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_c8
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;)V

    goto/16 :goto_35

    .line 287
    :cond_cd
    :pswitch_cd
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 288
    const-string v1, "BiliAccount.get(MainApplication.getInstance())"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 290
    sget-object v0, Lcom/bilibili/tv/ui/vip/VipActivity;->Companion:Lcom/bilibili/tv/ui/vip/VipActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$500(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v0, p2, v1, v2}, Lcom/bilibili/tv/ui/vip/VipActivity$a;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_35

    .line 293
    :cond_ef
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    .line 294
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 295
    if-nez v1, :cond_101

    .line 296
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v4.app.FragmentActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_101
    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    goto/16 :goto_35

    .line 259
    :pswitch_data_108
    .packed-switch 0x6
        :pswitch_cd
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->c:Ljava/util/ArrayList;

    .line 221
    if-eqz v0, :cond_9

    .line 222
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 224
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 3

    .prologue
    .line 167
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 169
    const-string v1, "LayoutInflater.from(pare\u2026  false\n                )"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 3

    .prologue
    .line 175
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    instance-of v0, p1, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;

    if-eqz v0, :cond_8a

    .line 177
    check-cast p1, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;

    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->c:Ljava/util/ArrayList;

    .line 179
    if-nez v0, :cond_12

    .line 180
    invoke-static {}, Lbl/bbi;->a()V

    .line 182
    :cond_12
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;

    .line 183
    const-string v1, "mEpisodes!![position]"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v1, v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;->index:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v2}, Lbl/kj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 187
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->c:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$000(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/Integer;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_35
    invoke-static {v1}, Lbl/ads;->b(I)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 189
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;->z()Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v2

    .line 190
    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->d:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$100(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)Ljava/lang/Integer;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4b
    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_55
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;->A()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;->A()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->b:Lbl/abx$a;

    if-eqz v0, :cond_8a

    .line 201
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->b:Lbl/abx$a;

    .line 202
    if-nez v0, :cond_6e

    .line 203
    invoke-static {}, Lbl/bbi;->a()V

    .line 205
    :cond_6e
    iget v0, v0, Lbl/abx$a;->b:I

    if-ne v0, p2, :cond_8a

    .line 206
    iget-object v0, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->b:Lbl/abx$a;

    .line 207
    if-nez v0, :cond_79

    .line 208
    invoke-static {}, Lbl/bbi;->a()V

    .line 210
    :cond_79
    iget v0, v0, Lbl/abx$a;->a:I

    iget-object v1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->this$0:Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;

    # getter for: Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->f:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;->access$200(Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment;)I

    move-result v1

    if-ne v0, v1, :cond_8a

    .line 211
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;->A()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 216
    :cond_8a
    return-void

    .line 188
    :cond_8b
    const/4 v1, 0x1

    goto :goto_35

    .line 191
    :cond_8d
    const/4 v1, 0x0

    goto :goto_4b

    .line 193
    :cond_8f
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;->z()Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 196
    :cond_97
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$c;->z()Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55
.end method

.method public final a(Lbl/abx$a;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->b:Lbl/abx$a;

    .line 246
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 229
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 231
    if-nez v0, :cond_13

    .line 232
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.bangumi.api.newbean.BangumiEpisodeEx"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_13
    check-cast v0, Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 236
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_2f

    .line 239
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/bangumi/BangumiEpisodeFragment$b;->a(Lcom/bilibili/bangumi/api/newbean/BangumiEpisodeEx;Landroid/app/Activity;)V

    .line 240
    const-string v0, "tv_bangumi_view_click_part"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    :cond_2f
    return-void
.end method
