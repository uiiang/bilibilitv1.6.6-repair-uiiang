.class Lcom/bilibili/tv/ui/favorite/SortMenuDialog$1;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/SortMenuDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/SortMenuDialog;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$1;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$1;->this$0:Lcom/bilibili/tv/ui/favorite/SortMenuDialog;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->dismiss()V

    .line 86
    return-void
.end method
