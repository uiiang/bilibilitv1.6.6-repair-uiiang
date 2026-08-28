.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8$2;
.super Ljava/lang/Object;
.source "RelationTagMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8$2;->this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8$2;->this$1:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$8;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$500(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u5206\u7ec4\u5931\u8d25"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    return-void
.end method
