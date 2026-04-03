.class Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;
.super Ljava/lang/Object;
.source "VideoCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$v;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$v;

    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$v;

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    .line 89
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->z()Lcom/bilibili/tv/widget/DrawRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 90
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->z()Lcom/bilibili/tv/widget/DrawRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 92
    :cond_11
    const-string v1, "CardAdapter"

    const-string v2, "========== Card onFocusChange =========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, "CardAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Card onFocusChange | position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | hasFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | viewId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | viewClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | \u8fb9\u6846\u72b6\u6001="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->z()Lcom/bilibili/tv/widget/DrawRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_97

    if-eqz p2, :cond_94

    const-string v0, "\u663e\u793a"

    :goto_65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz p2, :cond_9a

    .line 99
    const-string v0, "CardAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Card onFocusChange | >>> \u5361\u7247\u83b7\u5f97\u7126\u70b9 | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_8c
    const-string v0, "CardAdapter"

    const-string v1, "========== Card onFocusChange END =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 97
    :cond_94
    const-string v0, "\u9690\u85cf"

    goto :goto_65

    :cond_97
    const-string v0, "null"

    goto :goto_65

    .line 101
    :cond_9a
    const-string v0, "CardAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Card onFocusChange | <<< \u5361\u7247\u5931\u53bb\u7126\u70b9 | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c
.end method
