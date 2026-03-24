.class final Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special$1;
.super Ljava/lang/Object;
.source "BiliSearchResultNew.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;

    invoke-direct {v0, p1}, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special$1;->createFromParcel(Landroid/os/Parcel;)Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;
    .locals 1

    .prologue
    .line 265
    new-array v0, p1, [Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special$1;->newArray(I)[Lcom/bilibili/tv/api/search/BiliSearchResultNew$Special;

    move-result-object v0

    return-object v0
.end method
