.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$a2:Lbl/mg;

.field final synthetic val$avid:J

.field final synthetic val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field final synthetic val$finalCid:J

.field final synthetic val$sessdata:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLcom/bilibili/tv/api/video/BiliVideoDetail;Lbl/mg;)V
    .locals 1

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$sessdata:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$avid:J

    iput-wide p5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalCid:J

    iput-object p7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object p8, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$a2:Lbl/mg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    .line 1099
    const/4 v1, 0x0

    .line 1101
    :try_start_4
    const-string v0, "VideoDetailApi"

    const-string v3, "========== PLAYER WBI V2 REQUEST =========="

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    new-instance v0, Lbl/qa$a;

    const-class v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;

    invoke-direct {v0, v3}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    const-string v3, "https://api.bilibili.com/x/player/wbi/v2"

    .line 1105
    invoke-virtual {v0, v3}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v3, 0x1

    .line 1106
    invoke-virtual {v0, v3}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SESSDATA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$sessdata:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1107
    invoke-virtual {v0, v3, v4}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v3, ""

    .line 1108
    invoke-virtual {v0, v3}, Lbl/qa$a;->b(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v3, "aid"

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$avid:J

    .line 1109
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v3, "cid"

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalCid:J

    .line 1110
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v3, Lbl/qb;

    invoke-direct {v3}, Lbl/qb;-><init>()V

    .line 1111
    invoke-virtual {v0, v3}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    const-string v3, "GET"

    .line 1103
    invoke-static {v0, v3}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;

    .line 1111
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;->result()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1113
    const-string v3, "VideoDetailApi"

    const-string v4, "========== PLAYER WBI V2 RESPONSE =========="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v3, "VideoDetailApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playerData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const-string v3, "VideoDetailApi"

    const-string v4, "========== PLAYER WBI V2 RESPONSE END =========="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    if-eqz v0, :cond_106

    const-string v3, "code"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_106

    .line 1118
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1119
    if-eqz v0, :cond_106

    .line 1120
    const-string v3, "last_play_cid"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 1121
    const-string v3, "last_play_time"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b2} :catch_e9

    move-result v3

    .line 1123
    cmp-long v0, v4, v8

    if-gtz v0, :cond_b9

    if-lez v3, :cond_106

    .line 1125
    :cond_b9
    :try_start_b9
    new-instance v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 1126
    cmp-long v0, v4, v8

    if-lez v0, :cond_e6

    move-wide v0, v4

    :goto_c3
    iput-wide v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1127
    iput v3, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1129
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;

    invoke-direct {v1, p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;Lcom/bilibili/tv/api/video/BiliVideoDetail$History;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d1} :catch_108

    move v0, v2

    .line 1148
    :goto_d2
    if-nez v0, :cond_e5

    .line 1149
    const-string v0, "VideoDetailApi"

    const-string v1, "Playurl failed, fallback to getVideoDetails"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1157
    :cond_e5
    return-void

    .line 1126
    :cond_e6
    :try_start_e6
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;->val$finalCid:J
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e8} :catch_108

    goto :goto_c3

    .line 1144
    :catch_e9
    move-exception v0

    .line 1145
    :goto_ea
    const-string v2, "VideoDetailApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Player WBI V2 Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_106
    move v0, v1

    goto :goto_d2

    .line 1144
    :catch_108
    move-exception v0

    move v1, v2

    goto :goto_ea
.end method
