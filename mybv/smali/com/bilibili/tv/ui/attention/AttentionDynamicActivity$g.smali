.class final Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$g;
.super Ljava/lang/Object;
.source "AttentionDynamicActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$g;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$g;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 206
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$g;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    .line 207
    if-nez v0, :cond_14

    .line 208
    invoke-static {}, Lbl/bbi;->a()V

    .line 210
    :cond_14
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->o()I

    move-result v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_21

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 216
    :cond_21
    return-void
.end method
