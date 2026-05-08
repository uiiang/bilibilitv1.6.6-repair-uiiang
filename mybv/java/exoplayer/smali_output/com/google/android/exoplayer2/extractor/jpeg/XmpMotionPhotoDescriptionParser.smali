.class final Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;
.super Ljava/lang/Object;
.source "XmpMotionPhotoDescriptionParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MotionPhotoXmpParser"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 66
    const-string v0, "Camera:MicroVideo"

    const-string v1, "GCamera:MicroVideo"

    const-string v2, "Camera:MotionPhoto"

    const-string v3, "GCamera:MotionPhoto"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    .line 73
    const-string v0, "Camera:MicroVideoPresentationTimestampUs"

    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    const-string v2, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v3, "GCamera:MotionPhotoPresentationTimestampUs"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    .line 80
    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;
    .registers 4
    .param p0, "xmpString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseInternal(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;

    move-result-object v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_9
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_4} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 58
    :catch_5
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    :goto_a
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseInternal(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;
    .registers 10
    .param p0, "xmpString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 90
    .local v0, "xmlPullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 91
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 92
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 93
    const-string v2, "x:xmpmeta"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_75

    .line 97
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    .local v5, "motionPhotoPresentationTimestampUs":J
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 100
    .local v3, "containerItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;>;"
    :cond_25
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 101
    const-string v7, "rdf:Description"

    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 102
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoFlagFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 104
    return-object v4

    .line 106
    :cond_37
    nop

    .line 107
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoPresentationTimestampUsFromDescription(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v5

    .line 108
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMicroVideoOffsetFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_62

    .line 109
    :cond_41
    const-string v7, "Container:Directory"

    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 110
    const-string v7, "Container"

    const-string v8, "Item"

    invoke-static {v1, v7, v8}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_62

    .line 111
    :cond_52
    const-string v7, "GContainer:Directory"

    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 112
    const-string v7, "GContainer"

    const-string v8, "GContainerItem"

    invoke-static {v1, v7, v8}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 114
    :cond_62
    :goto_62
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 115
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 117
    return-object v4

    .line 119
    :cond_6f
    new-instance v2, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;

    invoke-direct {v2, v5, v6, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;-><init>(JLjava/util/List;)V

    return-object v2

    .line 94
    .end local v3    # "containerItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;>;"
    .end local v5    # "motionPhotoPresentationTimestampUs":J
    :cond_75
    const-string v2, "Couldn\'t find xmp metadata"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    goto :goto_7d

    :goto_7c
    throw v2

    :goto_7d
    goto :goto_7c
.end method

.method private static parseMicroVideoOffsetFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/common/collect/ImmutableList;
    .registers 14
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    .line 149
    .local v3, "attributeName":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "attributeValue":Ljava/lang/String;
    if-eqz v4, :cond_30

    .line 151
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 152
    .local v0, "microVideoOffset":J
    new-instance v2, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-string v6, "image/jpeg"

    const-string v7, "Primary"

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v12, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-string v6, "video/mp4"

    const-string v7, "MotionPhoto"

    move-object v5, v12

    move-wide v8, v0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v2, v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2

    .line 148
    .end local v0    # "microVideoOffset":J
    .end local v3    # "attributeName":Ljava/lang/String;
    .end local v4    # "attributeValue":Ljava/lang/String;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 162
    :cond_33
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static parseMotionPhotoFlagFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 123
    sget-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_1b

    aget-object v4, v0, v3

    .line 124
    .local v4, "attributeName":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "attributeValue":Ljava/lang/String;
    if-eqz v5, :cond_18

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "motionPhotoFlag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2

    .line 123
    .end local v0    # "motionPhotoFlag":I
    .end local v4    # "attributeName":Ljava/lang/String;
    .end local v5    # "attributeValue":Ljava/lang/String;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 130
    :cond_1b
    return v2
.end method

.method private static parseMotionPhotoPresentationTimestampUsFromDescription(Lorg/xmlpull/v1/XmlPullParser;)J
    .registers 10
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 134
    sget-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v1, :cond_23

    aget-object v5, v0, v2

    .line 135
    .local v5, "attributeName":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "attributeValue":Ljava/lang/String;
    if-eqz v6, :cond_20

    .line 137
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 138
    .local v0, "presentationTimestampUs":J
    const-wide/16 v7, -0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move-wide v3, v0

    :goto_1f
    return-wide v3

    .line 134
    .end local v0    # "presentationTimestampUs":J
    .end local v5    # "attributeName":Ljava/lang/String;
    .end local v6    # "attributeValue":Ljava/lang/String;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 141
    :cond_23
    return-wide v3
.end method

.method private static parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 26
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "containerNamespacePrefix"    # Ljava/lang/String;
    .param p2, "itemNamespacePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 170
    .local v3, "containerItems":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":Item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "itemTagName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":Directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "directoryTagName":Ljava/lang/String;
    :goto_30
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 174
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":Mime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "mimeAttributeName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":Semantic"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "semanticAttributeName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "lengthAttributeName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":Padding"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "paddinghAttributeName":Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 180
    .local v17, "mime":Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 181
    .local v18, "semantic":Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 182
    .local v19, "length":Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 183
    .local v20, "padding":Ljava/lang/String;
    if-eqz v17, :cond_be

    if-nez v18, :cond_9a

    goto :goto_be

    .line 187
    :cond_9a
    new-instance v15, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 191
    const-wide/16 v10, 0x0

    if-eqz v19, :cond_a6

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v13, v12

    goto :goto_a7

    :cond_a6
    move-wide v13, v10

    .line 192
    :goto_a7
    if-eqz v20, :cond_ad

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    :cond_ad
    move-wide/from16 v21, v10

    move-object v10, v15

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object v1, v15

    move-wide/from16 v15, v21

    invoke-direct/range {v10 .. v16}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 187
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_c3

    .line 185
    :cond_be
    :goto_be
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 194
    .end local v6    # "mimeAttributeName":Ljava/lang/String;
    .end local v7    # "semanticAttributeName":Ljava/lang/String;
    .end local v8    # "lengthAttributeName":Ljava/lang/String;
    .end local v9    # "paddinghAttributeName":Ljava/lang/String;
    .end local v17    # "mime":Ljava/lang/String;
    .end local v18    # "semantic":Ljava/lang/String;
    .end local v19    # "length":Ljava/lang/String;
    .end local v20    # "padding":Ljava/lang/String;
    :cond_c3
    :goto_c3
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 195
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 194
    :cond_ce
    move-object/from16 v1, p1

    goto/16 :goto_30
.end method
