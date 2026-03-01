.class final Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;
.super Ljava/lang/Object;
.source "MainMyFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->access$000(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->access$100(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 204
    :cond_10
    :goto_10
    return-void

    .line 186
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->access$102(Lcom/bilibili/tv/ui/main/content/MainMyFragment;Z)Z

    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    .line 188
    if-nez v0, :cond_22

    .line 189
    invoke-static {}, Lbl/bbi;->a()V

    .line 191
    :cond_22
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    # getter for: Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;
    invoke-static {v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->access$000(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    move-result-object v1

    .line 192
    if-nez v1, :cond_2d

    .line 193
    invoke-static {}, Lbl/bbi;->a()V

    .line 195
    :cond_2d
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 196
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 197
    if-eqz v1, :cond_10

    instance-of v2, v0, Lcom/bilibili/tv/ui/main/MainActivity;

    if-eqz v2, :cond_10

    .line 200
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 201
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 202
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->k()V

    .line 203
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_10
.end method
