.class public Lcom/bilibili/tv/api/search/BiliSearchResultNew;
.super Ljava/lang/Object;
.source "BiliSearchResultNew.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/api/search/BiliSearchResultNew$Movie;,
        Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;,
        Lcom/bilibili/tv/api/search/BiliSearchResultNew$Upuser;,
        Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;,
        Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public archive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;",
            ">;"
        }
    .end annotation
.end field

.field public movie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;",
            ">;"
        }
    .end annotation
.end field

.field public season:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;",
            ">;"
        }
    .end annotation
.end field

.field public trackId:Ljava/lang/String;

.field public upuser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Upuser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/search/BiliSearchResultNew$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->trackId:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bilibili/tv/api/search/BiliSearchResultNew;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
