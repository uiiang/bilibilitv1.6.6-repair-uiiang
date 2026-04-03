.class public Lcom/bilibili/tv/api/video/PgcInfo$Season;
.super Ljava/lang/Object;
.source "PgcInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/PgcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Season"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$Season;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public badge:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "badge"
    .end annotation
.end field

.field public cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field public horizontalCover1610:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "horizontal_cover_1610"
    .end annotation
.end field

.field public horizontalCover169:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "horizontal_cover_169"
    .end annotation
.end field

.field public iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "icon_font"
    .end annotation
.end field

.field public newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "new_ep"
    .end annotation
.end field

.field public seasonId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "season_id"
    .end annotation
.end field

.field public seasonTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "season_title"
    .end annotation
.end field

.field public stat:Lcom/bilibili/tv/api/video/PgcInfo$SeasonStat;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stat"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo$Season$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/PgcInfo$Season$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->cover:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->horizontalCover169:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->horizontalCover1610:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badge:Ljava/lang/String;

    .line 217
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    .line 218
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonStat;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->stat:Lcom/bilibili/tv/api/video/PgcInfo$SeasonStat;

    .line 219
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    .line 220
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getBestCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->cover:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->cover:Ljava/lang/String;

    .line 251
    :goto_12
    return-object v0

    .line 245
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->horizontalCover169:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->horizontalCover169:Ljava/lang/String;

    goto :goto_12

    .line 248
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->horizontalCover1610:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 249
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->horizontalCover1610:Ljava/lang/String;

    goto :goto_12

    .line 251
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->cover:Ljava/lang/String;

    goto :goto_12
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->cover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->horizontalCover169:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->horizontalCover1610:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->stat:Lcom/bilibili/tv/api/video/PgcInfo$SeasonStat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 239
    return-void
.end method
