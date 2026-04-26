.class public Lcom/bilibili/tv/api/video/PgcRelatedSeason;
.super Ljava/lang/Object;
.source "PgcRelatedSeason.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/api/video/PgcRelatedSeason$Style;,
        Lcom/bilibili/tv/api/video/PgcRelatedSeason$IconFont;,
        Lcom/bilibili/tv/api/video/PgcRelatedSeason$Rating;,
        Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;,
        Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;,
        Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/PgcRelatedSeason;",
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

.field public badgeInfo:Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "badge_info"
    .end annotation
.end field

.field public cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field public iconFont:Lcom/bilibili/tv/api/video/PgcRelatedSeason$IconFont;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "icon_font"
    .end annotation
.end field

.field public newEp:Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "new_ep"
    .end annotation
.end field

.field public rating:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Rating;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rating"
    .end annotation
.end field

.field public seasonId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "season_id"
    .end annotation
.end field

.field public stat:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stat"
    .end annotation
.end field

.field public styles:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "styles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/PgcRelatedSeason$Style;",
            ">;"
        }
    .end annotation
.end field

.field public subtitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "subtitle"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/PgcRelatedSeason$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->seasonId:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->title:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->cover:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->subtitle:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->url:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->badge:Ljava/lang/String;

    .line 301
    const-class v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->badgeInfo:Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;

    .line 302
    const-class v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->newEp:Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    .line 303
    const-class v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->stat:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;

    .line 304
    const-class v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$Rating;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$Rating;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->rating:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Rating;

    .line 305
    const-class v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$IconFont;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$IconFont;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->iconFont:Lcom/bilibili/tv/api/video/PgcRelatedSeason$IconFont;

    .line 306
    sget-object v0, Lcom/bilibili/tv/api/video/PgcRelatedSeason$Style;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->styles:Ljava/util/List;

    .line 307
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public toBiliVideoDetail()Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 4

    .prologue
    .line 331
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 333
    iget v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->seasonId:I

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSeasonOId:I

    .line 335
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->badgeInfo:Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;

    if-eqz v1, :cond_1d

    .line 336
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->badgeInfo:Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->badgeInfo:Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;->bgColor:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    .line 340
    :cond_1d
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->newEp:Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    if-eqz v1, :cond_2d

    .line 341
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->newEp:Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;->indexShow:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPubDateText:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->newEp:Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;->cover:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 344
    :cond_2d
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 345
    :cond_39
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->cover:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 348
    :cond_3d
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 350
    new-instance v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 351
    iget-object v1, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->stat:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;

    if-eqz v1, :cond_64

    .line 352
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v2, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->stat:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;->view:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 353
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v2, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->stat:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;->danmaku:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 359
    :goto_63
    return-object v0

    .line 355
    :cond_64
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    const-string v2, "0"

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 356
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    const-string v2, "0"

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    goto :goto_63
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->seasonId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->cover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->badge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->badgeInfo:Lcom/bilibili/tv/api/video/PgcRelatedSeason$BadgeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->newEp:Lcom/bilibili/tv/api/video/PgcRelatedSeason$NewEp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->stat:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Stat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 325
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->rating:Lcom/bilibili/tv/api/video/PgcRelatedSeason$Rating;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 326
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->iconFont:Lcom/bilibili/tv/api/video/PgcRelatedSeason$IconFont;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 327
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcRelatedSeason;->styles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 328
    return-void
.end method
