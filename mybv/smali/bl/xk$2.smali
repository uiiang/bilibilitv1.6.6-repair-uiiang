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
    .line 90
    iput-object p1, p0, Lbl/xk$2;->this$0:Lbl/xk;

    iput-object p2, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput-object p3, p0, Lbl/xk$2;->val$self:Lbl/xk;

    iput-object p4, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 94
    :try_start_1
    iget-object v0, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->initPlayInfo()V

    .line 96
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

    .line 97
    if-eqz v0, :cond_83

    .line 98
    iget-object v2, p0, Lbl/xk$2;->this$0:Lbl/xk;

    iget-object v3, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    # invokes: Lbl/xk;->getLocalEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    invoke-static {v2, v3}, Lbl/xk;->access$000(Lbl/xk;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v3

    .line 99
    iget-object v2, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 101
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 103
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4a

    move v2, v1

    .line 104
    :goto_3a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_4a

    .line 105
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 109
    :cond_4a
    if-eqz v4, :cond_78

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_78

    .line 110
    :goto_52
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 111
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 112
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string v6, "\u7247\u5934"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_75

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 114
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 110
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 119
    :cond_78
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_80

    .line 120
    iput-object v5, v0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 122
    :cond_80
    invoke-virtual {v0}, Lbl/xj;->resetSkipFlags()V

    .line 124
    :cond_83
    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v1, :cond_9e

    .line 125
    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    check-cast v1, Lbl/bgy;

    iput-object v0, v1, Lbl/bgy;->_xj:Lbl/xj;

    .line 126
    iget-object v0, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->setSubtitleData(Lorg/json/JSONObject;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9e} :catch_9f

    .line 131
    :cond_9e
    :goto_9e
    return-void

    .line 128
    :catch_9f
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9e
.end method
