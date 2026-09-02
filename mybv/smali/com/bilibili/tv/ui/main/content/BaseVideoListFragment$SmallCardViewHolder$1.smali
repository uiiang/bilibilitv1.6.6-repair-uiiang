.class Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$1;
.super Ljava/lang/Object;
.source "BaseVideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;-><init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$1;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 683
    const/16 v1, 0x17

    if-ne p2, v1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_11

    .line 687
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$1;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->onClick(Landroid/view/View;)V

    .line 690
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
