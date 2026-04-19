.class Lcom/bilibili/tv/player/widget/SkipSettingDialog$2;
.super Ljava/lang/Object;
.source "SkipSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onCreate(Landroid/os/Bundle;)V
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
    .line 88
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$2;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$2;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->clearAndClose()V
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$100(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    .line 92
    return-void
.end method
