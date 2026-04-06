.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/4 v1, -0x1

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateItemsFocusDownId(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 815
    return-void
.end method
