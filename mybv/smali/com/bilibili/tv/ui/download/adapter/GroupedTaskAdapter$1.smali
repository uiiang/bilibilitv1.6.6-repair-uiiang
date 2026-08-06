.class Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;
.super Ljava/lang/Object;
.source "GroupedTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->bindGroup(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

.field final synthetic val$holder:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->val$holder:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 254
    if-eqz p2, :cond_d

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->this$0:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;->val$holder:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->f()I

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->focusPosition:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->access$002(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;I)I

    .line 257
    :cond_d
    return-void
.end method
