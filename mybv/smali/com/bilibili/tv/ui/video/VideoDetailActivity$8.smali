.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 517
    return-void
.end method
