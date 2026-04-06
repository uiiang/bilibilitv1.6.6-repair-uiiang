.class Lbl/aed$1;
.super Lbl/vn;
.source "aed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/aed;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/aed;


# direct methods
.method constructor <init>(Lbl/aed;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;)V
    .locals 7

    .prologue
    const v6, 0x7f0c00d8

    .line 118
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    # getter for: Lbl/aed;->c:Lbl/aed$b;
    invoke-static {v0}, Lbl/aed;->access$000(Lbl/aed;)Lbl/aed$b;

    move-result-object v0

    if-nez v0, :cond_c

    .line 153
    :goto_b
    return-void

    .line 121
    :cond_c
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-virtual {v0}, Lbl/aed;->j()V

    .line 122
    if-eqz p1, :cond_97

    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 123
    invoke-virtual {p1}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;->getList()Ljava/util/List;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;

    .line 126
    new-instance v3, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    invoke-direct {v3}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;-><init>()V

    .line 127
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMId(J)V

    .line 128
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->getMid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMMid(J)V

    .line 129
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->getMediaCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMCount(I)V

    .line 131
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->getCtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setMCreatedTs(J)V

    .line 132
    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->getFavState()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->setFavoured(I)V

    .line 133
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 135
    :cond_65
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    # getter for: Lbl/aed;->c:Lbl/aed$b;
    invoke-static {v0}, Lbl/aed;->access$000(Lbl/aed;)Lbl/aed$b;

    move-result-object v0

    .line 136
    if-nez v0, :cond_70

    .line 137
    invoke-static {}, Lbl/bbi;->a()V

    .line 139
    :cond_70
    invoke-virtual {v0}, Lbl/aed$b;->a()I

    move-result v0

    if-nez v0, :cond_7c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 140
    :cond_7c
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    # getter for: Lbl/aed;->c:Lbl/aed$b;
    invoke-static {v0}, Lbl/aed;->access$000(Lbl/aed;)Lbl/aed$b;

    move-result-object v0

    .line 141
    if-nez v0, :cond_87

    .line 142
    invoke-static {}, Lbl/bbi;->a()V

    .line 144
    :cond_87
    invoke-virtual {v0, v1}, Lbl/aed$b;->a(Ljava/util/List;)V

    goto :goto_b

    .line 147
    :cond_8b
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-virtual {v0}, Lbl/aed;->l()V

    .line 148
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-virtual {v0, v6}, Lbl/aed;->a(I)V

    goto/16 :goto_b

    .line 150
    :cond_97
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-virtual {v0}, Lbl/aed;->l()V

    .line 151
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-virtual {v0, v6}, Lbl/aed;->a(I)V

    goto/16 :goto_b
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;

    invoke-virtual {p0, p1}, Lbl/aed$1;->a(Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxListV3;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-virtual {v0}, Lbl/aed;->isAdded()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 162
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-virtual {v1}, Lbl/aed;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 164
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    # getter for: Lbl/aed;->c:Lbl/aed$b;
    invoke-static {v0}, Lbl/aed;->access$000(Lbl/aed;)Lbl/aed$b;

    move-result-object v0

    if-nez v0, :cond_19

    .line 168
    :goto_18
    return-void

    .line 167
    :cond_19
    iget-object v0, p0, Lbl/aed$1;->this$0:Lbl/aed;

    invoke-virtual {v0}, Lbl/aed;->k()V

    goto :goto_18
.end method
