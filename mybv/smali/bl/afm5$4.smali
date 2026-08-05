.class Lbl/afm5$4;
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


# direct methods
.method constructor <init>(Lbl/afm5;Lcom/bilibili/tv/widget/DrawFrameLayout;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lbl/afm5$4;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$4;->val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lbl/afm5$4;->val$confirmButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 499
    return-void
.end method
