.class Lcom/bilibili/tv/ui/video/RightSlidePanelDialog$1;
.super Ljava/lang/Object;
.source "RightSlidePanelDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog$1;->this$0:Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog$1;->this$0:Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->dismiss()V

    .line 80
    return-void
.end method
