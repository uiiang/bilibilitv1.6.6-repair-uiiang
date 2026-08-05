.class Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;
.super Ljava/lang/Object;
.source "GroupedTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->a(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

.field final synthetic val$group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->val$group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->access$000(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->access$000(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->val$group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;->onGroupClick(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V

    .line 201
    :cond_13
    return-void
.end method
