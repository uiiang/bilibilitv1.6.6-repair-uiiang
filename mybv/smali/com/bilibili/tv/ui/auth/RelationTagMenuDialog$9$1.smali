.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9$1;
.super Ljava/lang/Object;
.source "RelationTagMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9$1;->this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9$1;->this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->listener:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$900(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9$1;->this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;

    iget-object v1, v1, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$9;->val$selectedTagIds:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$OnTagsChangedListener;->onTagsChanged(Ljava/util/List;Z)V

    .line 374
    return-void
.end method
