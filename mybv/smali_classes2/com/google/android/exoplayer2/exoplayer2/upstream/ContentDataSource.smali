.class public final Lcom/google/android/exoplayer2/upstream/ContentDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 78
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 213
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_d

    .line 214
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_3a
    .catchall {:try_start_6 .. :try_end_d} :catchall_38

    .line 219
    :cond_d
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 221
    :try_start_f
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16

    .line 222
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_25
    .catchall {:try_start_f .. :try_end_16} :catchall_23

    .line 227
    :cond_16
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 228
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_21

    .line 229
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    .line 233
    :cond_21
    nop

    .line 234
    return-void

    .line 227
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 224
    :catch_25
    move-exception v3

    .line 225
    .local v3, "e":Ljava/io/IOException;
    :try_start_26
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 227
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2c
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 228
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_37

    .line 229
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    .line 232
    :cond_37
    throw v1

    .line 219
    :catchall_38
    move-exception v3

    goto :goto_41

    .line 216
    :catch_3a
    move-exception v3

    .line 217
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3b
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_38

    .line 219
    .end local v3    # "e":Ljava/io/IOException;
    :goto_41
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 221
    :try_start_43
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4a

    .line 222
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_58
    .catchall {:try_start_43 .. :try_end_4a} :catchall_56

    .line 227
    :cond_4a
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 228
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_55

    .line 229
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    .line 233
    :cond_55
    throw v3

    .line 227
    :catchall_56
    move-exception v1

    goto :goto_5f

    .line 224
    :catch_58
    move-exception v3

    .line 225
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_59
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_56

    .line 227
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5f
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 228
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6a

    .line 229
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    .line 232
    :cond_6a
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 24
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 84
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_4
    iget-object v0, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    .line 85
    .local v0, "uri":Landroid/net/Uri;
    iput-object v0, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 87
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 90
    const-string v4, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_30

    .line 91
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v4, "providerOptions":Landroid/os/Bundle;
    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v7, "*/*"

    .line 95
    invoke-virtual {v6, v0, v7, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    move-object v4, v6

    .line 96
    .local v4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_38

    .line 99
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_30
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v6, "r"

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 101
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_38
    iput-object v4, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 102
    if-eqz v4, :cond_e8

    .line 109
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 110
    .local v6, "assetFileDescriptorLength":J
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 111
    .local v8, "inputStream":Ljava/io/FileInputStream;
    iput-object v8, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 119
    const/16 v9, 0x7d8

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    cmp-long v13, v6, v11

    if-eqz v13, :cond_61

    iget-wide v13, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v15, v13, v6

    if-gtz v15, :cond_5b

    goto :goto_61

    .line 121
    :cond_5b
    new-instance v5, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v5, v10, v9}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v5

    .line 124
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_61
    :goto_61
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    .line 125
    .local v13, "assetFileDescriptorOffset":J
    move-object/from16 v16, v4

    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .local v16, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v3, v13

    .line 126
    invoke-virtual {v8, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v3

    sub-long/2addr v3, v13

    .line 128
    .local v3, "skipped":J
    iget-wide v9, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v17, v3, v9

    if-nez v17, :cond_df

    .line 134
    const-wide/16 v9, 0x0

    cmp-long v17, v6, v11

    if-nez v17, :cond_a0

    .line 137
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    .line 138
    .local v17, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v18

    .line 139
    .local v18, "channelSize":J
    cmp-long v20, v18, v9

    if-nez v20, :cond_8a

    .line 140
    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_96

    .line 142
    :cond_8a
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v20

    sub-long v11, v18, v20

    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 143
    cmp-long v20, v11, v9

    if-ltz v20, :cond_97

    .line 149
    .end local v17    # "channel":Ljava/nio/channels/FileChannel;
    .end local v18    # "channelSize":J
    :goto_96
    goto :goto_a8

    .line 145
    .restart local v17    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v18    # "channelSize":J
    :cond_97
    new-instance v5, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    const/16 v9, 0x7d8

    const/4 v10, 0x0

    invoke-direct {v5, v10, v9}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v5

    .line 150
    .end local v17    # "channel":Ljava/nio/channels/FileChannel;
    .end local v18    # "channelSize":J
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_a0
    sub-long v11, v6, v3

    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_a4
    .catch Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException; {:try_start_4 .. :try_end_a4} :catch_11e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a4} :catch_10c

    .line 151
    cmp-long v17, v11, v9

    if-ltz v17, :cond_d6

    .line 164
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "skipped":J
    .end local v6    # "assetFileDescriptorLength":J
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v13    # "assetFileDescriptorOffset":J
    .end local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_a8
    nop

    .line 166
    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v6, -0x1

    cmp-long v0, v3, v6

    if-eqz v0, :cond_c3

    .line 167
    nop

    .line 168
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v0, v3, v6

    if-nez v0, :cond_bb

    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_c1

    :cond_bb
    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_c1
    iput-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 170
    :cond_c3
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 171
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 172
    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_d3

    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_d5

    :cond_d3
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    :goto_d5
    return-wide v3

    .line 152
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v3    # "skipped":J
    .restart local v6    # "assetFileDescriptorLength":J
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "assetFileDescriptorOffset":J
    .restart local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_d6
    :try_start_d6
    new-instance v5, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    const/16 v9, 0x7d8

    const/4 v10, 0x0

    invoke-direct {v5, v10, v9}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v5

    .line 131
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_df
    new-instance v5, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    const/16 v9, 0x7d8

    const/4 v10, 0x0

    invoke-direct {v5, v10, v9}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v5

    .line 104
    .end local v3    # "skipped":J
    .end local v6    # "assetFileDescriptorLength":J
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v13    # "assetFileDescriptorOffset":J
    .end local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_e8
    move-object/from16 v16, v4

    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open file descriptor for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_104
    .catch Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException; {:try_start_d6 .. :try_end_104} :catch_11e
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_104} :catch_10c

    const/16 v5, 0x7d0

    :try_start_106
    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v3
    :try_end_10a
    .catch Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException; {:try_start_106 .. :try_end_10a} :catch_11e
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_10a} :catch_10a

    .line 158
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :catch_10a
    move-exception v0

    goto :goto_10f

    :catch_10c
    move-exception v0

    const/16 v5, 0x7d0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    :goto_10f
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    .line 161
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_118

    .line 162
    const/16 v4, 0x7d5

    goto :goto_11a

    .line 163
    :cond_118
    const/16 v4, 0x7d0

    :goto_11a
    invoke-direct {v3, v0, v4}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v3

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :catch_11e
    move-exception v0

    .line 157
    .local v0, "e":Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
    throw v0
.end method

.method public read([BII)I
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 177
    if-nez p3, :cond_4

    .line 178
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    .line 180
    return v4

    .line 186
    :cond_e
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_16

    move v1, p3

    goto :goto_1c

    :cond_16
    int-to-long v5, p3

    :try_start_17
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    :goto_1c
    move v0, v1

    .line 187
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_3c

    move v0, v1

    .line 190
    .local v0, "bytesRead":I
    nop

    .line 192
    if-ne v0, v4, :cond_2e

    .line 193
    return v4

    .line 195
    :cond_2e
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_38

    .line 196
    int-to-long v1, v0

    sub-long/2addr v4, v1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 198
    :cond_38
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesTransferred(I)V

    .line 199
    return v0

    .line 188
    .end local v0    # "bytesRead":I
    :catch_3c
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v1
.end method
