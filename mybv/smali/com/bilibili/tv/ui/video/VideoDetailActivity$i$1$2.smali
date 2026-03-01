.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;)V
    .locals 0

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$2;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$2;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$recyclerView2:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 2098
    const-string v0, "VideoDetailActivity"

    const-string v1, "\u5df2\u91cd\u65b0\u8bf7\u6c42\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    return-void
.end method
