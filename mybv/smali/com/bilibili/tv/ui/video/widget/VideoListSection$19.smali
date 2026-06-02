.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$19;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusWithRetry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

.field final synthetic val$targetPosition:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$19;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$19;->val$targetPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$19;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$19;->val$targetPosition:I

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusWithRetry(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 1181
    return-void
.end method
