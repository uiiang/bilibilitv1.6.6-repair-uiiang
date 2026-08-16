.class Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;
.super Ljava/lang/Object;
.source "VideoCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->bindNormalHolder(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$item:Ljava/lang/Object;

    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->clickListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$item:Ljava/lang/Object;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;->onItemClick(Ljava/lang/Object;I)V

    .line 157
    return-void
.end method
