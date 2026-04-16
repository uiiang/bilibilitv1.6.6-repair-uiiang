.class Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$1;
.super Ljava/lang/Object;
.source "TagFilterMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$1;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$1;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->dismiss()V

    .line 109
    return-void
.end method
