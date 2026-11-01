.class public final Lmybl/AppSeasonBadgesLoader$Badge;
.super Ljava/lang/Object;
.source "AppSeasonBadgesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/AppSeasonBadgesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Badge"
.end annotation


# instance fields
.field public final bgColor:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lmybl/AppSeasonBadgesLoader$Badge;->text:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lmybl/AppSeasonBadgesLoader$Badge;->bgColor:Ljava/lang/String;

    .line 50
    return-void
.end method
