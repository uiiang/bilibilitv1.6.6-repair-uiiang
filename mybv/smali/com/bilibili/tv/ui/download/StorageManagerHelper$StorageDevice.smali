.class public Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;
.super Ljava/lang/Object;
.source "StorageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/StorageManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageDevice"
.end annotation


# instance fields
.field private mounted:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private removable:Z

.field private totalSpace:J

.field private usableSpace:J

.field private writable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZJJ)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->name:Ljava/lang/String;

    .line 263
    iput-object p2, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->path:Ljava/lang/String;

    .line 264
    iput-boolean p3, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->removable:Z

    .line 265
    iput-boolean p4, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->mounted:Z

    .line 266
    iput-boolean p5, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->writable:Z

    .line 267
    iput-wide p6, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->totalSpace:J

    .line 268
    iput-wide p8, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->usableSpace:J

    .line 269
    return-void
.end method


# virtual methods
.method public getFormattedTotalSpace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->totalSpace:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/StorageManagerHelper;->formatStorageSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedUsableSpace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->usableSpace:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/StorageManagerHelper;->formatStorageSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpace()J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->totalSpace:J

    return-wide v0
.end method

.method public getUsableSpace()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->usableSpace:J

    return-wide v0
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->mounted:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->writable:Z

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->usableSpace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isMounted()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->mounted:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->removable:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->writable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    const-string v0, "%s (%s, \u53ef\u7528 %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 304
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->getFormattedTotalSpace()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->getFormattedUsableSpace()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 303
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
