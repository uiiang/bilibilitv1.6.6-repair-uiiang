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
.field public failed:Z

.field public fromCache:Z

.field public httpCode:I

.field public raceTime:J

.field public timeout:Z

.field public winningCdn:Ljava/lang/String;

.field public winningUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lmybl/CdnSelector$RaceResult;->winningUrl:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Lmybl/CdnSelector$RaceResult;->raceTime:J

    .line 78
    iput-boolean p5, p0, Lmybl/CdnSelector$RaceResult;->fromCache:Z

    .line 79
    return-void
.end method
