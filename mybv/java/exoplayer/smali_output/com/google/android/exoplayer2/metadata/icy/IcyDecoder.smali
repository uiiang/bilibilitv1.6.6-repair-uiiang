.class public final Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;
.super Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "IcyDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final METADATA_ELEMENT:Ljava/util/regex/Pattern;

.field private static final STREAM_KEY_NAME:Ljava/lang/String; = "streamtitle"

.field private static final STREAM_KEY_URL:Ljava/lang/String; = "streamurl"


# instance fields
.field private final iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

.field private final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    .line 49
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 50
    sget-object v0, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 51
    return-void
.end method

.method private decodeToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_a} :catch_1d
    .catchall {:try_start_0 .. :try_end_a} :catchall_13

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    return-object v0

    .line 97
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    throw v0

    .line 94
    :catch_1d
    move-exception v0

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    nop

    .line 101
    :try_start_27
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_27 .. :try_end_31} :catch_44
    .catchall {:try_start_27 .. :try_end_31} :catchall_3a

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 101
    return-object v0

    .line 105
    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 107
    throw v0

    .line 102
    :catch_44
    move-exception v0

    .line 103
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    nop

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 15
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 55
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->decodeToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "icyString":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 57
    .local v1, "icyBytes":[B
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 59
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_21

    .line 60
    new-instance v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v5, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v6}, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v2

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v4

    .line 63
    :cond_21
    const/4 v4, 0x0

    .line 64
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 65
    .local v5, "url":Ljava/lang/String;
    const/4 v6, 0x0

    .line 66
    .local v6, "index":I
    sget-object v7, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 67
    .local v7, "matcher":Ljava/util/regex/Matcher;
    :goto_2a
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 68
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "key":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "value":Ljava/lang/String;
    if-eqz v8, :cond_64

    .line 71
    invoke-static {v8}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_78

    :cond_46
    goto :goto_5b

    :sswitch_47
    const-string v11, "streamtitle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_46

    const/4 v10, 0x0

    goto :goto_5c

    :sswitch_51
    const-string v11, "streamurl"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_46

    const/4 v10, 0x1

    goto :goto_5c

    :goto_5b
    const/4 v10, -0x1

    :goto_5c
    packed-switch v10, :pswitch_data_82

    goto :goto_64

    .line 76
    :pswitch_60
    move-object v5, v9

    .line 77
    goto :goto_64

    .line 73
    :pswitch_62
    move-object v4, v9

    .line 74
    nop

    .line 82
    :cond_64
    :goto_64
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 83
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    goto :goto_2a

    .line 84
    :cond_69
    new-instance v8, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v9, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    invoke-direct {v9, v1, v4, v5}, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v3, v2

    invoke-direct {v8, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v8

    :sswitch_data_78
    .sparse-switch
        -0x12cfba11 -> :sswitch_51
        0x622482d8 -> :sswitch_47
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_62
        :pswitch_60
    .end packed-switch
.end method
