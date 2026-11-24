.class Lmybl/BiliLiveContent$2;
.super Ljava/lang/Object;
.source "BiliLiveContent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/BiliLiveContent;->getPlayUrl()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/BiliLiveContent;

.field final synthetic val$cookie:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmybl/BiliLiveContent;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lmybl/BiliLiveContent$2;->this$0:Lmybl/BiliLiveContent;

    iput-object p2, p0, Lmybl/BiliLiveContent$2;->val$cookie:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    const-string v0, "BiliLiveContent"

    const-string v1, "getPlayUrl: \u5f00\u59cbAPI\u8bf7\u6c42"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v4, "https://api.live.bilibili.com/xlive/web-room/v2/index/getRoomPlayInfo"

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 108
    const-string v1, "room_id"

    iget-object v5, p0, Lmybl/BiliLiveContent$2;->this$0:Lmybl/BiliLiveContent;

    iget v5, v5, Lmybl/BiliLiveContent;->mRoomId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "qn"

    iget-object v5, p0, Lmybl/BiliLiveContent$2;->this$0:Lmybl/BiliLiveContent;

    iget v5, v5, Lmybl/BiliLiveContent;->mCurrentQuality:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "platform"

    const-string v5, "web"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "protocol"

    const-string v5, "0,1"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "format"

    const-string v5, "0,1,2"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "codec"

    const-string v5, "0,1,2"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "ptype"

    const-string v5, "8"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "dolby"

    const-string v5, "5"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "panorama"

    const-string v5, "1"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "eotf"

    const-string v5, "0,1,2"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "supported_drms"

    const-string v5, "0,1,2,3"

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v1, 0x0

    .line 121
    :try_start_6d
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v5

    invoke-virtual {v5, v0}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_74} :catch_f3

    move-result-object v0

    .line 126
    :goto_75
    if-eqz v0, :cond_10f

    .line 127
    new-instance v1, Lbl/qa$a;

    const-class v5, Lmybl/BiliLiveContent$playUrlResponse;

    invoke-direct {v1, v5}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v1, "Cookie"

    iget-object v4, p0, Lmybl/BiliLiveContent$2;->val$cookie:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "Referer"

    const-string v4, "https://live.bilibili.com/"

    .line 129
    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    .line 131
    const-string v1, "BiliLiveContent"

    const-string v4, "getPlayUrl: \u4f7f\u7528WBI\u7b7e\u540d\u8bf7\u6c42"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_b8
    const-string v1, "GET"

    invoke-static {v0, v1}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent$playUrlResponse;

    iget-object v1, p0, Lmybl/BiliLiveContent$2;->this$0:Lmybl/BiliLiveContent;

    invoke-virtual {v0, v1}, Lmybl/BiliLiveContent$playUrlResponse;->e(Lmybl/BiliLiveContent;)I

    move-result v0

    .line 149
    const-string v1, "BiliLiveContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlayUrl: API\u8bf7\u6c42\u5b8c\u6210, \u8017\u65f6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 122
    :catch_f3
    move-exception v0

    .line 123
    const-string v5, "BiliLiveContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPlayUrl: WBI\u7b7e\u540d\u5f02\u5e38, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_75

    .line 134
    :cond_10f
    new-instance v0, Lbl/qa$a;

    const-class v1, Lmybl/BiliLiveContent$playUrlResponse;

    invoke-direct {v0, v1}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v1, "Cookie"

    iget-object v4, p0, Lmybl/BiliLiveContent$2;->val$cookie:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "Referer"

    const-string v4, "https://live.bilibili.com/"

    .line 136
    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "appkey"

    .line 137
    invoke-static {}, Lcom/bilibili/api/BiliConfig;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "access_key"

    .line 138
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    invoke-virtual {v4}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "room_id"

    iget-object v4, p0, Lmybl/BiliLiveContent$2;->this$0:Lmybl/BiliLiveContent;

    iget v4, v4, Lmybl/BiliLiveContent;->mRoomId:I

    .line 139
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "qn"

    iget-object v4, p0, Lmybl/BiliLiveContent$2;->this$0:Lmybl/BiliLiveContent;

    iget v4, v4, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 140
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "platform"

    const-string v4, "web"

    .line 141
    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "protocol"

    const-string v4, "0,1"

    .line 142
    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "format"

    const-string v4, "0,1,2"

    .line 143
    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "codec"

    const-string v4, "0,1"

    .line 144
    invoke-virtual {v0, v1, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v1, Lbl/qb;

    invoke-direct {v1}, Lbl/qb;-><init>()V

    .line 145
    invoke-virtual {v0, v1}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    .line 146
    const-string v1, "BiliLiveContent"

    const-string v4, "getPlayUrl: WBI\u7b7e\u540d\u5931\u8d25, \u4f7f\u7528app\u7b7e\u540d\u8bf7\u6c42"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lmybl/BiliLiveContent$2;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
