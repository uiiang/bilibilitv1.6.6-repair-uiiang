.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

.field final synthetic val$targetScrollX:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;I)V
    .locals 0

    .prologue
    .line 2591
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iput p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;->val$targetScrollX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 2595
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5206P\u5217\u8868\u6eda\u52a8\u540e\u68c0\u67e5 - \u5b9e\u9645\u6eda\u52a8\u4f4d\u7f6e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u76ee\u6807: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;->val$targetScrollX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    return-void
.end method
