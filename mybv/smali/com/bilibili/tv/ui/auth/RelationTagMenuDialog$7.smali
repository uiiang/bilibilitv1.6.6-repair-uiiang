.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$7;
.super Ljava/lang/Object;
.source "RelationTagMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->toggleTag(Lmybl/RelationTagItem;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;I)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$7;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    iput p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$7;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->adapter:Lcom/bilibili/tv/ui/auth/RelationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$800(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Lcom/bilibili/tv/ui/auth/RelationTagAdapter;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$7;->val$position:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->notifyItemChanged(I)V

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$7;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isOperating:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$002(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Z)Z

    .line 287
    return-void
.end method
