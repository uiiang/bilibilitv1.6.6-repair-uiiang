.class Lcom/bilibili/tv/player/widget/SkipSettingDialog$5;
.super Ljava/lang/Object;
.source "SkipSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setupFocusEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$5;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$5;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$800(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    .line 139
    return-void
.end method
