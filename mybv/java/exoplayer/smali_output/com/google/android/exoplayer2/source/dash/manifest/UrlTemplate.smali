.class public final Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
.super Ljava/lang/Object;
.source "UrlTemplate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "Bandwidth"

.field private static final BANDWIDTH_ID:I = 0x3

.field private static final DEFAULT_FORMAT_TAG:Ljava/lang/String; = "%01d"

.field private static final ESCAPED_DOLLAR:Ljava/lang/String; = "$$"

.field private static final NUMBER:Ljava/lang/String; = "Number"

.field private static final NUMBER_ID:I = 0x2

.field private static final REPRESENTATION:Ljava/lang/String; = "RepresentationID"

.field private static final REPRESENTATION_ID:I = 0x1

.field private static final TIME:Ljava/lang/String; = "Time"

.field private static final TIME_ID:I = 0x4


# instance fields
.field private final identifierCount:I

.field private final identifierFormatTags:[Ljava/lang/String;

.field private final identifiers:[I

.field private final urlPieces:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .registers 5
    .param p1, "urlPieces"    # [Ljava/lang/String;
    .param p2, "identifiers"    # [I
    .param p3, "identifierFormatTags"    # [Ljava/lang/String;
    .param p4, "identifierCount"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    .line 72
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->identifierCount:I

    .line 74
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .registers 6
    .param p0, "template"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    .local v0, "urlPieces":[Ljava/lang/String;
    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 62
    .local v2, "identifiers":[I
    new-array v1, v1, [Ljava/lang/String;

    .line 63
    .local v1, "identifierFormatTags":[Ljava/lang/String;
    invoke-static {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result v3

    .line 64
    .local v3, "identifierCount":I
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v4
.end method

.method private static parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .registers 18
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "urlPieces"    # [Ljava/lang/String;
    .param p2, "identifiers"    # [I
    .param p3, "identifierFormatTags"    # [Ljava/lang/String;

    .line 122
    move-object v0, p0

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, p1, v1

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "templateIndex":I
    const/4 v4, 0x0

    .line 125
    .local v4, "identifierCount":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_120

    .line 126
    const-string v5, "$"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 127
    .local v6, "dollarIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_36

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto/16 :goto_11e

    .line 130
    :cond_36
    if-eq v6, v3, :cond_54

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    .line 132
    move v3, v6

    goto/16 :goto_11e

    .line 133
    :cond_54
    const-string v8, "$$"

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    .line 135
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_11e

    .line 137
    :cond_75
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 138
    .local v5, "secondIndex":I
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "identifier":Ljava/lang/String;
    const-string v9, "RepresentationID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8e

    .line 140
    aput v10, p2, v4

    goto/16 :goto_118

    .line 142
    :cond_8e
    const-string v9, "%0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 143
    .local v9, "formatTagIndex":I
    const-string v11, "%01d"

    .line 144
    .local v11, "formatTag":Ljava/lang/String;
    if-eq v9, v7, :cond_c9

    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 149
    const-string v12, "d"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c5

    const-string v13, "x"

    invoke-virtual {v11, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c5

    const-string v13, "X"

    invoke-virtual {v11, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c5

    .line 150
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 152
    :cond_c5
    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 154
    :cond_c9
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x2

    sparse-switch v12, :sswitch_data_122

    :cond_d1
    goto :goto_ef

    :sswitch_d2
    const-string v12, "Bandwidth"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d1

    const/4 v7, 0x1

    goto :goto_ef

    :sswitch_dc
    const-string v10, "Time"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d1

    const/4 v7, 0x2

    goto :goto_ef

    :sswitch_e6
    const-string v10, "Number"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d1

    const/4 v7, 0x0

    :goto_ef
    packed-switch v7, :pswitch_data_130

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid template: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :pswitch_10b
    const/4 v7, 0x4

    aput v7, p2, v4

    .line 163
    goto :goto_116

    .line 159
    :pswitch_10f
    const/4 v7, 0x3

    aput v7, p2, v4

    .line 160
    goto :goto_116

    .line 156
    :pswitch_113
    aput v13, p2, v4

    .line 157
    nop

    .line 167
    :goto_116
    aput-object v11, p3, v4

    .line 169
    .end local v9    # "formatTagIndex":I
    .end local v11    # "formatTag":Ljava/lang/String;
    :goto_118
    add-int/lit8 v4, v4, 0x1

    .line 170
    aput-object v2, p1, v4

    .line 171
    add-int/lit8 v3, v5, 0x1

    .line 173
    .end local v5    # "secondIndex":I
    .end local v6    # "dollarIndex":I
    .end local v8    # "identifier":Ljava/lang/String;
    :goto_11e
    goto/16 :goto_8

    .line 174
    :cond_120
    return v4

    nop

    :sswitch_data_122
    .sparse-switch
        -0x74423897 -> :sswitch_e6
        0x27c6ed -> :sswitch_dc
        0x246e091 -> :sswitch_d2
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_113
        :pswitch_10f
        :pswitch_10b
    .end packed-switch
.end method


# virtual methods
.method public buildUri(Ljava/lang/String;JIJ)Ljava/lang/String;
    .registers 14
    .param p1, "representationId"    # Ljava/lang/String;
    .param p2, "segmentNumber"    # J
    .param p4, "bandwidth"    # I
    .param p5, "time"    # J

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->identifierCount:I

    if-ge v1, v2, :cond_6a

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 93
    :cond_1c
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_36

    .line 94
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v4, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 95
    :cond_36
    const/4 v4, 0x3

    if-ne v2, v4, :cond_4f

    .line 96
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v4, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 97
    :cond_4f
    const/4 v4, 0x4

    if-ne v2, v4, :cond_67

    .line 98
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v4, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_67
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 101
    .end local v1    # "i":I
    :cond_6a
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
