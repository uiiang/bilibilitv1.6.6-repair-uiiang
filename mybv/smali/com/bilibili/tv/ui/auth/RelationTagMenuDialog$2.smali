.class Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$2;
.super Ljava/lang/Object;
.source "RelationTagMenuDialog.java"

# interfaces
.implements Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemToggle(Lmybl/RelationTagItem;ZI)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->isOperating:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$000(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 95
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;

    # invokes: Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->toggleTag(Lmybl/RelationTagItem;ZI)V
    invoke-static {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;->access$100(Lcom/bilibili/tv/ui/auth/RelationTagMenuDialog;Lmybl/RelationTagItem;ZI)V

    .line 97
    :cond_d
    return-void
.end method
