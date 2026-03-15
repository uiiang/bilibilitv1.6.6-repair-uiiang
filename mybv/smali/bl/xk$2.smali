.class Lbl/xk$2;
.super Ljava/lang/Object;
.source "xk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xk;->initSubtitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xk;

.field final synthetic val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

.field final synthetic val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

.field final synthetic val$self:Lbl/xk;


# direct methods
.method constructor <init>(Lbl/xk;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Lbl/xk;Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lbl/xk$2;->this$0:Lbl/xk;

    iput-object p2, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput-object p3, p0, Lbl/xk$2;->val$self:Lbl/xk;

    iput-object p4, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->initPlayInfo()V

    .line 82
    iget-object v0, p0, Lbl/xk$2;->val$self:Lbl/xk;

    invoke-virtual {v0}, Lbl/xk;->next()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    check-cast v0, Lbl/xj;

    .line 83
    if-eqz v0, :cond_25

    .line 84
    iget-object v1, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    iput-object v1, v0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 86
    :cond_25
    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v1, :cond_3f

    .line 87
    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    check-cast v1, Lbl/bgy;

    iput-object v0, v1, Lbl/bgy;->_xj:Lbl/xj;

    .line 88
    iget-object v0, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_data:Lorg/json/JSONObject;

    iput-object v1, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->subtitle_data:Lorg/json/JSONObject;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 93
    :cond_3f
    :goto_3f
    return-void

    .line 90
    :catch_40
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f
.end method
