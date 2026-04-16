.class Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;
.super Ljava/lang/Object;
.source "AttentionDynamicSideActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showTagFilterMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagSelected(JLjava/lang/String;)V
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x1

    .line 458
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$900(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_e

    .line 475
    :goto_d
    return-void

    .line 462
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagid:J
    invoke-static {v0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$902(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;J)J

    .line 463
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    cmp-long v1, p1, v2

    if-nez v1, :cond_1b

    const-string p3, "\u52a8\u6001"

    :cond_1b
    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagName:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    const v1, 0x7f080065

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->d(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->currentTagName:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$302(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;I)I

    .line 466
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z

    .line 467
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1202(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    .line 468
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->needFocusFirstItem:Z
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1302(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z

    .line 470
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 471
    cmp-long v0, p1, v2

    if-nez v0, :cond_66

    .line 472
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    const-string v4, "\u5168\u90e8\u52a8\u6001"

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_66
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$5;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    goto :goto_d
.end method
