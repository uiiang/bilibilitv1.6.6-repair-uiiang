.class public Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;
.super Ljava/lang/Object;
.source "VideoApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static CommonParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->CommonParams:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_50

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    .line 59
    :goto_14
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    const-string v1, "plat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    const-string v1, "aid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    const-string v1, "qn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void

    .line 57
    :cond_50
    sget-object v0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->CommonParams:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    goto :goto_14
.end method


# virtual methods
.method public build()Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;
    .locals 3

    .prologue
    .line 93
    new-instance v1, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;-><init>(ILcom/bilibili/tv/api/video/VideoApiService$1;)V

    .line 94
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;->putParams([Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;->access$100(Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;[Ljava/lang/String;)V

    .line 95
    return-object v1
.end method

.method public setAutoPlay(Ljava/lang/String;)Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;
    .locals 2

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    const-string v1, "autoplay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_12
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;
    .locals 2

    .prologue
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 70
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_12
    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;
    .locals 2

    .prologue
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    const-string v1, "trackid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_12
    return-object p0
.end method
