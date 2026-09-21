.class Lmybl/CdnSelector$2;
.super Ljava/lang/Object;
.source "CdnSelector.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lmybl/CdnSelector$RaceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lmybl/CdnSelector$RaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failedResults:Ljava/util/List;

.field final synthetic val$info:Lmybl/CdnSelector$CdnUrlInfo;

.field final synthetic val$isLive:Z


# direct methods
.method constructor <init>(ZLmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 134
    iput-boolean p1, p0, Lmybl/CdnSelector$2;->val$isLive:Z

    iput-object p2, p0, Lmybl/CdnSelector$2;->val$info:Lmybl/CdnSelector$CdnUrlInfo;

    iput-object p3, p0, Lmybl/CdnSelector$2;->val$failedResults:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lmybl/CdnSelector$2;->call()Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    return-object v0
.end method

.method public call()Lmybl/CdnSelector$RaceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, Lmybl/CdnSelector$2;->val$isLive:Z

    if-eqz v0, :cond_d

    .line 138
    iget-object v0, p0, Lmybl/CdnSelector$2;->val$info:Lmybl/CdnSelector$CdnUrlInfo;

    iget-object v1, p0, Lmybl/CdnSelector$2;->val$failedResults:Ljava/util/List;

    # invokes: Lmybl/CdnSelector;->testLiveUrl(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
    invoke-static {v0, v1}, Lmybl/CdnSelector;->access$000(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    .line 140
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lmybl/CdnSelector$2;->val$info:Lmybl/CdnSelector$CdnUrlInfo;

    iget-object v1, p0, Lmybl/CdnSelector$2;->val$failedResults:Ljava/util/List;

    # invokes: Lmybl/CdnSelector;->testUrl(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
    invoke-static {v0, v1}, Lmybl/CdnSelector;->access$100(Lmybl/CdnSelector$CdnUrlInfo;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    goto :goto_c
.end method
