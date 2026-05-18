.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$3;
.super Ljava/lang/Object;
.source "RelationTagMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$3;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_c

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 126
    :cond_c
    return-void
.end method
