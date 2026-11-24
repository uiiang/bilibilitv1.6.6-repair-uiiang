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
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 427
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-static {v2}, Lmybl/CdnSelector;->isMcdn(Ljava/lang/String;)Z

    move-result v4

    .line 432
    invoke-static {v3}, Lmybl/CdnSelector;->isMcdn(Ljava/lang/String;)Z

    move-result v5

    .line 433
    if-eq v4, v5, :cond_21

    .line 434
    if-eqz v4, :cond_1f

    .line 438
    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    .line 434
    goto :goto_1e

    .line 436
    :cond_21
    invoke-static {v2}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v2

    .line 437
    invoke-static {v3}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v3

    .line 438
    if-ge v3, v2, :cond_2d

    :goto_2b
    move v0, v1

    goto :goto_1e

    :cond_2d
    if-ne v3, v2, :cond_31

    const/4 v1, 0x0

    goto :goto_2b

    :cond_31
    move v1, v0

    goto :goto_2b
.end method
