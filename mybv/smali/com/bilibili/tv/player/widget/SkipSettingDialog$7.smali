.class Lcom/bilibili/tv/player/widget/SkipSettingDialog$7;
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
    .line 153
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$7;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 156
    if-eqz p2, :cond_9

    const v0, 0x33fb7299

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    return-void

    .line 156
    :cond_9
    const v0, -0xdbdbdc

    goto :goto_5
.end method
