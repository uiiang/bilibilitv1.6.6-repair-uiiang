.class final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$FocusBorderCallback;
.super Ljava/lang/Object;
.source "MainRecommendFragment.java"

# interfaces
.implements Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FocusBorderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$FocusBorderCallback;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$FocusBorderCallback;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->borderView:Lbl/agd;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lbl/agd;

    move-result-object v0

    if-eqz v0, :cond_b

    if-nez p1, :cond_c

    .line 198
    :cond_b
    :goto_b
    return-void

    .line 192
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$FocusBorderCallback;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->borderView:Lbl/agd;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lbl/agd;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agd;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$FocusBorderCallback;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->borderView:Lbl/agd;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lbl/agd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbl/agd;->setVisibility(I)V

    .line 196
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$FocusBorderCallback;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->borderView:Lbl/agd;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lbl/agd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p4, p5, v1}, Lbl/agd;->a(Landroid/view/View;IIZ)V

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$FocusBorderCallback;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isFirstFocus:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$202(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z

    goto :goto_b
.end method
