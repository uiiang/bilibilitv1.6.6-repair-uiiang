.class Lbl/agb$2;
.super Ljava/lang/Object;
.source "agb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/agb;->setupFilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/agb;

.field final synthetic val$fi:I

.field final synthetic val$gridLayouts:Ljava/util/List;

.field final synthetic val$groupSelectedViews:Ljava/util/List;


# direct methods
.method constructor <init>(Lbl/agb;Ljava/util/List;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lbl/agb$2;->this$0:Lbl/agb;

    iput-object p2, p0, Lbl/agb$2;->val$gridLayouts:Ljava/util/List;

    iput p3, p0, Lbl/agb$2;->val$fi:I

    iput-object p4, p0, Lbl/agb$2;->val$groupSelectedViews:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/agb$TagData;

    .line 246
    iget-object v3, p0, Lbl/agb$2;->this$0:Lbl/agb;

    iget-object v1, p0, Lbl/agb$2;->val$gridLayouts:Ljava/util/List;

    iget v2, p0, Lbl/agb$2;->val$fi:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    move-object v2, p1

    check-cast v2, Lcom/bilibili/tv/widget/DrawTextView;

    iget-object v4, p0, Lbl/agb$2;->val$groupSelectedViews:Ljava/util/List;

    iget v5, p0, Lbl/agb$2;->val$fi:I

    # invokes: Lbl/agb;->updateGroupSelection(Landroid/widget/GridLayout;Lcom/bilibili/tv/widget/DrawTextView;Ljava/util/List;I)V
    invoke-static {v3, v1, v2, v4, v5}, Lbl/agb;->access$700(Lbl/agb;Landroid/widget/GridLayout;Lcom/bilibili/tv/widget/DrawTextView;Ljava/util/List;I)V

    .line 247
    iget-object v1, p0, Lbl/agb$2;->this$0:Lbl/agb;

    # getter for: Lbl/agb;->builder:Lbl/agb$a;
    invoke-static {v1}, Lbl/agb;->access$800(Lbl/agb;)Lbl/agb$a;

    move-result-object v1

    # getter for: Lbl/agb$a;->groupClickListener:Lbl/agb$GroupClickListener;
    invoke-static {v1}, Lbl/agb$a;->access$900(Lbl/agb$a;)Lbl/agb$GroupClickListener;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 248
    iget-object v1, p0, Lbl/agb$2;->this$0:Lbl/agb;

    # getter for: Lbl/agb;->builder:Lbl/agb$a;
    invoke-static {v1}, Lbl/agb;->access$800(Lbl/agb;)Lbl/agb$a;

    move-result-object v1

    # getter for: Lbl/agb$a;->groupClickListener:Lbl/agb$GroupClickListener;
    invoke-static {v1}, Lbl/agb$a;->access$900(Lbl/agb$a;)Lbl/agb$GroupClickListener;

    move-result-object v1

    iget-object v2, p0, Lbl/agb$2;->this$0:Lbl/agb;

    iget v3, p0, Lbl/agb$2;->val$fi:I

    iget-object v0, v0, Lbl/agb$TagData;->value:Ljava/lang/Object;

    invoke-interface {v1, v2, p1, v3, v0}, Lbl/agb$GroupClickListener;->onGroupItemClick(Lbl/agb;Landroid/view/View;ILjava/lang/Object;)V

    .line 251
    :cond_3b
    return-void
.end method
