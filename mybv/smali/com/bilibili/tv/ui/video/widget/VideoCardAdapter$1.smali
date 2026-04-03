.class Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;
.super Ljava/lang/Object;
.source "VideoCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

.field final synthetic val$pos:I

.field final synthetic val$tagData:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$pos:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$tagData:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 79
    const-string v1, "CardAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick | position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$pos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | dataClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$tagData:Ljava/lang/Object;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$tagData:Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$tagData:Ljava/lang/Object;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$pos:I

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;->onItemClick(Ljava/lang/Object;I)V

    .line 82
    return-void

    .line 80
    :cond_40
    const-string v0, "null"

    goto :goto_27
.end method
