.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1;
.super Ljava/lang/Object;
.source "RelationTagMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->a(Lcom/alibaba/fastjson/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1;->this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1;->this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->adapter:Lcom/bilibili/tv/ui/auth/RelationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$800(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->notifyDataSetChanged()V

    .line 209
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1;->this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    const v1, 0x7f08022e

    .line 210
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 211
    if-eqz v0, :cond_22

    .line 212
    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1$1;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1$1;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$5$1;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 222
    :cond_22
    return-void
.end method
