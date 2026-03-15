.class final Lmybl/CdnSelector$3;
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
        "Lmybl/CdnSelector$RaceResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lmybl/CdnSelector$RaceResult;

    check-cast p2, Lmybl/CdnSelector$RaceResult;

    invoke-virtual {p0, p1, p2}, Lmybl/CdnSelector$3;->compare(Lmybl/CdnSelector$RaceResult;Lmybl/CdnSelector$RaceResult;)I

    move-result v0

    return v0
.end method

.method public compare(Lmybl/CdnSelector$RaceResult;Lmybl/CdnSelector$RaceResult;)I
    .locals 4

    .prologue
    .line 179
    iget-wide v0, p1, Lmybl/CdnSelector$RaceResult;->connectTime:J

    iget-wide v2, p2, Lmybl/CdnSelector$RaceResult;->connectTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method
