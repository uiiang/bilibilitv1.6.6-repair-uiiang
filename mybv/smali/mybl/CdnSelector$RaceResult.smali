.class public Lmybl/CdnSelector$RaceResult;
.super Ljava/lang/Object;
.source "CdnSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/CdnSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RaceResult"
.end annotation


# instance fields
.field public fromCache:Z

.field public raceTime:J

.field public winningCdn:Ljava/lang/String;

.field public winningUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lmybl/CdnSelector$RaceResult;->winningUrl:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    .line 69
    iput-wide p3, p0, Lmybl/CdnSelector$RaceResult;->raceTime:J

    .line 70
    iput-boolean p5, p0, Lmybl/CdnSelector$RaceResult;->fromCache:Z

    .line 71
    return-void
.end method
