.class final Lmybl/CdnSelector$1;
.super Ljava/lang/Object;
.source "CdnSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmybl/CdnSelector$CdnUrlInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lmybl/CdnSelector$CdnUrlInfo;

    check-cast p2, Lmybl/CdnSelector$CdnUrlInfo;

    invoke-virtual {p0, p1, p2}, Lmybl/CdnSelector$1;->compare(Lmybl/CdnSelector$CdnUrlInfo;Lmybl/CdnSelector$CdnUrlInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lmybl/CdnSelector$CdnUrlInfo;Lmybl/CdnSelector$CdnUrlInfo;)I
    .locals 2

    .prologue
    .line 90
    iget v0, p2, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    iget v1, p1, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
