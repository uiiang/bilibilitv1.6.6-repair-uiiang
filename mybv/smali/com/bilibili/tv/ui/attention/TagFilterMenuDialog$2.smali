.class Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;
.super Ljava/lang/Object;
.source "TagFilterMenuDialog.java"

# interfaces
.implements Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;


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
    .line 94
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;I)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->listener:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->access$000(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->listener:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->access$000(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;

    move-result-object v0

    iget-wide v2, p1, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->tagid:J

    iget-object v1, p1, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;->onTagSelected(JLjava/lang/String;)V

    .line 100
    :cond_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;->this$0:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->dismiss()V

    .line 101
    return-void
.end method
