.class public final Lcom/google/android/exoplayer2/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/Util$Api21;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CRC32_BYTES_MSBF:[I

.field private static final CRC8_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String;

.field public static final EMPTY_BYTE_ARRAY:[B

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field private static final ISM_DASH_FORMAT_EXTENSION:Ljava/lang/String; = "format=mpd-time-csf"

.field private static final ISM_HLS_FORMAT_EXTENSION:Ljava/lang/String; = "format=m3u8-aapl"

.field private static final ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final additionalIsoLanguageReplacements:[Ljava/lang/String;

.field private static final isoLegacyTagReplacements:[Ljava/lang/String;

.field private static languageTagReplacementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 89

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 153
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 159
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v2, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 165
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v3, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 175
    nop

    .line 176
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 180
    nop

    .line 181
    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 184
    const-string v0, "%([A-Fa-f0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    .line 187
    nop

    .line 188
    const-string v0, "(?:.*\\.)?isml?(?:/(manifest(.*))?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    .line 3057
    const-string v1, "alb"

    const-string v2, "sq"

    const-string v3, "arm"

    const-string v4, "hy"

    const-string v5, "baq"

    const-string v6, "eu"

    const-string v7, "bur"

    const-string v8, "my"

    const-string v9, "tib"

    const-string v10, "bo"

    const-string v11, "chi"

    const-string v12, "zh"

    const-string v13, "cze"

    const-string v14, "cs"

    const-string v15, "dut"

    const-string v16, "nl"

    const-string v17, "ger"

    const-string v18, "de"

    const-string v19, "gre"

    const-string v20, "el"

    const-string v21, "fre"

    const-string v22, "fr"

    const-string v23, "geo"

    const-string v24, "ka"

    const-string v25, "ice"

    const-string v26, "is"

    const-string v27, "mac"

    const-string v28, "mk"

    const-string v29, "mao"

    const-string v30, "mi"

    const-string v31, "may"

    const-string v32, "ms"

    const-string v33, "per"

    const-string v34, "fa"

    const-string v35, "rum"

    const-string v36, "ro"

    const-string v37, "scc"

    const-string v38, "hbs-srp"

    const-string v39, "slo"

    const-string v40, "sk"

    const-string v41, "wel"

    const-string v42, "cy"

    const-string v43, "id"

    const-string v44, "ms-ind"

    const-string v45, "iw"

    const-string v46, "he"

    const-string v47, "heb"

    const-string v48, "he"

    const-string v49, "ji"

    const-string v50, "yi"

    const-string v51, "arb"

    const-string v52, "ar-arb"

    const-string v53, "in"

    const-string v54, "ms-ind"

    const-string v55, "ind"

    const-string v56, "ms-ind"

    const-string v57, "nb"

    const-string v58, "no-nob"

    const-string v59, "nob"

    const-string v60, "no-nob"

    const-string v61, "nn"

    const-string v62, "no-nno"

    const-string v63, "nno"

    const-string v64, "no-nno"

    const-string v65, "tw"

    const-string v66, "ak-twi"

    const-string v67, "twi"

    const-string v68, "ak-twi"

    const-string v69, "bs"

    const-string v70, "hbs-bos"

    const-string v71, "bos"

    const-string v72, "hbs-bos"

    const-string v73, "hr"

    const-string v74, "hbs-hrv"

    const-string v75, "hrv"

    const-string v76, "hbs-hrv"

    const-string v77, "sr"

    const-string v78, "hbs-srp"

    const-string v79, "srp"

    const-string v80, "hbs-srp"

    const-string v81, "cmn"

    const-string v82, "zh-cmn"

    const-string v83, "hak"

    const-string v84, "zh-hak"

    const-string v85, "nan"

    const-string v86, "zh-nan"

    const-string v87, "hsn"

    const-string v88, "zh-hsn"

    filled-new-array/range {v1 .. v88}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    .line 3113
    const-string v1, "i-lux"

    const-string v2, "lb"

    const-string v3, "i-hak"

    const-string v4, "zh-hak"

    const-string v5, "i-navajo"

    const-string v6, "nv"

    const-string v7, "no-bok"

    const-string v8, "no-nob"

    const-string v9, "no-nyn"

    const-string v10, "no-nno"

    const-string v11, "zh-guoyu"

    const-string v12, "zh-cmn"

    const-string v13, "zh-hakka"

    const-string v14, "zh-hak"

    const-string v15, "zh-min-nan"

    const-string v16, "zh-nan"

    const-string v17, "zh-xiang"

    const-string v18, "zh-hsn"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    .line 3130
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_154

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    .line 3174
    new-array v0, v0, [I

    fill-array-data v0, :array_358

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->CRC8_BYTES_MSBF:[I

    return-void

    nop

    :array_154
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data

    :array_358
    .array-data 4
        0x0
        0x7
        0xe
        0x9
        0x1c
        0x1b
        0x12
        0x15
        0x38
        0x3f
        0x36
        0x31
        0x24
        0x23
        0x2a
        0x2d
        0x70
        0x77
        0x7e
        0x79
        0x6c
        0x6b
        0x62
        0x65
        0x48
        0x4f
        0x46
        0x41
        0x54
        0x53
        0x5a
        0x5d
        0xe0
        0xe7
        0xee
        0xe9
        0xfc
        0xfb
        0xf2
        0xf5
        0xd8
        0xdf
        0xd6
        0xd1
        0xc4
        0xc3
        0xca
        0xcd
        0x90
        0x97
        0x9e
        0x99
        0x8c
        0x8b
        0x82
        0x85
        0xa8
        0xaf
        0xa6
        0xa1
        0xb4
        0xb3
        0xba
        0xbd
        0xc7
        0xc0
        0xc9
        0xce
        0xdb
        0xdc
        0xd5
        0xd2
        0xff
        0xf8
        0xf1
        0xf6
        0xe3
        0xe4
        0xed
        0xea
        0xb7
        0xb0
        0xb9
        0xbe
        0xab
        0xac
        0xa5
        0xa2
        0x8f
        0x88
        0x81
        0x86
        0x93
        0x94
        0x9d
        0x9a
        0x27
        0x20
        0x29
        0x2e
        0x3b
        0x3c
        0x35
        0x32
        0x1f
        0x18
        0x11
        0x16
        0x3
        0x4
        0xd
        0xa
        0x57
        0x50
        0x59
        0x5e
        0x4b
        0x4c
        0x45
        0x42
        0x6f
        0x68
        0x61
        0x66
        0x73
        0x74
        0x7d
        0x7a
        0x89
        0x8e
        0x87
        0x80
        0x95
        0x92
        0x9b
        0x9c
        0xb1
        0xb6
        0xbf
        0xb8
        0xad
        0xaa
        0xa3
        0xa4
        0xf9
        0xfe
        0xf7
        0xf0
        0xe5
        0xe2
        0xeb
        0xec
        0xc1
        0xc6
        0xcf
        0xc8
        0xdd
        0xda
        0xd3
        0xd4
        0x69
        0x6e
        0x67
        0x60
        0x75
        0x72
        0x7b
        0x7c
        0x51
        0x56
        0x5f
        0x58
        0x4d
        0x4a
        0x43
        0x44
        0x19
        0x1e
        0x17
        0x10
        0x5
        0x2
        0xb
        0xc
        0x21
        0x26
        0x2f
        0x28
        0x3d
        0x3a
        0x33
        0x34
        0x4e
        0x49
        0x40
        0x47
        0x52
        0x55
        0x5c
        0x5b
        0x76
        0x71
        0x78
        0x7f
        0x6a
        0x6d
        0x64
        0x63
        0x3e
        0x39
        0x30
        0x37
        0x22
        0x25
        0x2c
        0x2b
        0x6
        0x1
        0x8
        0xf
        0x1a
        0x1d
        0x14
        0x13
        0xae
        0xa9
        0xa0
        0xa7
        0xb2
        0xb5
        0xbc
        0xbb
        0x96
        0x91
        0x98
        0x9f
        0x8a
        0x8d
        0x84
        0x83
        0xde
        0xd9
        0xd0
        0xd7
        0xc2
        0xc5
        0xcc
        0xcb
        0xe6
        0xe1
        0xe8
        0xef
        0xfa
        0xfd
        0xf4
        0xf3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWithOverflowDefault(JJJ)J
    .registers 13
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "overflowResult"    # J

    .line 998
    add-long v0, p0, p2

    .line 1000
    .local v0, "result":J
    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_e

    .line 1001
    return-wide p4

    .line 1003
    :cond_e
    return-wide v0
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 419
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .registers 7
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 1291
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1292
    .local v0, "index":I
    if-gez v0, :cond_9

    .line 1293
    xor-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 1295
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1296
    .local v1, "listSize":I
    :goto_d
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_d

    .line 1297
    :cond_1e
    if-eqz p2, :cond_22

    .line 1298
    add-int/lit8 v0, v0, -0x1

    .line 1301
    .end local v1    # "listSize":I
    :cond_22
    :goto_22
    if-eqz p3, :cond_2f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_30

    :cond_2f
    move v1, v0

    :goto_30
    return v1
.end method

.method public static binarySearchCeil([IIZZ)I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z

    .line 1221
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1222
    .local v0, "index":I
    if-gez v0, :cond_9

    .line 1223
    xor-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 1225
    :cond_9
    :goto_9
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_13

    aget v1, p0, v0

    if-ne v1, p1, :cond_13

    goto :goto_9

    .line 1226
    :cond_13
    if-eqz p2, :cond_17

    .line 1227
    add-int/lit8 v0, v0, -0x1

    .line 1230
    :cond_17
    :goto_17
    if-eqz p3, :cond_21

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_22

    :cond_21
    move v1, v0

    :goto_22
    return v1
.end method

.method public static binarySearchCeil([JJZZ)I
    .registers 9
    .param p0, "array"    # [J
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1254
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1255
    .local v0, "index":I
    if-gez v0, :cond_9

    .line 1256
    xor-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1258
    :cond_9
    :goto_9
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_15

    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_15

    goto :goto_9

    .line 1259
    :cond_15
    if-eqz p3, :cond_19

    .line 1260
    add-int/lit8 v0, v0, -0x1

    .line 1263
    :cond_19
    :goto_19
    if-eqz p4, :cond_23

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    return v1
.end method

.method public static binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;JZZ)I
    .registers 11
    .param p0, "longArray"    # Lcom/google/android/exoplayer2/util/LongArray;
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, "lowIndex":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1182
    .local v1, "highIndex":I
    :goto_7
    if-gt v0, v1, :cond_1b

    .line 1183
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1184
    .local v2, "midIndex":I
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gez v5, :cond_18

    .line 1185
    add-int/lit8 v0, v2, 0x1

    goto :goto_1a

    .line 1187
    :cond_18
    add-int/lit8 v1, v2, -0x1

    .line 1189
    .end local v2    # "midIndex":I
    :goto_1a
    goto :goto_7

    .line 1191
    :cond_1b
    if-eqz p3, :cond_32

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_32

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1193
    :cond_32
    if-eqz p4, :cond_38

    const/4 v2, -0x1

    if-ne v1, v2, :cond_38

    .line 1194
    const/4 v1, 0x0

    .line 1197
    :cond_38
    :goto_38
    return v1
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .registers 6
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 1147
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1148
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 1149
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_1f

    .line 1151
    :cond_a
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_a

    .line 1152
    :cond_1b
    if-eqz p2, :cond_1f

    .line 1153
    add-int/lit8 v0, v0, 0x1

    .line 1156
    :cond_1f
    :goto_1f
    if-eqz p3, :cond_27

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    return v1
.end method

.method public static binarySearchFloor([IIZZ)I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z

    .line 1079
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1080
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 1081
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_17

    .line 1083
    :cond_a
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    aget v1, p0, v0

    if-ne v1, p1, :cond_13

    goto :goto_a

    .line 1084
    :cond_13
    if-eqz p2, :cond_17

    .line 1085
    add-int/lit8 v0, v0, 0x1

    .line 1088
    :cond_17
    :goto_17
    if-eqz p3, :cond_1f

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    return v1
.end method

.method public static binarySearchFloor([JJZZ)I
    .registers 9
    .param p0, "array"    # [J
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1111
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1112
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 1113
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_19

    .line 1115
    :cond_a
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_15

    goto :goto_a

    .line 1116
    :cond_15
    if-eqz p3, :cond_19

    .line 1117
    add-int/lit8 v0, v0, 0x1

    .line 1120
    :cond_19
    :goto_19
    if-eqz p4, :cond_21

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_22

    :cond_21
    move v1, v0

    :goto_22
    return v1
.end method

.method public static castNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 469
    .local p0, "value":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public static castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 476
    .local p0, "value":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static ceilDivide(II)I
    .registers 3
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 939
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static ceilDivide(JJ)J
    .registers 8
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .line 950
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method public static varargs checkCleartextTrafficPermitted([Lcom/google/android/exoplayer2/MediaItem;)Z
    .registers 8
    .param p0, "mediaItems"    # [Lcom/google/android/exoplayer2/MediaItem;

    .line 380
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    .line 382
    return v2

    .line 384
    :cond_8
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_43

    aget-object v4, p0, v3

    .line 385
    .local v4, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v5, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-nez v5, :cond_14

    .line 386
    goto :goto_40

    .line 388
    :cond_14
    iget-object v5, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->isTrafficRestricted(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 389
    return v1

    .line 391
    :cond_1f
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    iget-object v6, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 392
    iget-object v6, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->isTrafficRestricted(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 393
    return v1

    .line 391
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 384
    .end local v4    # "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    .end local v5    # "i":I
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 397
    :cond_43
    return v2
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 773
    if-eqz p0, :cond_8

    .line 774
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 776
    :catch_6
    move-exception v0

    goto :goto_9

    .line 778
    :cond_8
    :goto_8
    nop

    .line 779
    :goto_9
    return-void
.end method

.method public static compareLong(JJ)I
    .registers 5
    .param p0, "left"    # J
    .param p2, "right"    # J

    .line 1313
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static constrainValue(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 986
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static constrainValue(III)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 962
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static constrainValue(JJJ)J
    .registers 8
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 974
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p0, "items"    # [Ljava/lang/Object;
    .param p1, "item"    # Ljava/lang/Object;

    .line 433
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 434
    .local v3, "arrayItem":Ljava/lang/Object;
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 435
    const/4 v0, 0x1

    return v0

    .line 433
    .end local v3    # "arrayItem":Ljava/lang/Object;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 438
    :cond_12
    return v1
.end method

.method public static crc32([BIII)I
    .registers 9
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .line 2380
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_17

    .line 2381
    shl-int/lit8 v1, p3, 0x8

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 v3, p3, 0x18

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int p3, v1, v2

    .line 2380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2385
    .end local v0    # "i":I
    :cond_17
    return p3
.end method

.method public static crc8([BIII)I
    .registers 7
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .line 2399
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_f

    .line 2400
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->CRC8_BYTES_MSBF:[I

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v2, p3

    aget p3, v1, v2

    .line 2399
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2402
    .end local v0    # "i":I
    :cond_f
    return p3
.end method

.method public static createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 3
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 625
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static createHandlerForCurrentLooper()Landroid/os/Handler;
    .registers 1

    .line 561
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 2
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .line 578
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentOrMainLooper()Landroid/os/Handler;
    .registers 1

    .line 588
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 2
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .line 607
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private static createIsoLanguageReplacementMap()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3005
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 3006
    .local v0, "iso2Languages":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3009
    .local v1, "replacedLanguages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2b

    aget-object v4, v0, v3

    .line 3012
    .local v4, "iso2":Ljava/lang/String;
    :try_start_14
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    .line 3013
    .local v5, "iso3":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 3014
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/util/MissingResourceException; {:try_start_14 .. :try_end_26} :catch_27

    .line 3018
    .end local v5    # "iso3":Ljava/lang/String;
    :cond_26
    goto :goto_28

    .line 3016
    :catch_27
    move-exception v5

    .line 3009
    .end local v4    # "iso2":Ljava/lang/String;
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3021
    :cond_2b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_3d

    .line 3022
    aget-object v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3021
    add-int/lit8 v2, v2, 0x2

    goto :goto_2c

    .line 3025
    .end local v2    # "i":I
    :cond_3d
    return-object v1
.end method

.method public static createTempDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2358
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2359
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2360
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2361
    return-object v0
.end method

.method public static createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2366
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static durationUsToSampleCount(JI)J
    .registers 7
    .param p0, "durationUs"    # J
    .param p2, "sampleRate"    # I

    .line 1405
    int-to-long v0, p2

    mul-long v0, v0, p0

    const-wide/32 v2, 0xf4240

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;

    .line 2239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2240
    .local v0, "length":I
    const/4 v1, 0x0

    .line 2241
    .local v1, "charactersToEscapeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_17

    .line 2242
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2243
    add-int/lit8 v1, v1, 0x1

    .line 2241
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2246
    .end local v2    # "i":I
    :cond_17
    if-nez v1, :cond_1a

    .line 2247
    return-object p0

    .line 2250
    :cond_1a
    const/4 v2, 0x0

    .line 2251
    .restart local v2    # "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2252
    .local v3, "builder":Ljava/lang/StringBuilder;
    :goto_23
    if-lez v1, :cond_46

    .line 2253
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2254
    .local v2, "c":C
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2255
    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    .line 2258
    :cond_41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2260
    .end local v2    # "c":C
    :goto_44
    move v2, v4

    goto :goto_23

    .line 2261
    .end local v4    # "i":I
    .local v2, "i":I
    :cond_46
    if-ge v2, v0, :cond_4b

    .line 2262
    invoke-virtual {v3, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2264
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static fixSmoothStreamingIsmManifestUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2190
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2191
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 2192
    return-object p0

    .line 2194
    :cond_7
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2195
    .local v1, "ismMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21

    .line 2197
    const-string v2, "Manifest"

    invoke-static {p0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2199
    :cond_21
    return-object p0
.end method

.method public static varargs formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 928
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUtf8Bytes([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 860
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static fromUtf8Bytes([BII)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 872
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static generateAudioSessionIdV21(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1985
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1986
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_c

    const/4 v1, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v1

    :goto_10
    return v1
.end method

.method public static getAdaptiveMimeTypeForContentType(I)Ljava/lang/String;
    .registers 2
    .param p0, "contentType"    # I

    .line 2167
    packed-switch p0, :pswitch_data_e

    .line 2177
    const/4 v0, 0x0

    return-object v0

    .line 2171
    :pswitch_5
    const-string v0, "application/x-mpegURL"

    return-object v0

    .line 2173
    :pswitch_8
    const-string v0, "application/vnd.ms-sstr+xml"

    return-object v0

    .line 2169
    :pswitch_b
    const-string v0, "application/dash+xml"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getAudioContentTypeForStreamType(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 1930
    packed-switch p0, :pswitch_data_a

    .line 1941
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1936
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 1938
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getAudioTrackChannelConfig(I)I
    .registers 4
    .param p0, "channelCount"    # I

    .line 1848
    const/16 v0, 0x18fc

    packed-switch p0, :pswitch_data_2c

    .line 1876
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 1874
    :pswitch_7
    const v0, 0xb58fc

    return v0

    .line 1866
    :pswitch_b
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_15

    .line 1867
    const v0, 0xb40fc

    return v0

    .line 1871
    :cond_15
    return v0

    .line 1864
    :pswitch_16
    return v0

    .line 1862
    :pswitch_17
    const/16 v0, 0x4fc

    return v0

    .line 1860
    :pswitch_1a
    const/16 v0, 0xfc

    return v0

    .line 1858
    :pswitch_1d
    const/16 v0, 0xdc

    return v0

    .line 1856
    :pswitch_20
    const/16 v0, 0xcc

    return v0

    .line 1854
    :pswitch_23
    const/16 v0, 0x1c

    return v0

    .line 1852
    :pswitch_26
    const/16 v0, 0xc

    return v0

    .line 1850
    :pswitch_29
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_16
        :pswitch_5
        :pswitch_b
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static getAudioUsageForStreamType(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 1908
    packed-switch p0, :pswitch_data_12

    .line 1923
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 1912
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 1914
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1910
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 1916
    :pswitch_b
    const/4 v0, 0x6

    return v0

    .line 1918
    :pswitch_d
    const/16 v0, 0xd

    return v0

    .line 1920
    :pswitch_10
    const/4 v0, 0x2

    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getAvailableCommands(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands;
    .registers 14
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p1, "permanentAvailableCommands"    # Lcom/google/android/exoplayer2/Player$Commands;

    .line 2809
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    .line 2810
    .local v0, "isPlayingAd":Z
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemSeekable()Z

    move-result v1

    .line 2811
    .local v1, "isCurrentMediaItemSeekable":Z
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->hasPreviousMediaItem()Z

    move-result v2

    .line 2812
    .local v2, "hasPreviousMediaItem":Z
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->hasNextMediaItem()Z

    move-result v3

    .line 2813
    .local v3, "hasNextMediaItem":Z
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemLive()Z

    move-result v4

    .line 2814
    .local v4, "isCurrentMediaItemLive":Z
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemDynamic()Z

    move-result v5

    .line 2815
    .local v5, "isCurrentMediaItemDynamic":Z
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    .line 2816
    .local v6, "isTimelineEmpty":Z
    new-instance v7, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    .line 2817
    invoke-virtual {v7, p1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    .line 2818
    xor-int/lit8 v8, v0, 0x1

    const/4 v9, 0x4

    invoke-virtual {v7, v9, v8}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_38

    if-nez v0, :cond_38

    const/4 v10, 0x1

    goto :goto_39

    :cond_38
    const/4 v10, 0x0

    .line 2819
    :goto_39
    const/4 v11, 0x5

    invoke-virtual {v7, v11, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    if-eqz v2, :cond_44

    if-nez v0, :cond_44

    const/4 v10, 0x1

    goto :goto_45

    :cond_44
    const/4 v10, 0x0

    .line 2820
    :goto_45
    const/4 v11, 0x6

    invoke-virtual {v7, v11, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    if-nez v6, :cond_56

    if-nez v2, :cond_52

    if-eqz v4, :cond_52

    if-eqz v1, :cond_56

    :cond_52
    if-nez v0, :cond_56

    const/4 v10, 0x1

    goto :goto_57

    :cond_56
    const/4 v10, 0x0

    .line 2821
    :goto_57
    const/4 v11, 0x7

    invoke-virtual {v7, v11, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    if-eqz v3, :cond_62

    if-nez v0, :cond_62

    const/4 v10, 0x1

    goto :goto_63

    :cond_62
    const/4 v10, 0x0

    .line 2826
    :goto_63
    const/16 v11, 0x8

    invoke-virtual {v7, v11, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    if-nez v6, :cond_75

    if-nez v3, :cond_71

    if-eqz v4, :cond_75

    if-eqz v5, :cond_75

    :cond_71
    if-nez v0, :cond_75

    const/4 v10, 0x1

    goto :goto_76

    :cond_75
    const/4 v10, 0x0

    .line 2827
    :goto_76
    const/16 v11, 0x9

    invoke-virtual {v7, v11, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    .line 2832
    xor-int/lit8 v10, v0, 0x1

    const/16 v11, 0xa

    invoke-virtual {v7, v11, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    if-eqz v1, :cond_8a

    if-nez v0, :cond_8a

    const/4 v10, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v10, 0x0

    .line 2833
    :goto_8b
    const/16 v11, 0xb

    invoke-virtual {v7, v11, v10}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    if-eqz v1, :cond_96

    if-nez v0, :cond_96

    const/4 v8, 0x1

    .line 2834
    :cond_96
    const/16 v9, 0xc

    invoke-virtual {v7, v9, v8}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v7

    .line 2835
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v7

    .line 2816
    return-object v7
.end method

.method public static getBigEndianInt(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 2429
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 2430
    .local v0, "value":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_e

    move v1, v0

    goto :goto_12

    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :goto_12
    return v1
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .registers 7
    .param p0, "hexString"    # Ljava/lang/String;

    .line 1650
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1651
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    .line 1652
    mul-int/lit8 v2, v1, 0x2

    .line 1653
    .local v2, "stringOffset":I
    nop

    .line 1655
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 1656
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1651
    .end local v2    # "stringOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1658
    .end local v1    # "i":I
    :cond_2c
    return-object v0
.end method

.method public static getCodecCountOfType(Ljava/lang/String;I)I
    .registers 8
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .line 1721
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1722
    .local v0, "codecArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1723
    .local v1, "count":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-object v4, v0, v3

    .line 1724
    .local v4, "codec":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_13

    .line 1725
    add-int/lit8 v1, v1, 0x1

    .line 1723
    .end local v4    # "codec":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1728
    :cond_16
    return v1
.end method

.method public static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .line 1742
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1743
    .local v0, "codecArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 1744
    return-object v2

    .line 1746
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1747
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_2b

    aget-object v5, v0, v4

    .line 1748
    .local v5, "codec":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_28

    .line 1749
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_25

    .line 1750
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    :cond_25
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    .end local v5    # "codec":Ljava/lang/String;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1755
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_35

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_35
    return-object v2
.end method

.method public static getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "objects"    # [Ljava/lang/Object;

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1685
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 1686
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    .line 1688
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1691
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2441
    if-eqz p0, :cond_1c

    .line 2443
    nop

    .line 2444
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2445
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1c

    .line 2446
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2447
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2448
    invoke-static {v1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2452
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_1c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2558
    const/4 v0, 0x0

    .line 2559
    .local v0, "defaultDisplay":Landroid/view/Display;
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_17

    .line 2561
    nop

    .line 2562
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 2565
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_17

    .line 2566
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2569
    .end local v1    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_17
    if-nez v0, :cond_2c

    .line 2570
    nop

    .line 2571
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2572
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2574
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_2c
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentDisplayModeSize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;

    .line 2591
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_90

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 2607
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_19

    .line 2608
    const-string v0, "sys.display-size"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 2609
    :cond_19
    const-string v0, "vendor.display-size"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    nop

    .line 2611
    .local v0, "displaySize":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 2613
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2614
    .local v1, "displaySizeParts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 2615
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2616
    .local v2, "width":I
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2617
    .local v3, "height":I
    if-lez v2, :cond_4c

    if-lez v3, :cond_4c

    .line 2618
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_4b} :catch_4d

    return-object v4

    .line 2623
    .end local v1    # "displaySizeParts":[Ljava/lang/String;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_4c
    goto :goto_4e

    .line 2621
    :catch_4d
    move-exception v1

    .line 2624
    :goto_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    :cond_66
    const-string v1, "Sony"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 2629
    const-string v2, "BRAVIA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 2630
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 2631
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 2635
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_90
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2636
    .local v0, "displaySize":Landroid/graphics/Point;
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_9f

    .line 2637
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_aa

    .line 2638
    :cond_9f
    const/16 v2, 0x11

    if-lt v1, v2, :cond_a7

    .line 2639
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_aa

    .line 2641
    :cond_a7
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 2643
    :goto_aa
    return-object v0
.end method

.method public static getCurrentOrMainLooper()Landroid/os/Looper;
    .registers 2

    .line 741
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 742
    .local v0, "myLooper":Landroid/os/Looper;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_c

    :cond_8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static getDataUriForString(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 2328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2329
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2328
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDisplayLocale()Ljava/util/Locale;
    .registers 2

    .line 2469
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 2984
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2985
    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 2980
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2981
    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 4
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 2973
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 2974
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 2975
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 2976
    return-void
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "drawableRes"    # I

    .line 2863
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2864
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/Util$Api21;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_f

    .line 2865
    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2863
    :goto_f
    return-object v0
.end method

.method public static getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;
    .registers 3
    .param p0, "drmScheme"    # Ljava/lang/String;

    .line 1998
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    :cond_b
    goto :goto_2a

    :sswitch_c
    const-string v1, "clearkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_2b

    :sswitch_16
    const-string v1, "widevine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_2b

    :sswitch_20
    const-string v1, "playready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2b

    :goto_2a
    const/4 v0, -0x1

    :goto_2b
    packed-switch v0, :pswitch_data_4e

    .line 2007
    :try_start_2e
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_32} :catch_3d

    goto :goto_3c

    .line 2004
    :pswitch_33
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    return-object v0

    .line 2002
    :pswitch_36
    sget-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    return-object v0

    .line 2000
    :pswitch_39
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    return-object v0

    .line 2007
    :goto_3c
    return-object v0

    .line 2008
    :catch_3d
    move-exception v0

    .line 2009
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1

    :sswitch_data_40
    .sparse-switch
        -0x6ee3d111 -> :sswitch_20
        -0x537ab703 -> :sswitch_16
        0x2f1b28f2 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
        :pswitch_33
    .end packed-switch
.end method

.method public static getErrorCodeForMediaDrmErrorCode(I)I
    .registers 2
    .param p0, "mediaDrmErrorCode"    # I

    .line 2021
    packed-switch p0, :pswitch_data_12

    .line 2045
    :pswitch_3
    const/16 v0, 0x1776

    return v0

    .line 2027
    :pswitch_6
    const/16 v0, 0x1772

    return v0

    .line 2034
    :pswitch_9
    const/16 v0, 0x1774

    return v0

    .line 2043
    :pswitch_c
    const/16 v0, 0x1773

    return v0

    .line 2040
    :pswitch_f
    const/16 v0, 0x1775

    return v0

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_f
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I
    .registers 7
    .param p0, "diagnosticsInfo"    # Ljava/lang/String;

    .line 2727
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2728
    return v0

    .line 2730
    :cond_4
    const-string v1, "_"

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2731
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    .line 2732
    .local v2, "length":I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_f

    .line 2733
    return v0

    .line 2735
    :cond_f
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    .line 2736
    .local v3, "digitsSection":Ljava/lang/String;
    const/4 v4, 0x3

    if-lt v2, v4, :cond_24

    add-int/lit8 v4, v2, -0x2

    aget-object v4, v1, v4

    const-string v5, "neg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    .line 2738
    .local v4, "isNegative":Z
    :goto_25
    :try_start_25
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2f} :catch_35

    .line 2739
    .local v0, "errorCode":I
    if-eqz v4, :cond_33

    neg-int v5, v0

    goto :goto_34

    :cond_33
    move v5, v0

    :goto_34
    return v5

    .line 2740
    .end local v0    # "errorCode":I
    :catch_35
    move-exception v5

    .line 2741
    .local v5, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static getFormatSupportString(I)Ljava/lang/String;
    .registers 2
    .param p0, "formatSupport"    # I

    .line 2785
    packed-switch p0, :pswitch_data_18

    .line 2797
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2787
    :pswitch_9
    const-string v0, "YES"

    return-object v0

    .line 2789
    :pswitch_c
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    return-object v0

    .line 2791
    :pswitch_f
    const-string v0, "NO_UNSUPPORTED_DRM"

    return-object v0

    .line 2793
    :pswitch_12
    const-string v0, "NO_UNSUPPORTED_TYPE"

    return-object v0

    .line 2795
    :pswitch_15
    const-string v0, "NO"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .line 1610
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1611
    .local v0, "length":I
    const/4 v1, 0x4

    if-gt v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1612
    const/4 v1, 0x0

    .line 1613
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 1614
    shl-int/lit8 v1, v1, 0x8

    .line 1615
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 1613
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1617
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method

.method public static getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 814
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getLocaleLanguageTagV21(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method private static getLocaleLanguageTagV21(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 3001
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxPendingFramesCountForMediaCodecDecoders(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "requestedHdrToneMapping"    # Z

    .line 2751
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_15

    .line 2752
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_13

    goto :goto_15

    .line 2775
    :cond_13
    const/4 v0, 0x5

    return v0

    .line 2760
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static getMediaDurationForPlayoutDuration(JF)J
    .registers 7
    .param p0, "playoutDuration"    # J
    .param p2, "speed"    # F

    .line 1583
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    .line 1584
    return-wide p0

    .line 1586
    :cond_7
    long-to-double v0, p0

    float-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNowUnixTimeMs(J)J
    .registers 5
    .param p0, "elapsedRealtimeEpochOffsetMs"    # J

    .line 2685
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_e

    .line 2686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_13

    .line 2687
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 2685
    :goto_13
    return-wide v0
.end method

.method public static getPcmEncoding(I)I
    .registers 2
    .param p0, "bitDepth"    # I

    .line 1797
    sparse-switch p0, :sswitch_data_10

    .line 1807
    const/4 v0, 0x0

    return v0

    .line 1805
    :sswitch_5
    const/high16 v0, 0x30000000

    return v0

    .line 1803
    :sswitch_8
    const/high16 v0, 0x20000000

    return v0

    .line 1801
    :sswitch_b
    const/4 v0, 0x2

    return v0

    .line 1799
    :sswitch_d
    const/4 v0, 0x3

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x8 -> :sswitch_d
        0x10 -> :sswitch_b
        0x18 -> :sswitch_8
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getPcmFormat(III)Lcom/google/android/exoplayer2/Format;
    .registers 5
    .param p0, "pcmEncoding"    # I
    .param p1, "channels"    # I
    .param p2, "sampleRate"    # I

    .line 1780
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1781
    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1782
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1783
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1784
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1785
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 1780
    return-object v0
.end method

.method public static getPcmFrameSize(II)I
    .registers 3
    .param p0, "pcmEncoding"    # I
    .param p1, "channelCount"    # I

    .line 1888
    sparse-switch p0, :sswitch_data_14

    .line 1902
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1895
    :sswitch_9
    mul-int/lit8 v0, p1, 0x3

    return v0

    .line 1898
    :sswitch_c
    mul-int/lit8 v0, p1, 0x4

    return v0

    .line 1890
    :sswitch_f
    return p1

    .line 1893
    :sswitch_10
    mul-int/lit8 v0, p1, 0x2

    return v0

    nop

    :sswitch_data_14
    .sparse-switch
        0x2 -> :sswitch_10
        0x3 -> :sswitch_f
        0x4 -> :sswitch_c
        0x10000000 -> :sswitch_10
        0x20000000 -> :sswitch_9
        0x30000000 -> :sswitch_c
    .end sparse-switch
.end method

.method public static getPlayoutDurationForMediaDuration(JF)J
    .registers 7
    .param p0, "mediaDuration"    # J
    .param p2, "speed"    # F

    .line 1597
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    .line 1598
    return-wide p0

    .line 1600
    :cond_7
    long-to-double v0, p0

    float-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStreamTypeForAudioUsage(I)I
    .registers 2
    .param p0, "usage"    # I

    .line 1947
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_14

    .line 1972
    :pswitch_4
    return v0

    .line 1953
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 1961
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 1967
    :pswitch_9
    const/4 v0, 0x5

    return v0

    .line 1959
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 1957
    :pswitch_d
    const/16 v0, 0x8

    return v0

    .line 1955
    :pswitch_10
    const/4 v0, 0x0

    return v0

    .line 1951
    :pswitch_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_12
        :pswitch_5
        :pswitch_12
    .end packed-switch
.end method

.method public static getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .registers 23
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "timeMs"    # J

    .line 2211
    move-object/from16 v0, p1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p2, v1

    if-nez v3, :cond_e

    .line 2212
    const-wide/16 v1, 0x0

    .end local p2    # "timeMs":J
    .local v1, "timeMs":J
    goto :goto_10

    .line 2211
    .end local v1    # "timeMs":J
    .restart local p2    # "timeMs":J
    :cond_e
    move-wide/from16 v1, p2

    .line 2214
    .end local p2    # "timeMs":J
    .restart local v1    # "timeMs":J
    :goto_10
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_19

    const-string v5, "-"

    goto :goto_1b

    :cond_19
    const-string v5, ""

    .line 2215
    .local v5, "prefix":Ljava/lang/String;
    :goto_1b
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 2216
    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v1

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 2217
    .local v6, "totalSeconds":J
    const-wide/16 v8, 0x3c

    rem-long v10, v6, v8

    .line 2218
    .local v10, "seconds":J
    div-long v12, v6, v8

    rem-long/2addr v12, v8

    .line 2219
    .local v12, "minutes":J
    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    .line 2220
    .local v8, "hours":J
    const/4 v14, 0x0

    move-object/from16 v15, p0

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2221
    const/16 v16, 0x2

    const/16 v17, 0x1

    const/4 v14, 0x3

    cmp-long v18, v8, v3

    if-lez v18, :cond_62

    .line 2222
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v14

    const-string v4, "%s%d:%02d:%02d"

    invoke-virtual {v0, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7d

    .line 2223
    :cond_62
    new-array v3, v14, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16

    const-string v4, "%s%02d:%02d"

    invoke-virtual {v0, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2221
    :goto_7d
    return-object v3
.end method

.method public static getSystemLanguageCodes()[Ljava/lang/String;
    .registers 3

    .line 2460
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getSystemLocales()[Ljava/lang/String;

    move-result-object v0

    .line 2461
    .local v0, "systemLocales":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 2462
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2461
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2464
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method private static getSystemLocales()[Ljava/lang/String;
    .registers 3

    .line 2988
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2989
    .local v0, "config":Landroid/content/res/Configuration;
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_13

    .line 2990
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 2991
    :cond_13
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 2989
    :goto_1d
    return-object v1
.end method

.method private static getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 2996
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 2962
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2963
    .local v0, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2964
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v2

    .line 2965
    .end local v0    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    :catch_1f
    move-exception v0

    .line 2966
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read system property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2967
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getTrackTypeString(I)Ljava/lang/String;
    .registers 3
    .param p0, "trackType"    # I

    .line 2653
    packed-switch p0, :pswitch_data_40

    .line 2673
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 2667
    :pswitch_21
    const-string v0, "camera motion"

    return-object v0

    .line 2665
    :pswitch_24
    const-string v0, "metadata"

    return-object v0

    .line 2663
    :pswitch_27
    const-string v0, "image"

    return-object v0

    .line 2661
    :pswitch_2a
    const-string v0, "text"

    return-object v0

    .line 2659
    :pswitch_2d
    const-string v0, "video"

    return-object v0

    .line 2657
    :pswitch_30
    const-string v0, "audio"

    return-object v0

    .line 2655
    :pswitch_33
    const-string v0, "default"

    return-object v0

    .line 2671
    :pswitch_36
    const-string v0, "unknown"

    return-object v0

    .line 2669
    :pswitch_39
    const-string v0, "none"

    return-object v0

    .line 2673
    :cond_3c
    const-string v0, "?"

    :goto_3e
    return-object v0

    nop

    :pswitch_data_40
    .packed-switch -0x2
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public static getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 1704
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1705
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1706
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 1709
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "versionName":Ljava/lang/String;
    goto :goto_15

    .line 1707
    .end local v0    # "versionName":Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 1708
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "?"

    move-object v0, v1

    .line 1710
    .local v0, "versionName":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Linux;Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ExoPlayerLib/2.19.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 882
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static gzip([B)[B
    .registers 5
    .param p0, "input"    # [B

    .line 2407
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2408
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_20

    .line 2409
    .local v1, "os":Ljava/util/zip/GZIPOutputStream;
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_16

    .line 2410
    :try_start_d
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_20

    .line 2414
    .end local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    nop

    .line 2415
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 2408
    .restart local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    :catchall_16
    move-exception v2

    :try_start_17
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v3

    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "input":[B
    :goto_1f
    throw v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_20

    .line 2410
    .end local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "input":[B
    :catch_20
    move-exception v1

    .line 2413
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static handlePauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z
    .registers 3
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 2934
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2935
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->pause()V

    .line 2936
    return v0

    .line 2938
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static handlePlayButtonAction(Lcom/google/android/exoplayer2/Player;)Z
    .registers 5
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 2904
    if-nez p0, :cond_4

    .line 2905
    const/4 v0, 0x0

    return v0

    .line 2907
    :cond_4
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 2908
    .local v0, "state":I
    const/4 v1, 0x0

    .line 2909
    .local v1, "methodTriggered":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2910
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 2911
    const/4 v1, 0x1

    goto :goto_25

    .line 2912
    :cond_18
    const/4 v3, 0x4

    if-ne v0, v3, :cond_25

    .line 2913
    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2914
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition()V

    .line 2915
    const/4 v1, 0x1

    .line 2917
    :cond_25
    :goto_25
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2918
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->play()V

    .line 2919
    const/4 v1, 0x1

    .line 2921
    :cond_2f
    return v1
.end method

.method public static handlePlayPauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z
    .registers 2
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 2951
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->shouldShowPlayButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2952
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->handlePlayButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    return v0

    .line 2954
    :cond_b
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->handlePauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    return v0
.end method

.method public static inferContentType(Landroid/net/Uri;)I
    .registers 8
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2067
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2068
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "rtsp"

    invoke-static {v1, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2069
    const/4 v1, 0x3

    return v1

    .line 2072
    :cond_10
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 2073
    .local v1, "lastPathSegment":Ljava/lang/String;
    const/4 v2, 0x4

    if-nez v1, :cond_18

    .line 2074
    return v2

    .line 2076
    :cond_18
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2077
    .local v3, "lastDotIndex":I
    if-ltz v3, :cond_2d

    .line 2079
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForExtension(Ljava/lang/String;)I

    move-result v4

    .line 2080
    .local v4, "contentType":I
    if-eq v4, v2, :cond_2d

    .line 2085
    return v4

    .line 2089
    .end local v4    # "contentType":I
    :cond_2d
    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2090
    .local v4, "ismMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 2091
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 2092
    .local v5, "extensions":Ljava/lang/String;
    if-eqz v5, :cond_5d

    .line 2093
    const-string v6, "format=mpd-time-csf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 2094
    const/4 v2, 0x0

    return v2

    .line 2095
    :cond_54
    const-string v6, "format=m3u8-aapl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 2096
    return v2

    .line 2099
    :cond_5d
    const/4 v2, 0x1

    return v2

    .line 2102
    .end local v5    # "extensions":Ljava/lang/String;
    :cond_5f
    return v2
.end method

.method public static inferContentType(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "overrideExtension"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2055
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2056
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    goto :goto_f

    .line 2057
    :cond_b
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForExtension(Ljava/lang/String;)I

    move-result v0

    .line 2055
    :goto_f
    return v0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static inferContentTypeForExtension(Ljava/lang/String;)I
    .registers 5
    .param p0, "fileExtension"    # Ljava/lang/String;

    .line 2121
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2122
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_40

    :cond_e
    goto :goto_37

    :sswitch_f
    const-string v0, "m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_38

    :sswitch_19
    const-string v0, "isml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    goto :goto_38

    :sswitch_23
    const-string v0, "mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_38

    :sswitch_2d
    const-string v0, "ism"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_38

    :goto_37
    const/4 v0, -0x1

    :goto_38
    packed-switch v0, :pswitch_data_52

    .line 2131
    const/4 v0, 0x4

    return v0

    .line 2129
    :pswitch_3d
    return v1

    .line 2126
    :pswitch_3e
    return v2

    .line 2124
    :pswitch_3f
    return v3

    :sswitch_data_40
    .sparse-switch
        0x19883 -> :sswitch_2d
        0x1a721 -> :sswitch_23
        0x317849 -> :sswitch_19
        0x325a49 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method public static inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 2144
    if-nez p1, :cond_7

    .line 2145
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    return v0

    .line 2147
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_46

    :cond_12
    goto :goto_3b

    :sswitch_13
    const-string v0, "application/x-rtsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    goto :goto_3c

    :sswitch_1d
    const-string v0, "application/dash+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_3c

    :sswitch_27
    const-string v0, "application/vnd.ms-sstr+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    goto :goto_3c

    :sswitch_31
    const-string v0, "application/x-mpegURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_3c

    :goto_3b
    const/4 v0, -0x1

    :goto_3c
    packed-switch v0, :pswitch_data_58

    .line 2157
    const/4 v0, 0x4

    return v0

    .line 2155
    :pswitch_41
    return v1

    .line 2153
    :pswitch_42
    return v2

    .line 2151
    :pswitch_43
    return v3

    .line 2149
    :pswitch_44
    return v4

    nop

    :sswitch_data_46
    .sparse-switch
        -0x3a5c4caa -> :sswitch_31
        -0x957ced0 -> :sswitch_27
        0x3d3887d -> :sswitch_1d
        0x44d481f3 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public static inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "output"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 2486
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 2487
    return v1

    .line 2489
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 2490
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    .line 2492
    :cond_1b
    if-nez p2, :cond_23

    .line 2493
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    move-object p2, v0

    .line 2495
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 2497
    const/4 v0, 0x0

    .line 2499
    .local v0, "outputSize":I
    :cond_33
    :goto_33
    nop

    .line 2500
    :try_start_34
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p2, v2, v0, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 2501
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2502
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V
    :try_end_4b
    .catch Ljava/util/zip/DataFormatException; {:try_start_34 .. :try_end_4b} :catch_78
    .catchall {:try_start_34 .. :try_end_4b} :catchall_73

    .line 2503
    nop

    .line 2515
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 2503
    const/4 v1, 0x1

    return v1

    .line 2505
    :cond_51
    :try_start_51
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_6e

    .line 2508
    :cond_5e
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_33

    .line 2509
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V
    :try_end_6d
    .catch Ljava/util/zip/DataFormatException; {:try_start_51 .. :try_end_6d} :catch_78
    .catchall {:try_start_51 .. :try_end_6d} :catchall_73

    goto :goto_33

    .line 2506
    :cond_6e
    :goto_6e
    nop

    .line 2515
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 2506
    return v1

    .line 2515
    .end local v0    # "outputSize":I
    :catchall_73
    move-exception v0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 2516
    throw v0

    .line 2512
    :catch_78
    move-exception v0

    .line 2513
    .local v0, "e":Ljava/util/zip/DataFormatException;
    nop

    .line 2515
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 2513
    return v1
.end method

.method public static intToStringMaxRadix(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 2874
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAutomotive(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2541
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_14

    .line 2542
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2541
    :goto_15
    return v0
.end method

.method public static isEncodingHighResolutionPcm(I)Z
    .registers 2
    .param p0, "encoding"    # I

    .line 1833
    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_e

    const/high16 v0, 0x30000000

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public static isEncodingLinearPcm(I)Z
    .registers 2
    .param p0, "encoding"    # I

    .line 1818
    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_18

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_18

    const/high16 v0, 0x30000000

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-ne p0, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method public static isLinebreak(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 919
    const/16 v0, 0xa

    if-eq p0, v0, :cond_b

    const/16 v0, 0xd

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isLocalFileUri(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 406
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method

.method private static isMediaStoreExternalContentUri(Landroid/net/Uri;)Z
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;

    .line 360
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_3d

    .line 363
    :cond_1a
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 364
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 365
    return v1

    .line 367
    :cond_25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    .local v2, "firstPathSegment":Ljava/lang/String;
    const-string v3, "external"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 369
    const-string v3, "external_primary"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3b
    const/4 v1, 0x1

    .line 368
    :cond_3c
    return v1

    .line 361
    .end local v0    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "firstPathSegment":Ljava/lang/String;
    :cond_3d
    :goto_3d
    return v1
.end method

.method private static isTrafficRestricted(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 3041
    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3042
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    .line 3043
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 3041
    :goto_23
    return v0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2528
    nop

    .line 2529
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 2530
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_18

    .line 2531
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 2530
    :goto_19
    return v1
.end method

.method static synthetic lambda$newSingleThreadExecutor$3(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 752
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$newSingleThreadScheduledExecutor$4(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 762
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$postOrRunWithCompletion$0(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .param p0, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "successValue"    # Ljava/lang/Object;

    .line 669
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 670
    return-void

    .line 672
    :cond_7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 673
    invoke-virtual {p0, p2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 676
    goto :goto_12

    .line 674
    :catchall_e
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 677
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12
    return-void
.end method

.method static synthetic lambda$transformFutureAsync$1(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3
    .param p0, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 705
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 706
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 708
    :cond_a
    return-void
.end method

.method static synthetic lambda$transformFutureAsync$2(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V
    .registers 6
    .param p0, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p2, "transformFunction"    # Lcom/google/common/util/concurrent/AsyncFunction;

    .line 714
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_4} :catch_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_4} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_14
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_4} :catch_12

    .line 725
    .local v0, "inputFutureResult":Ljava/lang/Object;, "TU;"
    nop

    .line 727
    :try_start_5
    invoke-interface {p2, v0}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    .line 730
    goto :goto_11

    .line 728
    :catchall_d
    move-exception v1

    .line 729
    .local v1, "exception":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 731
    .end local v1    # "exception":Ljava/lang/Throwable;
    :goto_11
    return-void

    .line 722
    .end local v0    # "inputFutureResult":Ljava/lang/Object;, "TU;"
    :catch_12
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    .line 723
    .local v0, "error":Ljava/lang/Throwable;
    :goto_15
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 724
    return-void

    .line 718
    .end local v0    # "error":Ljava/lang/Throwable;
    :catch_19
    move-exception v0

    .line 719
    .local v0, "exception":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 720
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_22

    move-object v2, v0

    goto :goto_23

    :cond_22
    move-object v2, v1

    :goto_23
    invoke-virtual {p1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 721
    return-void

    .line 715
    .end local v0    # "exception":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_27
    move-exception v0

    .line 716
    .local v0, "cancellationException":Ljava/util/concurrent/CancellationException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 717
    return-void
.end method

.method public static linearSearch([II)I
    .registers 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 1033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 1034
    aget v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 1035
    return v0

    .line 1033
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1038
    .end local v0    # "i":I
    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public static linearSearch([JJ)I
    .registers 7
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 1051
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 1052
    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_b

    .line 1053
    return v0

    .line 1051
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    .end local v0    # "i":I
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public static maxValue(Landroid/util/SparseLongArray;)J
    .registers 6
    .param p0, "sparseLongArray"    # Landroid/util/SparseLongArray;

    .line 1344
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1347
    const-wide/high16 v0, -0x8000000000000000L

    .line 1348
    .local v0, "max":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 1349
    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1348
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1351
    .end local v2    # "i":I
    :cond_1a
    return-wide v0

    .line 1345
    .end local v0    # "max":J
    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method

.method private static maybeReplaceLegacyLanguageTags(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 3047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_31

    .line 3048
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v0

    .line 3050
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3049
    return-object v1

    .line 3047
    :cond_2e
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 3053
    .end local v0    # "i":I
    :cond_31
    return-object p0
.end method

.method private static maybeRequestReadExternalStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 354
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    .line 355
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->isMediaStoreExternalContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 356
    :cond_12
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->requestExternalStoragePermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 354
    :goto_1b
    return v0
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 309
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 310
    return v2

    .line 312
    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_19

    aget-object v3, p1, v1

    .line 313
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/Util;->maybeRequestReadExternalStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 314
    const/4 v0, 0x1

    return v0

    .line 312
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 317
    :cond_19
    return v2
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Lcom/google/android/exoplayer2/MediaItem;)Z
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaItems"    # [Lcom/google/android/exoplayer2/MediaItem;

    .line 332
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 333
    return v2

    .line 335
    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_3f

    aget-object v3, p1, v1

    .line 336
    .local v3, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-nez v4, :cond_13

    .line 337
    goto :goto_3c

    .line 339
    :cond_13
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/util/Util;->maybeRequestReadExternalStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1f

    .line 340
    return v5

    .line 342
    :cond_1f
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 344
    .local v4, "subtitleConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3c

    .line 345
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p0, v7}, Lcom/google/android/exoplayer2/util/Util;->maybeRequestReadExternalStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 346
    return v5

    .line 344
    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 335
    .end local v3    # "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    .end local v4    # "subtitleConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;>;"
    .end local v6    # "i":I
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 350
    :cond_3f
    return v2
.end method

.method public static minValue(Landroid/util/SparseLongArray;)J
    .registers 6
    .param p0, "sparseLongArray"    # Landroid/util/SparseLongArray;

    .line 1325
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1328
    const-wide v0, 0x7fffffffffffffffL

    .line 1329
    .local v0, "min":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 1330
    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1329
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1332
    .end local v2    # "i":I
    :cond_1d
    return-wide v0

    .line 1326
    .end local v0    # "min":J
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_25

    :goto_24
    throw v0

    :goto_25
    goto :goto_24
.end method

.method public static moveItems(Ljava/util/List;III)V
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    .line 2701
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2702
    .local v0, "removedItems":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TT;>;"
    sub-int v1, p2, p1

    .line 2703
    .local v1, "removedItemsLength":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_17

    .line 2704
    add-int v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2703
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 2706
    .end local v2    # "i":I
    :cond_17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p0, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2707
    return-void
.end method

.method public static msToUs(J)J
    .registers 5
    .param p0, "timeMs"    # J

    .line 1373
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_15

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_10

    goto :goto_15

    :cond_10
    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p0

    goto :goto_16

    :cond_15
    :goto_15
    move-wide v0, p0

    :goto_16
    return-wide v0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0, "threadName"    # Ljava/lang/String;

    .line 752
    new-instance v0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "threadName"    # Ljava/lang/String;

    .line 762
    new-instance v0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;

    .line 826
    if-nez p0, :cond_4

    .line 827
    const/4 v0, 0x0

    return-object v0

    .line 831
    :cond_4
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "normalizedTag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "und"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 834
    :cond_1a
    move-object v0, p0

    .line 836
    :cond_1b
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 838
    .local v1, "mainLanguage":Ljava/lang/String;
    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    if-nez v2, :cond_32

    .line 839
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createIsoLanguageReplacementMap()Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Lcom/google/android/exoplayer2/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    .line 841
    :cond_32
    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 842
    .local v2, "replacedLanguage":Ljava/lang/String;
    if-eqz v2, :cond_56

    .line 843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 844
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    move-object v1, v2

    .line 847
    :cond_56
    const-string v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    const-string v3, "i"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    const-string v3, "zh"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 848
    :cond_6e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->maybeReplaceLegacyLanguageTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 850
    :cond_72
    return-object v0
.end method

.method public static nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 516
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    .local p1, "newElement":Ljava/lang/Object;, "TT;"
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 517
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    aput-object p1, v0, v1

    .line 518
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 530
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 531
    .local v0, "concatenation":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    return-object v0
.end method

.method public static nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 489
    .local p0, "input":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 490
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafeArrayCopyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 503
    .local p0, "input":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 504
    array-length v2, p0

    if-gt p2, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 505
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafeListToArray(Ljava/util/List;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .line 551
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 552
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 553
    return-void
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .registers 12
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1451
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1452
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 1458
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    .line 1460
    const/4 v1, 0x0

    .local v1, "timezoneShift":I
    goto :goto_4c

    .line 1461
    .end local v1    # "timezoneShift":I
    :cond_16
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1462
    const/4 v1, 0x0

    .restart local v1    # "timezoneShift":I
    goto :goto_4c

    .line 1464
    .end local v1    # "timezoneShift":I
    :cond_24
    nop

    .line 1465
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1466
    .restart local v1    # "timezoneShift":I
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1467
    mul-int/lit8 v1, v1, -0x1

    .line 1471
    :cond_4c
    :goto_4c
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1473
    .local v2, "dateTime":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1475
    nop

    .line 1476
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1477
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    .line 1478
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1479
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1480
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1481
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1475
    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1482
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cd

    .line 1483
    new-instance v5, Ljava/math/BigDecimal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 1485
    .local v4, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->intValue()I

    move-result v3

    const/16 v5, 0xe

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 1488
    .end local v4    # "bd":Ljava/math/BigDecimal;
    :cond_cd
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1489
    .local v3, "time":J
    if-eqz v1, :cond_da

    .line 1490
    int-to-long v5, v1

    const-wide/32 v7, 0xea60

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    .line 1493
    :cond_da
    return-wide v3

    .line 1453
    .end local v1    # "timezoneShift":I
    .end local v2    # "dateTime":Ljava/util/Calendar;
    .end local v3    # "time":J
    :cond_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date/time format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .registers 20
    .param p0, "value"    # Ljava/lang/String;

    .line 1415
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1416
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    const-wide v5, 0x40ac200000000000L    # 3600.0

    if-eqz v2, :cond_9c

    .line 1417
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v2, v7

    .line 1420
    .local v2, "negated":Z
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 1421
    .local v7, "years":Ljava/lang/String;
    const-wide/16 v8, 0x0

    if-eqz v7, :cond_37

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x417e1852c0000000L    # 3.1556908E7

    mul-double v10, v10, v12

    goto :goto_38

    :cond_37
    move-wide v10, v8

    .line 1422
    .local v10, "durationSeconds":D
    :goto_38
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 1423
    .local v12, "months":Ljava/lang/String;
    if-eqz v12, :cond_4b

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide v15, 0x4144103580000000L    # 2629739.0

    mul-double v13, v13, v15

    goto :goto_4c

    :cond_4b
    move-wide v13, v8

    :goto_4c
    add-double/2addr v10, v13

    .line 1424
    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 1425
    .local v13, "days":Ljava/lang/String;
    if-eqz v13, :cond_60

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40f5180000000000L    # 86400.0

    mul-double v14, v14, v16

    goto :goto_61

    :cond_60
    move-wide v14, v8

    :goto_61
    add-double/2addr v10, v14

    .line 1426
    const/16 v14, 0xa

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 1427
    .local v14, "hours":Ljava/lang/String;
    if-eqz v14, :cond_71

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double v15, v15, v5

    goto :goto_72

    :cond_71
    move-wide v15, v8

    :goto_72
    add-double/2addr v10, v15

    .line 1428
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1429
    .local v5, "minutes":Ljava/lang/String;
    if-eqz v5, :cond_84

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    mul-double v15, v15, v17

    goto :goto_85

    :cond_84
    move-wide v15, v8

    :goto_85
    add-double/2addr v10, v15

    .line 1430
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1431
    .local v6, "seconds":Ljava/lang/String;
    if-eqz v6, :cond_92

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    :cond_92
    add-double/2addr v10, v8

    .line 1432
    mul-double v3, v3, v10

    double-to-long v3, v3

    .line 1433
    .local v3, "durationMillis":J
    if-eqz v2, :cond_9a

    neg-long v8, v3

    goto :goto_9b

    :cond_9a
    move-wide v8, v3

    :goto_9b
    return-wide v8

    .line 1435
    .end local v2    # "negated":Z
    .end local v3    # "durationMillis":J
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "seconds":Ljava/lang/String;
    .end local v7    # "years":Ljava/lang/String;
    .end local v10    # "durationSeconds":D
    .end local v12    # "months":Ljava/lang/String;
    .end local v13    # "days":Ljava/lang/String;
    .end local v14    # "hours":Ljava/lang/String;
    :cond_9c
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    mul-double v7, v7, v5

    mul-double v7, v7, v3

    double-to-long v2, v7

    return-wide v2
.end method

.method public static postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .registers 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 638
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 639
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 640
    const/4 v1, 0x0

    return v1

    .line 642
    :cond_10
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    .line 643
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 644
    const/4 v1, 0x1

    return v1

    .line 646
    :cond_1f
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method public static postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 664
    .local p2, "successValue":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 665
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TT;>;"
    new-instance v1, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda3;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 678
    return-object v0
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .registers 2
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 789
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .registers 5
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .line 2347
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2348
    .local v0, "directoryFiles":[Ljava/io/File;
    if-eqz v0, :cond_12

    .line 2349
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 2350
    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->recursiveDelete(Ljava/io/File;)V

    .line 2349
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2353
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 2354
    return-void
.end method

.method public static registerReceiverNotExported(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 276
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_b

    .line 277
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 279
    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static removeRange(Ljava/util/List;II)V
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 453
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ltz p1, :cond_14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_14

    if-gt p1, p2, :cond_14

    .line 455
    if-eq p1, p2, :cond_13

    .line 457
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 459
    :cond_13
    return-void

    .line 454
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static requestExternalStoragePermission(Landroid/app/Activity;)Z
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 3030
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 3032
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 3034
    const/4 v0, 0x1

    return v0

    .line 3036
    :cond_12
    return v2
.end method

.method public static sampleCountToDurationUs(JI)J
    .registers 7
    .param p0, "sampleCount"    # J
    .param p2, "sampleRate"    # I

    .line 1389
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p0

    int-to-long v2, p2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .registers 11
    .param p0, "timestamp"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J

    .line 1508
    const-wide/16 v0, 0x0

    cmp-long v2, p4, p2

    if-ltz v2, :cond_11

    rem-long v2, p4, p2

    cmp-long v4, v2, v0

    if-nez v4, :cond_11

    .line 1509
    div-long v0, p4, p2

    .line 1510
    .local v0, "divisionFactor":J
    div-long v2, p0, v0

    return-wide v2

    .line 1511
    .end local v0    # "divisionFactor":J
    :cond_11
    cmp-long v2, p4, p2

    if-gez v2, :cond_20

    rem-long v2, p2, p4

    cmp-long v4, v2, v0

    if-nez v4, :cond_20

    .line 1512
    div-long v0, p2, p4

    .line 1513
    .local v0, "multiplicationFactor":J
    mul-long v2, p0, v0

    return-wide v2

    .line 1515
    .end local v0    # "multiplicationFactor":J
    :cond_20
    long-to-double v0, p2

    long-to-double v2, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 1516
    .local v0, "multiplicationFactor":D
    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-long v2, v2

    return-wide v2
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .registers 11
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JJ)[J"
        }
    .end annotation

    .line 1529
    .local p0, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1530
    .local v0, "scaledTimestamps":[J
    const-wide/16 v1, 0x0

    cmp-long v3, p3, p1

    if-ltz v3, :cond_29

    rem-long v3, p3, p1

    cmp-long v5, v3, v1

    if-nez v5, :cond_29

    .line 1531
    div-long v1, p3, p1

    .line 1532
    .local v1, "divisionFactor":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v4, v0

    if-ge v3, v4, :cond_28

    .line 1533
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v1

    aput-wide v4, v0, v3

    .line 1532
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1535
    .end local v1    # "divisionFactor":J
    .end local v3    # "i":I
    :cond_28
    goto :goto_6e

    :cond_29
    cmp-long v3, p3, p1

    if-gez v3, :cond_4b

    rem-long v3, p1, p3

    cmp-long v5, v3, v1

    if-nez v5, :cond_4b

    .line 1536
    div-long v1, p1, p3

    .line 1537
    .local v1, "multiplicationFactor":J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_36
    array-length v4, v0

    if-ge v3, v4, :cond_4a

    .line 1538
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long v4, v4, v1

    aput-wide v4, v0, v3

    .line 1537
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 1540
    .end local v1    # "multiplicationFactor":J
    .end local v3    # "i":I
    :cond_4a
    goto :goto_6e

    .line 1541
    :cond_4b
    long-to-double v1, p1

    long-to-double v3, p3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    .line 1542
    .local v1, "multiplicationFactor":D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_55
    array-length v4, v0

    if-ge v3, v4, :cond_6e

    .line 1543
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v1

    double-to-long v4, v4

    aput-wide v4, v0, v3

    .line 1542
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 1546
    .end local v1    # "multiplicationFactor":D
    .end local v3    # "i":I
    :cond_6e
    :goto_6e
    return-object v0
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .registers 10
    .param p0, "timestamps"    # [J
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J

    .line 1557
    const-wide/16 v0, 0x0

    cmp-long v2, p3, p1

    if-ltz v2, :cond_1b

    rem-long v2, p3, p1

    cmp-long v4, v2, v0

    if-nez v4, :cond_1b

    .line 1558
    div-long v0, p3, p1

    .line 1559
    .local v0, "divisionFactor":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_1a

    .line 1560
    aget-wide v3, p0, v2

    div-long/2addr v3, v0

    aput-wide v3, p0, v2

    .line 1559
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1562
    .end local v0    # "divisionFactor":J
    .end local v2    # "i":I
    :cond_1a
    goto :goto_50

    :cond_1b
    cmp-long v2, p3, p1

    if-gez v2, :cond_35

    rem-long v2, p1, p3

    cmp-long v4, v2, v0

    if-nez v4, :cond_35

    .line 1563
    div-long v0, p1, p3

    .line 1564
    .local v0, "multiplicationFactor":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_28
    array-length v3, p0

    if-ge v2, v3, :cond_34

    .line 1565
    aget-wide v3, p0, v2

    mul-long v3, v3, v0

    aput-wide v3, p0, v2

    .line 1564
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1567
    .end local v0    # "multiplicationFactor":J
    .end local v2    # "i":I
    :cond_34
    goto :goto_50

    .line 1568
    :cond_35
    long-to-double v0, p1

    long-to-double v2, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 1569
    .local v0, "multiplicationFactor":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3f
    array-length v3, p0

    if-ge v2, v3, :cond_50

    .line 1570
    aget-wide v3, p0, v2

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    double-to-long v3, v3

    aput-wide v3, p0, v2

    .line 1569
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1573
    .end local v0    # "multiplicationFactor":D
    .end local v2    # "i":I
    :cond_50
    :goto_50
    return-void
.end method

.method private static shouldEscapeCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 2268
    sparse-switch p0, :sswitch_data_8

    .line 2281
    const/4 v0, 0x0

    return v0

    .line 2279
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x22 -> :sswitch_5
        0x25 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2f -> :sswitch_5
        0x3a -> :sswitch_5
        0x3c -> :sswitch_5
        0x3e -> :sswitch_5
        0x3f -> :sswitch_5
        0x5c -> :sswitch_5
        0x7c -> :sswitch_5
    .end sparse-switch
.end method

.method public static shouldShowPlayButton(Lcom/google/android/exoplayer2/Player;)Z
    .registers 4
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = false
    .end annotation

    .line 2888
    const/4 v0, 0x1

    if-eqz p0, :cond_19

    .line 2889
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2890
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 2891
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    nop

    .line 2888
    :goto_1a
    return v0
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 2337
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    .line 2338
    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2342
    throw p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    .line 895
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    .line 909
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitCodecs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "codecs"    # Ljava/lang/String;

    .line 1765
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1766
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 1768
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\s*,\\s*)"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 293
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 294
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 296
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static subtractWithOverflowDefault(JJJ)J
    .registers 13
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "overflowResult"    # J

    .line 1015
    sub-long v0, p0, p2

    .line 1017
    .local v0, "result":J
    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_e

    .line 1018
    return-wide p4

    .line 1020
    :cond_e
    return-wide v0
.end method

.method public static varargs sum([J)J
    .registers 7
    .param p0, "summands"    # [J

    .line 2845
    const-wide/16 v0, 0x0

    .line 2846
    .local v0, "sum":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_c

    aget-wide v4, p0, v3

    .line 2847
    .local v4, "summand":J
    add-long/2addr v0, v4

    .line 2846
    .end local v4    # "summand":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2849
    :cond_c
    return-wide v0
.end method

.method public static tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 2711
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 2712
    const-string v1, "sqlite_master"

    const-string v2, "tbl_name = ?"

    invoke-static {p0, v1, v2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 2714
    .local v0, "count":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method public static toByteArray(F)[B
    .registers 2
    .param p0, "value"    # F

    .line 242
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(I)[B
    .registers 4
    .param p0, "value"    # I

    .line 217
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 207
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "bytesRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    .line 210
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 212
    :cond_16
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static varargs toByteArray([I)[B
    .registers 10
    .param p0, "values"    # [I

    .line 228
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 229
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 230
    .local v1, "index":I
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_2f

    aget v5, p0, v4

    .line 231
    .local v5, "value":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(I)[B

    move-result-object v6

    .line 232
    .local v6, "byteArray":[B
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index":I
    .local v7, "index":I
    aget-byte v8, v6, v3

    aput-byte v8, v0, v1

    .line 233
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "index":I
    .restart local v1    # "index":I
    const/4 v8, 0x1

    aget-byte v8, v6, v8

    aput-byte v8, v0, v7

    .line 234
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index":I
    .restart local v7    # "index":I
    const/4 v8, 0x2

    aget-byte v8, v6, v8

    aput-byte v8, v0, v1

    .line 235
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "index":I
    .restart local v1    # "index":I
    const/4 v8, 0x3

    aget-byte v8, v6, v8

    aput-byte v8, v0, v7

    .line 230
    .end local v5    # "value":I
    .end local v6    # "byteArray":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 237
    :cond_2f
    return-object v0
.end method

.method public static toFloat([B)F
    .registers 5
    .param p0, "bytes"    # [B

    .line 247
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 248
    aget-byte v0, p0, v3

    shl-int/lit8 v0, v0, 0x18

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 250
    .local v0, "intBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1669
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 1670
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 1671
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    .line 1672
    invoke-static {v4, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1669
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1674
    .end local v1    # "i":I
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toInteger([B)I
    .registers 5
    .param p0, "bytes"    # [B

    .line 255
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 256
    aget-byte v0, p0, v3

    shl-int/lit8 v0, v0, 0x18

    aget-byte v1, p0, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static toLong(II)J
    .registers 6
    .param p0, "mostSignificantBits"    # I
    .param p1, "leastSignificantBits"    # I

    .line 1640
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toUnsignedLong(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->toUnsignedLong(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(I)J
    .registers 5
    .param p0, "x"    # I

    .line 1628
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TU;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "TU;TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 702
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TU;>;"
    .local p1, "transformFunction":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TU;TT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 703
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TT;>;"
    new-instance v1, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 709
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 703
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 710
    new-instance v1, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda2;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 732
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 710
    invoke-interface {p0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 733
    return-object v0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "fileName"    # Ljava/lang/String;

    .line 2296
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2297
    .local v0, "length":I
    const/4 v1, 0x0

    .line 2298
    .local v1, "percentCharacterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_15

    .line 2299
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_12

    .line 2300
    add-int/lit8 v1, v1, 0x1

    .line 2298
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2303
    .end local v2    # "i":I
    :cond_15
    if-nez v1, :cond_18

    .line 2304
    return-object p0

    .line 2307
    :cond_18
    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    .line 2308
    .local v2, "expectedLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2309
    .local v3, "builder":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2310
    .local v4, "matcher":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 2311
    .local v5, "startOfNotEscaped":I
    :goto_28
    if-lez v1, :cond_55

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 2312
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 2313
    .local v6, "unescapedCharacter":C
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v3, p0, v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2314
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 2315
    nop

    .end local v6    # "unescapedCharacter":C
    add-int/lit8 v1, v1, -0x1

    .line 2316
    goto :goto_28

    .line 2317
    :cond_55
    if-ge v5, v0, :cond_5a

    .line 2318
    invoke-virtual {v3, p0, v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2320
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eq v6, v2, :cond_62

    .line 2321
    const/4 v6, 0x0

    return-object v6

    .line 2323
    :cond_62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static usToMs(J)J
    .registers 5
    .param p0, "timeUs"    # J

    .line 1362
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_15

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_10

    goto :goto_15

    :cond_10
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    goto :goto_16

    :cond_15
    :goto_15
    move-wide v0, p0

    :goto_16
    return-wide v0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .registers 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .line 800
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    return-void
.end method
