.class Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;
.super Ljava/lang/Object;
.source "EpisodeSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->access$000(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->access$000(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 112
    :goto_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->c(I)V

    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->access$100(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;)Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 114
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->access$100(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;)Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->val$position:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;
    invoke-static {v2}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->access$000(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;->onEpisodeClick(IZ)V

    .line 116
    :cond_4b
    return-void

    .line 110
    :cond_4c
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->this$0:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    # getter for: Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->access$000(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21
.end method
