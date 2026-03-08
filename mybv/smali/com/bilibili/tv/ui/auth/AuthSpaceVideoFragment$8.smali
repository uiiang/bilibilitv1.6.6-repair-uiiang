.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Lcom/bilibili/tv/player/widget/PlayerMenuRight$SortCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->initSortMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortSelected(I)V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$8;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->onSortSelected(I)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;I)V

    .line 874
    return-void
.end method
