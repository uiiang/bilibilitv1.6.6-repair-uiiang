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
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    :try_start_2
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
    if-eqz v0, :cond_e6

    .line 98
    iget-object v1, p0, Lbl/xk$2;->this$0:Lbl/xk;

    iget-object v4, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    # invokes: Lbl/xk;->getLocalEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    invoke-static {v1, v4}, Lbl/xk;->access$000(Lbl/xk;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v7

    .line 99
    iget-object v1, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v8, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 101
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 106
    if-eqz v7, :cond_10e

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_10e

    move v5, v3

    move v1, v3

    move v4, v3

    .line 107
    :goto_3d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_65

    .line 108
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 109
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 110
    const-string v10, "type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    const-string v10, "\u7247\u5934"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    move v4, v2

    .line 112
    :cond_59
    const-string v10, "\u7247\u5c3e"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    move v1, v2

    .line 107
    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_65
    move v5, v1

    move v6, v4

    .line 116
    :goto_67
    if-eqz v8, :cond_9f

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9f

    move v4, v3

    .line 117
    :goto_70
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_9f

    .line 118
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 119
    const-string v1, "type"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 122
    const-string v1, "\u7247\u5934"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    if-eqz v6, :cond_10b

    move v1, v3

    .line 125
    :goto_8b
    const-string v12, "\u7247\u5c3e"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_96

    if-eqz v5, :cond_96

    move v1, v3

    .line 129
    :cond_96
    if-eqz v1, :cond_9b

    .line 130
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    :cond_9b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_70

    .line 135
    :cond_9f
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e3

    .line 136
    iput-object v9, v0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 137
    const-string v2, "SkipMerge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Merged skips: local="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v7, :cond_102

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_ba
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", server="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_104

    .line 138
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_ca
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", total="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_e3
    invoke-virtual {v0}, Lbl/xj;->resetSkipFlags()V

    .line 143
    :cond_e6
    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    if-eqz v1, :cond_101

    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    if-eqz v1, :cond_101

    .line 144
    iget-object v1, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->mDanmakuView:Lbl/bfd;

    check-cast v1, Lbl/bgy;

    iput-object v0, v1, Lbl/bgy;->_xj:Lbl/xj;

    .line 145
    iget-object v0, p0, Lbl/xk$2;->val$dp:Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;

    iget-object v1, p0, Lbl/xk$2;->val$resolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuPlayerDFM;->setSubtitleData(Lorg/json/JSONObject;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_101} :catch_106

    .line 150
    :cond_101
    :goto_101
    return-void

    :cond_102
    move v1, v3

    .line 137
    goto :goto_ba

    :cond_104
    move v1, v3

    .line 138
    goto :goto_ca

    .line 147
    :catch_106
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_101

    :cond_10b
    move v1, v2

    goto/16 :goto_8b

    :cond_10e
    move v5, v3

    move v6, v3

    goto/16 :goto_67
.end method
