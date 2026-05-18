.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1$1;
.super Ljava/lang/Object;
.source "RelationTagMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1$1;->this$2:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$4$1$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_c

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 172
    :cond_c
    return-void
.end method
