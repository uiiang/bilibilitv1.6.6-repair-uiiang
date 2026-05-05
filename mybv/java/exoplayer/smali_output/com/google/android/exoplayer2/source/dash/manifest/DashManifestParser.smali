.class public Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

.field private static final TAG:Ljava/lang/String; = "MpdParser"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    nop

    .line 83
    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    return-void

    nop

    :array_24
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 97
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 99
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_b

    .line 102
    nop

    .line 103
    return-void

    .line 100
    :catch_b
    move-exception v0

    .line 101
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J
    .registers 12
    .param p2, "startTime"    # J
    .param p4, "elementDuration"    # J
    .param p6, "elementRepeatCount"    # I
    .param p7, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJIJ)J"
        }
    .end annotation

    .line 1325
    .local p1, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    if-ltz p6, :cond_5

    .line 1326
    add-int/lit8 v0, p6, 0x1

    goto :goto_c

    .line 1327
    :cond_5
    sub-long v0, p7, p2

    invoke-static {v0, v1, p4, p5}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_c
    nop

    .line 1328
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1b

    .line 1329
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1330
    add-long/2addr p2, p4

    .line 1328
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1332
    .end local v1    # "i":I
    :cond_1b
    return-wide p2
.end method

.method private static checkContentTypeConsistency(II)I
    .registers 3
    .param p0, "firstType"    # I
    .param p1, "secondType"    # I

    .line 1809
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 1810
    return p1

    .line 1811
    :cond_4
    if-ne p1, v0, :cond_7

    .line 1812
    return p0

    .line 1814
    :cond_7
    if-ne p0, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1815
    return p0
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "firstLanguage"    # Ljava/lang/String;
    .param p1, "secondLanguage"    # Ljava/lang/String;

    .line 1786
    if-nez p0, :cond_3

    .line 1787
    return-object p1

    .line 1788
    :cond_3
    if-nez p1, :cond_6

    .line 1789
    return-object p0

    .line 1791
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1792
    return-object p0
.end method

.method private static fillInClearKeyInformation(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1722
    .local p0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    .line 1723
    .local v0, "clearKeyLicenseServerUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 1724
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 1725
    .local v2, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    sget-object v3, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-eqz v3, :cond_22

    .line 1726
    iget-object v0, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 1727
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1728
    goto :goto_25

    .line 1723
    .end local v2    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1731
    .end local v1    # "i":I
    :cond_25
    :goto_25
    if-nez v0, :cond_28

    .line 1732
    return-void

    .line 1735
    :cond_28
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 1736
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 1737
    .restart local v2    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    sget-object v3, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v3, :cond_51

    .line 1738
    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v5, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1735
    .end local v2    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1744
    .end local v1    # "i":I
    :cond_54
    return-void
.end method

.method private static filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1705
    .local p0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_31

    .line 1706
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 1707
    .local v1, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1708
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 1709
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->canReplace(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1712
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1713
    goto :goto_2e

    .line 1708
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1705
    .end local v1    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v2    # "j":I
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1718
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method private static getFinalAvailabilityTimeOffset(JJ)J
    .registers 9
    .param p0, "baseUrlAvailabilityTimeOffsetUs"    # J
    .param p2, "segmentBaseAvailabilityTimeOffsetUs"    # J

    .line 2047
    move-wide v0, p2

    .line 2048
    .local v0, "availabilityTimeOffsetUs":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 2050
    move-wide v0, p0

    .line 2052
    :cond_b
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 2054
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2056
    :cond_19
    return-wide v0
.end method

.method private static getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "containerMimeType"    # Ljava/lang/String;
    .param p1, "codecs"    # Ljava/lang/String;

    .line 1756
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1757
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1758
    :cond_b
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1759
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1760
    :cond_16
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1762
    return-object p0

    .line 1763
    :cond_1d
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1765
    return-object p0

    .line 1766
    :cond_24
    const-string v0, "application/mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1767
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1768
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "application/x-mp4-vtt"

    goto :goto_3c

    :cond_3b
    move-object v1, v0

    :goto_3c
    return-object v1

    .line 1770
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private isDvbProfileDeclared([Ljava/lang/String;)Z
    .registers 7
    .param p1, "profiles"    # [Ljava/lang/String;

    .line 2060
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 2061
    .local v3, "profile":Ljava/lang/String;
    const-string v4, "urn:dvb:dash:profile:dvb-dash:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2062
    const/4 v0, 0x1

    return v0

    .line 2060
    .end local v3    # "profile":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2065
    :cond_14
    return v1
.end method

.method public static maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1689
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1690
    return-void

    .line 1692
    :cond_7
    const/4 v0, 0x1

    .line 1693
    .local v0, "depth":I
    :cond_8
    :goto_8
    if-eqz v0, :cond_1f

    .line 1694
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1695
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1696
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1697
    :cond_16
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1698
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1701
    :cond_1f
    return-void
.end method

.method protected static parseCea608AccessibilityChannel(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1840
    .local p0, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 1841
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1842
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v2, "urn:scte:dash:cc:cea-608:2015"

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 1844
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1845
    .local v2, "accessibilityValueMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1846
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 1848
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MpdParser"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v2    # "accessibilityValueMatcher":Ljava/util/regex/Matcher;
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1852
    .end local v0    # "i":I
    :cond_50
    const/4 v0, -0x1

    return v0
.end method

.method protected static parseCea708AccessibilityChannel(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1856
    .local p0, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 1857
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1858
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v2, "urn:scte:dash:cc:cea-708:2015"

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 1860
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1861
    .local v2, "accessibilityValueMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1862
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 1864
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MpdParser"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v2    # "accessibilityValueMatcher":Ljava/util/regex/Matcher;
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1868
    .end local v0    # "i":I
    :cond_50
    const/4 v0, -0x1

    return v0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1914
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1916
    return-wide p2

    .line 1918
    :cond_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .registers 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1830
    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1831
    .local v0, "schemeIdUri":Ljava/lang/String;
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1832
    .local v1, "value":Ljava/lang/String;
    const-string v3, "id"

    invoke-static {p0, v3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1834
    .local v2, "id":Ljava/lang/String;
    :cond_15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1835
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1836
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method protected static parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 2015
    const/4 v0, 0x0

    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2016
    .local v0, "value":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_b

    .line 2017
    return v1

    .line 2019
    :cond_b
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_4e

    :cond_18
    goto :goto_41

    :sswitch_19
    const-string v3, "fa01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x3

    goto :goto_42

    :sswitch_23
    const-string v3, "f801"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v3, "a000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_42

    :sswitch_37
    const-string v3, "4000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    goto :goto_42

    :goto_41
    const/4 v2, -0x1

    :goto_42
    packed-switch v2, :pswitch_data_60

    .line 2029
    return v1

    .line 2027
    :pswitch_46
    const/16 v1, 0x8

    return v1

    .line 2025
    :pswitch_49
    const/4 v1, 0x6

    return v1

    .line 2023
    :pswitch_4b
    return v4

    .line 2021
    :pswitch_4c
    return v5

    nop

    :sswitch_data_4e
    .sparse-switch
        0x185d7c -> :sswitch_37
        0x2cd22f -> :sswitch_2d
        0x2f3613 -> :sswitch_23
        0x2fcffc -> :sswitch_19
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_49
        :pswitch_46
    .end packed-switch
.end method

.method protected static parseDtsChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1982
    const-string v0, "value"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 1983
    .local v0, "channelCount":I
    if-lez v0, :cond_e

    const/16 v2, 0x21

    if-ge v0, v2, :cond_e

    move v1, v0

    :cond_e
    return v1
.end method

.method protected static parseDtsxChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1996
    const/4 v0, 0x0

    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1997
    .local v0, "value":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_b

    .line 1998
    return v1

    .line 2000
    :cond_b
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 2001
    .local v2, "channelCount":I
    if-nez v2, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1904
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1905
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1906
    return-wide p2

    .line 1908
    :cond_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1872
    .local p0, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 1873
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1874
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 1875
    .local v2, "schemeIdUri":Ljava/lang/String;
    const-string v3, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 1876
    const-string v4, "JOC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_21
    nop

    .line 1877
    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 1878
    const-string v4, "ec+3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1879
    :cond_34
    const-string v3, "audio/eac3-joc"

    return-object v3

    .line 1872
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v2    # "schemeIdUri":Ljava/lang/String;
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1882
    .end local v0    # "i":I
    :cond_3a
    const-string v0, "audio/eac3"

    return-object v0
.end method

.method protected static parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F
    .registers 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 1947
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1948
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_9

    move v1, p2

    goto :goto_d

    :cond_9
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :goto_d
    return v1
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .registers 9
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "defaultValue"    # F

    .line 1886
    move v0, p1

    .line 1887
    .local v0, "frameRate":F
    const/4 v1, 0x0

    const-string v2, "frameRate"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1888
    .local v1, "frameRateAttribute":Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 1889
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1890
    .local v2, "frameRateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1891
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1892
    .local v3, "numerator":I
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1893
    .local v4, "denominatorString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 1894
    int-to-float v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    goto :goto_34

    .line 1896
    :cond_33
    int-to-float v0, v3

    .line 1900
    .end local v2    # "frameRateMatcher":Ljava/util/regex/Matcher;
    .end local v3    # "numerator":I
    .end local v4    # "denominatorString":Ljava/lang/String;
    :cond_34
    :goto_34
    return v0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1937
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1938
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_9

    move v1, p2

    goto :goto_d

    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_d
    return v1
.end method

.method protected static parseLastSegmentNumberSupplementalProperty(Ljava/util/List;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)J"
        }
    .end annotation

    .line 2035
    .local p0, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 2036
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 2037
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v2, "http://dashif.org/guidelines/last-segment-number"

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2039
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 2035
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2042
    .end local v0    # "i":I
    :cond_21
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1942
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1943
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_9

    move-wide v1, p2

    goto :goto_d

    :cond_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_d
    return-wide v1
.end method

.method protected static parseMpegChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1965
    const-string v0, "value"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 1966
    .local v0, "index":I
    if-ltz v0, :cond_11

    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 1967
    aget v1, v2, v0

    goto :goto_12

    .line 1968
    :cond_11
    nop

    .line 1966
    :goto_12
    return v1
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1952
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1953
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_9

    move-object v1, p2

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    return-object v1
.end method

.method protected static parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1924
    const-string v0, ""

    .line 1926
    .local v0, "text":Ljava/lang/String;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1927
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    .line 1928
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1930
    :cond_11
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1932
    :goto_14
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1933
    return-object v0
.end method


# virtual methods
.method protected buildAdaptationSet(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .registers 17
    .param p1, "id"    # J
    .param p3, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .line 547
    .local p4, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .local p5, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p6, "essentialProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p7, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-object v0, v8

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method protected buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .registers 17
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "durationMs"    # J
    .param p7, "messageData"    # [B

    .line 1261
    new-instance v8, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p3

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v8
.end method

.method protected buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .registers 15
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "timescale"    # J
    .param p5, "presentationTimesUs"    # [J
    .param p6, "events"    # [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 1150
    new-instance v7, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    return-object v7
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;
    .registers 32
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "containerMimeType"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "frameRate"    # F
    .param p6, "audioChannels"    # I
    .param p7, "audioSamplingRate"    # I
    .param p8, "bitrate"    # I
    .param p9, "language"    # Ljava/lang/String;
    .param p12, "codecs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .line 809
    .local p10, "roleDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p11, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p13, "essentialProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p14, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    move-object/from16 v6, p12

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, "sampleMimeType":Ljava/lang/String;
    const-string v8, "audio/eac3"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 811
    invoke-static/range {p14 .. p14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 812
    const-string v8, "audio/eac3-joc"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 813
    const-string v6, "ec+3"

    .line 816
    .end local p12    # "codecs":Ljava/lang/String;
    .local v6, "codecs":Ljava/lang/String;
    :cond_28
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSelectionFlagsFromRoleDescriptors(Ljava/util/List;)I

    move-result v8

    .line 817
    .local v8, "selectionFlags":I
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromRoleDescriptors(Ljava/util/List;)I

    move-result v9

    .line 818
    .local v9, "roleFlags":I
    move-object/from16 v10, p11

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromAccessibilityDescriptors(Ljava/util/List;)I

    move-result v11

    or-int/2addr v9, v11

    .line 819
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromProperties(Ljava/util/List;)I

    move-result v11

    or-int/2addr v9, v11

    .line 820
    move-object/from16 v11, p14

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromProperties(Ljava/util/List;)I

    move-result v12

    or-int/2addr v9, v12

    .line 821
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseTileCountFromProperties(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v12

    .line 823
    .local v12, "tileCounts":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v13, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 825
    move-object/from16 v14, p1

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 826
    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 827
    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 828
    invoke-virtual {v13, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 829
    move/from16 v15, p8

    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 830
    invoke-virtual {v13, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 831
    invoke-virtual {v13, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 832
    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 833
    const/16 v16, -0x1

    if-eqz v12, :cond_7f

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_80

    :cond_7f
    const/4 v0, -0x1

    :goto_80
    invoke-virtual {v13, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setTileCountHorizontal(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 834
    if-eqz v12, :cond_91

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v13, v16

    goto :goto_92

    :cond_91
    const/4 v13, -0x1

    :goto_92
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setTileCountVertical(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 836
    .local v0, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ae

    .line 837
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    move/from16 v1, p5

    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move/from16 v13, p6

    move/from16 v4, p7

    goto :goto_fe

    .line 838
    :cond_ae
    move/from16 v1, p5

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c2

    .line 839
    move/from16 v13, p6

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    move/from16 v4, p7

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    goto :goto_fe

    .line 840
    :cond_c2
    move/from16 v13, p6

    move/from16 v4, p7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 841
    const/4 v1, -0x1

    .line 842
    .local v1, "accessibilityChannel":I
    move/from16 p12, v1

    .end local v1    # "accessibilityChannel":I
    .local p12, "accessibilityChannel":I
    const-string v1, "application/cea-608"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 843
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseCea608AccessibilityChannel(Ljava/util/List;)I

    move-result v1

    .end local p12    # "accessibilityChannel":I
    .restart local v1    # "accessibilityChannel":I
    goto :goto_eb

    .line 844
    .end local v1    # "accessibilityChannel":I
    .restart local p12    # "accessibilityChannel":I
    :cond_dc
    const-string v1, "application/cea-708"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 845
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseCea708AccessibilityChannel(Ljava/util/List;)I

    move-result v1

    .end local p12    # "accessibilityChannel":I
    .restart local v1    # "accessibilityChannel":I
    goto :goto_eb

    .line 844
    .end local v1    # "accessibilityChannel":I
    .restart local p12    # "accessibilityChannel":I
    :cond_e9
    move/from16 v1, p12

    .line 847
    .end local p12    # "accessibilityChannel":I
    .restart local v1    # "accessibilityChannel":I
    :goto_eb
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    .end local v1    # "accessibilityChannel":I
    goto :goto_fd

    .line 848
    :cond_ef
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 849
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    goto :goto_fe

    .line 848
    :cond_fd
    :goto_fd
    nop

    .line 852
    :goto_fe
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1
.end method

.method protected buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .registers 43
    .param p1, "availabilityStartTime"    # J
    .param p3, "durationMs"    # J
    .param p5, "minBufferTimeMs"    # J
    .param p7, "dynamic"    # Z
    .param p8, "minUpdateTimeMs"    # J
    .param p10, "timeShiftBufferDepthMs"    # J
    .param p12, "suggestedPresentationDelayMs"    # J
    .param p14, "publishTimeMs"    # J
    .param p16, "programInformation"    # Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .param p17, "utcTiming"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .param p18, "serviceDescription"    # Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .param p19, "location"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    .local p20, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    .line 250
    new-instance v21, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v21
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startMs"    # J
    .param p6, "assetIdentifier"    # Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;"
        }
    .end annotation

    .line 386
    .local p4, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local p5, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    new-instance v7, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;)V

    return-object v7
.end method

.method protected buildRangedUri(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 13
    .param p1, "urlText"    # Ljava/lang/String;
    .param p2, "rangeStart"    # J
    .param p4, "rangeLength"    # J

    .line 1374
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method protected buildRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .registers 23
    .param p1, "representationInfo"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "extraDrmSchemeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    .line 861
    .local p4, "extraDrmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local p5, "extraInbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 862
    .local v2, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    if-eqz v1, :cond_f

    .line 863
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 865
    :cond_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    .line 866
    .local v3, "drmSchemeType":Ljava/lang/String;
    if-nez v3, :cond_15

    .line 867
    move-object/from16 v3, p3

    .line 869
    :cond_15
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 870
    .local v4, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 871
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_30

    .line 872
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->fillInClearKeyInformation(Ljava/util/ArrayList;)V

    .line 873
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V

    .line 874
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v6, v3, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 876
    :cond_30
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 877
    .local v6, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v15, p5

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 878
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    .line 880
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrls:Lcom/google/common/collect/ImmutableList;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->essentialProperties:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->supplementalProperties:Ljava/util/List;

    const/16 v16, 0x0

    .line 878
    move-object v12, v6

    move-object/from16 v15, v16

    invoke-static/range {v7 .. v15}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->newInstance(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v7

    return-object v7
.end method

.method protected buildSegmentList(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .registers 37
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # J
    .param p8, "duration"    # J
    .param p11, "availabilityTimeOffsetUs"    # J
    .param p14, "timeShiftBufferDepthMs"    # J
    .param p16, "periodStartUnixTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ">;JJ)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    .local p10, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local p13, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    .line 1003
    new-instance v18, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v0, v18

    .line 1012
    invoke-static/range {p14 .. p15}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v14

    .line 1013
    invoke-static/range {p16 .. p17}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v16

    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)V

    .line 1003
    return-object v18
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .registers 43
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # J
    .param p8, "endNumber"    # J
    .param p10, "duration"    # J
    .param p13, "availabilityTimeOffsetUs"    # J
    .param p15, "initializationTemplate"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .param p16, "mediaTemplate"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .param p17, "timeShiftBufferDepthMs"    # J
    .param p19, "periodStartUnixTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "JJ)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .local p12, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 1091
    new-instance v21, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v0, v21

    .line 1102
    invoke-static/range {p17 .. p18}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v17

    .line 1103
    invoke-static/range {p19 .. p20}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v19

    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;JJ)V

    .line 1091
    return-object v21
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;
    .registers 6
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .line 1336
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .registers 21
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "indexStart"    # J
    .param p8, "indexLength"    # J

    .line 929
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    return-object v10
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .registers 4
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 273
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 111
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 112
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 113
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    const-string v3, "MPD"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 118
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0

    .line 114
    :cond_22
    const-string v3, "inputStream does not contain a valid media presentation description"

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v3
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_29} :catch_29

    .line 119
    .end local v1    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "eventType":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_29
    move-exception v1

    .line 120
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;JJJJJZ)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .registers 69
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .param p4, "periodDurationMs"    # J
    .param p6, "baseUrlAvailabilityTimeOffsetUs"    # J
    .param p8, "segmentBaseAvailabilityTimeOffsetUs"    # J
    .param p10, "periodStartUnixTimeMs"    # J
    .param p12, "timeShiftBufferDepthMs"    # J
    .param p14, "dvbProfileDeclared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            "JJJJJZ)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    .local p2, "parentBaseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "id"

    const-wide/16 v1, -0x1

    invoke-static {v14, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v27

    .line 403
    .local v27, "id":J
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 405
    .local v0, "contentType":I
    const-string v1, "mimeType"

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 406
    .local v29, "mimeType":Ljava/lang/String;
    const-string v1, "codecs"

    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 407
    .local v30, "codecs":Ljava/lang/String;
    const-string v1, "width"

    const/4 v2, -0x1

    invoke-static {v14, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v31

    .line 408
    .local v31, "width":I
    const-string v1, "height"

    invoke-static {v14, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v32

    .line 409
    .local v32, "height":I
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v33

    .line 410
    .local v33, "frameRate":F
    const/4 v1, -0x1

    .line 411
    .local v1, "audioChannels":I
    const-string v3, "audioSamplingRate"

    invoke-static {v14, v3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v34

    .line 412
    .local v34, "audioSamplingRate":I
    const-string v12, "lang"

    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "language":Ljava/lang/String;
    const-string v3, "label"

    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "label":Ljava/lang/String;
    const/4 v4, 0x0

    .line 415
    .local v4, "drmSchemeType":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    .line 416
    .local v11, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v5

    .line 417
    .local v10, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v5

    .line 418
    .local v9, "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    .line 419
    .local v8, "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    .line 420
    .local v7, "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    .line 421
    .local v6, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v5, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v16

    .line 424
    .local v35, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const/16 v16, 0x0

    move-object/from16 v36, p3

    move/from16 v37, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move/from16 v41, v16

    move-wide/from16 v3, p6

    move-wide/from16 v1, p8

    .line 426
    .end local v2    # "language":Ljava/lang/String;
    .end local v4    # "drmSchemeType":Ljava/lang/String;
    .end local p3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local p6    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local p8    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v1, "segmentBaseAvailabilityTimeOffsetUs":J
    .local v3, "baseUrlAvailabilityTimeOffsetUs":J
    .local v36, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v37, "audioChannels":I
    .local v38, "language":Ljava/lang/String;
    .local v39, "label":Ljava/lang/String;
    .local v40, "drmSchemeType":Ljava/lang/String;
    .local v41, "seenFirstBaseUrl":Z
    :goto_86
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 427
    const-string v13, "BaseURL"

    invoke-static {v14, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c4

    .line 428
    if-nez v41, :cond_9a

    .line 429
    nop

    .line 430
    invoke-virtual {v15, v14, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v3

    .line 431
    const/16 v41, 0x1

    .line 433
    :cond_9a
    move-object/from16 v13, p2

    move-wide/from16 p6, v1

    move-object/from16 v17, v10

    move/from16 v10, p14

    .end local v1    # "segmentBaseAvailabilityTimeOffsetUs":J
    .end local v10    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v17, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p6, "segmentBaseAvailabilityTimeOffsetUs":J
    invoke-virtual {v15, v14, v13, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v35

    .end local v35    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local v2, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move/from16 v42, v0

    move-wide/from16 v43, v3

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v8, v17

    const/16 v53, 0x0

    move-wide/from16 v16, p6

    goto/16 :goto_36b

    .line 434
    .end local v2    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v17    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local p6    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v1    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v10    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v35    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    :cond_c4
    move-object/from16 v13, p2

    move-wide/from16 p6, v1

    move-object/from16 v17, v10

    move-object/from16 v2, v35

    move/from16 v10, p14

    .end local v1    # "segmentBaseAvailabilityTimeOffsetUs":J
    .end local v10    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v35    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v2    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v17    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local p6    # "segmentBaseAvailabilityTimeOffsetUs":J
    const-string v1, "ContentProtection"

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 435
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v1

    .line 436
    .local v1, "contentProtection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-wide/from16 v18, v3

    .end local v3    # "baseUrlAvailabilityTimeOffsetUs":J
    .local v18, "baseUrlAvailabilityTimeOffsetUs":J
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_e6

    .line 437
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v3

    check-cast v40, Ljava/lang/String;

    .line 439
    :cond_e6
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_f1

    .line 440
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v1    # "contentProtection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_f1
    move/from16 v42, v0

    move-object/from16 v35, v2

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v8, v17

    move-wide/from16 v43, v18

    const/16 v53, 0x0

    move-wide/from16 v16, p6

    goto/16 :goto_36b

    .end local v18    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v3    # "baseUrlAvailabilityTimeOffsetUs":J
    :cond_10c
    move-wide/from16 v18, v3

    .end local v3    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v18    # "baseUrlAvailabilityTimeOffsetUs":J
    const-string v1, "ContentComponent"

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_146

    .line 443
    const/4 v4, 0x0

    invoke-interface {v14, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v38

    .end local v38    # "language":Ljava/lang/String;
    .local v3, "language":Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    .end local v3    # "language":Ljava/lang/String;
    .local v1, "language":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v0

    move/from16 v42, v0

    move-object/from16 v38, v1

    move-object/from16 v35, v2

    move-object/from16 v53, v4

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v8, v17

    move-wide/from16 v43, v18

    move-wide/from16 v16, p6

    goto/16 :goto_36b

    .line 445
    .end local v1    # "language":Ljava/lang/String;
    .restart local v38    # "language":Ljava/lang/String;
    :cond_146
    move-object/from16 v3, v38

    const/4 v4, 0x0

    .end local v38    # "language":Ljava/lang/String;
    .restart local v3    # "language":Ljava/lang/String;
    const-string v1, "Role"

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_175

    .line 446
    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v42, v0

    move-object/from16 v35, v2

    move-object/from16 v38, v3

    move-object/from16 v53, v4

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v8, v17

    move-wide/from16 v43, v18

    move-wide/from16 v0, p6

    goto/16 :goto_369

    .line 447
    :cond_175
    const-string v1, "AudioChannelConfiguration"

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 448
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    move/from16 v42, v0

    move/from16 v37, v1

    move-object/from16 v35, v2

    move-object/from16 v38, v3

    move-object/from16 v53, v4

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v8, v17

    move-wide/from16 v43, v18

    move-wide/from16 v16, p6

    .end local v37    # "audioChannels":I
    .local v1, "audioChannels":I
    goto/16 :goto_36b

    .line 449
    .end local v1    # "audioChannels":I
    .restart local v37    # "audioChannels":I
    :cond_1a0
    const-string v1, "Accessibility"

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1cc

    .line 450
    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v42, v0

    move-object/from16 v35, v2

    move-object/from16 v38, v3

    move-object/from16 v53, v4

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v8, v17

    move-wide/from16 v43, v18

    move-wide/from16 v0, p6

    goto/16 :goto_369

    .line 451
    :cond_1cc
    const-string v1, "EssentialProperty"

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1f8

    .line 452
    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v42, v0

    move-object/from16 v35, v2

    move-object/from16 v38, v3

    move-object/from16 v53, v4

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v8, v17

    move-wide/from16 v43, v18

    move-wide/from16 v0, p6

    goto/16 :goto_369

    .line 453
    :cond_1f8
    const-string v1, "SupplementalProperty"

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_224

    .line 454
    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v42, v0

    move-object/from16 v35, v2

    move-object/from16 v38, v3

    move-object/from16 v53, v4

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v8, v17

    move-wide/from16 v43, v18

    move-wide/from16 v0, p6

    goto/16 :goto_369

    .line 455
    :cond_224
    const-string v1, "Representation"

    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a2

    .line 456
    nop

    .line 459
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_236

    move-object/from16 v16, v2

    goto :goto_238

    :cond_236
    move-object/from16 v16, v13

    .line 457
    :goto_238
    move v1, v0

    .end local v0    # "contentType":I
    .local v1, "contentType":I
    move-object/from16 v0, p0

    move/from16 v42, v1

    .end local v1    # "contentType":I
    .local v42, "contentType":I
    move-object/from16 v1, p1

    move-object/from16 v35, v2

    .end local v2    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v35    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    move-object/from16 v2, v16

    move-object/from16 v38, v3

    move-wide/from16 v43, v18

    .end local v3    # "language":Ljava/lang/String;
    .end local v18    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v38    # "language":Ljava/lang/String;
    .local v43, "baseUrlAvailabilityTimeOffsetUs":J
    move-object/from16 v3, v29

    move-object/from16 v16, v4

    move-object/from16 v4, v30

    move-object/from16 v45, v5

    .end local v5    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .local v45, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    move/from16 v5, v31

    move-object/from16 v46, v6

    .end local v6    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v46, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v6, v32

    move-object/from16 v47, v7

    .end local v7    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v47, "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v7, v33

    move-object/from16 v48, v8

    .end local v8    # "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v48, "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v8, v37

    move-object/from16 v49, v9

    .end local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v49, "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v9, v34

    move-object/from16 v50, v17

    .end local v17    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v50, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v10, v38

    move-object/from16 v51, v11

    .end local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v51, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v11, v48

    move-object/from16 v52, v12

    move-object/from16 v12, v49

    move-object/from16 v53, v16

    move-object/from16 v13, v47

    move-object/from16 v14, v46

    move-object/from16 v15, v36

    move-wide/from16 v16, p10

    move-wide/from16 v18, p4

    move-wide/from16 v20, v43

    move-wide/from16 v22, p6

    move-wide/from16 v24, p12

    move/from16 v26, p14

    invoke-virtual/range {v0 .. v26}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;JJJJJZ)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-result-object v0

    .line 479
    .local v0, "representationInfo":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 481
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    .line 480
    move/from16 v14, v42

    .end local v42    # "contentType":I
    .local v14, "contentType":I
    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v1

    .line 482
    .end local v14    # "contentType":I
    .restart local v1    # "contentType":I
    move-object/from16 v15, v45

    .end local v45    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .local v15, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v0    # "representationInfo":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    move-object/from16 v14, p1

    move-wide/from16 v16, p6

    move/from16 v42, v1

    move-object/from16 v8, v50

    goto/16 :goto_36b

    .end local v1    # "contentType":I
    .end local v15    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .end local v35    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v38    # "language":Ljava/lang/String;
    .end local v43    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local v46    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v47    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v48    # "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v49    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v50    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v51    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v0, "contentType":I
    .restart local v2    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v3    # "language":Ljava/lang/String;
    .restart local v5    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .restart local v6    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v7    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v8    # "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v17    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v18    # "baseUrlAvailabilityTimeOffsetUs":J
    :cond_2a2
    move v14, v0

    move-object/from16 v35, v2

    move-object/from16 v38, v3

    move-object/from16 v53, v4

    move-object v15, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v50, v17

    move-wide/from16 v43, v18

    .end local v0    # "contentType":I
    .end local v2    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .end local v6    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v7    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v8    # "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .end local v17    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v18    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v14    # "contentType":I
    .restart local v15    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .restart local v35    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v38    # "language":Ljava/lang/String;
    .restart local v43    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v46    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v47    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v48    # "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v49    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v50    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v51    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const-string v0, "SegmentBase"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 484
    move-object/from16 v0, v36

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object/from16 v11, p0

    invoke-virtual {v11, v13, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    move-wide/from16 v16, p6

    move-object/from16 v36, v0

    move/from16 v42, v14

    move-object/from16 v8, v50

    move-object v14, v13

    .end local v36    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v0, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_36b

    .line 485
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v36    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_2d9
    move-object/from16 v11, p0

    const-string v0, "SegmentList"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 486
    nop

    .line 487
    move-wide/from16 v0, p6

    .end local p6    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v0, "segmentBaseAvailabilityTimeOffsetUs":J
    invoke-virtual {v11, v13, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v16

    .line 488
    .end local v0    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v16, "segmentBaseAvailabilityTimeOffsetUs":J
    move-object/from16 v2, v36

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p10

    move-wide/from16 v5, p4

    move-wide/from16 v7, v43

    move-wide/from16 v9, v16

    move/from16 v42, v14

    move-object v14, v11

    .end local v14    # "contentType":I
    .restart local v42    # "contentType":I
    move-wide/from16 v11, p12

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move-object/from16 v36, v0

    move-object v14, v13

    move-object/from16 v8, v50

    .end local v36    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v0, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_36b

    .line 497
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v16    # "segmentBaseAvailabilityTimeOffsetUs":J
    .end local v42    # "contentType":I
    .restart local v14    # "contentType":I
    .restart local v36    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local p6    # "segmentBaseAvailabilityTimeOffsetUs":J
    :cond_30a
    move-wide/from16 v0, p6

    move/from16 v42, v14

    move-object v14, v11

    .end local v14    # "contentType":I
    .end local p6    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v0, "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v42    # "contentType":I
    const-string v2, "SegmentTemplate"

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33a

    .line 498
    nop

    .line 499
    invoke-virtual {v14, v13, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v16

    .line 500
    .end local v0    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v16    # "segmentBaseAvailabilityTimeOffsetUs":J
    move-object/from16 v2, v36

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v46

    move-wide/from16 v4, p10

    move-wide/from16 v6, p4

    move-wide/from16 v8, v43

    move-wide/from16 v10, v16

    move-object v14, v13

    move-wide/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-object/from16 v36, v0

    move-object/from16 v8, v50

    .end local v36    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v0, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_36b

    .line 510
    .end local v16    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v0, "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v36    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_33a
    move-object v14, v13

    const-string v2, "InbandEventStream"

    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34d

    .line 511
    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v2

    move-object/from16 v8, v50

    .end local v50    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v8, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_369

    .line 512
    .end local v8    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v50    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    :cond_34d
    move-object/from16 v8, v50

    .end local v50    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v8    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const-string v2, "Label"

    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_360

    .line 513
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLabel(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v16, v0

    move-object/from16 v39, v2

    .end local v39    # "label":Ljava/lang/String;
    .local v2, "label":Ljava/lang/String;
    goto :goto_36b

    .line 514
    .end local v2    # "label":Ljava/lang/String;
    .restart local v39    # "label":Ljava/lang/String;
    :cond_360
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_369

    .line 515
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 517
    .end local v15    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .end local v35    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v38    # "language":Ljava/lang/String;
    .end local v42    # "contentType":I
    .end local v43    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local v46    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v47    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v48    # "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v49    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v51    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v0, "contentType":I
    .local v2, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v3    # "language":Ljava/lang/String;
    .restart local v5    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .restart local v6    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v7    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v8, "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v17    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v18    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local p6    # "segmentBaseAvailabilityTimeOffsetUs":J
    :cond_369
    :goto_369
    move-wide/from16 v16, v0

    .end local v0    # "contentType":I
    .end local v2    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .end local v6    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v7    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .end local v17    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v18    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local p6    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v8, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v15    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .restart local v16    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v35    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v38    # "language":Ljava/lang/String;
    .restart local v42    # "contentType":I
    .restart local v43    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v46    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v47    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v48    # "roleDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v49    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v51    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :goto_36b
    const-string v0, "AdaptationSet"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b2

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v0

    .line 521
    .local v9, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_37f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_3a0

    .line 522
    nop

    .line 524
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, v51

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v0

    .line 522
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v6, v6, 0x1

    goto :goto_37f

    .line 531
    .end local v6    # "i":I
    :cond_3a0
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move/from16 v3, v42

    move-object v4, v9

    move-object/from16 v5, v49

    move-object/from16 v6, v47

    move-object/from16 v7, v46

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildAdaptationSet(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v0

    return-object v0

    .line 517
    .end local v9    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_3b2
    move-object v10, v8

    move-object v5, v15

    move-wide/from16 v1, v16

    move/from16 v0, v42

    move-wide/from16 v3, v43

    move-object/from16 v6, v46

    move-object/from16 v7, v47

    move-object/from16 v8, v48

    move-object/from16 v9, v49

    move-object/from16 v11, v51

    move-object/from16 v12, v52

    move-object/from16 v13, v53

    move-object/from16 v15, p0

    goto/16 :goto_86
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 661
    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_84

    :cond_f
    goto :goto_56

    :sswitch_10
    const-string v1, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x6

    goto :goto_57

    :sswitch_1a
    const-string v1, "tag:dts.com,2018:uhd:audio_channel_configuration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x4

    goto :goto_57

    :sswitch_24
    const-string v1, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    goto :goto_57

    :sswitch_2e
    const-string v1, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_57

    :sswitch_38
    const-string v1, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x5

    goto :goto_57

    :sswitch_42
    const-string v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_57

    :sswitch_4c
    const-string v1, "urn:dts:dash:audio_channel_configuration:2012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x3

    goto :goto_57

    :goto_56
    const/4 v1, -0x1

    :goto_57
    packed-switch v1, :pswitch_data_a2

    .line 1502
    const/4 v1, -0x1

    .local v1, "audioChannels":I
    goto :goto_77

    .line 1499
    .end local v1    # "audioChannels":I
    :pswitch_5c
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    .line 1500
    .restart local v1    # "audioChannels":I
    goto :goto_77

    .line 1495
    .end local v1    # "audioChannels":I
    :pswitch_61
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDtsxChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    .line 1496
    .restart local v1    # "audioChannels":I
    goto :goto_77

    .line 1492
    .end local v1    # "audioChannels":I
    :pswitch_66
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDtsChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    .line 1493
    .restart local v1    # "audioChannels":I
    goto :goto_77

    .line 1488
    .end local v1    # "audioChannels":I
    :pswitch_6b
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseMpegChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    .line 1489
    .restart local v1    # "audioChannels":I
    goto :goto_77

    .line 1485
    .end local v1    # "audioChannels":I
    :pswitch_70
    const-string v1, "value"

    invoke-static {p1, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1486
    .restart local v1    # "audioChannels":I
    nop

    .line 1506
    :cond_77
    :goto_77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1507
    const-string v2, "AudioChannelConfiguration"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1508
    return v1

    nop

    :sswitch_data_84
    .sparse-switch
        -0x7ee09c90 -> :sswitch_4c
        -0x50a2db6e -> :sswitch_42
        -0x43d6a909 -> :sswitch_38
        -0x3aced4cf -> :sswitch_2e
        -0x4b58cf3 -> :sswitch_24
        0x129b7989 -> :sswitch_1a
        0x79657164 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6b
        :pswitch_66
        :pswitch_66
        :pswitch_61
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method protected parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J
    .registers 7
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parentAvailabilityTimeOffsetUs"    # J

    .line 1467
    const/4 v0, 0x0

    const-string v1, "availabilityTimeOffset"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1469
    return-wide p2

    .line 1471
    :cond_a
    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1472
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1

    .line 1474
    :cond_18
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v2, 0x49742400    # 1000000.0f

    mul-float v1, v1, v2

    float-to-long v1, v1

    return-wide v1
.end method

.method protected parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;
    .registers 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "dvbProfileDeclared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1424
    .local p2, "parentBaseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const-string v0, "dvb:priority"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "priorityValue":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 1427
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_15

    .line 1428
    :cond_f
    if-eqz p3, :cond_13

    const/4 v3, 0x1

    goto :goto_15

    :cond_13
    const/high16 v3, -0x80000000

    :goto_15
    nop

    .line 1429
    .local v3, "priority":I
    const-string v4, "dvb:weight"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1430
    .local v4, "weightValue":Ljava/lang/String;
    if-eqz v4, :cond_23

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_24

    :cond_23
    const/4 v5, 0x1

    .line 1431
    .local v5, "weight":I
    :goto_24
    const-string v6, "serviceLocation"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1432
    .local v1, "serviceLocation":Ljava/lang/String;
    const-string v6, "BaseURL"

    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1433
    .local v6, "baseUrl":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/UriUtil;->isAbsolute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 1434
    if-nez v1, :cond_39

    .line 1435
    move-object v1, v6

    .line 1437
    :cond_39
    new-array v2, v2, [Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    new-instance v7, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    invoke-direct {v7, v6, v1, v3, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v7, v2, v8

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 1440
    :cond_48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1441
    .local v2, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_78

    .line 1442
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 1443
    .local v8, "parentBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1444
    .local v9, "resolvedBaseUri":Ljava/lang/String;
    if-nez v1, :cond_64

    move-object v10, v9

    goto :goto_65

    :cond_64
    move-object v10, v1

    .line 1445
    .local v10, "resolvedServiceLocation":Ljava/lang/String;
    :goto_65
    if-eqz p3, :cond_6d

    .line 1447
    iget v3, v8, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    .line 1448
    iget v5, v8, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    .line 1449
    iget-object v10, v8, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 1451
    :cond_6d
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    invoke-direct {v11, v9, v10, v3, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    .end local v8    # "parentBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    .end local v9    # "resolvedBaseUri":Ljava/lang/String;
    .end local v10    # "resolvedServiceLocation":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 1453
    .end local v7    # "i":I
    :cond_78
    return-object v2
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 14
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "schemeType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 584
    .local v1, "licenseServerUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 585
    .local v2, "data":[B
    const/4 v3, 0x0

    .line 587
    .local v3, "uuid":Ljava/util/UUID;
    const-string v4, "schemeIdUri"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "schemeIdUri":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v4, :cond_8b

    .line 589
    invoke-static {v4}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_118

    :cond_19
    goto :goto_42

    :sswitch_1a
    const-string v8, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x0

    goto :goto_43

    :sswitch_24
    const-string v8, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x2

    goto :goto_43

    :sswitch_2e
    const-string v8, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x1

    goto :goto_43

    :sswitch_38
    const-string v8, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x3

    goto :goto_43

    :goto_42
    const/4 v7, -0x1

    :goto_43
    packed-switch v7, :pswitch_data_12a

    goto :goto_8b

    .line 611
    :pswitch_47
    sget-object v3, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 612
    goto :goto_8b

    .line 608
    :pswitch_4a
    sget-object v3, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 609
    goto :goto_8b

    .line 605
    :pswitch_4d
    sget-object v3, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 606
    goto :goto_8b

    .line 591
    :pswitch_50
    const-string v7, "value"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    const-string v7, "default_KID"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValueIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, "defaultKid":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8b

    .line 594
    const-string v8, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8b

    .line 595
    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 596
    .local v8, "defaultKidStrings":[Ljava/lang/String;
    array-length v9, v8

    new-array v9, v9, [Ljava/util/UUID;

    .line 597
    .local v9, "defaultKids":[Ljava/util/UUID;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_74
    array-length v11, v8

    if-ge v10, v11, :cond_82

    .line 598
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    aput-object v11, v9, v10

    .line 597
    add-int/lit8 v10, v10, 0x1

    goto :goto_74

    .line 600
    .end local v10    # "i":I
    :cond_82
    sget-object v10, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-static {v10, v9, v5}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v2

    .line 601
    sget-object v3, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 602
    .end local v8    # "defaultKidStrings":[Ljava/lang/String;
    .end local v9    # "defaultKids":[Ljava/util/UUID;
    nop

    .line 619
    .end local v7    # "defaultKid":Ljava/lang/String;
    :cond_8b
    :goto_8b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 620
    const-string v7, "clearkey:Laurl"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_a2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_a2

    .line 621
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_102

    .line 622
    :cond_a2
    const-string v7, "ms:laurl"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 623
    const-string v7, "licenseUrl"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_102

    .line 624
    :cond_b1
    if-nez v2, :cond_d8

    .line 625
    const-string v7, "pssh"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTagIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 626
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_d8

    .line 628
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 629
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v3

    .line 630
    if-nez v3, :cond_102

    .line 631
    const-string v7, "MpdParser"

    const-string v8, "Skipping malformed cenc:pssh data"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v2, 0x0

    goto :goto_102

    .line 634
    :cond_d8
    if-nez v2, :cond_ff

    sget-object v7, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 635
    invoke-virtual {v7, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 636
    const-string v7, "mspr:pro"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 637
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_ff

    .line 639
    sget-object v7, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 641
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 640
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v2

    goto :goto_102

    .line 643
    :cond_ff
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 645
    :cond_102
    :goto_102
    const-string v7, "ContentProtection"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 647
    if-eqz v3, :cond_113

    new-instance v5, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v6, "video/mp4"

    invoke-direct {v5, v3, v1, v6, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 648
    .local v5, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_113
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    :sswitch_data_118
    .sparse-switch
        -0x7610741f -> :sswitch_38
        0x1d2c5beb -> :sswitch_2e
        0x2d06c692 -> :sswitch_24
        0x6c0c9d2a -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
    .end packed-switch
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 557
    const/4 v0, 0x0

    const-string v1, "contentType"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_f

    .line 559
    goto :goto_38

    .line 560
    :cond_f
    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 561
    const/4 v2, 0x1

    goto :goto_38

    .line 562
    :cond_19
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 563
    const/4 v2, 0x2

    goto :goto_38

    .line 564
    :cond_23
    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 565
    const/4 v2, 0x3

    goto :goto_38

    .line 566
    :cond_2d
    const-string v1, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 567
    const/4 v2, 0x4

    goto :goto_38

    .line 568
    :cond_37
    nop

    .line 558
    :goto_38
    return v2
.end method

.method protected parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
    .registers 31
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "schemeIdUri"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "timescale"    # J
    .param p6, "presentationTimeOffset"    # J
    .param p8, "scratchOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/io/ByteArrayOutputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1176
    move-object/from16 v0, p1

    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    .line 1177
    .local v12, "id":J
    const-string v1, "duration"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 1178
    .local v14, "duration":J
    const-string v1, "presentationTime"

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1179
    .local v1, "presentationTime":J
    const-wide/16 v8, 0x3e8

    move-wide v6, v14

    move-wide/from16 v10, p4

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .line 1180
    .local v16, "durationMs":J
    sub-long v3, v1, p6

    const-wide/32 v5, 0xf4240

    .line 1181
    move-wide/from16 v7, p4

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 1183
    .local v18, "presentationTimesUs":J
    const-string v3, "messageData"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1184
    .local v3, "messageData":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object/from16 v9, p8

    invoke-virtual {v11, v0, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v20

    .line 1185
    .local v20, "eventObject":[B
    nop

    .line 1186
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1192
    if-nez v3, :cond_48

    move-object/from16 v21, v20

    goto :goto_4e

    :cond_48
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v21, v4

    .line 1187
    :goto_4e
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide v7, v12

    move-object v0, v10

    move-wide/from16 v9, v16

    move-object/from16 v11, v21

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v4

    .line 1185
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .registers 8
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "scratchOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1206
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1207
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 1208
    .local v0, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1211
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 1212
    :goto_13
    const-string v1, "Event"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 1213
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_aa

    goto/16 :goto_9d

    .line 1249
    :pswitch_24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 1250
    goto/16 :goto_9d

    .line 1246
    :pswitch_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 1247
    goto :goto_9d

    .line 1243
    :pswitch_35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 1244
    goto :goto_9d

    .line 1240
    :pswitch_3d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 1241
    goto :goto_9d

    .line 1237
    :pswitch_45
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 1238
    goto :goto_9d

    .line 1234
    :pswitch_4d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 1235
    goto :goto_9d

    .line 1231
    :pswitch_55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1232
    goto :goto_9d

    .line 1228
    :pswitch_5d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1229
    goto :goto_9d

    .line 1221
    :pswitch_69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_8e

    .line 1223
    nop

    .line 1224
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1223
    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 1226
    .end local v1    # "i":I
    :cond_8e
    goto :goto_9d

    .line 1218
    :pswitch_8f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1219
    goto :goto_9d

    .line 1215
    :pswitch_93
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1216
    nop

    .line 1253
    :goto_9d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    goto/16 :goto_13

    .line 1255
    :cond_a2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 1256
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_93
        :pswitch_8f
        :pswitch_69
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method protected parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .registers 25
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1116
    move-object/from16 v9, p1

    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {v9, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1117
    .local v17, "schemeIdUri":Ljava/lang/String;
    const-string v0, "value"

    invoke-static {v9, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1118
    .local v18, "value":Ljava/lang/String;
    const-string v0, "timescale"

    const-wide/16 v1, 0x1

    invoke-static {v9, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    .line 1119
    .local v19, "timescale":J
    const-string v0, "presentationTimeOffset"

    const-wide/16 v1, 0x0

    invoke-static {v9, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    .line 1120
    .local v21, "presentationTimeOffset":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 1121
    .local v15, "eventMessages":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;>;"
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1123
    .local v8, "scratchOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_2d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1124
    const-string v0, "Event"

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1125
    nop

    .line 1126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    move-result-object v0

    .line 1128
    .local v0, "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    .end local v0    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    goto :goto_50

    .line 1130
    :cond_4d
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1132
    :goto_50
    const-string v0, "EventStream"

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1134
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1135
    .local v0, "presentationTimesUs":[J
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 1136
    .local v1, "events":[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_65
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_84

    .line 1137
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1138
    .local v3, "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 1139
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    aput-object v4, v1, v2

    .line 1136
    .end local v3    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 1141
    .end local v2    # "i":I
    :cond_84
    move-object/from16 v10, p0

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-wide/from16 v13, v19

    move-object v2, v15

    .end local v15    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;>;"
    .local v2, "eventMessages":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;>;"
    move-object v15, v0

    move-object/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-result-object v3

    return-object v3

    .line 1132
    .end local v0    # "presentationTimesUs":[J
    .end local v1    # "events":[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .end local v2    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;>;"
    .restart local v15    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;>;"
    :cond_95
    move-object v2, v15

    .end local v15    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;>;"
    .restart local v2    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;>;"
    goto :goto_2d
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 4
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1350
    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseLabel(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    const-string v0, "Label"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .registers 51
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "documentBaseUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 127
    const-string v2, "profiles"

    invoke-virtual {v15, v13, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseProfiles(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->isDvbProfileDeclared([Ljava/lang/String;)Z

    move-result v14

    .line 128
    .local v14, "dvbProfileDeclared":Z
    const-string v1, "availabilityStartTime"

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v13, v1, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v33

    .line 129
    .local v33, "availabilityStartTime":J
    const-string v1, "mediaPresentationDuration"

    invoke-static {v13, v1, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 130
    .local v16, "durationMs":J
    const-string v1, "minBufferTime"

    invoke-static {v13, v1, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v35

    .line 131
    .local v35, "minBufferTimeMs":J
    const-string v1, "type"

    const/4 v7, 0x0

    invoke-interface {v13, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "typeString":Ljava/lang/String;
    const-string v1, "dynamic"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    .line 134
    .local v37, "dynamic":Z
    if-eqz v37, :cond_40

    const-string v1, "minimumUpdatePeriod"

    invoke-static {v13, v1, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v20, v1

    goto :goto_42

    :cond_40
    move-wide/from16 v20, v11

    .line 136
    .local v20, "minUpdateTimeMs":J
    :goto_42
    if-eqz v37, :cond_4c

    const-string v1, "timeShiftBufferDepth"

    invoke-static {v13, v1, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide v9, v1

    goto :goto_4d

    :cond_4c
    move-wide v9, v11

    .line 138
    .local v9, "timeShiftBufferDepthMs":J
    :goto_4d
    if-eqz v37, :cond_58

    const-string v1, "suggestedPresentationDelay"

    invoke-static {v13, v1, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v24, v1

    goto :goto_5a

    :cond_58
    move-wide/from16 v24, v11

    .line 139
    .local v24, "suggestedPresentationDelayMs":J
    :goto_5a
    const-string v1, "publishTime"

    invoke-static {v13, v1, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v38

    .line 140
    .local v38, "publishTimeMs":J
    const/4 v1, 0x0

    .line 141
    .local v1, "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    const/4 v2, 0x0

    .line 142
    .local v2, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    const/4 v3, 0x0

    .line 143
    .local v3, "location":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 144
    .local v4, "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    if-eqz v37, :cond_69

    const-wide/16 v18, 0x0

    goto :goto_6b

    :cond_69
    move-wide/from16 v18, v11

    .line 145
    .local v18, "baseUrlAvailabilityTimeOffsetUs":J
    :goto_6b
    new-instance v5, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    const/4 v11, 0x1

    if-eqz v14, :cond_7a

    const/4 v12, 0x1

    goto :goto_7c

    :cond_7a
    const/high16 v12, -0x80000000

    :goto_7c
    invoke-direct {v5, v6, v7, v12, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v40, v5

    .line 151
    .local v40, "documentBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    new-array v5, v11, [Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    aput-object v40, v5, v0

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    .line 153
    .local v12, "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 154
    .local v11, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 155
    .local v7, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    if-eqz v37, :cond_9d

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9f

    :cond_9d
    const-wide/16 v5, 0x0

    .line 156
    .local v5, "nextPeriodStartMs":J
    :goto_9f
    const/4 v0, 0x0

    .line 157
    .local v0, "seenEarlyAccessPeriod":Z
    const/16 v22, 0x0

    move-object/from16 v23, v3

    move-object/from16 v29, v4

    move-wide/from16 v30, v5

    move-wide/from16 v5, v18

    move/from16 v32, v22

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v2

    .line 159
    .end local v0    # "seenEarlyAccessPeriod":Z
    .end local v1    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .end local v2    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .end local v3    # "location":Landroid/net/Uri;
    .end local v4    # "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .local v5, "baseUrlAvailabilityTimeOffsetUs":J
    .local v18, "seenEarlyAccessPeriod":Z
    .local v19, "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .local v22, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .local v23, "location":Landroid/net/Uri;
    .local v29, "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .local v30, "nextPeriodStartMs":J
    .local v32, "seenFirstBaseUrl":Z
    :goto_b2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 160
    const-string v0, "BaseURL"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 161
    if-nez v32, :cond_c6

    .line 162
    nop

    .line 163
    invoke-virtual {v15, v13, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    .line 164
    const/16 v32, 0x1

    .line 166
    :cond_c6
    invoke-virtual {v15, v13, v12, v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object v4, v11

    move-object/from16 v26, v12

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v7, v29

    move-wide/from16 v41, v30

    move/from16 v8, v32

    const/4 v12, 0x0

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_23c

    .line 167
    :cond_ea
    const-string v0, "ProgramInformation"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 168
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object v4, v11

    move-object/from16 v26, v12

    move/from16 v0, v18

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v7, v29

    move-wide/from16 v41, v30

    move/from16 v8, v32

    const/4 v12, 0x0

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    .end local v19    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .local v0, "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    goto/16 :goto_23c

    .line 169
    .end local v0    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .restart local v19    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    :cond_112
    const-string v0, "UTCTiming"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 170
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v0

    move-object v2, v0

    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object v4, v11

    move-object/from16 v26, v12

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v23

    move-object/from16 v7, v29

    move-wide/from16 v41, v30

    move/from16 v8, v32

    const/4 v12, 0x0

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    .end local v22    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .local v0, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    goto/16 :goto_23c

    .line 171
    .end local v0    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .restart local v22    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    :cond_13a
    const-string v0, "Location"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object v4, v11

    move-object/from16 v26, v12

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v7, v29

    move-wide/from16 v41, v30

    move/from16 v8, v32

    const/4 v12, 0x0

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    .end local v23    # "location":Landroid/net/Uri;
    .local v0, "location":Landroid/net/Uri;
    goto/16 :goto_23c

    .line 173
    .end local v0    # "location":Landroid/net/Uri;
    .restart local v23    # "location":Landroid/net/Uri;
    :cond_16a
    const-string v0, "ServiceDescription"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 174
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseServiceDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    move-result-object v0

    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object v4, v11

    move-object/from16 v26, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-wide/from16 v41, v30

    move/from16 v8, v32

    const/4 v12, 0x0

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    move-object v7, v0

    move/from16 v0, v18

    .end local v29    # "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .local v0, "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    goto/16 :goto_23c

    .line 175
    .end local v0    # "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .restart local v29    # "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    :cond_192
    const-string v0, "Period"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21a

    if-nez v18, :cond_21a

    .line 176
    nop

    .line 179
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a5

    move-object v2, v7

    goto :goto_1a6

    :cond_1a5
    move-object v2, v12

    .line 177
    :goto_1a6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, v30

    move-wide/from16 v41, v5

    .end local v5    # "baseUrlAvailabilityTimeOffsetUs":J
    .local v41, "baseUrlAvailabilityTimeOffsetUs":J
    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object/from16 v26, v12

    const/4 v12, 0x0

    .end local v7    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v8    # "typeString":Ljava/lang/String;
    .end local v12    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local v26, "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local v43, "typeString":Ljava/lang/String;
    .local v44, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    move-wide/from16 v7, v33

    move-object/from16 v45, v11

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    .end local v11    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .local v45, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    move v11, v14

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;

    move-result-object v0

    .line 185
    .local v0, "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/dash/manifest/Period;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    .line 186
    .local v1, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v4, v2, v27

    if-nez v4, :cond_1f0

    .line 187
    if-eqz v37, :cond_1d4

    .line 190
    const/16 v18, 0x1

    move-object/from16 v4, v45

    goto :goto_209

    .line 192
    :cond_1d4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine start of period "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 193
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v2, v12}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 196
    :cond_1f0
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 198
    .local v2, "periodDurationMs":J
    cmp-long v4, v2, v27

    if-nez v4, :cond_1ff

    move-wide/from16 v4, v27

    goto :goto_202

    :cond_1ff
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    add-long/2addr v4, v2

    :goto_202
    move-wide/from16 v30, v4

    .line 199
    move-object/from16 v4, v45

    .end local v45    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .local v4, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v0    # "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/dash/manifest/Period;Ljava/lang/Long;>;"
    .end local v1    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v2    # "periodDurationMs":J
    :goto_209
    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v7, v29

    move/from16 v8, v32

    move-wide/from16 v5, v41

    move-wide/from16 v41, v30

    goto :goto_23c

    .line 175
    .end local v4    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .end local v26    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v41    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local v43    # "typeString":Ljava/lang/String;
    .end local v44    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v5    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v7    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v8    # "typeString":Ljava/lang/String;
    .restart local v11    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .restart local v12    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    :cond_21a
    move-wide/from16 v41, v5

    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object v4, v11

    move-object/from16 v26, v12

    const/4 v12, 0x0

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    .line 202
    .end local v5    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local v7    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v8    # "typeString":Ljava/lang/String;
    .end local v11    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .end local v12    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v4    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .restart local v26    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v41    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v43    # "typeString":Ljava/lang/String;
    .restart local v44    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v7, v29

    move/from16 v8, v32

    move-wide/from16 v5, v41

    move-wide/from16 v41, v30

    .line 204
    .end local v18    # "seenEarlyAccessPeriod":Z
    .end local v19    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .end local v22    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .end local v23    # "location":Landroid/net/Uri;
    .end local v29    # "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .end local v30    # "nextPeriodStartMs":J
    .end local v32    # "seenFirstBaseUrl":Z
    .local v0, "seenEarlyAccessPeriod":Z
    .local v1, "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .local v2, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .restart local v3    # "location":Landroid/net/Uri;
    .restart local v5    # "baseUrlAvailabilityTimeOffsetUs":J
    .local v7, "serviceDescription":Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .local v8, "seenFirstBaseUrl":Z
    .local v41, "nextPeriodStartMs":J
    :goto_23c
    const-string v11, "MPD"

    invoke-static {v13, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_28b

    .line 206
    cmp-long v11, v16, v27

    if-nez v11, :cond_25b

    .line 207
    cmp-long v11, v41, v27

    if-eqz v11, :cond_251

    .line 209
    move-wide/from16 v16, v41

    move-wide/from16 v45, v16

    goto :goto_25d

    .line 210
    :cond_251
    if-eqz v37, :cond_254

    goto :goto_25b

    .line 211
    :cond_254
    const-string v11, "Unable to determine duration of static manifest."

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v11

    throw v11

    .line 216
    :cond_25b
    :goto_25b
    move-wide/from16 v45, v16

    .end local v16    # "durationMs":J
    .local v45, "durationMs":J
    :goto_25d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_284

    .line 220
    move-object/from16 v11, v26

    .end local v26    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local v11, "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    move-object/from16 v12, p0

    move/from16 v47, v14

    .end local v14    # "dvbProfileDeclared":Z
    .local v47, "dvbProfileDeclared":Z
    move-wide/from16 v13, v33

    move-wide/from16 v15, v45

    move-wide/from16 v17, v35

    move/from16 v19, v37

    move-wide/from16 v22, v9

    move-wide/from16 v26, v38

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move-object/from16 v30, v7

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    invoke-virtual/range {v12 .. v32}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v12

    return-object v12

    .line 217
    .end local v11    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v47    # "dvbProfileDeclared":Z
    .restart local v14    # "dvbProfileDeclared":Z
    .restart local v26    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    :cond_284
    const-string v13, "No periods found."

    invoke-static {v13, v12}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v12

    throw v12

    .line 204
    .end local v45    # "durationMs":J
    .restart local v16    # "durationMs":J
    :cond_28b
    move/from16 v47, v14

    move-object/from16 v11, v26

    .end local v14    # "dvbProfileDeclared":Z
    .end local v26    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v11    # "parentBaseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v47    # "dvbProfileDeclared":Z
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v29, v7

    move/from16 v32, v8

    move-object v12, v11

    move-wide/from16 v30, v41

    move-object/from16 v8, v43

    move-object/from16 v7, v44

    move-object v11, v4

    goto/16 :goto_b2
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;
    .registers 50
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "defaultStartMs"    # J
    .param p5, "baseUrlAvailabilityTimeOffsetUs"    # J
    .param p7, "availabilityStartTimeMs"    # J
    .param p9, "timeShiftBufferDepthMs"    # J
    .param p11, "dvbProfileDeclared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;JJJJZ)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    .local p2, "parentBaseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "id"

    const/4 v12, 0x0

    invoke-interface {v14, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 308
    .local v26, "id":Ljava/lang/String;
    const-string v0, "start"

    move-wide/from16 v8, p3

    invoke-static {v14, v0, v8, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v27

    .line 310
    .local v27, "startMs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p7, v6

    if-eqz v0, :cond_20

    add-long v0, p7, v27

    move-wide v10, v0

    goto :goto_21

    :cond_20
    move-wide v10, v6

    .line 311
    .local v10, "periodStartUnixTimeMs":J
    :goto_21
    const-string v0, "duration"

    invoke-static {v14, v0, v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v29

    .line 312
    .local v29, "durationMs":J
    const/4 v0, 0x0

    .line 313
    .local v0, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    const/4 v1, 0x0

    .line 314
    .local v1, "assetIdentifier":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    .line 315
    .local v13, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v2

    .line 316
    .local v4, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 317
    .local v5, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const/4 v2, 0x0

    .line 318
    .local v2, "seenFirstBaseUrl":Z
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move/from16 v33, v2

    move-wide/from16 v2, p5

    .line 320
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v1    # "assetIdentifier":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local p5    # "baseUrlAvailabilityTimeOffsetUs":J
    .local v2, "baseUrlAvailabilityTimeOffsetUs":J
    .local v16, "segmentBaseAvailabilityTimeOffsetUs":J
    .local v31, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v32, "assetIdentifier":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .local v33, "seenFirstBaseUrl":Z
    :goto_49
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 321
    const-string v0, "BaseURL"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 322
    if-nez v33, :cond_5d

    .line 323
    nop

    .line 324
    invoke-virtual {v15, v14, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v2

    .line 325
    const/16 v33, 0x1

    .line 327
    :cond_5d
    move-object/from16 v1, p2

    move/from16 v0, p11

    invoke-virtual {v15, v14, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v34, v2

    move-object v8, v4

    move-object/from16 v36, v5

    move-object v1, v12

    move-object/from16 v37, v13

    move-object v7, v14

    move-object v9, v15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_178

    .line 328
    :cond_79
    move-object/from16 v1, p2

    move/from16 v0, p11

    const-string v6, "AdaptationSet"

    invoke-static {v14, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 329
    nop

    .line 332
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8e

    move-object v6, v5

    goto :goto_8f

    :cond_8e
    move-object v6, v1

    .line 330
    :goto_8f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v34, v2

    .end local v2    # "baseUrlAvailabilityTimeOffsetUs":J
    .local v34, "baseUrlAvailabilityTimeOffsetUs":J
    move-object v2, v6

    move-object/from16 v3, v31

    move-object v6, v4

    move-object/from16 v36, v5

    .end local v4    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .end local v5    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local v6, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .local v36, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    move-wide/from16 v4, v29

    move-object v15, v6

    .end local v6    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .local v15, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    move-wide/from16 v6, v34

    move-wide/from16 v8, v16

    move-object/from16 v18, v15

    move-object v15, v13

    .end local v13    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local v15, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local v18, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    move-wide/from16 v12, p9

    move/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;JJJJJZ)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v0

    .line 329
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move-object/from16 v37, v15

    move-object/from16 v8, v18

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_178

    .line 340
    .end local v15    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .end local v18    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .end local v34    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local v36    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v2    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v4    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v5    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .restart local v13    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    :cond_c0
    move-wide/from16 v34, v2

    move-object/from16 v18, v4

    move-object/from16 v36, v5

    move-object v15, v13

    .end local v2    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local v4    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .end local v5    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local v13    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v15    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v18    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v34    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v36    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const-string v0, "EventStream"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 341
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-result-object v0

    move-object/from16 v1, v18

    .end local v18    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .local v1, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p0

    move-object v8, v1

    move-object/from16 v37, v15

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_178

    .line 342
    .end local v1    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v18    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    :cond_e7
    move-object/from16 v1, v18

    .end local v18    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v1    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    const-string v0, "SegmentBase"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 343
    move-object/from16 v0, p0

    move-object v8, v1

    const/4 v1, 0x0

    .end local v1    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .local v8, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    invoke-virtual {v0, v7, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v2

    move-object v9, v0

    move-object/from16 v31, v2

    move-object/from16 v37, v15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .end local v31    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v2, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_178

    .line 344
    .end local v2    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v8    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v1    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v31    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_105
    move-object/from16 v0, p0

    move-object v8, v1

    const/4 v1, 0x0

    .end local v1    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v8    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    const-string v2, "SegmentList"

    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 345
    nop

    .line 346
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v7, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    .line 347
    .end local v16    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v4, "segmentBaseAvailabilityTimeOffsetUs":J
    const/4 v14, 0x0

    .line 348
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v9, v0

    move-object/from16 v37, v15

    .end local v15    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local v37, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    move-wide v15, v10

    move-wide/from16 v17, v29

    move-wide/from16 v19, v34

    move-wide/from16 v21, v4

    move-wide/from16 v23, p9

    invoke-virtual/range {v12 .. v24}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move-object/from16 v31, v0

    move-wide/from16 v16, v4

    .end local v31    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_178

    .line 356
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v4    # "segmentBaseAvailabilityTimeOffsetUs":J
    .end local v37    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v15    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v16    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v31    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_135
    move-object v9, v0

    move-object/from16 v37, v15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .end local v15    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v37    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const-string v0, "SegmentTemplate"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 357
    nop

    .line 358
    invoke-virtual {v9, v7, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    .line 359
    .end local v16    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v4    # "segmentBaseAvailabilityTimeOffsetUs":J
    const/4 v14, 0x0

    .line 363
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    .line 360
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v29

    move-wide/from16 v20, v34

    move-wide/from16 v22, v4

    move-wide/from16 v24, p9

    invoke-virtual/range {v12 .. v25}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-object/from16 v31, v0

    move-wide/from16 v16, v4

    .end local v31    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_178

    .line 369
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v4    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v16    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v31    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_166
    const-string v0, "AssetIdentifier"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_175

    .line 370
    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v32, v0

    .end local v32    # "assetIdentifier":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .local v0, "assetIdentifier":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    goto :goto_178

    .line 372
    .end local v0    # "assetIdentifier":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .restart local v32    # "assetIdentifier":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_175
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 374
    :goto_178
    const-string v0, "Period"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 376
    nop

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    move-object/from16 v4, v37

    move-object v5, v8

    move-object/from16 v6, v32

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 374
    :cond_199
    move-object v12, v1

    move-object v14, v7

    move-object v4, v8

    move-object v15, v9

    move-object/from16 v5, v36

    move-object/from16 v13, v37

    move-wide/from16 v8, p3

    move-wide v6, v2

    move-wide/from16 v2, v34

    goto/16 :goto_49
.end method

.method protected parseProfiles(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # [Ljava/lang/String;

    .line 1636
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1637
    .local v0, "attributeValue":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1638
    return-object p3

    .line 1640
    :cond_8
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .registers 14
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1379
    const/4 v0, 0x0

    .line 1380
    .local v0, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1381
    .local v1, "source":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1382
    .local v2, "copyright":Ljava/lang/String;
    const-string v3, "moreInformationURL"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1383
    .local v3, "moreInformationURL":Ljava/lang/String;
    const-string v5, "lang"

    invoke-static {p1, v5, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1385
    .local v4, "lang":Ljava/lang/String;
    :cond_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1386
    const-string v5, "Title"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1387
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 1388
    :cond_20
    const-string v5, "Source"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1389
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    .line 1390
    :cond_2d
    const-string v5, "Copyright"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 1393
    :cond_3a
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1395
    :goto_3d
    const-string v5, "ProgramInformation"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1396
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    move-object v5, v11

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "urlAttribute"    # Ljava/lang/String;
    .param p3, "rangeAttribute"    # Ljava/lang/String;

    .line 1359
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1360
    .local v7, "urlText":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 1361
    .local v1, "rangeStart":J
    const-wide/16 v3, -0x1

    .line 1362
    .local v3, "rangeLength":J
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "rangeText":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 1364
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1365
    .local v5, "rangeTextArray":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1366
    array-length v6, v5

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2f

    .line 1367
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v8, v1

    const-wide/16 v10, 0x1

    add-long v3, v8, v10

    move-wide v8, v1

    move-wide v10, v3

    goto :goto_34

    .line 1366
    :cond_2f
    move-wide v8, v1

    move-wide v10, v3

    goto :goto_34

    .line 1363
    .end local v5    # "rangeTextArray":[Ljava/lang/String;
    :cond_32
    move-wide v8, v1

    move-wide v10, v3

    .line 1370
    .end local v1    # "rangeStart":J
    .end local v3    # "rangeLength":J
    .local v8, "rangeStart":J
    .local v10, "rangeLength":J
    :goto_34
    move-object v1, p0

    move-object v2, v7

    move-wide v3, v8

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildRangedUri(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    return-object v1
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;JJJJJZ)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .registers 66
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "adaptationSetMimeType"    # Ljava/lang/String;
    .param p4, "adaptationSetCodecs"    # Ljava/lang/String;
    .param p5, "adaptationSetWidth"    # I
    .param p6, "adaptationSetHeight"    # I
    .param p7, "adaptationSetFrameRate"    # F
    .param p8, "adaptationSetAudioChannels"    # I
    .param p9, "adaptationSetAudioSamplingRate"    # I
    .param p10, "adaptationSetLanguage"    # Ljava/lang/String;
    .param p15, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .param p16, "periodStartUnixTimeMs"    # J
    .param p18, "periodDurationMs"    # J
    .param p20, "baseUrlAvailabilityTimeOffsetUs"    # J
    .param p22, "segmentBaseAvailabilityTimeOffsetUs"    # J
    .param p24, "timeShiftBufferDepthMs"    # J
    .param p26, "dvbProfileDeclared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            "JJJJJZ)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    .local p2, "parentBaseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local p11, "adaptationSetRoleDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p12, "adaptationSetAccessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p13, "adaptationSetEssentialProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p14, "adaptationSetSupplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 689
    .local v16, "id":Ljava/lang/String;
    const-string v0, "bandwidth"

    const/4 v1, -0x1

    invoke-static {v14, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    .line 691
    .local v17, "bandwidth":I
    const-string v0, "mimeType"

    move-object/from16 v13, p3

    invoke-static {v14, v0, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 692
    .local v18, "mimeType":Ljava/lang/String;
    const-string v0, "codecs"

    move-object/from16 v11, p4

    invoke-static {v14, v0, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 693
    .local v19, "codecs":Ljava/lang/String;
    const-string v0, "width"

    move/from16 v12, p5

    invoke-static {v14, v0, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    .line 694
    .local v20, "width":I
    const-string v0, "height"

    move/from16 v9, p6

    invoke-static {v14, v0, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 695
    .local v21, "height":I
    move/from16 v10, p7

    invoke-static {v14, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v22

    .line 696
    .local v22, "frameRate":F
    move/from16 v0, p8

    .line 697
    .local v0, "audioChannels":I
    const-string v1, "audioSamplingRate"

    move/from16 v7, p9

    invoke-static {v14, v1, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 698
    .local v23, "audioSamplingRate":I
    const/4 v1, 0x0

    .line 699
    .local v1, "drmSchemeType":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 700
    .local v8, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 701
    .local v5, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v6, p13

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v2

    .line 702
    .local v3, "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v4, p14

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 704
    .local v2, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v24

    .line 706
    .local v25, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const/16 v24, 0x0

    move/from16 v28, v0

    move-object/from16 v29, v1

    move-object/from16 v27, v2

    move-object/from16 v26, v3

    move/from16 v30, v24

    move-object/from16 v24, p15

    move-wide/from16 v0, p20

    move-wide/from16 v2, p22

    .line 708
    .end local v1    # "drmSchemeType":Ljava/lang/String;
    .end local v3    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local p15    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local p20    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local p22    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v0, "baseUrlAvailabilityTimeOffsetUs":J
    .local v2, "segmentBaseAvailabilityTimeOffsetUs":J
    .local v24, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v26, "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v27, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v28, "audioChannels":I
    .local v29, "drmSchemeType":Ljava/lang/String;
    .local v30, "seenFirstBaseUrl":Z
    :goto_77
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 709
    const-string v4, "BaseURL"

    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 710
    if-nez v30, :cond_8b

    .line 711
    nop

    .line 712
    invoke-virtual {v15, v14, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v0

    .line 713
    const/16 v30, 0x1

    .line 715
    :cond_8b
    move-object/from16 v4, p2

    move/from16 v13, p26

    move-wide/from16 p20, v0

    .end local v0    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local p20    # "baseUrlAvailabilityTimeOffsetUs":J
    invoke-virtual {v15, v14, v4, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v25

    .end local v25    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .local v1, "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v33, p20

    move-object v12, v5

    move-object v13, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-wide/from16 v26, v2

    goto/16 :goto_1d4

    .line 716
    .end local v1    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    .end local p20    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v0    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v25    # "baseUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    :cond_a6
    move-object/from16 v4, p2

    move/from16 v13, p26

    move-wide/from16 p20, v0

    .end local v0    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local p20    # "baseUrlAvailabilityTimeOffsetUs":J
    const-string v0, "AudioChannelConfiguration"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 717
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    move-wide/from16 v33, p20

    move/from16 v28, v0

    move-object v12, v5

    move-object v13, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-wide/from16 v26, v2

    .end local v28    # "audioChannels":I
    .local v0, "audioChannels":I
    goto/16 :goto_1d4

    .line 718
    .end local v0    # "audioChannels":I
    .restart local v28    # "audioChannels":I
    :cond_c6
    const-string v0, "SegmentBase"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 719
    move-object/from16 v0, v24

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v15, v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    move-wide/from16 v33, p20

    move-object/from16 v24, v0

    move-object v12, v5

    move-object v13, v8

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-wide/from16 v26, v2

    .end local v24    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v0, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_1d4

    .line 720
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v24    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_e4
    const-string v0, "SegmentList"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 721
    nop

    .line 722
    invoke-virtual {v15, v14, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v31

    .line 723
    .end local v2    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v31, "segmentBaseAvailabilityTimeOffsetUs":J
    move-object/from16 v2, v24

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    .line 724
    move-wide/from16 v33, p20

    .end local p20    # "baseUrlAvailabilityTimeOffsetUs":J
    .local v33, "baseUrlAvailabilityTimeOffsetUs":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v27

    .end local v27    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v3, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v36, v3

    move-object/from16 v35, v26

    .end local v3    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v26    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v35, "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v36, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-wide/from16 v3, p16

    move-object/from16 v37, v5

    .end local v5    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v37, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-wide/from16 v5, p18

    move-object/from16 v38, v8

    .end local v8    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v38, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-wide/from16 v7, v33

    move-wide/from16 v9, v31

    move-wide/from16 v11, p24

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move-object/from16 v24, v0

    move-wide/from16 v26, v31

    move-object/from16 v11, v35

    move-object/from16 v10, v36

    move-object/from16 v12, v37

    move-object/from16 v13, v38

    .end local v24    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_1d4

    .line 732
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v31    # "segmentBaseAvailabilityTimeOffsetUs":J
    .end local v33    # "baseUrlAvailabilityTimeOffsetUs":J
    .end local v35    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v36    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v37    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v38    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v2    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v5    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v8    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v24    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v26    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v27    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local p20    # "baseUrlAvailabilityTimeOffsetUs":J
    :cond_121
    move-wide/from16 v33, p20

    move-object/from16 v37, v5

    move-object/from16 v38, v8

    move-object/from16 v35, v26

    move-object/from16 v36, v27

    .end local v5    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v8    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .end local v26    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v27    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local p20    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v33    # "baseUrlAvailabilityTimeOffsetUs":J
    .restart local v35    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v36    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v37    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v38    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const-string v0, "SegmentTemplate"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 733
    nop

    .line 734
    invoke-virtual {v15, v14, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v26

    .line 735
    .end local v2    # "segmentBaseAvailabilityTimeOffsetUs":J
    .local v26, "segmentBaseAvailabilityTimeOffsetUs":J
    move-object/from16 v2, v24

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p14

    move-wide/from16 v4, p16

    move-wide/from16 v6, p18

    move-wide/from16 v8, v33

    move-wide/from16 v10, v26

    move-wide/from16 v12, p24

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-object/from16 v24, v0

    move-object/from16 v11, v35

    move-object/from16 v10, v36

    move-object/from16 v12, v37

    move-object/from16 v13, v38

    .end local v24    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_1d4

    .line 745
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v26    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v2    # "segmentBaseAvailabilityTimeOffsetUs":J
    .restart local v24    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_15c
    const-string v0, "ContentProtection"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 746
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    .line 747
    .local v0, "contentProtection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_172

    .line 748
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v29, v1

    check-cast v29, Ljava/lang/String;

    .line 750
    :cond_172
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_180

    .line 751
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-object/from16 v13, v38

    .end local v38    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v13, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_182

    .line 750
    .end local v13    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v38    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_180
    move-object/from16 v13, v38

    .line 753
    .end local v0    # "contentProtection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .end local v38    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v13    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :goto_182
    move-wide/from16 v26, v2

    move-object/from16 v11, v35

    move-object/from16 v10, v36

    move-object/from16 v12, v37

    goto :goto_1d4

    .end local v13    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v38    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_18b
    move-object/from16 v13, v38

    .end local v38    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v13    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const-string v0, "InbandEventStream"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 754
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v12, v37

    .end local v37    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v12, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v35

    move-object/from16 v10, v36

    goto :goto_1d2

    .line 755
    .end local v12    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v37    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    :cond_1a3
    move-object/from16 v12, v37

    .end local v37    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v12    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const-string v0, "EssentialProperty"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    .line 756
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v11, v35

    .end local v35    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v11, "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v36

    goto :goto_1d2

    .line 757
    .end local v11    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v35    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    :cond_1b9
    move-object/from16 v11, v35

    .end local v35    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v11    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const-string v0, "SupplementalProperty"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 758
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v10, v36

    .end local v36    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v10, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d2

    .line 760
    .end local v10    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v36    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    :cond_1cd
    move-object/from16 v10, v36

    .end local v36    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v10    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 762
    .end local v10    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v11    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v35    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v36    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    :goto_1d2
    move-wide/from16 v26, v2

    .end local v2    # "segmentBaseAvailabilityTimeOffsetUs":J
    .end local v35    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v36    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v10    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v11    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v26    # "segmentBaseAvailabilityTimeOffsetUs":J
    :goto_1d4
    const-string v0, "Representation"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 764
    nop

    .line 765
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v28

    move/from16 v7, v23

    move/from16 v8, v17

    move-object/from16 v9, p10

    move-object/from16 v31, v10

    .end local v10    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v31, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v10, p11

    move-object/from16 v32, v11

    .end local v11    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v32, "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v11, p12

    move-object/from16 v35, v12

    .end local v12    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v35, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v12, v19

    move-object/from16 v36, v13

    .end local v13    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v36, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v13, v32

    move-object/from16 v14, v31

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 780
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    if-eqz v24, :cond_20c

    move-object/from16 v6, v24

    goto :goto_212

    :cond_20c
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    move-object v6, v1

    .line 782
    .end local v24    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v6, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :goto_212
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 784
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21d

    move-object/from16 v5, v25

    goto :goto_21f

    :cond_21d
    move-object/from16 v5, p2

    :goto_21f
    const-wide/16 v12, -0x1

    move-object v3, v1

    move-object v4, v0

    move-object/from16 v7, v29

    move-object/from16 v8, v36

    move-object/from16 v9, v35

    move-object/from16 v10, v32

    move-object/from16 v11, v31

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V

    .line 782
    return-object v1

    .line 762
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v31    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v32    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v35    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v36    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v10    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v11    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v12    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v13    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v24    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_231
    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    .end local v10    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v11    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v12    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v13    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v31    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v32    # "essentialProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v35    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v36    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v14, p1

    move-object/from16 v13, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v7, p9

    move-object/from16 v6, p13

    move-object/from16 v4, p14

    move-wide/from16 v2, v26

    move-object/from16 v27, v31

    move-object/from16 v26, v32

    move-wide/from16 v0, v33

    move-object/from16 v5, v35

    move-object/from16 v8, v36

    goto/16 :goto_77
.end method

.method protected parseRoleFlagsFromAccessibilityDescriptors(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1554
    .local p1, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .line 1555
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 1556
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1557
    .local v2, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v3, "urn:mpeg:dash:role:2011"

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1558
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_31

    .line 1559
    :cond_20
    const-string v3, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1561
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseTvaAudioPurposeCsValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    .line 1555
    .end local v2    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1564
    .end local v1    # "i":I
    :cond_34
    return v0
.end method

.method protected parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I
    .registers 8
    .param p1, "value"    # Ljava/lang/String;

    .line 1581
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1582
    return v0

    .line 1584
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_ba

    :cond_10
    goto/16 :goto_9c

    :sswitch_12
    const-string v1, "supplementary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto/16 :goto_9d

    :sswitch_1d
    const-string v1, "emergency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x5

    goto/16 :goto_9d

    :sswitch_28
    const-string v1, "commentary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    goto/16 :goto_9d

    :sswitch_33
    const-string v1, "caption"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x6

    goto :goto_9d

    :sswitch_3d
    const-string v1, "sign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xa

    goto :goto_9d

    :sswitch_48
    const-string v1, "main"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_9d

    :sswitch_52
    const-string v1, "dub"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x4

    goto :goto_9d

    :sswitch_5c
    const-string v1, "forced-subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_9d

    :sswitch_67
    const-string v1, "alternate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_9d

    :sswitch_71
    const-string v1, "forced_subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x7

    goto :goto_9d

    :sswitch_7b
    const-string v1, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xc

    goto :goto_9d

    :sswitch_86
    const-string v1, "description"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xb

    goto :goto_9d

    :sswitch_91
    const-string v1, "subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x9

    goto :goto_9d

    :goto_9c
    const/4 v1, -0x1

    :goto_9d
    packed-switch v1, :pswitch_data_f0

    .line 1611
    return v0

    .line 1609
    :pswitch_a1
    const/16 v0, 0x800

    return v0

    .line 1607
    :pswitch_a4
    const/16 v0, 0x200

    return v0

    .line 1605
    :pswitch_a7
    const/16 v0, 0x100

    return v0

    .line 1603
    :pswitch_aa
    const/16 v0, 0x80

    return v0

    .line 1598
    :pswitch_ad
    const/16 v0, 0x40

    return v0

    .line 1596
    :pswitch_b0
    const/16 v0, 0x20

    return v0

    .line 1594
    :pswitch_b3
    const/16 v0, 0x10

    return v0

    .line 1592
    :pswitch_b6
    return v2

    .line 1590
    :pswitch_b7
    return v3

    .line 1588
    :pswitch_b8
    return v4

    .line 1586
    :pswitch_b9
    return v5

    :sswitch_data_ba
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_91
        -0x66ca7c04 -> :sswitch_86
        -0x5e3a5c50 -> :sswitch_7b
        -0x5dde3142 -> :sswitch_71
        -0x53ecbf86 -> :sswitch_67
        -0x533bdf74 -> :sswitch_5c
        0x185f1 -> :sswitch_52
        0x3305b9 -> :sswitch_48
        0x35ddbd -> :sswitch_3d
        0x20ef99e6 -> :sswitch_33
        0x3597fba9 -> :sswitch_28
        0x6118c591 -> :sswitch_1d
        0x6e96bb0f -> :sswitch_12
    .end sparse-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
    .end packed-switch
.end method

.method protected parseRoleFlagsFromProperties(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1569
    .local p1, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .line 1570
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1571
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1572
    .local v2, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v3, "http://dashif.org/guidelines/trickmode"

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1574
    or-int/lit16 v0, v0, 0x4000

    .line 1570
    .end local v2    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1577
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method protected parseRoleFlagsFromRoleDescriptors(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1542
    .local p1, "roleDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .line 1543
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1544
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1545
    .local v2, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v3, "urn:mpeg:dash:role:2011"

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1546
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    .line 1543
    .end local v2    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1549
    .end local v1    # "i":I
    :cond_22
    return v0
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .registers 25
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_b

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->timescale:J

    goto :goto_c

    :cond_b
    move-wide v4, v2

    :goto_c
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 896
    .local v4, "timescale":J
    nop

    .line 898
    const-wide/16 v6, 0x0

    if-eqz v1, :cond_1a

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    goto :goto_1b

    :cond_1a
    move-wide v8, v6

    .line 897
    :goto_1b
    const-string v10, "presentationTimeOffset"

    invoke-static {v0, v10, v8, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    .line 900
    .local v17, "presentationTimeOffset":J
    if-eqz v1, :cond_26

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    goto :goto_27

    :cond_26
    move-wide v8, v6

    .line 901
    .local v8, "indexStart":J
    :goto_27
    if-eqz v1, :cond_2b

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 902
    .local v6, "indexLength":J
    :cond_2b
    const-string v10, "indexRange"

    const/4 v11, 0x0

    invoke-interface {v0, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 903
    .local v15, "indexRangeText":Ljava/lang/String;
    if-eqz v15, :cond_4f

    .line 904
    const-string v10, "-"

    invoke-virtual {v15, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 905
    .local v10, "indexRange":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 906
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long v6, v12, v2

    move-wide v2, v6

    move-wide/from16 v19, v8

    goto :goto_52

    .line 903
    .end local v10    # "indexRange":[Ljava/lang/String;
    :cond_4f
    move-wide v2, v6

    move-wide/from16 v19, v8

    .line 909
    .end local v6    # "indexLength":J
    .end local v8    # "indexStart":J
    .local v2, "indexLength":J
    .local v19, "indexStart":J
    :goto_52
    if-eqz v1, :cond_56

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :cond_56
    move-object v6, v11

    .line 911
    .local v6, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :goto_57
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 912
    const-string v7, "Initialization"

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 913
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    goto :goto_6a

    .line 915
    :cond_67
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 917
    :goto_6a
    const-string v7, "SegmentBase"

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 919
    move-object/from16 v7, p0

    move-object v8, v6

    move-wide v9, v4

    move-wide/from16 v11, v17

    move-wide/from16 v13, v19

    move-object/from16 v21, v15

    .end local v15    # "indexRangeText":Ljava/lang/String;
    .local v21, "indexRangeText":Ljava/lang/String;
    move-wide v15, v2

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSingleSegmentBase(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v7

    return-object v7

    .line 917
    .end local v21    # "indexRangeText":Ljava/lang/String;
    .restart local v15    # "indexRangeText":Ljava/lang/String;
    :cond_82
    move-object/from16 v21, v15

    .end local v15    # "indexRangeText":Ljava/lang/String;
    .restart local v21    # "indexRangeText":Ljava/lang/String;
    goto :goto_57
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .registers 49
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .param p3, "periodStartUnixTimeMs"    # J
    .param p5, "periodDurationMs"    # J
    .param p7, "baseUrlAvailabilityTimeOffsetUs"    # J
    .param p9, "segmentBaseAvailabilityTimeOffsetUs"    # J
    .param p11, "timeShiftBufferDepthMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-wide/16 v0, 0x1

    if-eqz v7, :cond_b

    iget-wide v2, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->timescale:J

    goto :goto_c

    :cond_b
    move-wide v2, v0

    :goto_c
    const-string v4, "timescale"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v26

    .line 944
    .local v26, "timescale":J
    nop

    .line 946
    if-eqz v7, :cond_18

    iget-wide v2, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->presentationTimeOffset:J

    goto :goto_1a

    :cond_18
    const-wide/16 v2, 0x0

    .line 945
    :goto_1a
    const-string v4, "presentationTimeOffset"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v28

    .line 947
    .local v28, "presentationTimeOffset":J
    if-eqz v7, :cond_25

    iget-wide v2, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->duration:J

    goto :goto_2a

    :cond_25
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2a
    const-string v4, "duration"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v30

    .line 948
    .local v30, "duration":J
    if-eqz v7, :cond_34

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->startNumber:J

    :cond_34
    const-string v2, "startNumber"

    invoke-static {v6, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v32

    .line 949
    .local v32, "startNumber":J
    nop

    .line 950
    invoke-static/range {p7 .. p10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getFinalAvailabilityTimeOffset(JJ)J

    move-result-wide v34

    .line 953
    .local v34, "availabilityTimeOffsetUs":J
    const/4 v0, 0x0

    .line 954
    .local v0, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v1, 0x0

    .line 955
    .local v1, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    const/4 v2, 0x0

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    .line 958
    .end local v0    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v1    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local v8, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v9, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local v10, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :cond_45
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 959
    const-string v0, "Initialization"

    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 960
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v0    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_87

    .line 961
    .end local v0    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v8    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_56
    const-string v0, "SegmentTimeline"

    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 962
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local v0, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    goto :goto_87

    .line 963
    .end local v0    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .restart local v9    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :cond_6c
    const-string v0, "SegmentURL"

    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 964
    if-nez v10, :cond_7c

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 967
    :cond_7c
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 969
    :cond_84
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 971
    :goto_87
    const-string v0, "SegmentList"

    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 973
    if-eqz v7, :cond_aa

    .line 974
    if-eqz v8, :cond_95

    move-object v0, v8

    goto :goto_97

    :cond_95
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_97
    move-object v8, v0

    .line 975
    if-eqz v9, :cond_9c

    move-object v0, v9

    goto :goto_9e

    :cond_9c
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    :goto_9e
    move-object v9, v0

    .line 976
    if-eqz v10, :cond_a3

    move-object v0, v10

    goto :goto_a5

    :cond_a3
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    :goto_a5
    move-object v10, v0

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    goto :goto_ad

    .line 973
    :cond_aa
    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    .line 979
    .end local v8    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v9    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .end local v10    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    .local v0, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v1    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :goto_ad
    move-object/from16 v8, p0

    move-object v9, v0

    move-wide/from16 v10, v26

    move-wide/from16 v12, v28

    move-wide/from16 v14, v32

    move-wide/from16 v16, v30

    move-object/from16 v18, v1

    move-wide/from16 v19, v34

    move-object/from16 v21, v2

    move-wide/from16 v22, p11

    move-wide/from16 v24, p3

    invoke-virtual/range {v8 .. v25}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentList(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v3

    return-object v3
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .registers 51
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .param p4, "periodStartUnixTimeMs"    # J
    .param p6, "periodDurationMs"    # J
    .param p8, "baseUrlAvailabilityTimeOffsetUs"    # J
    .param p10, "segmentBaseAvailabilityTimeOffsetUs"    # J
    .param p12, "timeShiftBufferDepthMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;JJJJJ)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1026
    .local p3, "adaptationSetSupplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    const-wide/16 v0, 0x1

    if-eqz v14, :cond_d

    iget-wide v2, v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    goto :goto_e

    :cond_d
    move-wide v2, v0

    :goto_e
    const-string v4, "timescale"

    invoke-static {v13, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    .line 1027
    .local v21, "timescale":J
    nop

    .line 1029
    if-eqz v14, :cond_1a

    iget-wide v2, v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    goto :goto_1c

    :cond_1a
    const-wide/16 v2, 0x0

    .line 1028
    :goto_1c
    const-string v4, "presentationTimeOffset"

    invoke-static {v13, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v23

    .line 1030
    .local v23, "presentationTimeOffset":J
    if-eqz v14, :cond_27

    iget-wide v2, v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    goto :goto_2c

    :cond_27
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2c
    const-string v4, "duration"

    invoke-static {v13, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v25

    .line 1031
    .local v25, "duration":J
    if-eqz v14, :cond_36

    iget-wide v0, v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    :cond_36
    const-string v2, "startNumber"

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v27

    .line 1032
    .local v27, "startNumber":J
    nop

    .line 1033
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLastSegmentNumberSupplementalProperty(Ljava/util/List;)J

    move-result-wide v29

    .line 1034
    .local v29, "endNumber":J
    nop

    .line 1035
    invoke-static/range {p8 .. p11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getFinalAvailabilityTimeOffset(JJ)J

    move-result-wide v31

    .line 1038
    .local v31, "availabilityTimeOffsetUs":J
    nop

    .line 1039
    const/4 v0, 0x0

    if-eqz v14, :cond_4d

    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    goto :goto_4e

    :cond_4d
    move-object v1, v0

    :goto_4e
    const-string v2, "media"

    invoke-virtual {v15, v13, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v33

    .line 1040
    .local v33, "mediaTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    nop

    .line 1042
    if-eqz v14, :cond_59

    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    .line 1041
    :cond_59
    const-string v1, "initialization"

    invoke-virtual {v15, v13, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v34

    .line 1044
    .local v34, "initializationTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    const/4 v0, 0x0

    .line 1045
    .local v0, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v1, 0x0

    move-object v6, v0

    move-object v7, v1

    .line 1048
    .end local v0    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v6, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v7, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :goto_63
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1049
    const-string v0, "Initialization"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1050
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v0    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_8d

    .line 1051
    .end local v0    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v6    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_74
    const-string v0, "SegmentTimeline"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1052
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v21

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .end local v7    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local v0, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    goto :goto_8d

    .line 1054
    .end local v0    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .restart local v7    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :cond_8a
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1056
    :goto_8d
    const-string v0, "SegmentTemplate"

    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1058
    if-eqz v14, :cond_aa

    .line 1059
    if-eqz v6, :cond_9b

    move-object v0, v6

    goto :goto_9d

    :cond_9b
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_9d
    move-object v6, v0

    .line 1060
    if-eqz v7, :cond_a2

    move-object v0, v7

    goto :goto_a4

    :cond_a2
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    :goto_a4
    move-object v7, v0

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    goto :goto_ae

    .line 1058
    :cond_aa
    move-object/from16 v35, v6

    move-object/from16 v36, v7

    .line 1063
    .end local v6    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v7    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local v35, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v36, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :goto_ae
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v21

    move-wide/from16 v4, v23

    move-wide/from16 v6, v27

    move-wide/from16 v8, v29

    move-wide/from16 v10, v25

    move-object/from16 v12, v36

    move-wide/from16 v13, v31

    move-object/from16 v15, v34

    move-object/from16 v16, v33

    move-wide/from16 v17, p12

    move-wide/from16 v19, p4

    invoke-virtual/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTemplate(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    return-object v0

    .line 1056
    .end local v35    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v36    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .restart local v6    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v7    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :cond_cd
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    goto :goto_63
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .registers 27
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "timescale"    # J
    .param p4, "periodDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1267
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .local v1, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    const-wide/16 v2, 0x0

    .line 1269
    .local v2, "startTime":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1270
    .local v4, "elementDuration":J
    const/4 v6, 0x0

    .line 1271
    .local v6, "elementRepeatCount":I
    const/4 v7, 0x0

    move-wide v11, v2

    move-wide v13, v4

    move v15, v6

    move/from16 v16, v7

    .line 1273
    .end local v2    # "startTime":J
    .end local v4    # "elementDuration":J
    .end local v6    # "elementRepeatCount":I
    .local v11, "startTime":J
    .local v13, "elementDuration":J
    .local v15, "elementRepeatCount":I
    .local v16, "havePreviousTimelineElement":Z
    :cond_15
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1274
    const-string v2, "S"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1275
    const-string v2, "t"

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v2, v9, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    .line 1276
    .local v17, "newStartTime":J
    if-eqz v16, :cond_3e

    .line 1277
    nop

    .line 1278
    move-object/from16 v2, p0

    move-object v3, v1

    move-wide v4, v11

    move-wide v6, v13

    move v8, v15

    move-wide/from16 v19, v11

    move-wide v11, v9

    .end local v11    # "startTime":J
    .local v19, "startTime":J
    move-wide/from16 v9, v17

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J

    move-result-wide v2

    .end local v19    # "startTime":J
    .restart local v2    # "startTime":J
    goto :goto_43

    .line 1276
    .end local v2    # "startTime":J
    .restart local v11    # "startTime":J
    :cond_3e
    move-wide/from16 v19, v11

    move-wide v11, v9

    .end local v11    # "startTime":J
    .restart local v19    # "startTime":J
    move-wide/from16 v2, v19

    .line 1285
    .end local v19    # "startTime":J
    .restart local v2    # "startTime":J
    :goto_43
    cmp-long v4, v17, v11

    if-eqz v4, :cond_49

    .line 1286
    move-wide/from16 v2, v17

    .line 1288
    :cond_49
    const-string v4, "d"

    invoke-static {v0, v4, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1289
    .end local v13    # "elementDuration":J
    .restart local v4    # "elementDuration":J
    const-string v6, "r"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1290
    .end local v15    # "elementRepeatCount":I
    .restart local v6    # "elementRepeatCount":I
    const/4 v7, 0x1

    .line 1291
    .end local v16    # "havePreviousTimelineElement":Z
    .end local v17    # "newStartTime":J
    .local v7, "havePreviousTimelineElement":Z
    move-wide v11, v2

    move-wide v13, v4

    move v15, v6

    move/from16 v16, v7

    goto :goto_62

    .line 1292
    .end local v2    # "startTime":J
    .end local v4    # "elementDuration":J
    .end local v6    # "elementRepeatCount":I
    .end local v7    # "havePreviousTimelineElement":Z
    .restart local v11    # "startTime":J
    .restart local v13    # "elementDuration":J
    .restart local v15    # "elementRepeatCount":I
    .restart local v16    # "havePreviousTimelineElement":Z
    :cond_5d
    move-wide/from16 v19, v11

    .end local v11    # "startTime":J
    .restart local v19    # "startTime":J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1294
    .end local v19    # "startTime":J
    .restart local v11    # "startTime":J
    :goto_62
    const-string v2, "SegmentTimeline"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1295
    if-eqz v16, :cond_81

    .line 1296
    const-wide/16 v7, 0x3e8

    move-wide/from16 v3, p4

    move-wide/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v17

    .line 1297
    .local v17, "periodDuration":J
    move-object/from16 v2, p0

    move-object v3, v1

    move-wide v4, v11

    move-wide v6, v13

    move v8, v15

    move-wide/from16 v9, v17

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J

    .line 1304
    .end local v17    # "periodDuration":J
    :cond_81
    return-object v1
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 4
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1354
    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseSelectionFlagsFromDashRoleScheme(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1526
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1527
    return v0

    .line 1529
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_28

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v1, "forced-subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_21

    :sswitch_16
    const-string v1, "forced_subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_21

    :goto_20
    const/4 v1, -0x1

    :goto_21
    packed-switch v1, :pswitch_data_32

    .line 1535
    return v0

    .line 1533
    :pswitch_25
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_28
    .sparse-switch
        -0x5dde3142 -> :sswitch_16
        -0x533bdf74 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method protected parseSelectionFlagsFromRoleDescriptors(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1515
    .local p1, "roleDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .line 1516
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1517
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1518
    .local v2, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v3, "urn:mpeg:dash:role:2011"

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1519
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSelectionFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    .line 1516
    .end local v2    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1522
    .end local v1    # "i":I
    :cond_22
    return v0
.end method

.method protected parseServiceDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;
    .registers 21
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    move-object/from16 v0, p1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 279
    .local v1, "targetOffsetMs":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 280
    .local v3, "minOffsetMs":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 281
    .local v5, "maxOffsetMs":J
    const v7, -0x800001

    .line 282
    .local v7, "minPlaybackSpeed":F
    const v8, -0x800001

    .line 284
    .local v8, "maxPlaybackSpeed":F
    :cond_17
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 285
    const-string v9, "Latency"

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const-string v10, "max"

    const-string v11, "min"

    if-eqz v9, :cond_3a

    .line 286
    const-string v9, "target"

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v9, v12, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    .line 287
    invoke-static {v0, v11, v12, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    .line 288
    invoke-static {v0, v10, v12, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_4d

    .line 289
    :cond_3a
    const-string v9, "PlaybackRate"

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 290
    const v9, -0x800001

    invoke-static {v0, v11, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    move-result v7

    .line 291
    invoke-static {v0, v10, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    move-result v8

    .line 293
    :cond_4d
    :goto_4d
    const-string v9, "ServiceDescription"

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 294
    new-instance v18, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    move-object/from16 v9, v18

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;-><init>(JJJFF)V

    return-object v18
.end method

.method protected parseTileCountFromProperties(Ljava/util/List;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1655
    .local p1, "essentialProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 1656
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1657
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v2, "http://dashif.org/thumbnail_tile"

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 1658
    const-string v3, "http://dashif.org/guidelines/thumbnail_tile"

    invoke-static {v3, v2}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_21
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_4e

    .line 1661
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 1662
    .local v2, "size":Ljava/lang/String;
    const-string v3, "x"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1663
    .local v3, "sizeSplit":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_32

    .line 1664
    goto :goto_4e

    .line 1667
    :cond_32
    const/4 v4, 0x0

    :try_start_33
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1668
    .local v4, "tileCountHorizontal":I
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1669
    .local v5, "tileCountVertical":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_4c} :catch_4d

    return-object v6

    .line 1670
    .end local v4    # "tileCountHorizontal":I
    .end local v5    # "tileCountVertical":I
    :catch_4d
    move-exception v4

    .line 1655
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v2    # "size":Ljava/lang/String;
    .end local v3    # "sizeSplit":[Ljava/lang/String;
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1675
    .end local v0    # "i":I
    :cond_51
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseTvaAudioPurposeCsValue(Ljava/lang/String;)I
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 1616
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1617
    return v0

    .line 1619
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    packed-switch v1, :pswitch_data_50

    :cond_d
    :pswitch_d
    goto :goto_40

    :pswitch_e
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_41

    :pswitch_18
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    goto :goto_41

    :pswitch_22
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    goto :goto_41

    :pswitch_2c
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_41

    :pswitch_36
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_41

    :goto_40
    const/4 v1, -0x1

    :goto_41
    packed-switch v1, :pswitch_data_60

    .line 1631
    return v0

    .line 1629
    :pswitch_45
    return v2

    .line 1627
    :pswitch_46
    const/16 v0, 0x8

    return v0

    .line 1625
    :pswitch_49
    return v3

    .line 1623
    :pswitch_4a
    const/16 v0, 0x800

    return v0

    .line 1621
    :pswitch_4d
    const/16 v0, 0x200

    return v0

    :pswitch_data_50
    .packed-switch 0x31
        :pswitch_36
        :pswitch_2c
        :pswitch_22
        :pswitch_18
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4a
        :pswitch_49
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .registers 6
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    .line 1342
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    .local v0, "valueString":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 1344
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v1

    return-object v1

    .line 1346
    :cond_c
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .registers 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 267
    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "schemeIdUri":Ljava/lang/String;
    const-string v2, "value"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v2

    return-object v2
.end method
