.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ATTR_CLOSED_CAPTIONS_NONE:Ljava/lang/String; = "CLOSED-CAPTIONS=NONE"

.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "NO"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "YES"

.field private static final KEYFORMAT_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEYFORMAT_PLAYREADY:Ljava/lang/String; = "com.microsoft.playready"

.field private static final KEYFORMAT_WIDEVINE_PSSH_BINARY:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field private static final KEYFORMAT_WIDEVINE_PSSH_JSON:Ljava/lang/String; = "com.widevine"

.field private static final LOG_TAG:Ljava/lang/String; = "HlsPlaylistParser"

.field private static final METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final METHOD_SAMPLE_AES:Ljava/lang/String; = "SAMPLE-AES"

.field private static final METHOD_SAMPLE_AES_CENC:Ljava/lang/String; = "SAMPLE-AES-CENC"

.field private static final METHOD_SAMPLE_AES_CTR:Ljava/lang/String; = "SAMPLE-AES-CTR"

.field private static final PLAYLIST_HEADER:Ljava/lang/String; = "#EXTM3U"

.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

.field private static final REGEX_CHANNELS:Ljava/util/regex/Pattern;

.field private static final REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field private static final REGEX_GAP:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field private static final REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_MSN:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_PART:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_PRECISE:Ljava/util/regex/Pattern;

.field private static final REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

.field private static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field private static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO:Ljava/util/regex/Pattern;

.field private static final TAG_BYTERANGE:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final TAG_DEFINE:Ljava/lang/String; = "#EXT-X-DEFINE"

.field private static final TAG_DISCONTINUITY:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final TAG_DISCONTINUITY_SEQUENCE:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final TAG_ENDLIST:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final TAG_GAP:Ljava/lang/String; = "#EXT-X-GAP"

.field private static final TAG_IFRAME:Ljava/lang/String; = "#EXT-X-I-FRAMES-ONLY"

.field private static final TAG_INDEPENDENT_SEGMENTS:Ljava/lang/String; = "#EXT-X-INDEPENDENT-SEGMENTS"

.field private static final TAG_INIT_SEGMENT:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final TAG_I_FRAME_STREAM_INF:Ljava/lang/String; = "#EXT-X-I-FRAME-STREAM-INF"

.field private static final TAG_KEY:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final TAG_MEDIA:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final TAG_MEDIA_DURATION:Ljava/lang/String; = "#EXTINF"

.field private static final TAG_MEDIA_SEQUENCE:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final TAG_PART:Ljava/lang/String; = "#EXT-X-PART"

.field private static final TAG_PART_INF:Ljava/lang/String; = "#EXT-X-PART-INF"

.field private static final TAG_PLAYLIST_TYPE:Ljava/lang/String; = "#EXT-X-PLAYLIST-TYPE"

.field private static final TAG_PREFIX:Ljava/lang/String; = "#EXT"

.field private static final TAG_PRELOAD_HINT:Ljava/lang/String; = "#EXT-X-PRELOAD-HINT"

.field private static final TAG_PROGRAM_DATE_TIME:Ljava/lang/String; = "#EXT-X-PROGRAM-DATE-TIME"

.field private static final TAG_RENDITION_REPORT:Ljava/lang/String; = "#EXT-X-RENDITION-REPORT"

.field private static final TAG_SERVER_CONTROL:Ljava/lang/String; = "#EXT-X-SERVER-CONTROL"

.field private static final TAG_SESSION_KEY:Ljava/lang/String; = "#EXT-X-SESSION-KEY"

.field private static final TAG_SKIP:Ljava/lang/String; = "#EXT-X-SKIP"

.field private static final TAG_START:Ljava/lang/String; = "#EXT-X-START"

.field private static final TAG_STREAM_INF:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final TAG_TARGET_DURATION:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TAG_VERSION:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TYPE_CLOSED_CAPTIONS:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final TYPE_MAP:Ljava/lang/String; = "MAP"

.field private static final TYPE_PART:Ljava/lang/String; = "PART"

.field private static final TYPE_SUBTITLES:Ljava/lang/String; = "SUBTITLES"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private final multivariantPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

.field private final previousMediaPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 139
    nop

    .line 140
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 141
    const-string v0, "VIDEO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 142
    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 143
    const-string v0, "SUBTITLES=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 144
    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 145
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 146
    const-string v0, "CHANNELS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 147
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 148
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 150
    nop

    .line 151
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 152
    const-string v0, "DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 153
    nop

    .line 154
    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 156
    nop

    .line 157
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 158
    nop

    .line 159
    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 160
    nop

    .line 161
    const-string v0, "CAN-SKIP-DATERANGES"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 162
    nop

    .line 163
    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 164
    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 165
    nop

    .line 166
    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 167
    nop

    .line 168
    const-string v0, "CAN-BLOCK-RELOAD"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 169
    nop

    .line 170
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 171
    nop

    .line 172
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 173
    nop

    .line 174
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 175
    const-string v0, "LAST-MSN=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    .line 176
    const-string v0, "LAST-PART=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    .line 177
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 178
    nop

    .line 179
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 180
    nop

    .line 181
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 182
    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 183
    nop

    .line 184
    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 185
    nop

    .line 186
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 199
    const-string v0, "KEYFORMAT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 200
    nop

    .line 201
    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 202
    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 203
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 204
    nop

    .line 205
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 215
    nop

    .line 216
    const-string v0, "TYPE=(PART|MAP)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    .line 217
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 218
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 219
    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 220
    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 221
    nop

    .line 222
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 223
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 224
    const-string v0, "DEFAULT"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 225
    const-string v0, "FORCED"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 226
    const-string v0, "INDEPENDENT"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 227
    const-string v0, "GAP"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    .line 228
    const-string v0, "PRECISE"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 229
    const-string v0, "VALUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 230
    const-string v0, "IMPORT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 231
    nop

    .line 232
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 231
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 242
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 3
    .param p1, "multivariantPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .param p2, "previousMediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    .line 258
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 259
    return-void
.end method

.method private static checkPlaylistHeader(Ljava/io/BufferedReader;)Z
    .registers 7
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 305
    .local v0, "last":I
    const/16 v1, 0xef

    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    .line 306
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v3, 0xbb

    if-ne v1, v3, :cond_1f

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v3, 0xbf

    if-eq v1, v3, :cond_1a

    goto :goto_1f

    .line 310
    :cond_1a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_20

    .line 307
    :cond_1f
    :goto_1f
    return v2

    .line 312
    :cond_20
    :goto_20
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 313
    const-string v1, "#EXTM3U"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 314
    .local v3, "playlistHeaderLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    if-ge v4, v3, :cond_3c

    .line 315
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_35

    .line 316
    return v2

    .line 318
    :cond_35
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 320
    .end local v4    # "i":I
    :cond_3c
    invoke-static {p0, v2, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 321
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isLinebreak(I)Z

    move-result v1

    return v1
.end method

.method private static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .param p0, "attribute"    # Ljava/lang/String;

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static getPlaylistProtectionSchemes(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 6
    .param p0, "encryptionScheme"    # Ljava/lang/String;
    .param p1, "schemeDatas"    # [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 1076
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 1077
    .local v0, "playlistSchemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_13

    .line 1078
    aget-object v2, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->copyWithData([B)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1077
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1080
    .end local v1    # "i":I
    :cond_13
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    return-object v1
.end method

.method private static getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "segmentMediaSequence"    # J
    .param p2, "fullSegmentEncryptionKeyUri"    # Ljava/lang/String;
    .param p3, "fullSegmentEncryptionIV"    # Ljava/lang/String;

    .line 1088
    if-nez p2, :cond_4

    .line 1089
    const/4 v0, 0x0

    return-object v0

    .line 1090
    :cond_4
    if-eqz p3, :cond_7

    .line 1091
    return-object p3

    .line 1093
    :cond_7
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 608
    .local p0, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 609
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 610
    .local v1, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 611
    return-object v1

    .line 608
    .end local v1    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 614
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 630
    .local p0, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 631
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 632
    .local v1, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 633
    return-object v1

    .line 630
    .end local v1    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 636
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 619
    .local p0, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 620
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 621
    .local v1, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 622
    return-object v1

    .line 619
    .end local v1    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .registers 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1221
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .registers 10
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "keyFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1138
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 1139
    const-string v1, "1"

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "keyFormatVersions":Ljava/lang/String;
    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    if-eqz v2, :cond_2f

    .line 1141
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, "uriString":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v6, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 1145
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v6, v5, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 1142
    return-object v2

    .line 1146
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_2f
    const-string v2, "com.widevine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1147
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v2, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string v3, "hls"

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object v1

    .line 1148
    :cond_45
    const-string v2, "com.microsoft.playready"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1149
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    .restart local v1    # "uriString":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1151
    .local v2, "data":[B
    sget-object v3, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v3

    .line 1152
    .local v3, "psshData":[B
    new-instance v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v6, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-direct {v4, v6, v5, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object v4

    .line 1154
    .end local v1    # "uriString":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "psshData":[B
    :cond_73
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .line 1185
    const-string v0, "SAMPLE-AES-CENC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    .line 1187
    :cond_11
    const-string v0, "cbcs"

    goto :goto_16

    .line 1186
    :cond_14
    :goto_14
    const-string v0, "cenc"

    .line 1185
    :goto_16
    return-object v0
.end method

.method private static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .registers 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1191
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .registers 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1203
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseMediaPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .registers 90
    .param p0, "multivariantPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .param p1, "previousMediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "iterator"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p3, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 646
    .local v2, "playlistType":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 647
    .local v3, "startOffsetUs":J
    const-wide/16 v5, 0x0

    .line 648
    .local v5, "mediaSequence":J
    const/4 v7, 0x1

    .line 649
    .local v7, "version":I
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 650
    .local v8, "targetDurationUs":J
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 651
    .local v10, "partTargetDurationUs":J
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->hasIndependentSegments:Z

    .line 652
    .local v12, "hasIndependentSegmentsTag":Z
    const/4 v13, 0x0

    .line 653
    .local v13, "hasEndTag":Z
    const/4 v14, 0x0

    .line 654
    .local v14, "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 655
    .local v15, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v17, v16

    .line 656
    .local v17, "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v44, v16

    .line 657
    .local v44, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v16, "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    const/16 v18, 0x0

    .line 659
    .local v18, "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v45, v19

    .line 660
    .local v45, "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v46, v19

    .line 662
    .local v46, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v19, 0x0

    .line 663
    .local v19, "segmentDurationUs":J
    const-string v21, ""

    .line 664
    .local v21, "segmentTitle":Ljava/lang/String;
    const/16 v22, 0x0

    .line 665
    .local v22, "hasDiscontinuitySequence":Z
    const/16 v23, 0x0

    .line 666
    .local v23, "playlistDiscontinuitySequence":I
    const/16 v24, 0x0

    .line 667
    .local v24, "relativeDiscontinuitySequence":I
    const-wide/16 v25, 0x0

    .line 668
    .local v25, "playlistStartTimeUs":J
    const-wide/16 v27, 0x0

    .line 669
    .local v27, "segmentStartTimeUs":J
    const/16 v29, 0x0

    .line 670
    .local v29, "preciseStart":Z
    const-wide/16 v30, 0x0

    .line 671
    .local v30, "segmentByteRangeOffset":J
    const-wide/16 v32, -0x1

    .line 672
    .local v32, "segmentByteRangeLength":J
    const-wide/16 v34, 0x0

    .line 673
    .local v34, "partStartTimeUs":J
    const-wide/16 v36, 0x0

    .line 674
    .local v36, "partByteRangeOffset":J
    const/16 v38, 0x0

    .line 675
    .local v38, "isIFrameOnly":Z
    const-wide/16 v39, 0x0

    .line 676
    .local v39, "segmentMediaSequence":J
    const/16 v41, 0x0

    .line 677
    .local v41, "hasGapTag":Z
    new-instance v42, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    const-wide v48, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v50, 0x0

    const-wide v51, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v53, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v55, 0x0

    move-object/from16 v47, v42

    invoke-direct/range {v47 .. v55}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    .line 685
    .local v42, "serverControl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;
    const/16 v43, 0x0

    .line 686
    .local v43, "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    const/16 v47, 0x0

    .line 687
    .local v47, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    const/16 v48, 0x0

    .line 688
    .local v48, "fullSegmentEncryptionIV":Ljava/lang/String;
    new-instance v49, Ljava/util/TreeMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v50, v49

    .line 689
    .local v50, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/16 v49, 0x0

    .line 690
    .local v49, "encryptionScheme":Ljava/lang/String;
    const/16 v51, 0x0

    move-wide/from16 v75, v3

    move/from16 v74, v7

    move-wide/from16 v69, v8

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, v24

    move-wide/from16 v55, v25

    move-wide/from16 v57, v27

    move/from16 v59, v29

    move-wide/from16 v60, v30

    move-wide/from16 v62, v32

    move-wide/from16 v64, v34

    move-wide/from16 v66, v36

    move/from16 v68, v38

    move-wide/from16 v8, v39

    move/from16 v71, v41

    move-object/from16 v72, v42

    move-object/from16 v73, v43

    move-object/from16 v7, v47

    move-object/from16 v3, v48

    move-object/from16 v4, v49

    move-object/from16 v77, v51

    move/from16 v47, v13

    move-object/from16 v13, v18

    move-wide/from16 v48, v19

    move-object/from16 v51, v21

    .line 693
    .end local v18    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .end local v19    # "segmentDurationUs":J
    .end local v21    # "segmentTitle":Ljava/lang/String;
    .end local v22    # "hasDiscontinuitySequence":Z
    .end local v23    # "playlistDiscontinuitySequence":I
    .end local v24    # "relativeDiscontinuitySequence":I
    .end local v25    # "playlistStartTimeUs":J
    .end local v27    # "segmentStartTimeUs":J
    .end local v29    # "preciseStart":Z
    .end local v30    # "segmentByteRangeOffset":J
    .end local v32    # "segmentByteRangeLength":J
    .end local v34    # "partStartTimeUs":J
    .end local v36    # "partByteRangeOffset":J
    .end local v38    # "isIFrameOnly":Z
    .end local v39    # "segmentMediaSequence":J
    .end local v41    # "hasGapTag":Z
    .end local v42    # "serverControl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;
    .end local v43    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v49    # "encryptionScheme":Ljava/lang/String;
    .local v3, "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v4, "encryptionScheme":Ljava/lang/String;
    .local v7, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v8, "segmentMediaSequence":J
    .local v13, "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .local v47, "hasEndTag":Z
    .local v48, "segmentDurationUs":J
    .local v51, "segmentTitle":Ljava/lang/String;
    .local v52, "hasDiscontinuitySequence":Z
    .local v53, "playlistDiscontinuitySequence":I
    .local v54, "relativeDiscontinuitySequence":I
    .local v55, "playlistStartTimeUs":J
    .local v57, "segmentStartTimeUs":J
    .local v59, "preciseStart":Z
    .local v60, "segmentByteRangeOffset":J
    .local v62, "segmentByteRangeLength":J
    .local v64, "partStartTimeUs":J
    .local v66, "partByteRangeOffset":J
    .local v68, "isIFrameOnly":Z
    .local v69, "targetDurationUs":J
    .local v71, "hasGapTag":Z
    .local v72, "serverControl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;
    .local v73, "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v74, "version":I
    .local v75, "startOffsetUs":J
    .local v77, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_c0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v18

    move/from16 v78, v2

    .end local v2    # "playlistType":I
    .local v78, "playlistType":I
    const-wide/16 v19, 0x0

    move-object/from16 v79, v3

    .end local v3    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v79, "fullSegmentEncryptionIV":Ljava/lang/String;
    if-eqz v18, :cond_804

    .line 694
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "line":Ljava/lang/String;
    const-string v2, "#EXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 698
    move-object/from16 v2, v46

    .end local v46    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    .line 696
    .end local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v46    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_de
    move-object/from16 v2, v46

    .line 701
    .end local v46    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e0
    move-object/from16 v46, v2

    .end local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v46    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 702
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "playlistTypeString":Ljava/lang/String;
    move-wide/from16 v80, v10

    .end local v10    # "partTargetDurationUs":J
    .local v80, "partTargetDurationUs":J
    const-string v10, "VOD"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    .line 704
    const/4 v10, 0x1

    move v2, v10

    .end local v78    # "playlistType":I
    .local v10, "playlistType":I
    goto :goto_10a

    .line 705
    .end local v10    # "playlistType":I
    .restart local v78    # "playlistType":I
    :cond_fd
    const-string v10, "EVENT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_108

    .line 706
    const/4 v10, 0x2

    move v2, v10

    .end local v78    # "playlistType":I
    .restart local v10    # "playlistType":I
    goto :goto_10a

    .line 705
    .end local v10    # "playlistType":I
    .restart local v78    # "playlistType":I
    :cond_108
    move/from16 v2, v78

    .line 708
    .end local v78    # "playlistType":I
    .local v2, "playlistType":I
    :goto_10a
    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    goto :goto_c0

    .end local v2    # "playlistType":I
    .end local v80    # "partTargetDurationUs":J
    .local v10, "partTargetDurationUs":J
    .restart local v78    # "playlistType":I
    :cond_10f
    move-wide/from16 v80, v10

    .end local v10    # "partTargetDurationUs":J
    .restart local v80    # "partTargetDurationUs":J
    const-string v2, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 709
    const/16 v68, 0x1

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    goto :goto_c0

    .line 710
    :cond_122
    const-string v2, "#EXT-X-START"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide v10, 0x412e848000000000L    # 1000000.0

    if-eqz v2, :cond_14b

    .line 711
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v18

    mul-double v10, v10, v18

    double-to-long v10, v10

    .line 712
    .end local v75    # "startOffsetUs":J
    .local v10, "startOffsetUs":J
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 713
    move-wide/from16 v18, v10

    const/4 v10, 0x0

    .end local v10    # "startOffsetUs":J
    .local v18, "startOffsetUs":J
    invoke-static {v3, v2, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v59

    move-wide/from16 v75, v18

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    goto/16 :goto_c0

    .line 714
    .end local v18    # "startOffsetUs":J
    .restart local v75    # "startOffsetUs":J
    :cond_14b
    const-string v2, "#EXT-X-SERVER-CONTROL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 715
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseServerControl(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-result-object v72

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    goto/16 :goto_c0

    .line 716
    :cond_15f
    const-string v2, "#EXT-X-PART-INF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_176

    .line 717
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v18

    .line 718
    .local v18, "partTargetDurationSeconds":D
    mul-double v10, v10, v18

    double-to-long v10, v10

    .line 719
    .end local v18    # "partTargetDurationSeconds":D
    .end local v80    # "partTargetDurationUs":J
    .local v10, "partTargetDurationUs":J
    move/from16 v2, v78

    move-object/from16 v3, v79

    goto/16 :goto_c0

    .end local v10    # "partTargetDurationUs":J
    .restart local v80    # "partTargetDurationUs":J
    :cond_176
    const-string v2, "#EXT-X-MAP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v10, "@"

    if-eqz v2, :cond_1e8

    .line 720
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "uri":Ljava/lang/String;
    sget-object v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v3, v11, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 722
    .local v11, "byteRange":Ljava/lang/String;
    if-eqz v11, :cond_1a9

    .line 723
    invoke-static {v11, v10}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 724
    .local v10, "splitByteRange":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v62

    .line 725
    move-object/from16 v26, v11

    .end local v11    # "byteRange":Ljava/lang/String;
    .local v26, "byteRange":Ljava/lang/String;
    array-length v11, v10

    move/from16 v82, v12

    const/4 v12, 0x1

    .end local v12    # "hasIndependentSegmentsTag":Z
    .local v82, "hasIndependentSegmentsTag":Z
    if-le v11, v12, :cond_1ad

    .line 726
    aget-object v11, v10, v12

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v60

    goto :goto_1ad

    .line 722
    .end local v10    # "splitByteRange":[Ljava/lang/String;
    .end local v26    # "byteRange":Ljava/lang/String;
    .end local v82    # "hasIndependentSegmentsTag":Z
    .restart local v11    # "byteRange":Ljava/lang/String;
    .restart local v12    # "hasIndependentSegmentsTag":Z
    :cond_1a9
    move-object/from16 v26, v11

    move/from16 v82, v12

    .line 729
    .end local v11    # "byteRange":Ljava/lang/String;
    .end local v12    # "hasIndependentSegmentsTag":Z
    .restart local v26    # "byteRange":Ljava/lang/String;
    .restart local v82    # "hasIndependentSegmentsTag":Z
    :cond_1ad
    :goto_1ad
    const-wide/16 v10, -0x1

    cmp-long v12, v62, v10

    if-nez v12, :cond_1b5

    .line 731
    const-wide/16 v60, 0x0

    .line 733
    :cond_1b5
    if-eqz v7, :cond_1c2

    if-eqz v79, :cond_1ba

    goto :goto_1c2

    .line 735
    :cond_1ba
    const-string v10, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v10

    throw v10

    .line 740
    :cond_1c2
    :goto_1c2
    new-instance v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v18, v10

    move-object/from16 v19, v2

    move-wide/from16 v20, v60

    move-wide/from16 v22, v62

    move-object/from16 v24, v7

    move-object/from16 v25, v79

    invoke-direct/range {v18 .. v25}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object v14, v10

    .line 747
    const-wide/16 v10, -0x1

    cmp-long v12, v62, v10

    if-eqz v12, :cond_1dc

    .line 748
    add-long v60, v60, v62

    .line 750
    :cond_1dc
    const-wide/16 v62, -0x1

    .line 751
    .end local v2    # "uri":Ljava/lang/String;
    .end local v26    # "byteRange":Ljava/lang/String;
    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    goto/16 :goto_c0

    .end local v82    # "hasIndependentSegmentsTag":Z
    .restart local v12    # "hasIndependentSegmentsTag":Z
    :cond_1e8
    move/from16 v82, v12

    .end local v12    # "hasIndependentSegmentsTag":Z
    .restart local v82    # "hasIndependentSegmentsTag":Z
    const-string v2, "#EXT-X-TARGETDURATION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_208

    .line 752
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    int-to-long v10, v2

    const-wide/32 v18, 0xf4240

    mul-long v69, v10, v18

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    goto/16 :goto_c0

    .line 753
    :cond_208
    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_221

    .line 754
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v5

    .line 755
    move-wide v8, v5

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    goto/16 :goto_c0

    .line 756
    :cond_221
    const-string v2, "#EXT-X-VERSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_239

    .line 757
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v74

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    goto/16 :goto_c0

    .line 758
    :cond_239
    const-string v2, "#EXT-X-DEFINE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_279

    .line 759
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "importName":Ljava/lang/String;
    if-eqz v2, :cond_257

    .line 761
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 762
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_256

    .line 763
    invoke-virtual {v15, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .end local v10    # "value":Ljava/lang/String;
    :cond_256
    goto :goto_266

    .line 768
    :cond_257
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 769
    invoke-static {v3, v10, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 770
    invoke-static {v3, v11, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 768
    invoke-virtual {v15, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .end local v2    # "importName":Ljava/lang/String;
    :goto_266
    move-object/from16 v83, v13

    move-object v1, v15

    move-object/from16 v10, v16

    move-object/from16 v15, v44

    move-object/from16 v13, v50

    move-object/from16 v50, v45

    move-wide/from16 v44, v5

    move-object/from16 v6, v17

    move-object/from16 v5, v79

    goto/16 :goto_7e8

    :cond_279
    const-string v2, "#EXTINF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_299

    .line 773
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v48

    .line 774
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    const-string v10, ""

    invoke-static {v3, v2, v10, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v51

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    goto/16 :goto_c0

    .line 775
    :cond_299
    const-string v2, "#EXT-X-SKIP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_377

    .line 776
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    .line 777
    .local v2, "skippedSegmentCount":I
    if-eqz v1, :cond_2b2

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2b2

    const/16 v18, 0x1

    goto :goto_2b4

    :cond_2b2
    const/16 v18, 0x0

    :goto_2b4
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 778
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v11, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v11, v5, v11

    long-to-int v10, v11

    .line 779
    .local v10, "startIndex":I
    add-int v11, v10, v2

    .line 780
    .local v11, "endIndex":I
    if-ltz v10, :cond_368

    iget-object v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-gt v11, v12, :cond_368

    .line 784
    move v12, v10

    move-object/from16 v83, v13

    move-object/from16 v18, v14

    move-wide/from16 v13, v57

    .end local v14    # "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v57    # "segmentStartTimeUs":J
    .local v12, "i":I
    .local v13, "segmentStartTimeUs":J
    .local v18, "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .local v83, "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    :goto_2d5
    if-ge v12, v11, :cond_34d

    .line 785
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 786
    .local v0, "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    move/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "startIndex":I
    .end local v11    # "endIndex":I
    .local v19, "startIndex":I
    .local v20, "endIndex":I
    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v21, v5, v10

    if-eqz v21, :cond_2f4

    .line 790
    iget v10, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    sub-int v10, v10, v53

    iget v11, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr v10, v11

    .line 794
    .local v10, "newRelativeDiscontinuitySequence":I
    invoke-virtual {v0, v13, v14, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWith(JI)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v0

    .line 796
    .end local v10    # "newRelativeDiscontinuitySequence":I
    :cond_2f4
    move-object/from16 v11, v44

    .end local v44    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v11, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    move v10, v2

    .end local v2    # "skippedSegmentCount":I
    .local v10, "skippedSegmentCount":I
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v13, v1

    .line 798
    move-wide/from16 v64, v13

    .line 799
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    const-wide/16 v21, -0x1

    cmp-long v23, v1, v21

    if-eqz v23, :cond_310

    .line 800
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    move-wide/from16 v21, v13

    .end local v13    # "segmentStartTimeUs":J
    .local v21, "segmentStartTimeUs":J
    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    add-long v60, v1, v13

    goto :goto_312

    .line 799
    .end local v21    # "segmentStartTimeUs":J
    .restart local v13    # "segmentStartTimeUs":J
    :cond_310
    move-wide/from16 v21, v13

    .line 802
    .end local v13    # "segmentStartTimeUs":J
    .restart local v21    # "segmentStartTimeUs":J
    :goto_312
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    .line 803
    .end local v54    # "relativeDiscontinuitySequence":I
    .local v1, "relativeDiscontinuitySequence":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 804
    .end local v18    # "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .local v2, "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 805
    .end local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v13, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    .line 806
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    if-eqz v14, :cond_32d

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 807
    move/from16 v23, v1

    .end local v1    # "relativeDiscontinuitySequence":I
    .local v23, "relativeDiscontinuitySequence":I
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_333

    goto :goto_32f

    .line 806
    .end local v23    # "relativeDiscontinuitySequence":I
    .restart local v1    # "relativeDiscontinuitySequence":I
    :cond_32d
    move/from16 v23, v1

    .line 808
    .end local v1    # "relativeDiscontinuitySequence":I
    .restart local v23    # "relativeDiscontinuitySequence":I
    :goto_32f
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v79, v1

    .line 810
    :cond_333
    const-wide/16 v24, 0x1

    add-long v8, v8, v24

    .line 784
    .end local v0    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v18, v2

    move v2, v10

    move-object/from16 v44, v11

    move-object/from16 v77, v13

    move/from16 v10, v19

    move/from16 v11, v20

    move-wide/from16 v13, v21

    move/from16 v54, v23

    goto :goto_2d5

    .end local v19    # "startIndex":I
    .end local v20    # "endIndex":I
    .end local v21    # "segmentStartTimeUs":J
    .end local v23    # "relativeDiscontinuitySequence":I
    .local v2, "skippedSegmentCount":I
    .local v10, "startIndex":I
    .local v11, "endIndex":I
    .local v13, "segmentStartTimeUs":J
    .restart local v18    # "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v44    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v54    # "relativeDiscontinuitySequence":I
    .restart local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_34d
    move/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v11, v44

    move v10, v2

    .line 812
    .end local v2    # "skippedSegmentCount":I
    .end local v10    # "startIndex":I
    .end local v12    # "i":I
    .end local v44    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v11, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v57, v13

    move-object/from16 v14, v18

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v13, v83

    goto/16 :goto_c0

    .line 780
    .end local v18    # "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .restart local v2    # "skippedSegmentCount":I
    .restart local v10    # "startIndex":I
    .local v11, "endIndex":I
    .local v13, "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .restart local v14    # "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v44    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v57    # "segmentStartTimeUs":J
    :cond_368
    move/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v83, v13

    move-object/from16 v11, v44

    move v10, v2

    .line 782
    .end local v2    # "skippedSegmentCount":I
    .end local v13    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .end local v44    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v10, "skippedSegmentCount":I
    .local v11, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v19    # "startIndex":I
    .restart local v20    # "endIndex":I
    .restart local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    throw v0

    .line 812
    .end local v10    # "skippedSegmentCount":I
    .end local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v19    # "startIndex":I
    .end local v20    # "endIndex":I
    .end local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .restart local v13    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .restart local v44    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    :cond_377
    move-object/from16 v83, v13

    move-object/from16 v11, v44

    .end local v13    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .end local v44    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3ef

    .line 813
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v3, v0, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "method":Ljava/lang/String;
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 815
    const-string v2, "identity"

    invoke-static {v3, v1, v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "keyFormat":Ljava/lang/String;
    const/4 v7, 0x0

    .line 817
    const/4 v10, 0x0

    .line 818
    .end local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v10, "fullSegmentEncryptionIV":Ljava/lang/String;
    const-string v12, "NONE"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a4

    .line 819
    invoke-virtual/range {v50 .. v50}, Ljava/util/TreeMap;->clear()V

    .line 820
    const/4 v2, 0x0

    move-object/from16 v77, v2

    move-object/from16 v13, v50

    .end local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v2, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    goto :goto_3dc

    .line 822
    .end local v2    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_3a4
    sget-object v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    invoke-static {v3, v12, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 823
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c5

    .line 824
    const-string v2, "AES-128"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    .line 826
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move-object/from16 v13, v50

    .end local v7    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v2, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    goto :goto_3dc

    .line 824
    .end local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v7    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    :cond_3c2
    move-object/from16 v13, v50

    goto :goto_3dc

    .line 832
    :cond_3c5
    if-nez v4, :cond_3cb

    .line 833
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 835
    :cond_3cb
    invoke-static {v3, v1, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v2

    .line 836
    .local v2, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    if-eqz v2, :cond_3da

    .line 837
    const/4 v12, 0x0

    .line 838
    .end local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v12, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    move-object/from16 v13, v50

    .end local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v13, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-virtual {v13, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v77, v12

    goto :goto_3dc

    .line 836
    .end local v12    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v13    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_3da
    move-object/from16 v13, v50

    .line 842
    .end local v0    # "method":Ljava/lang/String;
    .end local v1    # "keyFormat":Ljava/lang/String;
    .end local v2    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v13    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :goto_3dc
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v10

    move-object/from16 v44, v11

    move-object/from16 v50, v13

    move/from16 v2, v78

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v13, v83

    goto/16 :goto_c0

    .end local v10    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v13    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    :cond_3ef
    move-object/from16 v13, v50

    .end local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v13    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42a

    .line 843
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v3, v0, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "byteRange":Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "splitByteRange":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v62

    .line 846
    array-length v2, v1

    const/4 v10, 0x1

    if-le v2, v10, :cond_416

    .line 847
    aget-object v2, v1, v10

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v60, v18

    .line 849
    .end local v0    # "byteRange":Ljava/lang/String;
    .end local v1    # "splitByteRange":[Ljava/lang/String;
    :cond_416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v44, v11

    move-object/from16 v50, v13

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v13, v83

    goto/16 :goto_c0

    :cond_42a
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_458

    .line 850
    const/16 v52, 0x1

    .line 851
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v44, v11

    move-object/from16 v50, v13

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v13, v83

    goto/16 :goto_c0

    .line 852
    :cond_458
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_476

    .line 853
    add-int/lit8 v54, v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v44, v11

    move-object/from16 v50, v13

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v13, v83

    goto/16 :goto_c0

    .line 854
    :cond_476
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b9

    .line 855
    cmp-long v0, v55, v19

    if-nez v0, :cond_4ab

    .line 856
    nop

    .line 857
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    .line 858
    .local v0, "programDatetimeUs":J
    sub-long v55, v0, v57

    .line 859
    .end local v0    # "programDatetimeUs":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v44, v11

    move-object/from16 v50, v13

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v13, v83

    goto/16 :goto_c0

    .line 855
    :cond_4ab
    move-object v1, v15

    move-object/from16 v10, v16

    move-object/from16 v50, v45

    move-wide/from16 v44, v5

    move-object v15, v11

    move-object/from16 v6, v17

    move-object/from16 v5, v79

    goto/16 :goto_7e8

    .line 860
    :cond_4b9
    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d7

    .line 861
    const/16 v71, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v44, v11

    move-object/from16 v50, v13

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v13, v83

    goto/16 :goto_c0

    .line 862
    :cond_4d7
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f2

    .line 863
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v44, v11

    move-object/from16 v50, v13

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move-object/from16 v13, v83

    .end local v82    # "hasIndependentSegmentsTag":Z
    .local v12, "hasIndependentSegmentsTag":Z
    goto/16 :goto_c0

    .line 864
    .end local v12    # "hasIndependentSegmentsTag":Z
    .restart local v82    # "hasIndependentSegmentsTag":Z
    :cond_4f2
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_510

    .line 865
    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v44, v11

    move-object/from16 v50, v13

    move/from16 v2, v78

    move-object/from16 v3, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v13, v83

    goto/16 :goto_c0

    .line 866
    :cond_510
    const-string v0, "#EXT-X-RENDITION-REPORT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_553

    .line 867
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    const-wide/16 v1, -0x1

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    .line 868
    .local v0, "lastMediaSequence":J
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    const/4 v10, -0x1

    invoke-static {v3, v2, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v2

    .line 869
    .local v2, "lastPartIndex":I
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v10, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 870
    .local v10, "uri":Ljava/lang/String;
    move-object/from16 v12, p3

    invoke-static {v12, v10}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v10

    .end local v10    # "uri":Ljava/lang/String;
    .local v19, "uri":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 871
    .local v10, "playlistUri":Landroid/net/Uri;
    new-instance v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v12, v10, v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    move-wide/from16 v20, v0

    move-object/from16 v0, v45

    .end local v45    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v0, "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v20, "lastMediaSequence":J
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    .end local v2    # "lastPartIndex":I
    .end local v10    # "playlistUri":Landroid/net/Uri;
    .end local v19    # "uri":Ljava/lang/String;
    .end local v20    # "lastMediaSequence":J
    move-object/from16 v50, v0

    move-wide/from16 v44, v5

    move-object v1, v15

    move-object/from16 v10, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v79

    move-object v15, v11

    goto/16 :goto_7e8

    .end local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v45    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    :cond_553
    move-object/from16 v0, v45

    .end local v45    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    const-string v1, "#EXT-X-PRELOAD-HINT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61a

    .line 873
    if-eqz v83, :cond_56d

    .line 874
    move-object/from16 v50, v0

    move-wide/from16 v44, v5

    move-object v1, v15

    move-object/from16 v10, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v79

    move-object v15, v11

    goto/16 :goto_7e8

    .line 876
    :cond_56d
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v3, v1, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "type":Ljava/lang/String;
    const-string v2, "PART"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_589

    .line 878
    move-object/from16 v50, v0

    move-wide/from16 v44, v5

    move-object v1, v15

    move-object/from16 v10, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v79

    move-object v15, v11

    goto/16 :goto_7e8

    .line 880
    :cond_589
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "url":Ljava/lang/String;
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 882
    move-wide/from16 v44, v5

    const-wide/16 v5, -0x1

    .end local v5    # "mediaSequence":J
    .local v44, "mediaSequence":J
    invoke-static {v3, v10, v5, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v38

    .line 883
    .local v38, "byteRangeStart":J
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 884
    invoke-static {v3, v10, v5, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v40

    .line 886
    .local v40, "byteRangeLength":J
    nop

    .line 887
    move-object/from16 v5, v79

    .end local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v5, "fullSegmentEncryptionIV":Ljava/lang/String;
    invoke-static {v8, v9, v7, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 889
    .local v6, "segmentEncryptionIV":Ljava/lang/String;
    if-nez v77, :cond_5cd

    invoke-virtual {v13}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5cd

    .line 890
    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-interface {v10, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 891
    .local v10, "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    new-instance v12, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v12, v4, v10}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 892
    .end local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v12, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-nez v73, :cond_5cb

    .line 893
    invoke-static {v4, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v18

    move-object/from16 v77, v12

    move-object/from16 v73, v18

    .end local v73    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v18, "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    goto :goto_5cd

    .line 892
    .end local v18    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v73    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_5cb
    move-object/from16 v77, v12

    .line 896
    .end local v10    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v12    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_5cd
    :goto_5cd
    const-wide/16 v21, -0x1

    cmp-long v10, v38, v21

    if-eqz v10, :cond_5d7

    cmp-long v10, v40, v21

    if-eqz v10, :cond_603

    .line 898
    :cond_5d7
    new-instance v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    const-wide/16 v21, 0x0

    .line 908
    const-wide/16 v23, -0x1

    cmp-long v12, v38, v23

    if-eqz v12, :cond_5e4

    move-wide/from16 v29, v38

    goto :goto_5e6

    :cond_5e4
    move-wide/from16 v29, v19

    :goto_5e6
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v18, v10

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move/from16 v23, v54

    move-wide/from16 v24, v64

    move-object/from16 v26, v77

    move-object/from16 v27, v7

    move-object/from16 v28, v6

    move-wide/from16 v31, v40

    invoke-direct/range {v18 .. v35}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v83, v10

    .line 914
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v6    # "segmentEncryptionIV":Ljava/lang/String;
    .end local v38    # "byteRangeStart":J
    .end local v40    # "byteRangeLength":J
    :cond_603
    move-object/from16 v1, p1

    move-object v3, v5

    move-object/from16 v50, v13

    move-wide/from16 v5, v44

    move/from16 v2, v78

    move/from16 v12, v82

    move-object/from16 v13, v83

    move-object/from16 v45, v0

    move-object/from16 v44, v11

    move-wide/from16 v10, v80

    move-object/from16 v0, p0

    goto/16 :goto_c0

    .end local v44    # "mediaSequence":J
    .local v5, "mediaSequence":J
    .restart local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    :cond_61a
    move-wide/from16 v44, v5

    move-object/from16 v5, v79

    .end local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v5, "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v44    # "mediaSequence":J
    const-string v1, "#EXT-X-PART"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70b

    .line 916
    nop

    .line 917
    invoke-static {v8, v9, v7, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 919
    .local v1, "segmentEncryptionIV":Ljava/lang/String;
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 920
    .restart local v2    # "url":Ljava/lang/String;
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 921
    invoke-static {v3, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v19

    move-object v6, v11

    const-wide v21, 0x412e848000000000L    # 1000000.0

    .end local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v6, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    mul-double v11, v19, v21

    double-to-long v11, v11

    .line 922
    .local v11, "partDurationUs":J
    move-object/from16 v50, v0

    .end local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v50, "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 923
    move-object/from16 v79, v6

    const/4 v6, 0x0

    .end local v6    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v79, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-static {v3, v0, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    .line 925
    .local v0, "isIndependent":Z
    if-eqz v82, :cond_655

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_655

    const/4 v6, 0x1

    goto :goto_656

    :cond_655
    const/4 v6, 0x0

    :goto_656
    or-int/2addr v0, v6

    .line 926
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    move-object/from16 v84, v5

    const/4 v5, 0x0

    .end local v5    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v84, "fullSegmentEncryptionIV":Ljava/lang/String;
    invoke-static {v3, v6, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v6

    .line 928
    .local v6, "isGap":Z
    sget-object v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v3, v5, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 929
    .local v5, "byteRange":Ljava/lang/String;
    const-wide/16 v19, -0x1

    .line 930
    .local v19, "partByteRangeLength":J
    if-eqz v5, :cond_68a

    .line 931
    invoke-static {v5, v10}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 932
    .local v10, "splitByteRange":[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v22, v10, v21

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 933
    move-object/from16 v38, v5

    .end local v5    # "byteRange":Ljava/lang/String;
    .local v38, "byteRange":Ljava/lang/String;
    array-length v5, v10

    move-object/from16 v85, v15

    const/4 v15, 0x1

    .end local v15    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v85, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-le v5, v15, :cond_687

    .line 934
    aget-object v5, v10, v15

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v66

    move-wide/from16 v39, v19

    goto :goto_690

    .line 933
    :cond_687
    move-wide/from16 v39, v19

    goto :goto_690

    .line 930
    .end local v10    # "splitByteRange":[Ljava/lang/String;
    .end local v38    # "byteRange":Ljava/lang/String;
    .end local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "byteRange":Ljava/lang/String;
    .restart local v15    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_68a
    move-object/from16 v38, v5

    move-object/from16 v85, v15

    .end local v5    # "byteRange":Ljava/lang/String;
    .end local v15    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v38    # "byteRange":Ljava/lang/String;
    .restart local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-wide/from16 v39, v19

    .line 937
    .end local v19    # "partByteRangeLength":J
    .local v39, "partByteRangeLength":J
    :goto_690
    const-wide/16 v18, -0x1

    cmp-long v5, v39, v18

    if-nez v5, :cond_698

    .line 938
    const-wide/16 v66, 0x0

    .line 940
    :cond_698
    if-nez v77, :cond_6bf

    invoke-virtual {v13}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6bf

    .line 941
    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-interface {v5, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 942
    .local v5, "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    new-instance v10, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v10, v4, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 943
    .end local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v10, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-nez v73, :cond_6bd

    .line 944
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v15

    move-object/from16 v77, v10

    move-object/from16 v73, v15

    .end local v73    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v15, "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    goto :goto_6bf

    .line 943
    .end local v15    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v73    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_6bd
    move-object/from16 v77, v10

    .line 947
    .end local v5    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v10    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_6bf
    :goto_6bf
    new-instance v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-object/from16 v18, v5

    const/16 v35, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-wide/from16 v21, v11

    move/from16 v23, v54

    move-wide/from16 v24, v64

    move-object/from16 v26, v77

    move-object/from16 v27, v7

    move-object/from16 v28, v1

    move-wide/from16 v29, v66

    move-wide/from16 v31, v39

    move/from16 v33, v6

    move/from16 v34, v0

    invoke-direct/range {v18 .. v35}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v10, v16

    .end local v16    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v10, "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    add-long v64, v64, v11

    .line 963
    const-wide/16 v15, -0x1

    cmp-long v5, v39, v15

    if-eqz v5, :cond_6ef

    .line 964
    add-long v66, v66, v39

    .line 966
    .end local v0    # "isIndependent":Z
    .end local v1    # "segmentEncryptionIV":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v6    # "isGap":Z
    .end local v11    # "partDurationUs":J
    .end local v38    # "byteRange":Ljava/lang/String;
    .end local v39    # "partByteRangeLength":J
    :cond_6ef
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, v10

    move-wide/from16 v5, v44

    move-object/from16 v45, v50

    move/from16 v2, v78

    move-object/from16 v44, v79

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v3, v84

    move-object/from16 v15, v85

    move-object/from16 v50, v13

    move-object/from16 v13, v83

    goto/16 :goto_c0

    .end local v10    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v50    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v79    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v84    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v5, "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v11, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v15, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    :cond_70b
    move-object/from16 v50, v0

    move-object/from16 v84, v5

    move-object/from16 v79, v11

    move-object/from16 v85, v15

    move-object/from16 v10, v16

    .end local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v5    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v15    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v10    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v50    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v79    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v84    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e0

    .line 968
    nop

    .line 969
    move-object/from16 v5, v84

    .end local v84    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v5    # "fullSegmentEncryptionIV":Ljava/lang/String;
    invoke-static {v8, v9, v7, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "segmentEncryptionIV":Ljava/lang/String;
    const-wide/16 v1, 0x1

    add-long/2addr v8, v1

    .line 972
    move-object/from16 v1, v85

    .end local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "segmentUri":Ljava/lang/String;
    move-object/from16 v6, v17

    .end local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v6, "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 974
    .local v11, "inferredInitSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    const-wide/16 v15, -0x1

    cmp-long v12, v62, v15

    if-nez v12, :cond_73e

    .line 976
    const-wide/16 v60, 0x0

    goto :goto_759

    .line 977
    :cond_73e
    if-eqz v68, :cond_759

    if-nez v14, :cond_759

    if-nez v11, :cond_759

    .line 983
    new-instance v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    const-wide/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v12

    move-object/from16 v19, v2

    move-wide/from16 v22, v60

    invoke-direct/range {v18 .. v25}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    .line 990
    invoke-virtual {v6, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_759
    :goto_759
    if-nez v77, :cond_780

    invoke-virtual {v13}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_780

    .line 994
    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v12

    const/4 v15, 0x0

    new-array v15, v15, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-interface {v12, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 995
    .local v12, "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    new-instance v15, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v15, v4, v12}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 996
    .end local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v15, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-nez v73, :cond_77e

    .line 997
    invoke-static {v4, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v16

    move-object/from16 v77, v15

    move-object/from16 v73, v16

    .end local v73    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v16, "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    goto :goto_780

    .line 996
    .end local v16    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v73    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_77e
    move-object/from16 v77, v15

    .line 1001
    .end local v12    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v15    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v77    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_780
    :goto_780
    new-instance v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 1004
    if-eqz v14, :cond_787

    move-object/from16 v20, v14

    goto :goto_789

    :cond_787
    move-object/from16 v20, v11

    :goto_789
    move-object/from16 v18, v12

    move-object/from16 v19, v2

    move-object/from16 v21, v51

    move-wide/from16 v22, v48

    move/from16 v24, v54

    move-wide/from16 v25, v57

    move-object/from16 v27, v77

    move-object/from16 v28, v7

    move-object/from16 v29, v0

    move-wide/from16 v30, v60

    move-wide/from16 v32, v62

    move/from16 v34, v71

    move-object/from16 v35, v10

    invoke-direct/range {v18 .. v35}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    .line 1001
    move-object/from16 v15, v79

    .end local v79    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v15, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    add-long v57, v57, v48

    .line 1017
    move-wide/from16 v64, v57

    .line 1018
    const-wide/16 v48, 0x0

    .line 1019
    const-string v51, ""

    .line 1020
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v12

    .line 1021
    .end local v10    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v16, "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    const-wide/16 v17, -0x1

    cmp-long v10, v62, v17

    if-eqz v10, :cond_7c2

    .line 1022
    add-long v60, v60, v62

    .line 1024
    :cond_7c2
    const-wide/16 v62, -0x1

    .line 1025
    const/16 v71, 0x0

    .line 1026
    .end local v0    # "segmentEncryptionIV":Ljava/lang/String;
    .end local v2    # "segmentUri":Ljava/lang/String;
    .end local v11    # "inferredInitSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    move-object/from16 v0, p0

    move-object v3, v5

    move-object/from16 v17, v6

    move-wide/from16 v5, v44

    move-object/from16 v45, v50

    move/from16 v2, v78

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v50, v13

    move-object/from16 v44, v15

    move-object/from16 v13, v83

    move-object v15, v1

    move-object/from16 v1, p1

    goto/16 :goto_c0

    .line 966
    .end local v1    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v6    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v15    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v16    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v10    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v79    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v84    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7e0
    move-object/from16 v6, v17

    move-object/from16 v15, v79

    move-object/from16 v5, v84

    move-object/from16 v1, v85

    .line 693
    .end local v3    # "line":Ljava/lang/String;
    .end local v10    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .end local v84    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, "mediaSequence":J
    .local v13, "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .local v15, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v44, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v45    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v50, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v79, "fullSegmentEncryptionIV":Ljava/lang/String;
    :goto_7e8
    move-object/from16 v0, p0

    move-object v3, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v10

    move-wide/from16 v5, v44

    move-object/from16 v45, v50

    move/from16 v2, v78

    move-wide/from16 v10, v80

    move/from16 v12, v82

    move-object/from16 v50, v13

    move-object/from16 v44, v15

    move-object/from16 v13, v83

    move-object v15, v1

    move-object/from16 v1, p1

    .end local v16    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v45    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v1    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v6    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v10    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v13, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v15, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v44, "mediaSequence":J
    .local v50, "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    goto/16 :goto_c0

    .line 1029
    .end local v1    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v80    # "partTargetDurationUs":J
    .end local v82    # "hasIndependentSegmentsTag":Z
    .end local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .local v5, "mediaSequence":J
    .local v10, "partTargetDurationUs":J
    .local v12, "hasIndependentSegmentsTag":Z
    .local v13, "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .local v15, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v44, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v45    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v50, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    :cond_804
    move-wide/from16 v80, v10

    move/from16 v82, v12

    move-object/from16 v83, v13

    move-object v1, v15

    move-object/from16 v10, v16

    move-object/from16 v0, v44

    move-object/from16 v13, v50

    const/4 v15, 0x0

    move-object/from16 v50, v45

    move-wide/from16 v44, v5

    move-object/from16 v6, v17

    move-object/from16 v5, v79

    .end local v12    # "hasIndependentSegmentsTag":Z
    .end local v15    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v45    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v1    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v6    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v10, "trailingParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v13, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v44, "mediaSequence":J
    .local v50, "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v80    # "partTargetDurationUs":J
    .restart local v82    # "hasIndependentSegmentsTag":Z
    .restart local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1030
    .local v2, "renditionReportMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_820
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_89b

    .line 1031
    move-object/from16 v11, v50

    .end local v50    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v11, "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;

    .line 1032
    .local v12, "renditionReport":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;
    move-object/from16 v16, v4

    move-object/from16 v79, v5

    .end local v4    # "encryptionScheme":Ljava/lang/String;
    .end local v5    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v16, "encryptionScheme":Ljava/lang/String;
    .restart local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    iget-wide v4, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    .line 1033
    .local v4, "lastMediaSequence":J
    const-wide/16 v22, -0x1

    cmp-long v17, v4, v22

    if-nez v17, :cond_84e

    .line 1034
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    move-wide/from16 v24, v4

    .end local v4    # "lastMediaSequence":J
    .local v24, "lastMediaSequence":J
    int-to-long v4, v15

    add-long v4, v44, v4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    move-object/from16 v50, v6

    move-object/from16 v17, v7

    .end local v6    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v7    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v17, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v50, "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    int-to-long v6, v15

    sub-long/2addr v4, v6

    .end local v24    # "lastMediaSequence":J
    .restart local v4    # "lastMediaSequence":J
    goto :goto_854

    .line 1033
    .end local v17    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v50    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v6    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v7    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    :cond_84e
    move-wide/from16 v24, v4

    move-object/from16 v50, v6

    move-object/from16 v17, v7

    .line 1036
    .end local v6    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v7    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v17    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v50    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    :goto_854
    iget v6, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    .line 1037
    .local v6, "lastPartIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_87b

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v80, v24

    if-eqz v15, :cond_87b

    .line 1039
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_871

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v15, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_872

    :cond_871
    move-object v15, v10

    .line 1040
    .local v15, "lastParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    :goto_872
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    const/16 v18, 0x1

    add-int/lit8 v6, v21, -0x1

    goto :goto_87d

    .line 1037
    .end local v15    # "lastParts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    :cond_87b
    const/16 v18, 0x1

    .line 1042
    :goto_87d
    iget-object v15, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    new-instance v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;

    move-object/from16 v85, v1

    .end local v1    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    invoke-direct {v7, v1, v4, v5, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v2, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .end local v4    # "lastMediaSequence":J
    .end local v6    # "lastPartIndex":I
    .end local v12    # "renditionReport":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move-object/from16 v6, v50

    move-object/from16 v5, v79

    move-object/from16 v1, v85

    const/4 v15, 0x0

    move-object/from16 v50, v11

    goto :goto_820

    .end local v11    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v16    # "encryptionScheme":Ljava/lang/String;
    .end local v17    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, "encryptionScheme":Ljava/lang/String;
    .restart local v5    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v6, "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v7    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v50, "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    :cond_89b
    move-object/from16 v85, v1

    move-object/from16 v16, v4

    move-object/from16 v79, v5

    move-object/from16 v17, v7

    move-object/from16 v11, v50

    const/16 v18, 0x1

    move-object/from16 v50, v6

    .line 1047
    .end local v1    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "encryptionScheme":Ljava/lang/String;
    .end local v5    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v6    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v7    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v11    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v16    # "encryptionScheme":Ljava/lang/String;
    .restart local v17    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v50, "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v79    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v85    # "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v83, :cond_8b1

    .line 1048
    move-object/from16 v1, v83

    .end local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .local v1, "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b3

    .line 1047
    .end local v1    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .restart local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    :cond_8b1
    move-object/from16 v1, v83

    .line 1051
    .end local v83    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .restart local v1    # "preloadPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    :goto_8b3
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    cmp-long v4, v55, v19

    if-eqz v4, :cond_8bc

    const/16 v38, 0x1

    goto :goto_8be

    :cond_8bc
    const/16 v38, 0x0

    :goto_8be
    move-object/from16 v18, v3

    move/from16 v19, v78

    move-object/from16 v20, p3

    move-object/from16 v21, v46

    move-wide/from16 v22, v75

    move/from16 v24, v59

    move-wide/from16 v25, v55

    move/from16 v27, v52

    move/from16 v28, v53

    move-wide/from16 v29, v44

    move/from16 v31, v74

    move-wide/from16 v32, v69

    move-wide/from16 v34, v80

    move/from16 v36, v82

    move/from16 v37, v47

    move-object/from16 v39, v73

    move-object/from16 v40, v0

    move-object/from16 v41, v10

    move-object/from16 v42, v72

    move-object/from16 v43, v2

    invoke-direct/range {v18 .. v43}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;)V

    return-object v3
.end method

.method private static parseMultivariantPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .registers 44
    .param p0, "iterator"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    move-object/from16 v13, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v14, v0

    .line 335
    .local v14, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v15, v0

    .line 336
    .local v15, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 337
    .local v12, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 338
    .local v11, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 339
    .local v10, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 340
    .local v9, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 342
    .local v8, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 343
    .local v6, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 344
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 345
    .local v0, "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    const/4 v1, 0x0

    .line 346
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    const/4 v2, 0x0

    .line 347
    .local v2, "noClosedCaptions":Z
    const/4 v3, 0x0

    move/from16 v16, v2

    move/from16 v17, v3

    .line 350
    .end local v2    # "noClosedCaptions":Z
    .local v16, "noClosedCaptions":Z
    .local v17, "hasIndependentSegmentsTag":Z
    :goto_45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v2

    const-string v4, "application/x-mpegURL"

    const/16 v19, 0x0

    if-eqz v2, :cond_270

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "line":Ljava/lang/String;
    const-string v3, "#EXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 355
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_5e
    const-string v3, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 359
    .local v3, "isIFrameOnlyVariant":Z
    move-object/from16 v22, v0

    .end local v0    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .local v22, "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    const-string v0, "#EXT-X-DEFINE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 360
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 361
    invoke-static {v2, v0, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 362
    invoke-static {v2, v4, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual {v15, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v1

    move-object/from16 v24, v7

    goto/16 :goto_fe

    .line 363
    :cond_83
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 364
    const/4 v0, 0x1

    move/from16 v17, v0

    move-object/from16 v23, v1

    move-object/from16 v18, v5

    move-object/from16 v32, v6

    move-object/from16 v24, v7

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v34, v10

    move-object/from16 v33, v11

    move-object v13, v14

    .end local v17    # "hasIndependentSegmentsTag":Z
    .local v0, "hasIndependentSegmentsTag":Z
    goto/16 :goto_24d

    .line 365
    .end local v0    # "hasIndependentSegmentsTag":Z
    .restart local v17    # "hasIndependentSegmentsTag":Z
    :cond_a1
    const-string v0, "#EXT-X-MEDIA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 368
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v1

    move-object/from16 v24, v7

    goto :goto_fe

    .line 369
    :cond_b1
    const-string v0, "#EXT-X-SESSION-KEY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 370
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 371
    const-string v4, "identity"

    invoke-static {v2, v0, v4, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "keyFormat":Ljava/lang/String;
    invoke-static {v2, v0, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v4

    .line 373
    .local v4, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    if-eqz v4, :cond_e7

    .line 374
    move-object/from16 v18, v0

    .end local v0    # "keyFormat":Ljava/lang/String;
    .local v18, "keyFormat":Ljava/lang/String;
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "method":Ljava/lang/String;
    move-object/from16 v23, v1

    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v23, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "scheme":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "method":Ljava/lang/String;
    .local v20, "method":Ljava/lang/String;
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v24, v7

    const/4 v7, 0x1

    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v24, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-array v7, v7, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    aput-object v4, v7, v19

    invoke-direct {v0, v1, v7}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fd

    .line 373
    .end local v18    # "keyFormat":Ljava/lang/String;
    .end local v20    # "method":Ljava/lang/String;
    .end local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v24    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v0, "keyFormat":Ljava/lang/String;
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :cond_e7
    move-object/from16 v18, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v7

    .end local v0    # "keyFormat":Ljava/lang/String;
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v18    # "keyFormat":Ljava/lang/String;
    .restart local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v24    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    goto :goto_fd

    .line 378
    .end local v4    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v18    # "keyFormat":Ljava/lang/String;
    .end local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v24    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :cond_ee
    move-object/from16 v23, v1

    move-object/from16 v24, v7

    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v24    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    const-string v0, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10d

    if-eqz v3, :cond_fd

    goto :goto_10d

    :cond_fd
    :goto_fd
    nop

    .line 456
    .end local v3    # "isIFrameOnlyVariant":Z
    .end local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v24    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :goto_fe
    move-object/from16 v18, v5

    move-object/from16 v32, v6

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v34, v10

    move-object/from16 v33, v11

    move-object v13, v14

    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v24    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    goto/16 :goto_24d

    .line 379
    .restart local v3    # "isIFrameOnlyVariant":Z
    :cond_10d
    :goto_10d
    const-string v0, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    or-int v0, v16, v0

    .line 380
    .end local v16    # "noClosedCaptions":Z
    .local v0, "noClosedCaptions":Z
    if-eqz v3, :cond_11a

    const/16 v1, 0x4000

    goto :goto_11b

    :cond_11a
    const/4 v1, 0x0

    .line 381
    .local v1, "roleFlags":I
    :goto_11b
    sget-object v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    invoke-static {v2, v7}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v7

    .line 382
    .local v7, "peakBitrate":I
    move/from16 v16, v0

    .end local v0    # "noClosedCaptions":Z
    .restart local v16    # "noClosedCaptions":Z
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    move-object/from16 v32, v6

    const/4 v6, -0x1

    .end local v6    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    .local v32, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    invoke-static {v2, v0, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v0

    .line 383
    .local v0, "averageBitrate":I
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    invoke-static {v2, v6, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "codecs":Ljava/lang/String;
    move-object/from16 v18, v5

    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 385
    invoke-static {v2, v5, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "resolutionString":Ljava/lang/String;
    if-eqz v5, :cond_163

    .line 389
    move-object/from16 v33, v11

    .end local v11    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v33, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    const-string v11, "x"

    invoke-static {v5, v11}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 390
    .local v11, "widthAndHeight":[Ljava/lang/String;
    aget-object v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 391
    .local v19, "width":I
    const/16 v21, 0x1

    aget-object v21, v11, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 392
    .local v21, "height":I
    if-lez v19, :cond_156

    if-gtz v21, :cond_15a

    .line 394
    :cond_156
    const/16 v19, -0x1

    .line 395
    const/16 v21, -0x1

    .line 397
    .end local v11    # "widthAndHeight":[Ljava/lang/String;
    :cond_15a
    move/from16 v11, v19

    move/from16 v41, v21

    move-object/from16 v21, v5

    move/from16 v5, v41

    goto :goto_171

    .line 398
    .end local v19    # "width":I
    .end local v21    # "height":I
    .end local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v11, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :cond_163
    move-object/from16 v33, v11

    .end local v11    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    const/16 v19, -0x1

    .line 399
    .restart local v19    # "width":I
    const/16 v21, -0x1

    move/from16 v11, v19

    move/from16 v41, v21

    move-object/from16 v21, v5

    move/from16 v5, v41

    .line 401
    .end local v19    # "width":I
    .local v5, "height":I
    .local v11, "width":I
    .local v21, "resolutionString":Ljava/lang/String;
    :goto_171
    const/high16 v19, -0x40800000    # -1.0f

    .line 402
    .local v19, "frameRate":F
    move-object/from16 v34, v10

    .end local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v34, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 403
    invoke-static {v2, v10, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 404
    .local v10, "frameRateString":Ljava/lang/String;
    if-eqz v10, :cond_186

    .line 405
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move-object/from16 v35, v10

    move/from16 v10, v19

    goto :goto_18a

    .line 404
    :cond_186
    move-object/from16 v35, v10

    move/from16 v10, v19

    .line 407
    .end local v19    # "frameRate":F
    .local v10, "frameRate":F
    .local v35, "frameRateString":Ljava/lang/String;
    :goto_18a
    move-object/from16 v36, v9

    .end local v9    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v36, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    sget-object v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    invoke-static {v2, v9, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 408
    .local v9, "videoGroupId":Ljava/lang/String;
    move-object/from16 v37, v8

    .end local v8    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v37, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    invoke-static {v2, v8, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, "audioGroupId":Ljava/lang/String;
    move-object/from16 v38, v14

    .end local v14    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .local v38, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    sget-object v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 410
    invoke-static {v2, v14, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 411
    .local v14, "subtitlesGroupId":Ljava/lang/String;
    move-object/from16 v19, v14

    .end local v14    # "subtitlesGroupId":Ljava/lang/String;
    .local v19, "subtitlesGroupId":Ljava/lang/String;
    sget-object v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 412
    invoke-static {v2, v14, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 414
    .local v14, "closedCaptionsGroupId":Ljava/lang/String;
    if-eqz v3, :cond_1b9

    .line 415
    move/from16 v39, v3

    .end local v3    # "isIFrameOnlyVariant":Z
    .local v39, "isIFrameOnlyVariant":Z
    sget-object v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 416
    invoke-static {v2, v3, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "uri":Landroid/net/Uri;
    goto :goto_1cd

    .line 417
    .end local v39    # "isIFrameOnlyVariant":Z
    .local v3, "isIFrameOnlyVariant":Z
    :cond_1b9
    move/from16 v39, v3

    .end local v3    # "isIFrameOnlyVariant":Z
    .restart local v39    # "isIFrameOnlyVariant":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_264

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 426
    .local v3, "uri":Landroid/net/Uri;
    :goto_1cd
    move-object/from16 v20, v2

    .end local v2    # "line":Ljava/lang/String;
    .local v20, "line":Ljava/lang/String;
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 428
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 429
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 430
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 431
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 432
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 433
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 434
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 435
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 436
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 437
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 438
    .local v2, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-object/from16 v25, v4

    move-object/from16 v26, v3

    move-object/from16 v27, v2

    move-object/from16 v28, v9

    move-object/from16 v29, v8

    move-object/from16 v30, v19

    move-object/from16 v31, v14

    invoke-direct/range {v25 .. v31}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v4, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    move-object/from16 v13, v38

    .end local v38    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .local v13, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 443
    .local v25, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    if-nez v25, :cond_22f

    .line 444
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v26

    .line 445
    move/from16 v38, v1

    move-object/from16 v1, v25

    .end local v25    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .local v1, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .local v38, "roleFlags":I
    invoke-virtual {v13, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_233

    .line 443
    .end local v38    # "roleFlags":I
    .local v1, "roleFlags":I
    .restart local v25    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    :cond_22f
    move/from16 v38, v1

    .end local v1    # "roleFlags":I
    .restart local v38    # "roleFlags":I
    move-object/from16 v1, v25

    .line 447
    .end local v25    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .local v1, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    :goto_233
    move-object/from16 v40, v2

    .end local v2    # "format":Lcom/google/android/exoplayer2/Format;
    .local v40, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;

    move-object/from16 v25, v2

    move/from16 v26, v0

    move/from16 v27, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v8

    move-object/from16 v30, v19

    move-object/from16 v31, v14

    invoke-direct/range {v25 .. v31}, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    .line 456
    .end local v0    # "averageBitrate":I
    .end local v1    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v5    # "height":I
    .end local v6    # "codecs":Ljava/lang/String;
    .end local v7    # "peakBitrate":I
    .end local v8    # "audioGroupId":Ljava/lang/String;
    .end local v9    # "videoGroupId":Ljava/lang/String;
    .end local v10    # "frameRate":F
    .end local v11    # "width":I
    .end local v14    # "closedCaptionsGroupId":Ljava/lang/String;
    .end local v19    # "subtitlesGroupId":Ljava/lang/String;
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "resolutionString":Ljava/lang/String;
    .end local v35    # "frameRateString":Ljava/lang/String;
    .end local v38    # "roleFlags":I
    .end local v39    # "isIFrameOnlyVariant":Z
    .end local v40    # "format":Lcom/google/android/exoplayer2/Format;
    .local v2, "line":Ljava/lang/String;
    :goto_24d
    move-object v14, v13

    move-object/from16 v5, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v7, v24

    move-object/from16 v6, v32

    move-object/from16 v11, v33

    move-object/from16 v10, v34

    move-object/from16 v9, v36

    move-object/from16 v8, v37

    move-object/from16 v13, p1

    goto/16 :goto_45

    .line 418
    .end local v13    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .restart local v0    # "averageBitrate":I
    .local v1, "roleFlags":I
    .restart local v5    # "height":I
    .restart local v6    # "codecs":Ljava/lang/String;
    .restart local v7    # "peakBitrate":I
    .restart local v8    # "audioGroupId":Ljava/lang/String;
    .restart local v9    # "videoGroupId":Ljava/lang/String;
    .restart local v10    # "frameRate":F
    .restart local v11    # "width":I
    .restart local v14    # "closedCaptionsGroupId":Ljava/lang/String;
    .restart local v19    # "subtitlesGroupId":Ljava/lang/String;
    .restart local v21    # "resolutionString":Ljava/lang/String;
    .restart local v35    # "frameRateString":Ljava/lang/String;
    .local v38, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .restart local v39    # "isIFrameOnlyVariant":Z
    :cond_264
    move-object/from16 v13, v38

    move/from16 v38, v1

    .end local v1    # "roleFlags":I
    .restart local v13    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .local v38, "roleFlags":I
    const-string v1, "#EXT-X-STREAM-INF must be followed by another line"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 459
    .end local v2    # "line":Ljava/lang/String;
    .end local v13    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .end local v18    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "subtitlesGroupId":Ljava/lang/String;
    .end local v21    # "resolutionString":Ljava/lang/String;
    .end local v22    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .end local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v24    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v32    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    .end local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v35    # "frameRateString":Ljava/lang/String;
    .end local v36    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v37    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "roleFlags":I
    .end local v39    # "isIFrameOnlyVariant":Z
    .local v0, "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v8, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v10, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v11, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v14, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    :cond_270
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v18, v5

    move-object/from16 v32, v6

    move-object/from16 v24, v7

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v34, v10

    move-object/from16 v33, v11

    move-object v13, v14

    const/4 v6, -0x1

    .end local v0    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v8    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v11    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v14    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .restart local v13    # "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    .restart local v18    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v24    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v32    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    .restart local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v36    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v37    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 460
    .local v14, "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v7, v0

    .line 461
    .local v7, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_291
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e9

    .line 462
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 463
    .local v1, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e5

    .line 464
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v2, :cond_2ad

    const/4 v2, 0x1

    goto :goto_2ae

    :cond_2ad
    const/4 v2, 0x0

    :goto_2ae
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 465
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 469
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3}, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 470
    .local v2, "hlsMetadataEntry":Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;
    new-instance v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v8, 0x1

    new-array v9, v8, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v2, v9, v19

    invoke-direct {v3, v9}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 471
    .local v3, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 472
    .local v8, "format":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->copyWithFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e6

    .line 463
    .end local v2    # "hlsMetadataEntry":Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;
    .end local v3    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .end local v8    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_2e5
    const/4 v5, 0x0

    .line 461
    .end local v1    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    :goto_2e6
    add-int/lit8 v0, v0, 0x1

    goto :goto_291

    :cond_2e9
    const/4 v5, 0x0

    .line 476
    .end local v0    # "i":I
    const/4 v0, 0x0

    move-object/from16 v1, v23

    .end local v23    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v0    # "i":I
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :goto_2ed
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_549

    .line 477
    move-object/from16 v8, v37

    .end local v37    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 478
    .local v2, "line":Ljava/lang/String;
    sget-object v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "groupId":Ljava/lang/String;
    sget-object v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    invoke-static {v2, v9, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, "name":Ljava/lang/String;
    new-instance v10, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v5, ":"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 483
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 484
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 485
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 486
    invoke-static {v2, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 487
    invoke-static {v2, v10, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 489
    .local v5, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v2, v10, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 490
    .local v10, "referenceUri":Ljava/lang/String;
    move-object/from16 v11, p1

    if-nez v10, :cond_356

    const/16 v23, 0x0

    goto :goto_35a

    :cond_356
    invoke-static {v11, v10}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    :goto_35a
    move-object/from16 v25, v23

    .line 491
    .local v25, "uri":Landroid/net/Uri;
    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v26, v4

    move-object/from16 v27, v7

    const/4 v4, 0x1

    .end local v7    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local v27, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    new-array v7, v4, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v4, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    .line 492
    move-object/from16 v37, v8

    .end local v8    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v3, v9, v8}, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    aput-object v4, v7, v19

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v4, v6

    .line 493
    .local v4, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v2, v6, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    sparse-switch v7, :sswitch_data_588

    :cond_384
    goto :goto_3ad

    :sswitch_385
    const-string v7, "VIDEO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_384

    const/4 v7, 0x0

    goto :goto_3ae

    :sswitch_38f
    const-string v7, "AUDIO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_384

    const/4 v7, 0x1

    goto :goto_3ae

    :sswitch_399
    const-string v7, "CLOSED-CAPTIONS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_384

    const/4 v7, 0x3

    goto :goto_3ae

    :sswitch_3a3
    const-string v7, "SUBTITLES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_384

    const/4 v7, 0x2

    goto :goto_3ae

    :goto_3ad
    const/4 v7, -0x1

    :goto_3ae
    packed-switch v7, :pswitch_data_59a

    move-object/from16 v29, v1

    move-object/from16 v30, v10

    move-object/from16 v1, v25

    move-object/from16 v7, v33

    move-object/from16 v6, v34

    move-object/from16 v25, v2

    .end local v2    # "line":Ljava/lang/String;
    .end local v10    # "referenceUri":Ljava/lang/String;
    .end local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v1, "uri":Landroid/net/Uri;
    .local v6, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v7, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v25, "line":Ljava/lang/String;
    .local v29, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v30, "referenceUri":Ljava/lang/String;
    goto/16 :goto_539

    .line 563
    .end local v6    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v7    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v30    # "referenceUri":Ljava/lang/String;
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v10    # "referenceUri":Ljava/lang/String;
    .local v25, "uri":Landroid/net/Uri;
    .restart local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :pswitch_3bf
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    invoke-static {v2, v6, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "instreamId":Ljava/lang/String;
    const-string v7, "CC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d8

    .line 566
    const-string v7, "application/cea-608"

    .line 567
    .local v7, "sampleMimeType":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "accessibilityChannel":I
    goto :goto_3e3

    .line 569
    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .end local v8    # "accessibilityChannel":I
    :cond_3d8
    const-string v7, "application/cea-708"

    .line 570
    .restart local v7    # "sampleMimeType":Ljava/lang/String;
    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 572
    .restart local v8    # "accessibilityChannel":I
    :goto_3e3
    if-nez v1, :cond_3ec

    .line 573
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, v28

    .line 575
    :cond_3ec
    nop

    .line 576
    move-object/from16 v28, v6

    .end local v6    # "instreamId":Ljava/lang/String;
    .local v28, "instreamId":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 577
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 578
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    move-object/from16 v25, v2

    move-object/from16 v7, v33

    move-object/from16 v6, v34

    goto/16 :goto_53b

    .line 544
    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .end local v8    # "accessibilityChannel":I
    .end local v28    # "instreamId":Ljava/lang/String;
    :pswitch_405
    const/4 v6, 0x0

    .line 545
    .local v6, "sampleMimeType":Ljava/lang/String;
    invoke-static {v12, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v7

    .line 546
    .local v7, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    if-eqz v7, :cond_41f

    .line 548
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v29, v1

    const/4 v1, 0x3

    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "codecs":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 550
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_421

    .line 546
    .end local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :cond_41f
    move-object/from16 v29, v1

    .line 552
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :goto_421
    if-nez v6, :cond_425

    .line 553
    const-string v6, "text/vtt"

    .line 555
    :cond_425
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 556
    move-object/from16 v1, v25

    .end local v25    # "uri":Landroid/net/Uri;
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_448

    .line 557
    new-instance v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    move-object/from16 v25, v6

    .end local v6    # "sampleMimeType":Ljava/lang/String;
    .local v25, "sampleMimeType":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-direct {v8, v1, v6, v3, v9}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v36

    .end local v36    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v6, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v2

    move-object/from16 v7, v33

    move-object/from16 v6, v34

    goto/16 :goto_539

    .line 559
    .end local v25    # "sampleMimeType":Ljava/lang/String;
    .local v6, "sampleMimeType":Ljava/lang/String;
    .restart local v36    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :cond_448
    move-object/from16 v25, v6

    move-object/from16 v6, v36

    .end local v36    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v6, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v25    # "sampleMimeType":Ljava/lang/String;
    const-string v8, "HlsPlaylistParser"

    .end local v6    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v36    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    const-string v6, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    invoke-static {v8, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    move-object/from16 v25, v2

    move-object/from16 v7, v33

    move-object/from16 v6, v34

    goto/16 :goto_539

    .line 515
    .end local v7    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v25, "uri":Landroid/net/Uri;
    :pswitch_45b
    move-object/from16 v29, v1

    move-object/from16 v1, v25

    .end local v25    # "uri":Landroid/net/Uri;
    .local v1, "uri":Landroid/net/Uri;
    .restart local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    const/4 v6, 0x0

    .line 516
    .local v6, "sampleMimeType":Ljava/lang/String;
    invoke-static {v12, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v7

    .line 517
    .restart local v7    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    if-eqz v7, :cond_47b

    .line 519
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v25, v6

    const/4 v6, 0x1

    .end local v6    # "sampleMimeType":Ljava/lang/String;
    .local v25, "sampleMimeType":Ljava/lang/String;
    invoke-static {v8, v6}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 520
    .local v8, "codecs":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 521
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v8, v21

    .end local v25    # "sampleMimeType":Ljava/lang/String;
    .local v21, "sampleMimeType":Ljava/lang/String;
    goto :goto_480

    .line 517
    .end local v8    # "codecs":Ljava/lang/String;
    .end local v21    # "sampleMimeType":Ljava/lang/String;
    .restart local v6    # "sampleMimeType":Ljava/lang/String;
    :cond_47b
    move-object/from16 v25, v6

    const/4 v6, 0x1

    .end local v6    # "sampleMimeType":Ljava/lang/String;
    .restart local v25    # "sampleMimeType":Ljava/lang/String;
    move-object/from16 v8, v25

    .line 524
    .end local v25    # "sampleMimeType":Ljava/lang/String;
    .local v8, "sampleMimeType":Ljava/lang/String;
    :goto_480
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 525
    invoke-static {v2, v6, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, "channelsString":Ljava/lang/String;
    if-eqz v6, :cond_4b3

    .line 527
    move-object/from16 v25, v2

    .end local v2    # "line":Ljava/lang/String;
    .local v25, "line":Ljava/lang/String;
    const-string v2, "/"

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v19

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 528
    .local v2, "channelCount":I
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 529
    move/from16 v28, v2

    .end local v2    # "channelCount":I
    .local v28, "channelCount":I
    const-string v2, "audio/eac3"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b5

    const-string v2, "/JOC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b5

    .line 530
    const-string v8, "audio/eac3-joc"

    .line 531
    const-string v2, "ec+3"

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    goto :goto_4b5

    .line 526
    .end local v25    # "line":Ljava/lang/String;
    .end local v28    # "channelCount":I
    .local v2, "line":Ljava/lang/String;
    :cond_4b3
    move-object/from16 v25, v2

    .line 534
    .end local v2    # "line":Ljava/lang/String;
    .restart local v25    # "line":Ljava/lang/String;
    :cond_4b5
    :goto_4b5
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 535
    if-eqz v1, :cond_4d1

    .line 536
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 537
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    move-object/from16 v28, v6

    .end local v6    # "channelsString":Ljava/lang/String;
    .local v28, "channelsString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-direct {v2, v1, v6, v3, v9}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v34

    .end local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v6, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v33

    goto/16 :goto_539

    .line 538
    .end local v28    # "channelsString":Ljava/lang/String;
    .local v6, "channelsString":Ljava/lang/String;
    .restart local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :cond_4d1
    move-object/from16 v28, v6

    move-object/from16 v6, v34

    .end local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v6, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v28    # "channelsString":Ljava/lang/String;
    if-eqz v7, :cond_4e2

    .line 540
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v22, v2

    move-object/from16 v1, v29

    move-object/from16 v7, v33

    .end local v22    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .local v2, "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    goto :goto_53b

    .line 538
    .end local v2    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v22    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    :cond_4e2
    move-object/from16 v7, v33

    goto :goto_539

    .line 495
    .end local v6    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v7    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v8    # "sampleMimeType":Ljava/lang/String;
    .end local v28    # "channelsString":Ljava/lang/String;
    .end local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v2, "line":Ljava/lang/String;
    .local v25, "uri":Landroid/net/Uri;
    .restart local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :pswitch_4e5
    move-object/from16 v29, v1

    move-object/from16 v1, v25

    move-object/from16 v6, v34

    move-object/from16 v25, v2

    .end local v2    # "line":Ljava/lang/String;
    .end local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v1, "uri":Landroid/net/Uri;
    .restart local v6    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v25, "line":Ljava/lang/String;
    .restart local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-static {v12, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v2

    .line 496
    .local v2, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    if-eqz v2, :cond_51e

    .line 497
    iget-object v7, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    .line 499
    .local v7, "variantFormat":Lcom/google/android/exoplayer2/Format;
    move-object/from16 v28, v2

    .end local v2    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .local v28, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v7, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "codecs":Ljava/lang/String;
    nop

    .line 501
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 502
    move-object/from16 v30, v10

    .end local v10    # "referenceUri":Ljava/lang/String;
    .restart local v30    # "referenceUri":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    iget v10, v7, Lcom/google/android/exoplayer2/Format;->width:I

    .line 503
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    iget v10, v7, Lcom/google/android/exoplayer2/Format;->height:I

    .line 504
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    iget v10, v7, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 505
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    goto :goto_522

    .line 496
    .end local v7    # "variantFormat":Lcom/google/android/exoplayer2/Format;
    .end local v28    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v30    # "referenceUri":Ljava/lang/String;
    .local v2, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .restart local v10    # "referenceUri":Ljava/lang/String;
    :cond_51e
    move-object/from16 v28, v2

    move-object/from16 v30, v10

    .line 507
    .end local v2    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v10    # "referenceUri":Ljava/lang/String;
    .restart local v28    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .restart local v30    # "referenceUri":Ljava/lang/String;
    :goto_522
    if-nez v1, :cond_527

    move-object/from16 v7, v33

    goto :goto_539

    .line 510
    :cond_527
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 511
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    invoke-direct {v2, v1, v7, v3, v9}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v33

    .end local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v7, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    nop

    .line 476
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "groupId":Ljava/lang/String;
    .end local v4    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .end local v5    # "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    .end local v9    # "name":Ljava/lang/String;
    .end local v28    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v30    # "referenceUri":Ljava/lang/String;
    :goto_539
    move-object/from16 v1, v29

    .end local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :goto_53b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v34, v6

    move-object/from16 v33, v7

    move-object/from16 v4, v26

    move-object/from16 v7, v27

    const/4 v5, 0x0

    const/4 v6, -0x1

    goto/16 :goto_2ed

    .end local v6    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v25    # "line":Ljava/lang/String;
    .end local v27    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local v7, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .restart local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :cond_549
    move-object/from16 v11, p1

    move-object/from16 v29, v1

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move-object/from16 v6, v34

    .line 587
    .end local v0    # "i":I
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v33    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v34    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v6    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v7, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v27    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .restart local v29    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    if-eqz v16, :cond_55b

    .line 588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v29, v1

    .line 591
    :cond_55b
    new-instance v19, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object v3, v14

    move-object v4, v7

    move-object v5, v6

    move-object v10, v6

    move-object/from16 v20, v32

    move-object/from16 v9, v36

    .end local v6    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v32    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    .end local v36    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v9, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v10, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v20, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    move-object v6, v9

    move-object/from16 v21, v37

    .end local v37    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v21, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v8, v22

    move-object/from16 v23, v9

    .end local v9    # "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v23, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    move-object/from16 v9, v29

    move-object/from16 v25, v10

    .end local v10    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v25, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    move/from16 v10, v17

    move-object/from16 v26, v7

    .end local v7    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v26, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    move-object v11, v15

    move-object/from16 v28, v12

    .end local v12    # "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .local v28, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    move-object/from16 v12, v20

    move-object/from16 v7, v24

    move-object/from16 v24, v27

    .end local v27    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v24, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v19

    nop

    :sswitch_data_588
    .sparse-switch
        -0x392db8c5 -> :sswitch_3a3
        -0x13dc6572 -> :sswitch_399
        0x3bba3b6 -> :sswitch_38f
        0x4de1c5b -> :sswitch_385
    .end sparse-switch

    :pswitch_data_59a
    .packed-switch 0x0
        :pswitch_4e5
        :pswitch_45b
        :pswitch_405
        :pswitch_3bf
    .end packed-switch
.end method

.method private static parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .registers 6
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Z

    .line 1282
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1283
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1286
    :cond_16
    return p2
.end method

.method private static parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .registers 7
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # D

    .line 1255
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1256
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1257
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 1259
    :cond_1a
    return-wide p2
.end method

.method private static parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .registers 5
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # I

    .line 1195
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1196
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1199
    :cond_1a
    return p2
.end method

.method private static parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .registers 7
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # J

    .line 1207
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1208
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1209
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 1211
    :cond_1a
    return-wide p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1247
    .local p3, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1248
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_17

    :cond_16
    move-object v1, p2

    .line 1249
    .local v1, "value":Ljava/lang/String;
    :goto_17
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    if-nez v1, :cond_20

    goto :goto_25

    .line 1251
    :cond_20
    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 1250
    :cond_25
    :goto_25
    move-object v2, v1

    .line 1249
    :goto_26
    return-object v2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1239
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I
    .registers 6
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1112
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 1113
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "concatenatedCharacteristics":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1115
    const/4 v1, 0x0

    return v1

    .line 1117
    :cond_e
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "characteristics":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1119
    .local v2, "roleFlags":I
    const-string v3, "public.accessibility.describes-video"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1120
    or-int/lit16 v2, v2, 0x200

    .line 1122
    :cond_1f
    const-string v3, "public.accessibility.transcribes-spoken-dialog"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1123
    or-int/lit16 v2, v2, 0x1000

    .line 1125
    :cond_29
    const-string v3, "public.accessibility.describes-music-and-sound"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1126
    or-int/lit16 v2, v2, 0x400

    .line 1128
    :cond_33
    const-string v3, "public.easy-to-read"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1129
    or-int/lit16 v2, v2, 0x2000

    .line 1131
    :cond_3d
    return v2
.end method

.method private static parseSelectionFlags(Ljava/lang/String;)I
    .registers 4
    .param p0, "line"    # Ljava/lang/String;

    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, "flags":I
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1099
    or-int/lit8 v0, v0, 0x1

    .line 1101
    :cond_c
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1102
    or-int/lit8 v0, v0, 0x2

    .line 1104
    :cond_16
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1105
    or-int/lit8 v0, v0, 0x4

    .line 1107
    :cond_20
    return v0
.end method

.method private static parseServerControl(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;
    .registers 26
    .param p0, "line"    # Ljava/lang/String;

    .line 1158
    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 1159
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v4

    .line 1161
    .local v4, "skipUntilSeconds":D
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, 0x412e848000000000L    # 1000000.0

    cmpl-double v1, v4, v2

    if-nez v1, :cond_1a

    .line 1162
    move-wide v13, v6

    goto :goto_1e

    .line 1163
    :cond_1a
    mul-double v10, v4, v8

    double-to-long v10, v10

    move-wide v13, v10

    :goto_1e
    nop

    .line 1164
    .local v13, "skipUntilUs":J
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 1165
    const/4 v10, 0x0

    invoke-static {v0, v1, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    .line 1166
    .local v1, "canSkipDateRanges":Z
    sget-object v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 1167
    invoke-static {v0, v11, v2, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v21

    .line 1169
    .local v21, "holdBackSeconds":D
    cmpl-double v11, v21, v2

    if-nez v11, :cond_33

    .line 1170
    move-wide/from16 v16, v6

    goto :goto_38

    .line 1171
    :cond_33
    mul-double v11, v21, v8

    double-to-long v11, v11

    move-wide/from16 v16, v11

    :goto_38
    nop

    .line 1172
    .local v16, "holdBackUs":J
    sget-object v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    invoke-static {v0, v11, v2, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v23

    .line 1174
    .local v23, "partHoldBackSeconds":D
    cmpl-double v11, v23, v2

    if-nez v11, :cond_46

    .line 1175
    move-wide/from16 v18, v6

    goto :goto_4b

    .line 1176
    :cond_46
    mul-double v8, v8, v23

    double-to-long v6, v8

    move-wide/from16 v18, v6

    :goto_4b
    nop

    .line 1177
    .local v18, "partHoldBackUs":J
    sget-object v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 1178
    invoke-static {v0, v2, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    .line 1180
    .local v2, "canBlockReload":Z
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-object v12, v3

    move v15, v1

    move/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    return-object v3
.end method

.method private static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1227
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1229
    return-object v0

    .line 1231
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1232
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1231
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method

.method private static parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .registers 7
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1215
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "timeValueSeconds":Ljava/lang/String;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v1, "timeValue":Ljava/math/BigDecimal;
    new-instance v2, Ljava/math/BigDecimal;

    const-wide/32 v3, 0xf4240

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method private static replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1264
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1266
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1267
    .local v1, "stringWithReplacements":Ljava/lang/StringBuffer;
    :goto_b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1268
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1269
    .local v2, "groupName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1270
    nop

    .line 1271
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1270
    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1275
    .end local v2    # "groupName":Ljava/lang/String;
    :cond_2a
    goto :goto_b

    .line 1276
    :cond_2b
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1277
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I
    .registers 4
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "skipLinebreaks"    # Z
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    nop

    :goto_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_17

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p1, :cond_12

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->isLinebreak(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 327
    :cond_12
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_1

    .line 329
    :cond_17
    return p2
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 264
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 267
    .local v1, "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :try_start_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->checkPlaylistHeader(Ljava/io/BufferedReader;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ac

    .line 271
    :goto_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .local v4, "line":Ljava/lang/String;
    if-eqz v2, :cond_a1

    .line 272
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 273
    .end local v4    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_16

    .line 275
    :cond_28
    const-string v4, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 276
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseMultivariantPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_b3

    .line 297
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 277
    return-object v3

    .line 278
    :cond_44
    :try_start_44
    const-string v4, "#EXT-X-TARGETDURATION"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "#EXT-X-MEDIA-SEQUENCE"

    .line 279
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "#EXTINF"

    .line 280
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "#EXT-X-KEY"

    .line 281
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "#EXT-X-BYTERANGE"

    .line 282
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "#EXT-X-DISCONTINUITY"

    .line 283
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 284
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "#EXT-X-ENDLIST"

    .line 285
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    goto :goto_89

    .line 293
    :cond_85
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 286
    :cond_89
    :goto_89
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    new-instance v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v5, v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 291
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3
    :try_end_9d
    .catchall {:try_start_44 .. :try_end_9d} :catchall_b3

    .line 297
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 287
    return-object v3

    .line 297
    .end local v2    # "line":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_a1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 298
    nop

    .line 299
    const-string v2, "Failed to parse the playlist, could not identify any tags."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 268
    .end local v4    # "line":Ljava/lang/String;
    :cond_ac
    :try_start_ac
    const-string v2, "Input does not start with the #EXTM3U header."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_b3

    .line 297
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catchall_b3
    move-exception v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 298
    goto :goto_b9

    :goto_b8
    throw v2

    :goto_b9
    goto :goto_b8
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
