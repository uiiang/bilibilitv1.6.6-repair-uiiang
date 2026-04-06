.class Lbl/aee$1;
.super Lbl/vn;
.source "aee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/aee;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/aee;


# direct methods
.method constructor <init>(Lbl/aee;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;)V
    .locals 11

    .prologue
    const v10, 0x7f0c00d8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 190
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->c:Lbl/aee$c;
    invoke-static {v0}, Lbl/aee;->access$300(Lbl/aee;)Lbl/aee$c;

    move-result-object v0

    if-nez v0, :cond_e

    .line 244
    :cond_d
    :goto_d
    return-void

    .line 193
    :cond_e
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-virtual {v0}, Lbl/aee;->j()V

    .line 194
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # setter for: Lbl/aee;->h:Z
    invoke-static {v0, v9}, Lbl/aee;->access$102(Lbl/aee;Z)Z

    .line 195
    if-eqz p1, :cond_de

    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->getMedias()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 196
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->getMedias()Ljava/util/List;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;

    .line 199
    new-instance v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 200
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 201
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getCover()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 202
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 203
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 204
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getUpper()Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 205
    new-instance v4, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 206
    iget-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getUpper()Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 207
    iget-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->getUpper()Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;->getMid()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 209
    :cond_7c
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 211
    :cond_80
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->c:Lbl/aee$c;
    invoke-static {v0}, Lbl/aee;->access$300(Lbl/aee;)Lbl/aee$c;

    move-result-object v0

    .line 212
    if-nez v0, :cond_8b

    .line 213
    invoke-static {}, Lbl/bbi;->a()V

    .line 215
    :cond_8b
    invoke-virtual {v0}, Lbl/aee$c;->a()I

    move-result v0

    if-nez v0, :cond_97

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ca

    .line 216
    :cond_97
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->isHasMore()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 217
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # setter for: Lbl/aee;->g:Z
    invoke-static {v0, v9}, Lbl/aee;->access$202(Lbl/aee;Z)Z

    .line 219
    :cond_a2
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->f:I
    invoke-static {v0}, Lbl/aee;->access$400(Lbl/aee;)I

    move-result v0

    if-ne v0, v8, :cond_ba

    .line 220
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->c:Lbl/aee$c;
    invoke-static {v0}, Lbl/aee;->access$300(Lbl/aee;)Lbl/aee$c;

    move-result-object v0

    .line 221
    if-nez v0, :cond_b5

    .line 222
    invoke-static {}, Lbl/bbi;->a()V

    .line 224
    :cond_b5
    invoke-virtual {v0, v1}, Lbl/aee$c;->a(Ljava/util/List;)V

    goto/16 :goto_d

    .line 227
    :cond_ba
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->c:Lbl/aee$c;
    invoke-static {v0}, Lbl/aee;->access$300(Lbl/aee;)Lbl/aee$c;

    move-result-object v0

    .line 228
    if-nez v0, :cond_c5

    .line 229
    invoke-static {}, Lbl/bbi;->a()V

    .line 231
    :cond_c5
    invoke-virtual {v0, v1}, Lbl/aee$c;->b(Ljava/util/List;)V

    goto/16 :goto_d

    .line 234
    :cond_ca
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->f:I
    invoke-static {v0}, Lbl/aee;->access$400(Lbl/aee;)I

    move-result v0

    if-ne v0, v8, :cond_d

    .line 235
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-virtual {v0}, Lbl/aee;->l()V

    .line 236
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-virtual {v0, v10}, Lbl/aee;->a(I)V

    goto/16 :goto_d

    .line 239
    :cond_de
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->f:I
    invoke-static {v0}, Lbl/aee;->access$400(Lbl/aee;)I

    move-result v0

    if-ne v0, v8, :cond_d

    .line 240
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-virtual {v0}, Lbl/aee;->l()V

    .line 241
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-virtual {v0, v10}, Lbl/aee;->a(I)V

    goto/16 :goto_d
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;

    invoke-virtual {p0, p1}, Lbl/aee$1;->a(Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-virtual {v0}, Lbl/aee;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->c:Lbl/aee$c;
    invoke-static {v0}, Lbl/aee;->access$300(Lbl/aee;)Lbl/aee$c;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 253
    const-string v0, "error"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-virtual {v1}, Lbl/aee;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 255
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->c:Lbl/aee$c;
    invoke-static {v0}, Lbl/aee;->access$300(Lbl/aee;)Lbl/aee$c;

    move-result-object v0

    if-nez v0, :cond_19

    .line 262
    :cond_18
    :goto_18
    return-void

    .line 258
    :cond_19
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    const/4 v1, 0x0

    # setter for: Lbl/aee;->h:Z
    invoke-static {v0, v1}, Lbl/aee;->access$102(Lbl/aee;Z)Z

    .line 259
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    # getter for: Lbl/aee;->f:I
    invoke-static {v0}, Lbl/aee;->access$400(Lbl/aee;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 260
    iget-object v0, p0, Lbl/aee$1;->this$0:Lbl/aee;

    invoke-virtual {v0}, Lbl/aee;->k()V

    goto :goto_18
.end method
