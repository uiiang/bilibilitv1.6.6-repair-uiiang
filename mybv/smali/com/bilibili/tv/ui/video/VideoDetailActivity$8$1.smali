.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;
.super Lcom/bilibili/okretro/GeneralResponse;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->onSuccess(Lcom/bilibili/okretro/GeneralResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bilibili/okretro/GeneralResponse",
        "<",
        "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

.field final synthetic val$result:Lcom/bilibili/okretro/GeneralResponse;

.field final synthetic val$videoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;Lcom/bilibili/okretro/GeneralResponse;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 1

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$result:Lcom/bilibili/okretro/GeneralResponse;

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$videoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Lcom/bilibili/okretro/GeneralResponse;-><init>()V

    .line 1101
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$result:Lcom/bilibili/okretro/GeneralResponse;

    iget v0, v0, Lcom/bilibili/okretro/GeneralResponse;->code:I

    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->code:I

    .line 1102
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$result:Lcom/bilibili/okretro/GeneralResponse;

    iget-object v0, v0, Lcom/bilibili/okretro/GeneralResponse;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->message:Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->val$videoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;->data:Ljava/lang/Object;

    .line 1104
    return-void
.end method
