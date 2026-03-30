.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$14$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;)V
    .locals 0

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o()V

    .line 1518
    return-void
.end method
