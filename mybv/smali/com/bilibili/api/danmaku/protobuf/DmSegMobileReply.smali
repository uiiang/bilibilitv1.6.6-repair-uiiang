.class public Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;
.super Ljava/lang/Object;
.source "DmSegMobileReply.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DmSegMobileReply"


# instance fields
.field private elems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;",
            ">;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->elems:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->state:I

    return-void
.end method

.method public static parseFrom([B)Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;

    invoke-direct {v1}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;-><init>()V

    .line 32
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    :goto_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_41

    .line 36
    invoke-static {v2}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->readVarint(Ljava/io/DataInputStream;)I

    move-result v0

    .line 37
    ushr-int/lit8 v3, v0, 0x3

    .line 38
    and-int/lit8 v0, v0, 0x7

    .line 40
    packed-switch v3, :pswitch_data_b8

    .line 64
    invoke-static {v2, v0}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->skipField(Ljava/io/DataInputStream;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_24

    goto :goto_f

    .line 68
    :catch_24
    move-exception v0

    .line 69
    const-string v2, "DmSegMobileReply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse DmSegMobileReply error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_41
    const-string v0, "DmSegMobileReply"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u89e3\u6790\u5b8c\u6210] count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->elems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v1

    .line 42
    :pswitch_6c
    const/4 v3, 0x2

    if-ne v0, v3, :cond_a4

    .line 43
    :try_start_6f
    invoke-static {v2}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->readVarint(Ljava/io/DataInputStream;)I

    move-result v3

    .line 44
    array-length v0, p0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_24

    move-result v4

    sub-int/2addr v0, v4

    .line 46
    :try_start_79
    invoke-static {p0, v0, v3}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->parseFrom([BII)Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;

    move-result-object v0

    .line 47
    iget-object v4, v1, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->elems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_82} :catch_86

    .line 51
    :goto_82
    :try_start_82
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_f

    .line 48
    :catch_86
    move-exception v0

    .line 49
    const-string v4, "DmSegMobileReply"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse danmaku elem error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 53
    :cond_a4
    invoke-static {v2, v0}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->skipField(Ljava/io/DataInputStream;I)V

    goto/16 :goto_f

    .line 57
    :pswitch_a9
    if-nez v0, :cond_b3

    .line 58
    invoke-static {v2}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->readVarint(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->state:I

    goto/16 :goto_f

    .line 60
    :cond_b3
    invoke-static {v2, v0}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->skipField(Ljava/io/DataInputStream;I)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_b6} :catch_24

    goto/16 :goto_f

    .line 40
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_a9
    .end packed-switch
.end method

.method private static readVarint(Ljava/io/DataInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    move v0, v1

    move v2, v1

    .line 81
    :goto_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 82
    and-int/lit8 v1, v3, 0x7f

    shl-int/2addr v1, v0

    or-int/2addr v1, v2

    .line 83
    add-int/lit8 v0, v0, 0x7

    .line 84
    and-int/lit16 v2, v3, 0x80

    if-nez v2, :cond_14

    .line 85
    return v1

    :cond_14
    move v2, v1

    goto :goto_3
.end method

.method private static skipField(Ljava/io/DataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_34

    .line 104
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_1c
    invoke-static {p0}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->readVarint(Ljava/io/DataInputStream;)I

    .line 106
    :goto_1f
    return-void

    .line 94
    :pswitch_20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1f

    .line 97
    :pswitch_26
    invoke-static {p0}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->readVarint(Ljava/io/DataInputStream;)I

    move-result v0

    .line 98
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1f

    .line 101
    :pswitch_2e
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1f

    .line 89
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_26
        :pswitch_3
        :pswitch_3
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public getElems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->elems:Ljava/util/List;

    return-object v0
.end method

.method public getElemsCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->elems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->state:I

    return v0
.end method
