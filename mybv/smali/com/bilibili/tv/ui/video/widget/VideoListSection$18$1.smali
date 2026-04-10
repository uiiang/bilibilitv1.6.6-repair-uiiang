.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$18$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$18$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$18$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$18$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;

    iget v1, v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;->val$finalPos:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnPosition(I)V

    .line 1355
    return-void
.end method
