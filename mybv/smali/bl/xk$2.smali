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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lbl/xk$2;->this$0:Lbl/xk;

    iput-object p2, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput-object p3, p0, Lbl/xk$2;->val$self:Lbl/xk;

    iput-object p4, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    :try_start_2
    iget-object v0, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->initPlayInfo()V

    .line 93
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

    .line 94
    if-eqz v0, :cond_aa

    .line 95
    iget-object v1, p0, Lbl/xk$2;->this$0:Lbl/xk;

    iget-object v4, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    # invokes: Lbl/xk;->getLocalEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    invoke-static {v1, v4}, Lbl/xk;->access$000(Lbl/xk;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v6

    .line 96
    iget-object v1, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v7, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 98
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 103
    if-eqz v6, :cond_e9

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e9

    move v5, v3

    move v1, v3

    move v4, v3

    .line 104
    :goto_3d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_65

    .line 105
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 106
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    const-string v10, "type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 108
    const-string v10, "\u7247\u5934"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    move v4, v2

    .line 109
    :cond_59
    const-string v10, "\u7247\u5c3e"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    move v1, v2

    .line 104
    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_65
    move v5, v1

    move v6, v4

    .line 113
    :goto_67
    if-eqz v7, :cond_9f

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9f

    move v4, v3

    .line 114
    :goto_70
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_9f

    .line 115
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 116
    const-string v1, "type"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    const-string v1, "\u7247\u5934"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    if-eqz v6, :cond_e7

    move v1, v3

    .line 122
    :goto_8b
    const-string v11, "\u7247\u5c3e"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    if-eqz v5, :cond_96

    move v1, v3

    .line 126
    :cond_96
    if-eqz v1, :cond_9b

    .line 127
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    :cond_9b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_70

    .line 132
    :cond_9f
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_aa

    .line 133
    iput-object v8, v0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 134
    invoke-virtual {v0}, Lbl/xj;->resetSkipFlags()V

    .line 137
    :cond_aa
    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v1, :cond_c5

    .line 138
    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    check-cast v1, Lbl/bgy;

    iput-object v0, v1, Lbl/bgy;->_xj:Lbl/xj;

    .line 139
    iget-object v0, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->setSubtitleData(Lorg/json/JSONObject;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c5} :catch_c6

    .line 145
    :cond_c5
    :goto_c5
    return-void

    .line 141
    :catch_c6
    move-exception v0

    .line 142
    const-string v1, "SkipInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in initPlayInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c5

    :cond_e7
    move v1, v2

    goto :goto_8b

    :cond_e9
    move v5, v3

    move v6, v3

    goto/16 :goto_67
.end method
