.class public final Lcom/google/android/exoplayer2/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaMetadata$Builder;,
        Lcom/google/android/exoplayer2/MediaMetadata$PictureType;,
        Lcom/google/android/exoplayer2/MediaMetadata$FolderType;,
        Lcom/google/android/exoplayer2/MediaMetadata$MediaType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

.field private static final FIELD_ALBUM_ARTIST:Ljava/lang/String;

.field private static final FIELD_ALBUM_TITLE:Ljava/lang/String;

.field private static final FIELD_ARTIST:Ljava/lang/String;

.field private static final FIELD_ARTWORK_DATA:Ljava/lang/String;

.field private static final FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

.field private static final FIELD_ARTWORK_URI:Ljava/lang/String;

.field private static final FIELD_COMPILATION:Ljava/lang/String;

.field private static final FIELD_COMPOSER:Ljava/lang/String;

.field private static final FIELD_CONDUCTOR:Ljava/lang/String;

.field private static final FIELD_DESCRIPTION:Ljava/lang/String;

.field private static final FIELD_DISC_NUMBER:Ljava/lang/String;

.field private static final FIELD_DISPLAY_TITLE:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_FOLDER_TYPE:Ljava/lang/String;

.field private static final FIELD_GENRE:Ljava/lang/String;

.field private static final FIELD_IS_BROWSABLE:Ljava/lang/String;

.field private static final FIELD_IS_PLAYABLE:Ljava/lang/String;

.field private static final FIELD_MEDIA_TYPE:Ljava/lang/String;

.field private static final FIELD_OVERALL_RATING:Ljava/lang/String;

.field private static final FIELD_RECORDING_DAY:Ljava/lang/String;

.field private static final FIELD_RECORDING_MONTH:Ljava/lang/String;

.field private static final FIELD_RECORDING_YEAR:Ljava/lang/String;

.field private static final FIELD_RELEASE_DAY:Ljava/lang/String;

.field private static final FIELD_RELEASE_MONTH:Ljava/lang/String;

.field private static final FIELD_RELEASE_YEAR:Ljava/lang/String;

.field private static final FIELD_STATION:Ljava/lang/String;

.field private static final FIELD_SUBTITLE:Ljava/lang/String;

.field private static final FIELD_TITLE:Ljava/lang/String;

.field private static final FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

.field private static final FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

.field private static final FIELD_TRACK_NUMBER:Ljava/lang/String;

.field private static final FIELD_USER_RATING:Ljava/lang/String;

.field private static final FIELD_WRITER:Ljava/lang/String;

.field public static final FOLDER_TYPE_ALBUMS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_ARTISTS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_GENRES:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_MIXED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_NONE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_PLAYLISTS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_TITLES:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_YEARS:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_TYPE_ALBUM:I = 0xa

.field public static final MEDIA_TYPE_ARTIST:I = 0xb

.field public static final MEDIA_TYPE_AUDIO_BOOK:I = 0xf

.field public static final MEDIA_TYPE_AUDIO_BOOK_CHAPTER:I = 0x2

.field public static final MEDIA_TYPE_FOLDER_ALBUMS:I = 0x15

.field public static final MEDIA_TYPE_FOLDER_ARTISTS:I = 0x16

.field public static final MEDIA_TYPE_FOLDER_AUDIO_BOOKS:I = 0x1a

.field public static final MEDIA_TYPE_FOLDER_GENRES:I = 0x17

.field public static final MEDIA_TYPE_FOLDER_MIXED:I = 0x14

.field public static final MEDIA_TYPE_FOLDER_MOVIES:I = 0x23

.field public static final MEDIA_TYPE_FOLDER_NEWS:I = 0x20

.field public static final MEDIA_TYPE_FOLDER_PLAYLISTS:I = 0x18

.field public static final MEDIA_TYPE_FOLDER_PODCASTS:I = 0x1b

.field public static final MEDIA_TYPE_FOLDER_RADIO_STATIONS:I = 0x1f

.field public static final MEDIA_TYPE_FOLDER_TRAILERS:I = 0x22

.field public static final MEDIA_TYPE_FOLDER_TV_CHANNELS:I = 0x1c

.field public static final MEDIA_TYPE_FOLDER_TV_SERIES:I = 0x1d

.field public static final MEDIA_TYPE_FOLDER_TV_SHOWS:I = 0x1e

.field public static final MEDIA_TYPE_FOLDER_VIDEOS:I = 0x21

.field public static final MEDIA_TYPE_FOLDER_YEARS:I = 0x19

.field public static final MEDIA_TYPE_GENRE:I = 0xc

.field public static final MEDIA_TYPE_MIXED:I = 0x0

.field public static final MEDIA_TYPE_MOVIE:I = 0x8

.field public static final MEDIA_TYPE_MUSIC:I = 0x1

.field public static final MEDIA_TYPE_NEWS:I = 0x5

.field public static final MEDIA_TYPE_PLAYLIST:I = 0xd

.field public static final MEDIA_TYPE_PODCAST:I = 0x10

.field public static final MEDIA_TYPE_PODCAST_EPISODE:I = 0x3

.field public static final MEDIA_TYPE_RADIO_STATION:I = 0x4

.field public static final MEDIA_TYPE_TRAILER:I = 0x7

.field public static final MEDIA_TYPE_TV_CHANNEL:I = 0x11

.field public static final MEDIA_TYPE_TV_SEASON:I = 0x13

.field public static final MEDIA_TYPE_TV_SERIES:I = 0x12

.field public static final MEDIA_TYPE_TV_SHOW:I = 0x9

.field public static final MEDIA_TYPE_VIDEO:I = 0x6

.field public static final MEDIA_TYPE_YEAR:I = 0xe

.field public static final PICTURE_TYPE_ARTIST_PERFORMER:I = 0x8

.field public static final PICTURE_TYPE_A_BRIGHT_COLORED_FISH:I = 0x11

.field public static final PICTURE_TYPE_BACK_COVER:I = 0x4

.field public static final PICTURE_TYPE_BAND_ARTIST_LOGO:I = 0x13

.field public static final PICTURE_TYPE_BAND_ORCHESTRA:I = 0xa

.field public static final PICTURE_TYPE_COMPOSER:I = 0xb

.field public static final PICTURE_TYPE_CONDUCTOR:I = 0x9

.field public static final PICTURE_TYPE_DURING_PERFORMANCE:I = 0xf

.field public static final PICTURE_TYPE_DURING_RECORDING:I = 0xe

.field public static final PICTURE_TYPE_FILE_ICON:I = 0x1

.field public static final PICTURE_TYPE_FILE_ICON_OTHER:I = 0x2

.field public static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field public static final PICTURE_TYPE_ILLUSTRATION:I = 0x12

.field public static final PICTURE_TYPE_LEAD_ARTIST_PERFORMER:I = 0x7

.field public static final PICTURE_TYPE_LEAFLET_PAGE:I = 0x5

.field public static final PICTURE_TYPE_LYRICIST:I = 0xc

.field public static final PICTURE_TYPE_MEDIA:I = 0x6

.field public static final PICTURE_TYPE_MOVIE_VIDEO_SCREEN_CAPTURE:I = 0x10

.field public static final PICTURE_TYPE_OTHER:I = 0x0

.field public static final PICTURE_TYPE_PUBLISHER_STUDIO_LOGO:I = 0x14

.field public static final PICTURE_TYPE_RECORDING_LOCATION:I = 0xd


# instance fields
.field public final albumArtist:Ljava/lang/CharSequence;

.field public final albumTitle:Ljava/lang/CharSequence;

.field public final artist:Ljava/lang/CharSequence;

.field public final artworkData:[B

.field public final artworkDataType:Ljava/lang/Integer;

.field public final artworkUri:Landroid/net/Uri;

.field public final compilation:Ljava/lang/CharSequence;

.field public final composer:Ljava/lang/CharSequence;

.field public final conductor:Ljava/lang/CharSequence;

.field public final description:Ljava/lang/CharSequence;

.field public final discNumber:Ljava/lang/Integer;

.field public final displayTitle:Ljava/lang/CharSequence;

.field public final extras:Landroid/os/Bundle;

.field public final folderType:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final genre:Ljava/lang/CharSequence;

.field public final isBrowsable:Ljava/lang/Boolean;

.field public final isPlayable:Ljava/lang/Boolean;

.field public final mediaType:Ljava/lang/Integer;

.field public final overallRating:Lcom/google/android/exoplayer2/Rating;

.field public final recordingDay:Ljava/lang/Integer;

.field public final recordingMonth:Ljava/lang/Integer;

.field public final recordingYear:Ljava/lang/Integer;

.field public final releaseDay:Ljava/lang/Integer;

.field public final releaseMonth:Ljava/lang/Integer;

.field public final releaseYear:Ljava/lang/Integer;

.field public final station:Ljava/lang/CharSequence;

.field public final subtitle:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final totalDiscCount:Ljava/lang/Integer;

.field public final totalTrackCount:Ljava/lang/Integer;

.field public final trackNumber:Ljava/lang/Integer;

.field public final userRating:Lcom/google/android/exoplayer2/Rating;

.field public final writer:Ljava/lang/CharSequence;

.field public final year:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$n4bc9ZFXKwAHBWPswIbYNYyZRds(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaMetadata;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 910
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1161
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    .line 1162
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    .line 1163
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    .line 1164
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    .line 1165
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    .line 1166
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    .line 1167
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    .line 1169
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    .line 1170
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    .line 1171
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    .line 1172
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    .line 1173
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    .line 1174
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    .line 1175
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    .line 1176
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    .line 1177
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    .line 1178
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    .line 1179
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    .line 1180
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    .line 1181
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    .line 1182
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    .line 1183
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    .line 1184
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    .line 1185
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    .line 1186
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    .line 1187
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    .line 1188
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    .line 1189
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    .line 1190
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    .line 1191
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    .line 1192
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    .line 1193
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    .line 1194
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 1303
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .registers 8
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1022
    .local v0, "isBrowsable":Ljava/lang/Boolean;
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v1

    .line 1023
    .local v1, "folderType":Ljava/lang/Integer;
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v2

    .line 1024
    .local v2, "mediaType":Ljava/lang/Integer;
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_35

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1026
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_56

    .line 1027
    :cond_1e
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_56

    .line 1028
    :cond_26
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/MediaMetadata;->getFolderTypeFromMediaType(I)I

    move-result v3

    :cond_30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_56

    .line 1030
    :cond_35
    if-eqz v1, :cond_56

    .line 1031
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_56

    if-nez v2, :cond_56

    .line 1033
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/MediaMetadata;->getMediaTypeFromFolderType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1036
    :cond_56
    :goto_56
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 1037
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 1038
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 1039
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 1040
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 1041
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 1042
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 1043
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->userRating:Lcom/google/android/exoplayer2/Rating;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    .line 1044
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->overallRating:Lcom/google/android/exoplayer2/Rating;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    .line 1045
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 1046
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 1047
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 1048
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 1049
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 1050
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 1051
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 1052
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 1053
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->year:Ljava/lang/Integer;

    .line 1054
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 1055
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 1056
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 1057
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 1058
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 1059
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 1060
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 1061
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 1062
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 1063
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 1064
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 1065
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 1066
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 1067
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 1068
    iput-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 1069
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    .line 1070
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;Lcom/google/android/exoplayer2/MediaMetadata$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaMetadata$1;

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata;-><init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1307
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    .line 1308
    .local v0, "builder":Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    .line 1309
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    .line 1310
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    .line 1311
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    .line 1312
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    .line 1313
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    .line 1314
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    .line 1315
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    .line 1317
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1318
    sget-object v3, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1319
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_63

    .line 1320
    :cond_62
    const/4 v3, 0x0

    .line 1316
    :goto_63
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    .line 1321
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    .line 1322
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    .line 1323
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    .line 1324
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    .line 1325
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    .line 1326
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setCompilation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    .line 1327
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 1328
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1330
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 1331
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1332
    .local v1, "fieldBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_d1

    .line 1333
    sget-object v2, Lcom/google/android/exoplayer2/Rating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Rating;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setUserRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1336
    .end local v1    # "fieldBundle":Landroid/os/Bundle;
    :cond_d1
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 1337
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1338
    .restart local v1    # "fieldBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_ea

    .line 1339
    sget-object v2, Lcom/google/android/exoplayer2/Rating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Rating;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setOverallRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1342
    .end local v1    # "fieldBundle":Landroid/os/Bundle;
    :cond_ea
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 1343
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1345
    :cond_fd
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 1346
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1348
    :cond_110
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 1349
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1351
    :cond_123
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 1352
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1354
    :cond_136
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 1355
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1357
    :cond_149
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 1358
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1360
    :cond_15c
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 1361
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1363
    :cond_16f
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 1364
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1366
    :cond_182
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 1367
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1369
    :cond_195
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 1370
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1372
    :cond_1a8
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 1373
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1375
    :cond_1bb
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 1376
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1378
    :cond_1ce
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 1379
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1381
    :cond_1e1
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 1382
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1385
    :cond_1f4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    return-object v1
.end method

.method private static getFolderTypeFromMediaType(I)I
    .registers 2
    .param p0, "mediaType"    # I

    .line 1390
    packed-switch p0, :pswitch_data_12

    .line 1434
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1425
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1423
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1421
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 1419
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 1417
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 1415
    :pswitch_f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_3
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private static getMediaTypeFromFolderType(I)I
    .registers 2
    .param p0, "folderType"    # I

    .line 1440
    packed-switch p0, :pswitch_data_18

    .line 1456
    const/16 v0, 0x14

    return v0

    .line 1452
    :pswitch_6
    const/16 v0, 0x19

    return v0

    .line 1448
    :pswitch_9
    const/16 v0, 0x18

    return v0

    .line 1446
    :pswitch_c
    const/16 v0, 0x17

    return v0

    .line 1444
    :pswitch_f
    const/16 v0, 0x16

    return v0

    .line 1442
    :pswitch_12
    const/16 v0, 0x15

    return v0

    .line 1450
    :pswitch_15
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 3

    .line 1074
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaMetadata$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1080
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1081
    return v0

    .line 1083
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_159

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_159

    .line 1086
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1087
    .local v2, "that":Lcom/google/android/exoplayer2/MediaMetadata;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 1088
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 1089
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 1090
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 1091
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 1092
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 1093
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    .line 1094
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    .line 1095
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 1096
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 1097
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 1098
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 1099
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 1100
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 1101
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 1102
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 1103
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 1104
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 1105
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 1106
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 1107
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 1108
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 1109
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 1110
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 1111
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 1112
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 1113
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 1114
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 1115
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 1116
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 1117
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 1118
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    goto :goto_158

    :cond_157
    const/4 v0, 0x0

    .line 1087
    :goto_158
    return v0

    .line 1084
    .end local v2    # "that":Lcom/google/android/exoplayer2/MediaMetadata;
    :cond_159
    :goto_159
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1124
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 1134
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    aput-object v2, v0, v1

    .line 1124
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 1199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1200
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 1201
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1203
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_17

    .line 1204
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1206
    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_20

    .line 1207
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1209
    :cond_20
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_29

    .line 1210
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1212
    :cond_29
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_32

    .line 1213
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1215
    :cond_32
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3b

    .line 1216
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1218
    :cond_3b
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_44

    .line 1219
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1221
    :cond_44
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    if-eqz v1, :cond_4d

    .line 1222
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1224
    :cond_4d
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v1, :cond_56

    .line 1225
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1227
    :cond_56
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5f

    .line 1228
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1230
    :cond_5f
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v1, :cond_68

    .line 1231
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1233
    :cond_68
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v1, :cond_71

    .line 1234
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1236
    :cond_71
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7a

    .line 1237
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1239
    :cond_7a
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    if-eqz v1, :cond_83

    .line 1240
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1242
    :cond_83
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8c

    .line 1243
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1245
    :cond_8c
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    if-eqz v1, :cond_99

    .line 1246
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1248
    :cond_99
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    if-eqz v1, :cond_a6

    .line 1249
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1251
    :cond_a6
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_b3

    .line 1252
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1254
    :cond_b3
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v1, :cond_c0

    .line 1255
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1257
    :cond_c0
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v1, :cond_cd

    .line 1258
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1260
    :cond_cd
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v1, :cond_da

    .line 1261
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1263
    :cond_da
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v1, :cond_e7

    .line 1264
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1266
    :cond_e7
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v1, :cond_f4

    .line 1267
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1269
    :cond_f4
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_101

    .line 1270
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1272
    :cond_101
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v1, :cond_10e

    .line 1273
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1275
    :cond_10e
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v1, :cond_11b

    .line 1276
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1278
    :cond_11b
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_128

    .line 1279
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1281
    :cond_128
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v1, :cond_135

    .line 1282
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1284
    :cond_135
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_142

    .line 1285
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1287
    :cond_142
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v1, :cond_14f

    .line 1288
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1290
    :cond_14f
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    if-eqz v1, :cond_15c

    .line 1291
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1293
    :cond_15c
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v1, :cond_169

    .line 1294
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1296
    :cond_169
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_172

    .line 1297
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1299
    :cond_172
    return-object v0
.end method
