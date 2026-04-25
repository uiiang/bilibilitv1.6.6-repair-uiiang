.class public Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;
.super Ljava/lang/Object;
.source "DanmakuElem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DanmakuElem"


# instance fields
.field private color:I

.field private content:Ljava/lang/String;

.field private fontsize:I

.field private midHash:Ljava/lang/String;

.field private mode:I

.field private pool:I

.field private progress:I

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->progress:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->mode:I

    .line 14
    const/16 v0, 0x19

    iput v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->fontsize:I

    .line 15
    const v0, 0xffffff

    iput v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->color:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->midHash:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->content:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->weight:I

    .line 19
    iput v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->pool:I

    return-void
.end method

.method public static parseFrom([BII)Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 54
    new-instance v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;

    invoke-direct {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;-><init>()V

    .line 55
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    :goto_10
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_a9

    .line 58
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    .line 59
    ushr-int/lit8 v3, v2, 0x3

    .line 60
    and-int/lit8 v2, v2, 0x7

    .line 62
    packed-switch v3, :pswitch_data_aa

    .line 126
    :pswitch_21
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto :goto_10

    .line 64
    :pswitch_25
    if-nez v2, :cond_2e

    .line 65
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    iput v2, v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->progress:I

    goto :goto_10

    .line 67
    :cond_2e
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto :goto_10

    .line 71
    :pswitch_32
    if-nez v2, :cond_3b

    .line 72
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    iput v2, v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->mode:I

    goto :goto_10

    .line 74
    :cond_3b
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto :goto_10

    .line 78
    :pswitch_3f
    if-nez v2, :cond_48

    .line 79
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    iput v2, v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->fontsize:I

    goto :goto_10

    .line 81
    :cond_48
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto :goto_10

    .line 85
    :pswitch_4c
    if-nez v2, :cond_55

    .line 86
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    iput v2, v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->color:I

    goto :goto_10

    .line 88
    :cond_55
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto :goto_10

    .line 92
    :pswitch_59
    if-ne v2, v5, :cond_6e

    .line 93
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    .line 94
    new-array v2, v2, [B

    .line 95
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 96
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->midHash:Ljava/lang/String;

    goto :goto_10

    .line 98
    :cond_6e
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto :goto_10

    .line 102
    :pswitch_72
    if-ne v2, v5, :cond_87

    .line 103
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    .line 104
    new-array v2, v2, [B

    .line 105
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 106
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->content:Ljava/lang/String;

    goto :goto_10

    .line 108
    :cond_87
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto :goto_10

    .line 112
    :pswitch_8b
    if-nez v2, :cond_95

    .line 113
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    iput v2, v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->weight:I

    goto/16 :goto_10

    .line 115
    :cond_95
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto/16 :goto_10

    .line 119
    :pswitch_9a
    if-nez v2, :cond_a4

    .line 120
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v2

    iput v2, v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->pool:I

    goto/16 :goto_10

    .line 122
    :cond_a4
    invoke-static {v1, v2}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->skipField(Ljava/io/DataInputStream;I)V

    goto/16 :goto_10

    .line 131
    :cond_a9
    return-object v0

    .line 62
    :pswitch_data_aa
    .packed-switch 0x2
        :pswitch_25
        :pswitch_32
        :pswitch_3f
        :pswitch_4c
        :pswitch_59
        :pswitch_72
        :pswitch_21
        :pswitch_8b
        :pswitch_21
        :pswitch_9a
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

    .line 135
    move v0, v1

    move v2, v1

    .line 139
    :goto_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 140
    and-int/lit8 v1, v3, 0x7f

    shl-int/2addr v1, v0

    or-int/2addr v1, v2

    .line 141
    add-int/lit8 v0, v0, 0x7

    .line 142
    and-int/lit16 v2, v3, 0x80

    if-nez v2, :cond_14

    .line 143
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
    .line 147
    packed-switch p1, :pswitch_data_34

    .line 162
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

    .line 149
    :pswitch_1c
    invoke-static {p0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    .line 164
    :goto_1f
    return-void

    .line 152
    :pswitch_20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1f

    .line 155
    :pswitch_26
    invoke-static {p0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->readVarint(Ljava/io/DataInputStream;)I

    move-result v0

    .line 156
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1f

    .line 159
    :pswitch_2e
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1f

    .line 147
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
.method public getColor()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->color:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFontsize()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->fontsize:I

    return v0
.end method

.method public getMidHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->midHash:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->mode:I

    return v0
.end method

.method public getPool()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->pool:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->progress:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->weight:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DanmakuElem{progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->fontsize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->pool:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
