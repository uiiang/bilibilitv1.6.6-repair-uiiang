.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;
.super Lbl/vn;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadDynamicVideos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12

    .prologue
    .line 716
    const-string v1, "AuthSpaceVideo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDynamicVideos response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 840
    :cond_26
    :goto_26
    return-void

    .line 716
    :cond_27
    const-string v0, "null"

    goto :goto_13

    .line 719
    :cond_2a
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->j()V

    .line 720
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 722
    if-nez p1, :cond_8c

    .line 723
    :try_start_37
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 724
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 725
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 726
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_52} :catch_53

    goto :goto_26

    .line 832
    :catch_53
    move-exception v0

    .line 833
    const-string v1, "AuthSpaceVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDynamicVideos parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 835
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 836
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 837
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(I)V

    goto :goto_26

    .line 731
    :cond_8c
    :try_start_8c
    const-string v0, "has_more"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 732
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 733
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 735
    if-eqz v3, :cond_211

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_211

    .line 736
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 737
    const/4 v0, 0x0

    :goto_ac
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1d9

    .line 738
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 739
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 740
    const-string v7, "DYNAMIC_TYPE_AV"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c7

    .line 737
    :cond_c4
    :goto_c4
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 743
    :cond_c7
    const-string v6, "modules"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 744
    if-eqz v5, :cond_c4

    .line 746
    const-string v6, "module_dynamic"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 747
    if-eqz v6, :cond_c4

    .line 749
    const-string v7, "major"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 750
    if-eqz v6, :cond_c4

    .line 752
    const-string v7, "archive"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 753
    if-eqz v6, :cond_c4

    .line 755
    const-string v7, "module_author"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 757
    new-instance v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v7}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 758
    const-string v8, "aid"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 759
    iget-wide v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 760
    const-string v8, "bvid"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 761
    const-string v8, "title"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 762
    const-string v8, "cover"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 764
    const-string v8, "stat"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 765
    if-eqz v8, :cond_145

    .line 766
    const-string v9, "play"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 767
    iput-object v9, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 768
    const/4 v10, 0x0

    iput v10, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_12d} :catch_53

    .line 770
    if-eqz v9, :cond_13b

    :try_start_12f
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_13b

    .line 771
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_13b} :catch_231

    .line 774
    :cond_13b
    :goto_13b
    :try_start_13b
    const-string v9, "danmaku"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 775
    iput-object v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 776
    iput-object v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 779
    :cond_145
    if-eqz v5, :cond_15f

    .line 780
    const-string v8, "pub_ts"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 781
    if-eqz v5, :cond_15f

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_152} :catch_53

    move-result v8

    if-nez v8, :cond_15f

    .line 783
    :try_start_155
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15f} :catch_22e

    .line 787
    :cond_15f
    :goto_15f
    :try_start_15f
    iget-object v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v5, :cond_16f

    iget-object v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_17b

    .line 788
    :cond_16f
    const-string v5, "pubdate"

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 791
    :cond_17b
    const-string v5, "duration"

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 792
    const-string v5, "duration_text"

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 793
    if-eqz v5, :cond_1d0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1d0

    .line 794
    iput-object v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 799
    :goto_193
    const-string v5, "badge"

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 800
    if-eqz v5, :cond_1ab

    .line 801
    const-string v8, "text"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    .line 802
    const-string v8, "bg_color"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    .line 805
    :cond_1ab
    const-string v5, "elec_arc_type"

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 806
    const-string v5, "elec_arc_badge"

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 807
    const-string v5, "is_union_video"

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 808
    const-string v5, "is_live_playback"

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 809
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    .line 796
    :cond_1d0
    iget v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v5}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    goto :goto_193

    .line 812
    :cond_1d9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_211

    .line 813
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_207

    .line 814
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->setVideos(Ljava/util/List;)V

    .line 818
    :goto_1f0
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$602(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 820
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_26

    .line 822
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_26

    .line 816
    :cond_207
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->addVideos(Ljava/util/List;)V

    goto :goto_1f0

    .line 827
    :cond_211
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 828
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 829
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 830
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(I)V
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_22c} :catch_53

    goto/16 :goto_26

    .line 784
    :catch_22e
    move-exception v5

    goto/16 :goto_15f

    .line 773
    :catch_231
    move-exception v9

    goto/16 :goto_13b
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 699
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 707
    const-string v0, "AuthSpaceVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDynamicVideos error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 709
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z

    .line 710
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->dynamicOffset:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 711
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$7;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->k()V

    .line 712
    :cond_3a
    return-void
.end method
