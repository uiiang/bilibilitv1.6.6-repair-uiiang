.class public final Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "RawResourceDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private final packageName:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->packageName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "rawResourceId"    # I

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    .line 300
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_d

    .line 301
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_3a
    .catchall {:try_start_6 .. :try_end_d} :catchall_38

    .line 307
    :cond_d
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 309
    :try_start_f
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16

    .line 310
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_25
    .catchall {:try_start_f .. :try_end_16} :catchall_23

    .line 316
    :cond_16
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 317
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_21

    .line 318
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    .line 322
    :cond_21
    nop

    .line 323
    return-void

    .line 316
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 312
    :catch_25
    move-exception v3

    .line 313
    .local v3, "e":Ljava/io/IOException;
    :try_start_26
    new-instance v4, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 316
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2c
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 317
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_37

    .line 318
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    .line 321
    :cond_37
    throw v1

    .line 307
    :catchall_38
    move-exception v3

    goto :goto_41

    .line 303
    :catch_3a
    move-exception v3

    .line 304
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3b
    new-instance v4, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_38

    .line 307
    .end local v3    # "e":Ljava/io/IOException;
    :goto_41
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 309
    :try_start_43
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4a

    .line 310
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_58
    .catchall {:try_start_43 .. :try_end_4a} :catchall_56

    .line 316
    :cond_4a
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 317
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_55

    .line 318
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    .line 322
    :cond_55
    throw v3

    .line 316
    :catchall_56
    move-exception v1

    goto :goto_5f

    .line 312
    :catch_58
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_59
    new-instance v4, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_56

    .line 316
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5f
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 317
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6a

    .line 318
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    .line 321
    :cond_6a
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 25
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 123
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v3

    .line 124
    .local v3, "uri":Landroid/net/Uri;
    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    .line 127
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "rawresource"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v5, 0x7d5

    const/16 v6, 0x3ec

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_e5

    .line 128
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.resource"

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 129
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_48

    .line 130
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v10, "\\d+"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto/16 :goto_e5

    .line 139
    :cond_48
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 140
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "path":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 142
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_68
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "host":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7a

    const-string v9, ""

    goto :goto_8d

    :cond_7a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_8d
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "resourceName":Ljava/lang/String;
    iget-object v9, v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    iget-object v10, v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->packageName:Ljava/lang/String;

    .line 147
    const-string v11, "raw"

    invoke-virtual {v9, v6, v11, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 149
    .local v9, "resourceId":I
    if-eqz v9, :cond_a6

    .line 155
    .end local v0    # "path":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v6    # "resourceName":Ljava/lang/String;
    goto :goto_f5

    .line 150
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v6    # "resourceName":Ljava/lang/String;
    :cond_a6
    new-instance v7, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v10, "Resource not found."

    invoke-direct {v7, v10, v8, v5}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v7

    .line 156
    .end local v0    # "path":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v6    # "resourceName":Ljava/lang/String;
    .end local v9    # "resourceId":I
    :cond_ae
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported URI scheme ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 158
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "). Only "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " are supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v8, v6}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 132
    :cond_e5
    :goto_e5
    :try_start_e5
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f3
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_f3} :catch_215

    move v9, v0

    .line 138
    .restart local v9    # "resourceId":I
    nop

    .line 168
    :goto_f5
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 172
    :try_start_f8
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_fe
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f8 .. :try_end_fe} :catch_20c

    move-object v4, v0

    .line 176
    .local v4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 178
    iput-object v4, v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 179
    const/16 v5, 0x7d0

    if-eqz v4, :cond_1f1

    .line 186
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    .line 187
    .local v10, "assetFileDescriptorLength":J
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v6, v0

    .line 188
    .local v6, "inputStream":Ljava/io/FileInputStream;
    iput-object v6, v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 197
    const/16 v0, 0x7d8

    const-wide/16 v12, -0x1

    cmp-long v14, v10, v12

    if-eqz v14, :cond_137

    :try_start_11e
    iget-wide v14, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v16, v14, v10

    if-gtz v16, :cond_125

    goto :goto_137

    .line 199
    :cond_125
    new-instance v7, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v7, v8, v8, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v7
    :try_end_12b
    .catch Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_11e .. :try_end_12b} :catch_131
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_12b} :catch_12b

    .line 240
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :catch_12b
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v1

    goto/16 :goto_1e5

    .line 238
    :catch_131
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v1

    goto/16 :goto_1f0

    .line 204
    :cond_137
    :goto_137
    :try_start_137
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    .line 205
    .local v14, "assetFileDescriptorOffset":J
    iget-wide v7, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v7, v14

    .line 206
    invoke-virtual {v6, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v7
    :try_end_142
    .catch Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_137 .. :try_end_142} :catch_1ec
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_142} :catch_1e1

    sub-long/2addr v7, v14

    .line 208
    .local v7, "skipped":J
    :try_start_143
    iget-wide v0, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v17, v7, v0

    if-nez v17, :cond_1c4

    .line 216
    const-wide/16 v0, 0x0

    cmp-long v17, v10, v12

    if-nez v17, :cond_181

    .line 219
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    .line 220
    .local v17, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v18
    :try_end_157
    .catch Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_143 .. :try_end_157} :catch_1db
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_157} :catch_1d5

    cmp-long v20, v18, v0

    if-nez v20, :cond_163

    .line 221
    move-object/from16 v1, p0

    :try_start_15d
    iput-wide v12, v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_15f
    .catch Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_15d .. :try_end_15f} :catch_131
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_15f} :catch_12b

    move-object/from16 v18, v6

    move-object v6, v1

    goto :goto_177

    .line 223
    :cond_163
    move-object/from16 v18, v6

    move-object/from16 v6, p0

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .local v18, "inputStream":Ljava/io/FileInputStream;
    :try_start_167
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v19

    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v21

    sub-long v12, v19, v21

    iput-wide v12, v6, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 224
    cmp-long v19, v12, v0

    if-ltz v19, :cond_178

    .line 232
    .end local v17    # "channel":Ljava/nio/channels/FileChannel;
    :goto_177
    goto :goto_18d

    .line 226
    .restart local v17    # "channel":Ljava/nio/channels/FileChannel;
    :cond_178
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/16 v1, 0x7d8

    const/4 v12, 0x0

    invoke-direct {v0, v12, v12, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local v18    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v0

    .line 233
    .end local v17    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_181
    move-object/from16 v18, v6

    move-object/from16 v6, p0

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v18    # "inputStream":Ljava/io/FileInputStream;
    sub-long v12, v10, v7

    iput-wide v12, v6, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_189
    .catch Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_167 .. :try_end_189} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_189} :catch_1d1

    .line 234
    cmp-long v17, v12, v0

    if-ltz v17, :cond_1bc

    .line 243
    .end local v7    # "skipped":J
    .end local v14    # "assetFileDescriptorOffset":J
    :goto_18d
    nop

    .line 245
    iget-wide v0, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v7, -0x1

    cmp-long v5, v0, v7

    if-eqz v5, :cond_1a8

    .line 246
    nop

    .line 247
    iget-wide v0, v6, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v5, v0, v7

    if-nez v5, :cond_1a0

    iget-wide v0, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_1a6

    :cond_1a0
    iget-wide v7, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_1a6
    iput-wide v0, v6, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 249
    :cond_1a8
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 250
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 251
    iget-wide v0, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v7, -0x1

    cmp-long v5, v0, v7

    if-eqz v5, :cond_1b9

    iget-wide v0, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_1bb

    :cond_1b9
    iget-wide v0, v6, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    :goto_1bb
    return-wide v0

    .line 235
    .restart local v7    # "skipped":J
    .restart local v14    # "assetFileDescriptorOffset":J
    :cond_1bc
    :try_start_1bc
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local v18    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v0

    .line 211
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_1c4
    move-object/from16 v18, v6

    move-object/from16 v6, p0

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v18    # "inputStream":Ljava/io/FileInputStream;
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/16 v1, 0x7d8

    const/4 v12, 0x0

    invoke-direct {v0, v12, v12, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local v18    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v0
    :try_end_1d1
    .catch Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_1bc .. :try_end_1d1} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1d1} :catch_1d1

    .line 240
    .end local v7    # "skipped":J
    .end local v14    # "assetFileDescriptorOffset":J
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local v18    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :catch_1d1
    move-exception v0

    goto :goto_1e5

    .line 238
    :catch_1d3
    move-exception v0

    goto :goto_1f0

    .line 240
    .end local v18    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_1d5
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v6, p0

    goto :goto_1e5

    .line 238
    :catch_1db
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v6, p0

    goto :goto_1f0

    .line 240
    :catch_1e1
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v1

    .line 241
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "inputStream":Ljava/io/FileInputStream;
    :goto_1e5
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v0, v5}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    .end local v18    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_1ec
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v1

    .line 239
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .local v0, "e":Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    .restart local v18    # "inputStream":Ljava/io/FileInputStream;
    :goto_1f0
    throw v0

    .line 180
    .end local v0    # "e":Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    .end local v10    # "assetFileDescriptorLength":J
    .end local v18    # "inputStream":Ljava/io/FileInputStream;
    :cond_1f1
    move-object v6, v1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource is compressed: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-direct {v0, v1, v7, v5}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 173
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_20c
    move-exception v0

    move-object v6, v1

    move-object v7, v8

    .line 174
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v7, v0, v5}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 133
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v9    # "resourceId":I
    :catch_215
    move-exception v0

    move-object v6, v1

    const/16 v1, 0x3ec

    .line 134
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v5, "Resource identifier must be an integer."

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
.end method

.method public read([BII)I
    .registers 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 256
    if-nez p3, :cond_4

    .line 257
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    .line 259
    return v4

    .line 265
    :cond_e
    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-nez v3, :cond_18

    move v1, p3

    goto :goto_1e

    :cond_18
    int-to-long v7, p3

    :try_start_19
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    :goto_1e
    move v0, v1

    .line 266
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2b} :catch_51

    move v0, v1

    .line 270
    .local v0, "bytesRead":I
    nop

    .line 272
    if-ne v0, v4, :cond_43

    .line 273
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v1, v7, v5

    if-nez v1, :cond_36

    .line 280
    return v4

    .line 275
    :cond_36
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    const-string v4, "End of stream reached having not read sufficient data."

    invoke-direct {v1, v4, v3, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 282
    :cond_43
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_4d

    .line 283
    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 285
    :cond_4d
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesTransferred(I)V

    .line 286
    return v0

    .line 267
    .end local v0    # "bytesRead":I
    :catch_51
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
