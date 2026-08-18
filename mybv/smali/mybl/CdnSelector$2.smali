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
.field final synthetic val$info:Lmybl/CdnSelector$CdnUrlInfo;

.field final synthetic val$isLive:Z


# direct methods
.method constructor <init>(ZLmybl/CdnSelector$CdnUrlInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 110
    iput-boolean p1, p0, Lmybl/CdnSelector$2;->val$isLive:Z

    iput-object p2, p0, Lmybl/CdnSelector$2;->val$info:Lmybl/CdnSelector$CdnUrlInfo;

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
    .line 110
    invoke-virtual {p0}, Lmybl/CdnSelector$2;->call()Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    return-object v0
.end method

.method public call()Lmybl/CdnSelector$RaceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    iget-boolean v0, p0, Lmybl/CdnSelector$2;->val$isLive:Z

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lmybl/CdnSelector$2;->val$info:Lmybl/CdnSelector$CdnUrlInfo;

    # invokes: Lmybl/CdnSelector;->testLiveUrl(Lmybl/CdnSelector$CdnUrlInfo;)Lmybl/CdnSelector$RaceResult;
    invoke-static {v0}, Lmybl/CdnSelector;->access$000(Lmybl/CdnSelector$CdnUrlInfo;)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    .line 116
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lmybl/CdnSelector$2;->val$info:Lmybl/CdnSelector$CdnUrlInfo;

    # invokes: Lmybl/CdnSelector;->testUrl(Lmybl/CdnSelector$CdnUrlInfo;)Lmybl/CdnSelector$RaceResult;
    invoke-static {v0}, Lmybl/CdnSelector;->access$100(Lmybl/CdnSelector$CdnUrlInfo;)Lmybl/CdnSelector$RaceResult;

    move-result-object v0

    goto :goto_a
.end method
