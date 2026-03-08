.class public Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;
.super Ljava/lang/Object;
.source "AuthSpaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItem"
.end annotation


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private seasonId:J

.field private seriesId:J

.field private type:I


# direct methods
.method public constructor <init>(JLjava/lang/String;IJJ)V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-wide p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->id:J

    .line 410
    iput-object p3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->name:Ljava/lang/String;

    .line 411
    iput p4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->type:I

    .line 412
    iput-wide p5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->seasonId:J

    .line 413
    iput-wide p7, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->seriesId:J

    .line 414
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 416
    iget-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonId()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->seasonId:J

    return-wide v0
.end method

.method public getSeriesId()J
    .locals 2

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->seriesId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$MenuItem;->type:I

    return v0
.end method
