.class Lbl/afm5$7;
.super Ljava/lang/Object;
.source "afm5.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm5;->showFolderPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afm5;

.field final synthetic val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field final synthetic val$confirmText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lbl/afm5;Lcom/bilibili/tv/widget/DrawFrameLayout;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lbl/afm5$7;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$7;->val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object p3, p0, Lbl/afm5$7;->val$confirmText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lbl/afm5$7;->val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 621
    if-eqz p2, :cond_1b

    .line 622
    iget-object v0, p0, Lbl/afm5$7;->val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 623
    iget-object v0, p0, Lbl/afm5$7;->val$confirmText:Landroid/widget/TextView;

    const-string v1, "#FB7299"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    :goto_1a
    return-void

    .line 625
    :cond_1b
    iget-object v0, p0, Lbl/afm5$7;->val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 626
    iget-object v0, p0, Lbl/afm5$7;->val$confirmText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1a
.end method
