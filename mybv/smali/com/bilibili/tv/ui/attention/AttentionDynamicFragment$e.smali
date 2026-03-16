.class final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;
.super Ljava/lang/Object;
.source "AttentionDynamicFragment.java"

# interfaces
.implements Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final b:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;->b:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    .line 144
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;III)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;->b:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->m()Lbl/agd;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 155
    :cond_a
    :goto_a
    return-void

    .line 152
    :cond_b
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;->b:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    const v2, 0x7f0700e8

    invoke-static {v1, v2}, Lbl/aj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/agd;->setUpRectDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->e:Z
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z

    move-result v1

    invoke-virtual {v0, p1, p4, p5, v1}, Lbl/agd;->a(Landroid/view/View;IIZ)V

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->e:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z

    goto :goto_a
.end method
