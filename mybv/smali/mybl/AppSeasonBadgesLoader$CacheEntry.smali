.class final Lmybl/AppSeasonBadgesLoader$CacheEntry;
.super Ljava/lang/Object;
.source "AppSeasonBadgesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/AppSeasonBadgesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmybl/AppSeasonBadgesLoader$Badge;",
            ">;"
        }
    .end annotation
.end field

.field final time:J


# direct methods
.method constructor <init>(Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmybl/AppSeasonBadgesLoader$Badge;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lmybl/AppSeasonBadgesLoader$CacheEntry;->data:Ljava/util/Map;

    .line 206
    iput-wide p2, p0, Lmybl/AppSeasonBadgesLoader$CacheEntry;->time:J

    .line 207
    return-void
.end method
