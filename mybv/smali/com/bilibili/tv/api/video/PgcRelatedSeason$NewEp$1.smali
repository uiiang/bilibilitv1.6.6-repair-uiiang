.class Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp$1;
.super Ljava/lang/Object;
.source "PgcRelatedSeason.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    invoke-direct {v0, p1}, Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp$1;->createFromParcel(Landroid/os/Parcel;)Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;
    .locals 1

    .prologue
    .line 106
    new-array v0, p1, [Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp$1;->newArray(I)[Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    move-result-object v0

    return-object v0
.end method
