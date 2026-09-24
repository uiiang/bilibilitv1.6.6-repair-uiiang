.class Lmybl/VideoViewParams$1;
.super Ljava/lang/Object;
.source "VideoViewParams.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/VideoViewParams;->sortUrlsByCdnScore(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 424
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lmybl/VideoViewParams$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 427
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v0}, Lmybl/CdnSelector;->isMcdn(Ljava/lang/String;)Z

    move-result v2

    .line 432
    invoke-static {v1}, Lmybl/CdnSelector;->isMcdn(Ljava/lang/String;)Z

    move-result v3

    .line 433
    if-eq v2, v3, :cond_20

    .line 434
    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    .line 438
    :goto_1d
    return v0

    .line 434
    :cond_1e
    const/4 v0, -0x1

    goto :goto_1d

    .line 436
    :cond_20
    invoke-static {v0}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v0

    .line 437
    invoke-static {v1}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v1

    .line 438
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_1d
.end method
