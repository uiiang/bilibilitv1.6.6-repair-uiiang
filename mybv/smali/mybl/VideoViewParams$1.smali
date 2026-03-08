.class final Lmybl/VideoViewParams$1;
.super Ljava/lang/Object;
.source "VideoViewParams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/VideoViewParams;->testAndSelectBestCDNAsync(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$audios:Lorg/json/JSONArray;

.field final synthetic val$videos:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lmybl/VideoViewParams$1;->val$videos:Lorg/json/JSONArray;

    iput-object p2, p0, Lmybl/VideoViewParams$1;->val$audios:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x1

    # setter for: Lmybl/VideoViewParams;->isTestingCDN:Z
    invoke-static {v0}, Lmybl/VideoViewParams;->access$002(Z)Z

    .line 42
    :try_start_5
    iget-object v0, p0, Lmybl/VideoViewParams$1;->val$videos:Lorg/json/JSONArray;

    iget-object v1, p0, Lmybl/VideoViewParams$1;->val$audios:Lorg/json/JSONArray;

    # invokes: Lmybl/VideoViewParams;->testAndSelectBestCDNInternal(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    invoke-static {v0, v1}, Lmybl/VideoViewParams;->access$100(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 44
    # setter for: Lmybl/VideoViewParams;->isTestingCDN:Z
    invoke-static {v2}, Lmybl/VideoViewParams;->access$002(Z)Z

    .line 46
    return-void

    .line 44
    :catchall_10
    move-exception v0

    # setter for: Lmybl/VideoViewParams;->isTestingCDN:Z
    invoke-static {v2}, Lmybl/VideoViewParams;->access$002(Z)Z

    .line 45
    throw v0
.end method
