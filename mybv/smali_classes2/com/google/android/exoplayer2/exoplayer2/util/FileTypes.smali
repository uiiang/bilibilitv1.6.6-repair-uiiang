.class public final Lcom/google/android/exoplayer2/util/FileTypes;
.super Ljava/lang/Object;
.source "FileTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FileTypes$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AC3:I = 0x0

.field public static final AC4:I = 0x1

.field public static final ADTS:I = 0x2

.field public static final AMR:I = 0x3

.field public static final AVI:I = 0x10

.field private static final EXTENSION_AAC:Ljava/lang/String; = ".aac"

.field private static final EXTENSION_AC3:Ljava/lang/String; = ".ac3"

.field private static final EXTENSION_AC4:Ljava/lang/String; = ".ac4"

.field private static final EXTENSION_ADTS:Ljava/lang/String; = ".adts"

.field private static final EXTENSION_AMR:Ljava/lang/String; = ".amr"

.field private static final EXTENSION_AVI:Ljava/lang/String; = ".avi"

.field private static final EXTENSION_EC3:Ljava/lang/String; = ".ec3"

.field private static final EXTENSION_FLAC:Ljava/lang/String; = ".flac"

.field private static final EXTENSION_FLV:Ljava/lang/String; = ".flv"

.field private static final EXTENSION_JPEG:Ljava/lang/String; = ".jpeg"

.field private static final EXTENSION_JPG:Ljava/lang/String; = ".jpg"

.field private static final EXTENSION_M2P:Ljava/lang/String; = ".m2p"

.field private static final EXTENSION_MID:Ljava/lang/String; = ".mid"

.field private static final EXTENSION_MIDI:Ljava/lang/String; = ".midi"

.field private static final EXTENSION_MP3:Ljava/lang/String; = ".mp3"

.field private static final EXTENSION_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_MPEG:Ljava/lang/String; = ".mpeg"

.field private static final EXTENSION_MPG:Ljava/lang/String; = ".mpg"

.field private static final EXTENSION_OPUS:Ljava/lang/String; = ".opus"

.field private static final EXTENSION_PREFIX_CMF:Ljava/lang/String; = ".cmf"

.field private static final EXTENSION_PREFIX_M4:Ljava/lang/String; = ".m4"

.field private static final EXTENSION_PREFIX_MK:Ljava/lang/String; = ".mk"

.field private static final EXTENSION_PREFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_PREFIX_OG:Ljava/lang/String; = ".og"

.field private static final EXTENSION_PREFIX_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_PS:Ljava/lang/String; = ".ps"

.field private static final EXTENSION_SMF:Ljava/lang/String; = ".smf"

.field private static final EXTENSION_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_VTT:Ljava/lang/String; = ".vtt"

.field private static final EXTENSION_WAV:Ljava/lang/String; = ".wav"

.field private static final EXTENSION_WAVE:Ljava/lang/String; = ".wave"

.field private static final EXTENSION_WEBM:Ljava/lang/String; = ".webm"

.field private static final EXTENSION_WEBVTT:Ljava/lang/String; = ".webvtt"

.field public static final FLAC:I = 0x4

.field public static final FLV:I = 0x5

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final JPEG:I = 0xe

.field public static final MATROSKA:I = 0x6

.field public static final MIDI:I = 0xf

.field public static final MP3:I = 0x7

.field public static final MP4:I = 0x8

.field public static final OGG:I = 0x9

.field public static final PS:I = 0xa

.field public static final TS:I = 0xb

.field public static final UNKNOWN:I = -0x1

.field public static final WAV:I = 0xc

.field public static final WEBVTT:I = 0xd


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inferFileTypeFromMimeType(Ljava/lang/String;)I
    .registers 20
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 146
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 147
    return v0

    .line 149
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .end local p0    # "mimeType":Ljava/lang/String;
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/16 v13, 0xf

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x0

    sparse-switch v2, :sswitch_data_16a

    :cond_2b
    goto/16 :goto_154

    :sswitch_2d
    const-string v2, "video/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0xa

    goto/16 :goto_155

    :sswitch_39
    const-string v2, "audio/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0xd

    goto/16 :goto_155

    :sswitch_45
    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0xf

    goto/16 :goto_155

    :sswitch_51
    const-string v2, "audio/midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x9

    goto/16 :goto_155

    :sswitch_5d
    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x7

    goto/16 :goto_155

    :sswitch_68
    const-string v2, "audio/eac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto/16 :goto_155

    :sswitch_73
    const-string v2, "audio/3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x5

    goto/16 :goto_155

    :sswitch_7e
    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x10

    goto/16 :goto_155

    :sswitch_8a
    const-string v2, "audio/wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x16

    goto/16 :goto_155

    :sswitch_96
    const-string v2, "audio/ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x13

    goto/16 :goto_155

    :sswitch_a2
    const-string v2, "audio/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x11

    goto/16 :goto_155

    :sswitch_ae
    const-string v2, "audio/amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x4

    goto/16 :goto_155

    :sswitch_b9
    const-string v2, "audio/ac4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x3

    goto/16 :goto_155

    :sswitch_c4
    const-string v2, "audio/ac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    goto/16 :goto_155

    :sswitch_cf
    const-string v2, "video/x-flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x8

    goto/16 :goto_155

    :sswitch_db
    const-string v2, "application/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0xe

    goto/16 :goto_155

    :sswitch_e7
    const-string v2, "audio/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0xb

    goto/16 :goto_155

    :sswitch_f3
    const-string v2, "text/vtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x17

    goto :goto_155

    :sswitch_fe
    const-string v2, "video/x-msvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x19

    goto :goto_155

    :sswitch_109
    const-string v2, "application/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x12

    goto :goto_155

    :sswitch_114
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x18

    goto :goto_155

    :sswitch_11f
    const-string v2, "audio/amr-wb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x6

    goto :goto_155

    :sswitch_129
    const-string v2, "video/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0xc

    goto :goto_155

    :sswitch_134
    const-string v2, "video/mp2t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x15

    goto :goto_155

    :sswitch_13f
    const-string v2, "video/mp2p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x14

    goto :goto_155

    :sswitch_14a
    const-string v2, "audio/eac3-joc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x2

    goto :goto_155

    :goto_154
    const/4 v2, -0x1

    :goto_155
    packed-switch v2, :pswitch_data_1d4

    .line 194
    return v0

    .line 192
    :pswitch_159
    return v3

    .line 190
    :pswitch_15a
    return v4

    .line 188
    :pswitch_15b
    return v5

    .line 186
    :pswitch_15c
    return v6

    .line 184
    :pswitch_15d
    return v7

    .line 182
    :pswitch_15e
    return v8

    .line 180
    :pswitch_15f
    return v9

    .line 178
    :pswitch_160
    return v10

    .line 174
    :pswitch_161
    return v11

    .line 172
    :pswitch_162
    return v12

    .line 166
    :pswitch_163
    return v13

    .line 164
    :pswitch_164
    return v14

    .line 162
    :pswitch_165
    return v15

    .line 160
    :pswitch_166
    return v16

    .line 156
    :pswitch_167
    return v17

    .line 154
    :pswitch_168
    return v18

    nop

    :sswitch_data_16a
    .sparse-switch
        -0x7e929daa -> :sswitch_14a
        -0x6315f78b -> :sswitch_13f
        -0x6315f787 -> :sswitch_134
        -0x63118f53 -> :sswitch_129
        -0x5fc6f775 -> :sswitch_11f
        -0x58a7d764 -> :sswitch_114
        -0x4a681e4e -> :sswitch_109
        -0x405dba54 -> :sswitch_fe
        -0x3be2f26c -> :sswitch_f3
        -0x17118226 -> :sswitch_e7
        -0x2974308 -> :sswitch_db
        0xd45707 -> :sswitch_cf
        0xb269698 -> :sswitch_c4
        0xb269699 -> :sswitch_b9
        0xb26980d -> :sswitch_ae
        0xb26c538 -> :sswitch_a2
        0xb26cbd6 -> :sswitch_96
        0xb26e933 -> :sswitch_8a
        0x4f62635d -> :sswitch_7e
        0x59976a2d -> :sswitch_73
        0x59ae0c65 -> :sswitch_68
        0x59aeaa01 -> :sswitch_5d
        0x59b1cdba -> :sswitch_51
        0x59b1e81e -> :sswitch_45
        0x59b64a32 -> :sswitch_39
        0x79909c15 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_168
        :pswitch_168
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_166
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_160
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
    .end packed-switch
.end method

.method public static inferFileTypeFromResponseHeaders(Ljava/util/Map;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .line 134
    .local p0, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 136
    .local v0, "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_19

    :cond_11
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x0

    .line 137
    .local v1, "mimeType":Ljava/lang/String;
    :goto_1a
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static inferFileTypeFromUri(Landroid/net/Uri;)I
    .registers 8
    .param p0, "uri"    # Landroid/net/Uri;

    .line 200
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "filename":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 202
    return v1

    .line 203
    :cond_8
    const-string v2, ".ac3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_185

    const-string v2, ".ec3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_185

    .line 205
    :cond_1a
    const-string v2, ".ac4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 206
    return v3

    .line 207
    :cond_24
    const-string v2, ".adts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_183

    const-string v2, ".aac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto/16 :goto_183

    .line 209
    :cond_36
    const-string v2, ".amr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 210
    const/4 v1, 0x3

    return v1

    .line 211
    :cond_40
    const-string v2, ".flac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 212
    const/4 v1, 0x4

    return v1

    .line 213
    :cond_4a
    const-string v2, ".flv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 214
    const/4 v1, 0x5

    return v1

    .line 215
    :cond_54
    const-string v2, ".mid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_180

    .line 216
    const-string v2, ".midi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_180

    .line 217
    const-string v2, ".smf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    goto/16 :goto_180

    .line 219
    :cond_6e
    nop

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, ".mk"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v2, v5

    .line 219
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_17e

    .line 222
    const-string v2, ".webm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto/16 :goto_17e

    .line 224
    :cond_8b
    const-string v2, ".mp3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 225
    const/4 v1, 0x7

    return v1

    .line 226
    :cond_95
    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17b

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".m4"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    sub-int/2addr v4, v6

    .line 227
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_17b

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v4, v5

    .line 230
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_17b

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, ".cmf"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v2, v5

    .line 233
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d3

    goto/16 :goto_17b

    .line 237
    :cond_d3
    nop

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, ".og"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v2, v5

    .line 237
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_178

    .line 240
    const-string v2, ".opus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f0

    goto/16 :goto_178

    .line 242
    :cond_f0
    const-string v2, ".ps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_175

    .line 243
    const-string v2, ".mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_175

    .line 244
    const-string v2, ".mpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_175

    .line 245
    const-string v2, ".m2p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_111

    goto :goto_175

    .line 247
    :cond_111
    const-string v2, ".ts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_172

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v4, v5

    .line 248
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12a

    goto :goto_172

    .line 252
    :cond_12a
    const-string v2, ".wav"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, ".wave"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13b

    goto :goto_16f

    .line 254
    :cond_13b
    const-string v2, ".vtt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16c

    const-string v2, ".webvtt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14c

    goto :goto_16c

    .line 256
    :cond_14c
    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_169

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15d

    goto :goto_169

    .line 258
    :cond_15d
    const-string v2, ".avi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 259
    const/16 v1, 0x10

    return v1

    .line 261
    :cond_168
    return v1

    .line 257
    :cond_169
    :goto_169
    const/16 v1, 0xe

    return v1

    .line 255
    :cond_16c
    :goto_16c
    const/16 v1, 0xd

    return v1

    .line 253
    :cond_16f
    :goto_16f
    const/16 v1, 0xc

    return v1

    .line 251
    :cond_172
    :goto_172
    const/16 v1, 0xb

    return v1

    .line 246
    :cond_175
    :goto_175
    const/16 v1, 0xa

    return v1

    .line 241
    :cond_178
    :goto_178
    const/16 v1, 0x9

    return v1

    .line 236
    :cond_17b
    :goto_17b
    const/16 v1, 0x8

    return v1

    .line 223
    :cond_17e
    :goto_17e
    const/4 v1, 0x6

    return v1

    .line 218
    :cond_180
    :goto_180
    const/16 v1, 0xf

    return v1

    .line 208
    :cond_183
    :goto_183
    const/4 v1, 0x2

    return v1

    .line 204
    :cond_185
    :goto_185
    const/4 v1, 0x0

    return v1
.end method
