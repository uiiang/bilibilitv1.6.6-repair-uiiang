.class Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;
.super Ljava/lang/Object;
.source "EpisodeSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->a(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

.field final synthetic val$holder:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;

.field final synthetic val$isSelected:Z


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;Z)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;->val$holder:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;

    iput-boolean p3, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;->val$isSelected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 92
    if-eqz p2, :cond_10

    .line 93
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;->val$holder:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->rootView:Landroid/view/View;

    const-string v1, "#33FB7299"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    :goto_f
    return-void

    .line 95
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;->val$holder:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;

    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->rootView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;->val$isSelected:Z

    if-eqz v0, :cond_22

    const-string v0, "#1AFB7299"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_f

    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method
