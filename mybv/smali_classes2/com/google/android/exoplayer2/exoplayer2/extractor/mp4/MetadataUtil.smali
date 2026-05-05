.class final Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final SHORT_TYPE_ALBUM:I = 0x616c62

.field private static final SHORT_TYPE_ARTIST:I = 0x415254

.field private static final SHORT_TYPE_COMMENT:I = 0x636d74

.field private static final SHORT_TYPE_COMPOSER_1:I = 0x636f6d

.field private static final SHORT_TYPE_COMPOSER_2:I = 0x777274

.field private static final SHORT_TYPE_ENCODER:I = 0x746f6f

.field private static final SHORT_TYPE_GENRE:I = 0x67656e

.field private static final SHORT_TYPE_LYRICS:I = 0x6c7972

.field private static final SHORT_TYPE_NAME_1:I = 0x6e616d

.field private static final SHORT_TYPE_NAME_2:I = 0x74726b

.field private static final SHORT_TYPE_YEAR:I = 0x646179

.field static final STANDARD_GENRES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I = 0x61415254

.field private static final TYPE_COMPILATION:I = 0x6370696c

.field private static final TYPE_COVER_ART:I = 0x636f7672

.field private static final TYPE_DISK_NUMBER:I = 0x6469736b

.field private static final TYPE_GAPLESS_ALBUM:I = 0x70676170

.field private static final TYPE_GENRE:I = 0x676e7265

.field private static final TYPE_GROUPING:I = 0x677270

.field private static final TYPE_INTERNAL:I = 0x2d2d2d2d

.field private static final TYPE_RATING:I = 0x72746e67

.field private static final TYPE_SORT_ALBUM:I = 0x736f616c

.field private static final TYPE_SORT_ALBUM_ARTIST:I = 0x736f6161

.field private static final TYPE_SORT_ARTIST:I = 0x736f6172

.field private static final TYPE_SORT_COMPOSER:I = 0x736f636f

.field private static final TYPE_SORT_TRACK_NAME:I = 0x736f6e6d

.field private static final TYPE_TEMPO:I = 0x746d706f

.field private static final TYPE_TOP_BYTE_COPYRIGHT:I = 0xa9

.field private static final TYPE_TOP_BYTE_REPLACEMENT:I = 0xfd

.field private static final TYPE_TRACK_NUMBER:I = 0x74726b6e

.field private static final TYPE_TV_SHOW:I = 0x74767368

.field private static final TYPE_TV_SORT_SHOW:I = 0x736f736e


# direct methods
.method static constructor <clinit>()V
    .registers 192

    .line 91
    const-string v0, "Blues"

    const-string v1, "Classic Rock"

    const-string v2, "Country"

    const-string v3, "Dance"

    const-string v4, "Disco"

    const-string v5, "Funk"

    const-string v6, "Grunge"

    const-string v7, "Hip-Hop"

    const-string v8, "Jazz"

    const-string v9, "Metal"

    const-string v10, "New Age"

    const-string v11, "Oldies"

    const-string v12, "Other"

    const-string v13, "Pop"

    const-string v14, "R&B"

    const-string v15, "Rap"

    const-string v16, "Reggae"

    const-string v17, "Rock"

    const-string v18, "Techno"

    const-string v19, "Industrial"

    const-string v20, "Alternative"

    const-string v21, "Ska"

    const-string v22, "Death Metal"

    const-string v23, "Pranks"

    const-string v24, "Soundtrack"

    const-string v25, "Euro-Techno"

    const-string v26, "Ambient"

    const-string v27, "Trip-Hop"

    const-string v28, "Vocal"

    const-string v29, "Jazz+Funk"

    const-string v30, "Fusion"

    const-string v31, "Trance"

    const-string v32, "Classical"

    const-string v33, "Instrumental"

    const-string v34, "Acid"

    const-string v35, "House"

    const-string v36, "Game"

    const-string v37, "Sound Clip"

    const-string v38, "Gospel"

    const-string v39, "Noise"

    const-string v40, "AlternRock"

    const-string v41, "Bass"

    const-string v42, "Soul"

    const-string v43, "Punk"

    const-string v44, "Space"

    const-string v45, "Meditative"

    const-string v46, "Instrumental Pop"

    const-string v47, "Instrumental Rock"

    const-string v48, "Ethnic"

    const-string v49, "Gothic"

    const-string v50, "Darkwave"

    const-string v51, "Techno-Industrial"

    const-string v52, "Electronic"

    const-string v53, "Pop-Folk"

    const-string v54, "Eurodance"

    const-string v55, "Dream"

    const-string v56, "Southern Rock"

    const-string v57, "Comedy"

    const-string v58, "Cult"

    const-string v59, "Gangsta"

    const-string v60, "Top 40"

    const-string v61, "Christian Rap"

    const-string v62, "Pop/Funk"

    const-string v63, "Jungle"

    const-string v64, "Native American"

    const-string v65, "Cabaret"

    const-string v66, "New Wave"

    const-string v67, "Psychadelic"

    const-string v68, "Rave"

    const-string v69, "Showtunes"

    const-string v70, "Trailer"

    const-string v71, "Lo-Fi"

    const-string v72, "Tribal"

    const-string v73, "Acid Punk"

    const-string v74, "Acid Jazz"

    const-string v75, "Polka"

    const-string v76, "Retro"

    const-string v77, "Musical"

    const-string v78, "Rock & Roll"

    const-string v79, "Hard Rock"

    const-string v80, "Folk"

    const-string v81, "Folk-Rock"

    const-string v82, "National Folk"

    const-string v83, "Swing"

    const-string v84, "Fast Fusion"

    const-string v85, "Bebob"

    const-string v86, "Latin"

    const-string v87, "Revival"

    const-string v88, "Celtic"

    const-string v89, "Bluegrass"

    const-string v90, "Avantgarde"

    const-string v91, "Gothic Rock"

    const-string v92, "Progressive Rock"

    const-string v93, "Psychedelic Rock"

    const-string v94, "Symphonic Rock"

    const-string v95, "Slow Rock"

    const-string v96, "Big Band"

    const-string v97, "Chorus"

    const-string v98, "Easy Listening"

    const-string v99, "Acoustic"

    const-string v100, "Humour"

    const-string v101, "Speech"

    const-string v102, "Chanson"

    const-string v103, "Opera"

    const-string v104, "Chamber Music"

    const-string v105, "Sonata"

    const-string v106, "Symphony"

    const-string v107, "Booty Bass"

    const-string v108, "Primus"

    const-string v109, "Porn Groove"

    const-string v110, "Satire"

    const-string v111, "Slow Jam"

    const-string v112, "Club"

    const-string v113, "Tango"

    const-string v114, "Samba"

    const-string v115, "Folklore"

    const-string v116, "Ballad"

    const-string v117, "Power Ballad"

    const-string v118, "Rhythmic Soul"

    const-string v119, "Freestyle"

    const-string v120, "Duet"

    const-string v121, "Punk Rock"

    const-string v122, "Drum Solo"

    const-string v123, "A capella"

    const-string v124, "Euro-House"

    const-string v125, "Dance Hall"

    const-string v126, "Goa"

    const-string v127, "Drum & Bass"

    const-string v128, "Club-House"

    const-string v129, "Hardcore"

    const-string v130, "Terror"

    const-string v131, "Indie"

    const-string v132, "BritPop"

    const-string v133, "Afro-Punk"

    const-string v134, "Polsk Punk"

    const-string v135, "Beat"

    const-string v136, "Christian Gangsta Rap"

    const-string v137, "Heavy Metal"

    const-string v138, "Black Metal"

    const-string v139, "Crossover"

    const-string v140, "Contemporary Christian"

    const-string v141, "Christian Rock"

    const-string v142, "Merengue"

    const-string v143, "Salsa"

    const-string v144, "Thrash Metal"

    const-string v145, "Anime"

    const-string v146, "Jpop"

    const-string v147, "Synthpop"

    const-string v148, "Abstract"

    const-string v149, "Art Rock"

    const-string v150, "Baroque"

    const-string v151, "Bhangra"

    const-string v152, "Big beat"

    const-string v153, "Breakbeat"

    const-string v154, "Chillout"

    const-string v155, "Downtempo"

    const-string v156, "Dub"

    const-string v157, "EBM"

    const-string v158, "Eclectic"

    const-string v159, "Electro"

    const-string v160, "Electroclash"

    const-string v161, "Emo"

    const-string v162, "Experimental"

    const-string v163, "Garage"

    const-string v164, "Global"

    const-string v165, "IDM"

    const-string v166, "Illbient"

    const-string v167, "Industro-Goth"

    const-string v168, "Jam Band"

    const-string v169, "Krautrock"

    const-string v170, "Leftfield"

    const-string v171, "Lounge"

    const-string v172, "Math Rock"

    const-string v173, "New Romantic"

    const-string v174, "Nu-Breakz"

    const-string v175, "Post-Punk"

    const-string v176, "Post-Rock"

    const-string v177, "Psytrance"

    const-string v178, "Shoegaze"

    const-string v179, "Space Rock"

    const-string v180, "Trop Rock"

    const-string v181, "World Music"

    const-string v182, "Neoclassical"

    const-string v183, "Audiobook"

    const-string v184, "Audio theatre"

    const-string v185, "Neue Deutsche Welle"

    const-string v186, "Podcast"

    const-string v187, "Indie-Rock"

    const-string v188, "G-Funk"

    const-string v189, "Dubstep"

    const-string v190, "Garage Rock"

    const-string v191, "Psybient"

    filled-new-array/range {v0 .. v191}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseCommentAttribute(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .registers 7
    .param p0, "type"    # I
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 475
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 476
    .local v0, "atomSize":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 477
    .local v1, "atomType":I
    const v2, 0x64617461

    if-ne v1, v2, :cond_20

    .line 478
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 479
    add-int/lit8 v2, v0, -0x10

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v4, "und"

    invoke-direct {v3, v4, v2, v2}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 482
    .end local v2    # "value":Ljava/lang/String;
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse comment attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MetadataUtil"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v2, 0x0

    return-object v2
.end method

.method private static parseCoverArt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .registers 10
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 547
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 548
    .local v0, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 549
    .local v1, "atomType":I
    const v2, 0x64617461

    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_54

    .line 550
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 551
    .local v2, "fullVersionInt":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v5

    .line 552
    .local v5, "flags":I
    const/16 v6, 0xd

    if-ne v5, v6, :cond_1f

    const-string v6, "image/jpeg"

    goto :goto_27

    :cond_1f
    const/16 v6, 0xe

    if-ne v5, v6, :cond_26

    const-string v6, "image/png"

    goto :goto_27

    :cond_26
    move-object v6, v4

    .line 553
    .local v6, "mimeType":Ljava/lang/String;
    :goto_27
    if-nez v6, :cond_40

    .line 554
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized cover art flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-object v4

    .line 557
    :cond_40
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 558
    add-int/lit8 v3, v0, -0x10

    new-array v3, v3, [B

    .line 559
    .local v3, "pictureData":[B
    const/4 v7, 0x0

    array-length v8, v3

    invoke-virtual {p0, v3, v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 560
    new-instance v7, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v4, v8, v3}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v7

    .line 566
    .end local v2    # "fullVersionInt":I
    .end local v3    # "pictureData":[B
    .end local v5    # "flags":I
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_54
    const-string v2, "Failed to parse cover art attribute"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-object v4
.end method

.method public static parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .registers 8
    .param p0, "ilst"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 361
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 362
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v1, v0

    .line 363
    .local v1, "endPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 364
    .local v2, "type":I
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 366
    .local v3, "typeTopByte":I
    const/16 v4, 0xa9

    if-eq v3, v4, :cond_116

    const/16 v4, 0xfd

    if-ne v3, v4, :cond_1b

    goto/16 :goto_116

    .line 389
    :cond_1b
    const v4, 0x676e7265

    if-ne v2, v4, :cond_28

    .line 390
    :try_start_20
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 390
    return-object v4

    .line 391
    :cond_28
    const v4, 0x6469736b

    if-ne v2, v4, :cond_37

    .line 392
    :try_start_2d
    const-string v4, "TPOS"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 392
    return-object v4

    .line 393
    :cond_37
    const v4, 0x74726b6e

    if-ne v2, v4, :cond_46

    .line 394
    :try_start_3c
    const-string v4, "TRCK"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 394
    return-object v4

    .line 395
    :cond_46
    const v4, 0x746d706f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_57

    .line 396
    :try_start_4d
    const-string v4, "TBPM"

    invoke-static {v2, v4, p0, v6, v5}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 396
    return-object v4

    .line 397
    :cond_57
    const v4, 0x6370696c

    if-ne v2, v4, :cond_66

    .line 398
    :try_start_5c
    const-string v4, "TCMP"

    invoke-static {v2, v4, p0, v6, v6}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 398
    return-object v4

    .line 399
    :cond_66
    const v4, 0x636f7672

    if-ne v2, v4, :cond_73

    .line 400
    :try_start_6b
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v4
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 400
    return-object v4

    .line 401
    :cond_73
    const v4, 0x61415254

    if-ne v2, v4, :cond_82

    .line 402
    :try_start_78
    const-string v4, "TPE2"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 402
    return-object v4

    .line 403
    :cond_82
    const v4, 0x736f6e6d

    if-ne v2, v4, :cond_91

    .line 404
    :try_start_87
    const-string v4, "TSOT"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 404
    return-object v4

    .line 405
    :cond_91
    const v4, 0x736f616c

    if-ne v2, v4, :cond_a0

    .line 406
    :try_start_96
    const-string v4, "TSO2"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 406
    return-object v4

    .line 407
    :cond_a0
    const v4, 0x736f6172

    if-ne v2, v4, :cond_af

    .line 408
    :try_start_a5
    const-string v4, "TSOA"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 408
    return-object v4

    .line 409
    :cond_af
    const v4, 0x736f6161

    if-ne v2, v4, :cond_be

    .line 410
    :try_start_b4
    const-string v4, "TSOP"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 410
    return-object v4

    .line 411
    :cond_be
    const v4, 0x736f636f

    if-ne v2, v4, :cond_cd

    .line 412
    :try_start_c3
    const-string v4, "TSOC"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 412
    return-object v4

    .line 413
    :cond_cd
    const v4, 0x72746e67

    if-ne v2, v4, :cond_dc

    .line 414
    :try_start_d2
    const-string v4, "ITUNESADVISORY"

    invoke-static {v2, v4, p0, v5, v5}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 414
    return-object v4

    .line 415
    :cond_dc
    const v4, 0x70676170

    if-ne v2, v4, :cond_eb

    .line 416
    :try_start_e1
    const-string v4, "ITUNESGAPLESS"

    invoke-static {v2, v4, p0, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 416
    return-object v4

    .line 417
    :cond_eb
    const v4, 0x736f736e

    if-ne v2, v4, :cond_fa

    .line 418
    :try_start_f0
    const-string v4, "TVSHOWSORT"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_f6
    .catchall {:try_start_f0 .. :try_end_f6} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 418
    return-object v4

    .line 419
    :cond_fa
    const v4, 0x74767368

    if-ne v2, v4, :cond_109

    .line 420
    :try_start_ff
    const-string v4, "TVSHOW"

    invoke-static {v2, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_105
    .catchall {:try_start_ff .. :try_end_105} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 420
    return-object v4

    .line 421
    :cond_109
    const v4, 0x2d2d2d2d

    if-ne v2, v4, :cond_1ac

    .line 422
    :try_start_10e
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseInternalAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 422
    return-object v4

    .line 367
    :cond_116
    :goto_116
    const v4, 0xffffff

    and-int/2addr v4, v2

    .line 368
    .local v4, "shortType":I
    const v5, 0x636d74

    if-ne v4, v5, :cond_12a

    .line 369
    :try_start_11f
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v5
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 369
    return-object v5

    .line 427
    .end local v4    # "shortType":I
    :catchall_127
    move-exception v4

    goto/16 :goto_1e2

    .line 370
    .restart local v4    # "shortType":I
    :cond_12a
    const v5, 0x6e616d

    if-eq v4, v5, :cond_1d8

    const v5, 0x74726b

    if-ne v4, v5, :cond_136

    goto/16 :goto_1d8

    .line 372
    :cond_136
    const v5, 0x636f6d

    if-eq v4, v5, :cond_1ce

    const v5, 0x777274

    if-ne v4, v5, :cond_142

    goto/16 :goto_1ce

    .line 374
    :cond_142
    const v5, 0x646179

    if-ne v4, v5, :cond_151

    .line 375
    :try_start_147
    const-string v5, "TDRC"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 375
    return-object v5

    .line 376
    :cond_151
    const v5, 0x415254

    if-ne v4, v5, :cond_160

    .line 377
    :try_start_156
    const-string v5, "TPE1"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 377
    return-object v5

    .line 378
    :cond_160
    const v5, 0x746f6f

    if-ne v4, v5, :cond_16f

    .line 379
    :try_start_165
    const-string v5, "TSSE"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_16b
    .catchall {:try_start_165 .. :try_end_16b} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 379
    return-object v5

    .line 380
    :cond_16f
    const v5, 0x616c62

    if-ne v4, v5, :cond_17e

    .line 381
    :try_start_174
    const-string v5, "TALB"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_17a
    .catchall {:try_start_174 .. :try_end_17a} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 381
    return-object v5

    .line 382
    :cond_17e
    const v5, 0x6c7972

    if-ne v4, v5, :cond_18d

    .line 383
    :try_start_183
    const-string v5, "USLT"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_189
    .catchall {:try_start_183 .. :try_end_189} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 383
    return-object v5

    .line 384
    :cond_18d
    const v5, 0x67656e

    if-ne v4, v5, :cond_19c

    .line 385
    :try_start_192
    const-string v5, "TCON"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_198
    .catchall {:try_start_192 .. :try_end_198} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 385
    return-object v5

    .line 386
    :cond_19c
    const v5, 0x677270

    if-ne v4, v5, :cond_1ab

    .line 387
    :try_start_1a1
    const-string v5, "TIT1"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1a7
    .catchall {:try_start_1a1 .. :try_end_1a7} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 387
    return-object v5

    .line 389
    .end local v4    # "shortType":I
    :cond_1ab
    nop

    .line 424
    :cond_1ac
    :try_start_1ac
    const-string v4, "MetadataUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped unknown metadata entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c8
    .catchall {:try_start_1ac .. :try_end_1c8} :catchall_127

    .line 425
    nop

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 425
    const/4 v4, 0x0

    return-object v4

    .line 373
    .restart local v4    # "shortType":I
    :cond_1ce
    :goto_1ce
    :try_start_1ce
    const-string v5, "TCOM"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1d4
    .catchall {:try_start_1ce .. :try_end_1d4} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 373
    return-object v5

    .line 371
    :cond_1d8
    :goto_1d8
    :try_start_1d8
    const-string v5, "TIT2"

    invoke-static {v2, v5, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1de
    .catchall {:try_start_1d8 .. :try_end_1de} :catchall_127

    .line 427
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 371
    return-object v5

    .line 427
    .end local v4    # "shortType":I
    :goto_1e2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 428
    throw v4
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 11
    .param p0, "type"    # I
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 510
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 511
    .local v0, "atomSize":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 512
    .local v1, "atomType":I
    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_57

    const/16 v2, 0x16

    if-lt v0, v2, :cond_57

    .line 513
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 514
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 515
    .local v2, "index":I
    if-lez v2, :cond_57

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 518
    .local v5, "count":I
    if-lez v5, :cond_4d

    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    :cond_4d
    new-instance v6, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 522
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-direct {v6, p1, v3, v7}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 521
    return-object v6

    .line 525
    .end local v2    # "index":I
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "count":I
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse index/count attribute: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MetadataUtil"

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-object v3
.end method

.method private static parseInternalAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 10
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "endPosition"    # I

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "domain":Ljava/lang/String;
    const/4 v1, 0x0

    .line 574
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    .line 575
    .local v2, "dataAtomPosition":I
    const/4 v3, -0x1

    .line 576
    .local v3, "dataAtomSize":I
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    if-ge v4, p1, :cond_3f

    .line 577
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 578
    .local v4, "atomPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 579
    .local v5, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 580
    .local v6, "atomType":I
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 581
    const v7, 0x6d65616e

    if-ne v6, v7, :cond_26

    .line 582
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 583
    :cond_26
    const v7, 0x6e616d65

    if-ne v6, v7, :cond_32

    .line 584
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 586
    :cond_32
    const v7, 0x64617461

    if-ne v6, v7, :cond_39

    .line 587
    move v2, v4

    .line 588
    move v3, v5

    .line 590
    :cond_39
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 592
    .end local v4    # "atomPosition":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    :goto_3e
    goto :goto_4

    .line 593
    :cond_3f
    if-eqz v0, :cond_5b

    if-eqz v1, :cond_5b

    const/4 v4, -0x1

    if-ne v2, v4, :cond_47

    goto :goto_5b

    .line 596
    :cond_47
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 597
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 598
    add-int/lit8 v4, v3, -0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    invoke-direct {v5, v0, v1, v4}, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 594
    .end local v4    # "value":Ljava/lang/String;
    :cond_5b
    :goto_5b
    const/4 v4, 0x0

    return-object v4
.end method

.method public static parseMdtaMetadataEntryFromIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;
    .registers 11
    .param p0, "ilst"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "endPosition"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 443
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v1, v0

    .local v1, "atomPosition":I
    if-ge v0, p1, :cond_31

    .line 444
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 445
    .local v0, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 446
    .local v2, "atomType":I
    const v3, 0x64617461

    if-ne v2, v3, :cond_2b

    .line 447
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 448
    .local v3, "typeIndicator":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 449
    .local v4, "localeIndicator":I
    add-int/lit8 v5, v0, -0x10

    .line 450
    .local v5, "dataSize":I
    new-array v6, v5, [B

    .line 451
    .local v6, "value":[B
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 452
    new-instance v7, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    invoke-direct {v7, p2, v6, v4, v3}, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    return-object v7

    .line 454
    .end local v3    # "typeIndicator":I
    .end local v4    # "localeIndicator":I
    .end local v5    # "dataSize":I
    .end local v6    # "value":[B
    :cond_2b
    add-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 455
    .end local v0    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_1

    .line 456
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseStandardGenreAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 7
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 531
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 534
    .local v0, "genreCode":I
    const/4 v1, 0x0

    if-lez v0, :cond_11

    sget-object v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v3, v2

    if-gt v0, v3, :cond_11

    .line 535
    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    goto :goto_12

    .line 536
    :cond_11
    move-object v2, v1

    :goto_12
    nop

    .line 537
    .local v2, "genreString":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 538
    new-instance v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 539
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-string v5, "TCON"

    invoke-direct {v3, v5, v1, v4}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 538
    return-object v3

    .line 541
    :cond_21
    const-string v3, "MetadataUtil"

    const-string v4, "Failed to parse standard genre code"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-object v1
.end method

.method private static parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 9
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 462
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 463
    .local v0, "atomSize":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 464
    .local v1, "atomType":I
    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_23

    .line 465
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 466
    add-int/lit8 v2, v0, -0x10

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "value":Ljava/lang/String;
    new-instance v4, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v4, p1, v3, v5}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v4

    .line 469
    .end local v2    # "value":Ljava/lang/String;
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse text attribute: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MetadataUtil"

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-object v3
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 9
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p3, "isTextInformationFrame"    # Z
    .param p4, "isBoolean"    # Z

    .line 493
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 494
    .local v0, "value":I
    if-eqz p4, :cond_b

    .line 495
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 497
    :cond_b
    const/4 v1, 0x0

    if-ltz v0, :cond_2a

    .line 498
    if-eqz p3, :cond_1e

    .line 499
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, p1, v1, v3}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_29

    .line 501
    :cond_1e
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v1, "und"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, p1, v3}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_29
    return-object v2

    .line 503
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse uint8 attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MetadataUtil"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-object v1
.end method

.method private static parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 603
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 604
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 605
    .local v0, "atomType":I
    const v1, 0x64617461

    if-ne v0, v1, :cond_17

    .line 606
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 607
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    return v1

    .line 609
    :cond_17
    const-string v1, "MetadataUtil"

    const-string v2, "Failed to parse uint8 attribute value"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/4 v1, -0x1

    return v1
.end method

.method public static setFormatGaplessInfo(ILcom/google/android/exoplayer2/extractor/GaplessInfoHolder;Lcom/google/android/exoplayer2/Format$Builder;)V
    .registers 5
    .param p0, "trackType"    # I
    .param p1, "gaplessInfoHolder"    # Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .param p2, "formatBuilder"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 343
    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 344
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 345
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 346
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 348
    :cond_14
    return-void
.end method

.method public static varargs setFormatMetadata(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Format$Builder;[Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 13
    .param p0, "trackType"    # I
    .param p1, "udtaMetaMetadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .param p2, "mdtaMetadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .param p3, "formatBuilder"    # Lcom/google/android/exoplayer2/Format$Builder;
    .param p4, "additionalMetadata"    # [Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 303
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 305
    .local v0, "formatMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_e

    .line 307
    if-eqz p1, :cond_e

    .line 308
    move-object v0, p1

    .line 312
    :cond_e
    if-eqz p2, :cond_43

    .line 313
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 314
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    .line 315
    .local v4, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v5, v4, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    if-eqz v5, :cond_40

    .line 316
    move-object v5, v4

    check-cast v5, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    .line 318
    .local v5, "mdtaMetadataEntry":Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;
    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v7, "com.android.capture.fps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 319
    const/4 v6, 0x2

    if-ne p0, v6, :cond_40

    .line 320
    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v5, v6, v1

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    goto :goto_40

    .line 323
    :cond_38
    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v5, v6, v1

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    .line 313
    .end local v4    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .end local v5    # "mdtaMetadataEntry":Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 329
    .end local v3    # "i":I
    :cond_43
    array-length v2, p4

    :goto_44
    if-ge v1, v2, :cond_4f

    aget-object v3, p4, v1

    .line 330
    .local v3, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    .line 329
    .end local v3    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 333
    :cond_4f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-lez v1, :cond_58

    .line 334
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 336
    :cond_58
    return-void
.end method
