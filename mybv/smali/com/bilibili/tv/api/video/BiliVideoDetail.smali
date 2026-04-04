.class public Lcom/bilibili/tv/api/video/BiliVideoDetail;
.super Ljava/lang/Object;
.source "BiliVideoDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/api/video/BiliVideoDetail$History;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$MovieRecommend;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$JsonResponse;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;,
        Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public episodes:Lcom/alibaba/fastjson/JSONArray;

.field public hideUpIcon:Z

.field public mArcType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "copyright"
    .end annotation
.end field

.field public mAvid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "aid"
    .end annotation
.end field

.field public mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "season"
    .end annotation
.end field

.field public mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bp"
    .end annotation
.end field

.field public mBusinessType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "business"
    .end annotation
.end field

.field public mBvid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bvid"
    .end annotation
.end field

.field public mCheeseInfo:Lcom/alibaba/fastjson/JSONObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cheese"
    .end annotation
.end field

.field public mCid:J

.field public mCover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic"
    .end annotation
.end field

.field public mCreatedTimestamp:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pubdate"
    .end annotation
.end field

.field public mDescription:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "desc"
    .end annotation
.end field

.field public mDownloadableInfo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "downloadable_detail"
    .end annotation
.end field

.field public mDuration:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "duration"
    .end annotation
.end field

.field public mFirstFrame:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "first_frame"
    .end annotation
.end field

.field public mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "history"
    .end annotation
.end field

.field public mJumpAid:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "jump_aid"
    .end annotation
.end field

.field public mMovie:Lcom/bilibili/tv/api/video/BiliMovie;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "movie"
    .end annotation
.end field

.field public mOwner:Lcom/bilibili/tv/api/video/BiliUser;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "owner"
    .end annotation
.end field

.field public mPage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "page"
    .end annotation
.end field

.field public mPageList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;",
            ">;"
        }
    .end annotation
.end field

.field public mPgcLabel:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pgc_label"
    .end annotation
.end field

.field public mProgress:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "progress"
    .end annotation
.end field

.field public mRedirectLink:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "redirect_link"
    .end annotation
.end field

.field public mRedirectUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "redirect_url"
    .end annotation
.end field

.field public mRelatedList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "relates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "req_user"
    .end annotation
.end field

.field public mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rights"
    .end annotation
.end field

.field public mSeasonOId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "season_id"
    .end annotation
.end field

.field public mShowTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "show_title"
    .end annotation
.end field

.field public mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sp"
    .end annotation
.end field

.field public mStaffList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "staff"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;",
            ">;"
        }
    .end annotation
.end field

.field public mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stat"
    .end annotation
.end field

.field public mTags:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tag"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;",
            ">;"
        }
    .end annotation
.end field

.field public mTid:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tid"
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field public mTypeName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tname"
    .end annotation
.end field

.field public mViewAt:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "view_at"
    .end annotation
.end field

.field public movieRecommendList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "recommend"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$MovieRecommend;",
            ">;"
        }
    .end annotation
.end field

.field public ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "owner_ext"
    .end annotation
.end field

.field public season_title:Ljava/lang/String;

.field public sectionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sections:Lcom/alibaba/fastjson/JSONArray;

.field public sourceEpisode:Ljava/lang/Object;

.field public sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

.field public ugcSeason:Lcom/alibaba/fastjson/JSONObject;

.field public vtText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 1050
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 1081
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    .line 1083
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    .line 1084
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    .line 1086
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1087
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 1088
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 1089
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    .line 1090
    const-class v0, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliUser;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 1091
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 1092
    sget-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    .line 1093
    sget-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 1094
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    .line 1095
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 1096
    const-class v0, Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    .line 1097
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    .line 1098
    const-class v0, Lcom/bilibili/tv/api/video/BiliMovie;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliMovie;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mMovie:Lcom/bilibili/tv/api/video/BiliMovie;

    .line 1099
    sget-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    .line 1100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 1101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mJumpAid:I

    .line 1102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    .line 1103
    sget-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$MovieRecommend;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->movieRecommendList:Ljava/util/List;

    .line 1104
    const-class v0, Lcom/bilibili/tv/api/video/OwnerExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/OwnerExt;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    .line 1105
    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 4

    .prologue
    .line 1012
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 1013
    int-to-long v2, p0

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 1014
    iput-object p2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1015
    iput-object p1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 1016
    return-object v0
.end method


# virtual methods
.method public canBp()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanBp:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanCharge:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public canDownload()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanDownload:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public canMovie()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanMovie:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public clone(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 2

    .prologue
    .line 1020
    if-ne p1, p0, :cond_3

    .line 1047
    :goto_2
    return-void

    .line 1023
    :cond_3
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 1024
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1025
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1027
    :cond_13
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    .line 1028
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    .line 1029
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 1030
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    .line 1031
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 1032
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 1033
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 1034
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    .line 1035
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 1036
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 1037
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    .line 1038
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 1039
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    .line 1040
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 1041
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    .line 1042
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    .line 1043
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mMovie:Lcom/bilibili/tv/api/video/BiliMovie;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mMovie:Lcom/bilibili/tv/api/video/BiliMovie;

    .line 1044
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    .line 1045
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->movieRecommendList:Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->movieRecommendList:Ljava/util/List;

    .line 1046
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 425
    if-ne p0, p1, :cond_4

    .line 428
    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_12

    iget-wide v2, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    :cond_12
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public findPageByCid(I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isPageListEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 410
    const/4 v0, 0x0

    .line 417
    :goto_7
    return-object v0

    .line 412
    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 413
    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    goto :goto_7

    .line 417
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    goto :goto_7
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public getCoins()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    .line 267
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mCoins:I

    .line 269
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getDanmakus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "0"

    goto :goto_8
.end method

.method public getFavorites()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mFavorites:I

    .line 262
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v0, :cond_9

    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 296
    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getPlays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "0"

    goto :goto_8
.end method

.method public getReplys()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mComments:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "0"

    goto :goto_8
.end method

.method public getSeasonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "0"

    goto :goto_8
.end method

.method public getSeasonIdInt()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v1, :cond_11

    .line 313
    :try_start_5
    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_10} :catch_12

    move-result v0

    .line 318
    :cond_11
    :goto_11
    return v0

    .line 314
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public getShares()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mShares:I

    .line 255
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getSpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;->mSpname:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public getSpid()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    if-eqz v0, :cond_9

    .line 301
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;->mSpid:I

    .line 303
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getStaffList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    return-object v0
.end method

.method public getUGCseason()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 196
    :cond_11
    return-void

    .line 186
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    move v1, v2

    .line 187
    :goto_1a
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    .line 188
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 189
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    .line 190
    if-eqz v3, :cond_41

    move v0, v2

    .line 191
    :goto_2f
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_41

    .line 192
    iget-object v4, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 187
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a
.end method

.method public hasStaff()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasVipQuality()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->vipQuality:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 432
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    long-to-int v0, v0

    return v0
.end method

.method public increaseCoins(I)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-nez v0, :cond_5

    .line 333
    :goto_4
    return-void

    .line 332
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mCoins:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mCoins:I

    goto :goto_4
.end method

.method public increaseShares(I)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-nez v0, :cond_5

    .line 326
    :goto_4
    return-void

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mShares:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mShares:I

    goto :goto_4
.end method

.method public is3rdVideo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-nez v0, :cond_19

    :cond_17
    move v0, v1

    .line 404
    :goto_18
    return v0

    .line 403
    :cond_19
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    .line 404
    const-string v2, "vupload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "bangumi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "movie"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "bili"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3b
    move v0, v1

    goto :goto_18

    :cond_3d
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public isAttention()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->isAttention()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isCoinVideo()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mCoin:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isFavoriteVideo()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isForbidReprint()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 220
    iget v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    if-ne v1, v0, :cond_10

    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iget-boolean v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->noReprint:Z

    if-eqz v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isLikeVideo()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/OwnerExt;->hasLive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isMangoVideo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v0, :cond_23

    const-string v2, "hunan"

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    move v0, v1

    goto :goto_22
.end method

.method public isOriginalVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 208
    iget v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPageListEmpty()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isRoundLive()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/OwnerExt;->hasRoundLive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isValidAvid()Z
    .locals 4

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setAttentionStatus(Z)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-nez v0, :cond_5

    .line 391
    :goto_4
    return-void

    .line 390
    :cond_5
    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_a
    iput v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mAttention:I

    goto :goto_4

    :cond_d
    const/16 v0, -0x3e7

    goto :goto_a
.end method

.method public setBangumi(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bangumi"
    .end annotation

    .prologue
    .line 116
    const-string v0, "season"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_3d

    .line 118
    new-instance v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 119
    const-string v1, "season_id"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_1f

    .line 121
    iget-object v2, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 123
    :cond_1f
    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    const-string v2, "is_finish"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mIsFinish:I

    .line 125
    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    const-string v2, "newest_ep_index"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mNewestEpIndex:Ljava/lang/String;

    .line 127
    :cond_3d
    return-void
.end method

.method public setCoinStatus(Z)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-nez v0, :cond_5

    .line 363
    :goto_4
    return-void

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-boolean p1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mCoin:Z

    goto :goto_4
.end method

.method public setFavoriteStatus(Z)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-nez v0, :cond_5

    .line 344
    :goto_4
    return-void

    .line 339
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    if-eq v0, p1, :cond_19

    .line 340
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mFavorites:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mFavorites:I

    .line 343
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-boolean p1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    goto :goto_4

    .line 341
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mFavorites:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mFavorites:I

    goto :goto_19
.end method

.method public setLikeStatus(Z)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-nez v0, :cond_5

    .line 356
    :goto_4
    return-void

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    if-eq v0, p1, :cond_19

    .line 352
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mLikes:I

    .line 355
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-boolean p1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    goto :goto_4

    .line 353
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mLikes:I

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{BiliVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1054
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1055
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1058
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1060
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1061
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1063
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1064
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1065
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1066
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1067
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1068
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1069
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1070
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1071
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mMovie:Lcom/bilibili/tv/api/video/BiliMovie;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1072
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1073
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1074
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mJumpAid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1076
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->movieRecommendList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1077
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1078
    return-void
.end method
