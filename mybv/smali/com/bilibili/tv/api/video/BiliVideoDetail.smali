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
        Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;
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

.field public mRedirectLink:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "redirect_link"
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

.field public mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sp"
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
    .locals 0

    .prologue
    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    .line 1025
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 1026
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 1030
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    .line 1031
    const-class v0, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliUser;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 1032
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 1033
    sget-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    .line 1034
    sget-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 1035
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    .line 1036
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 1037
    const-class v0, Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    .line 1038
    const-class v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    .line 1039
    const-class v0, Lcom/bilibili/tv/api/video/BiliMovie;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliMovie;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mMovie:Lcom/bilibili/tv/api/video/BiliMovie;

    .line 1040
    sget-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mJumpAid:I

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    .line 1044
    sget-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$MovieRecommend;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->movieRecommendList:Ljava/util/List;

    .line 1045
    const-class v0, Lcom/bilibili/tv/api/video/OwnerExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/OwnerExt;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    .line 1046
    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 4

    .prologue
    .line 953
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 954
    int-to-long v2, p0

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 955
    iput-object p2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 956
    iput-object p1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 957
    return-object v0
.end method


# virtual methods
.method public canBp()Z
    .locals 1

    .prologue
    .line 195
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
    .line 191
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
    .line 211
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
    .line 961
    if-ne p1, p0, :cond_3

    .line 988
    :goto_2
    return-void

    .line 964
    :cond_3
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 965
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 966
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 968
    :cond_13
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    .line 969
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    .line 970
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 971
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    .line 972
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    iput-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 973
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 974
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    .line 975
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    .line 976
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 977
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 978
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    .line 979
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 980
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    .line 981
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 982
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    .line 983
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    .line 984
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mMovie:Lcom/bilibili/tv/api/video/BiliMovie;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mMovie:Lcom/bilibili/tv/api/video/BiliMovie;

    .line 985
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    .line 986
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->movieRecommendList:Ljava/util/List;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->movieRecommendList:Ljava/util/List;

    .line 987
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 396
    if-ne p0, p1, :cond_4

    .line 399
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
    .line 380
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isPageListEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    const/4 v0, 0x0

    .line 388
    :goto_7
    return-object v0

    .line 383
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

    .line 384
    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    goto :goto_7

    .line 388
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
    .line 260
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
    .line 256
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
    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mCoins:I

    .line 248
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getDanmakus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
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
    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mFavorites:I

    .line 241
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 267
    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getPlays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
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
    .line 219
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
    .line 278
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

    .line 282
    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v1, :cond_11

    .line 284
    :try_start_5
    iget-object v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_10} :catch_12

    move-result v0

    .line 289
    :cond_11
    :goto_11
    return v0

    .line 285
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public getShares()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mShares:I

    .line 234
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getSpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
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
    .line 271
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    if-eqz v0, :cond_9

    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;->mSpid:I

    .line 274
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getUGCseason()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 144
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSeasonOId:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_a

    .line 175
    :cond_9
    :goto_9
    return-void

    .line 145
    :cond_a
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 146
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$2;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$2;-><init>(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 153
    :try_start_17
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 154
    const-string v2, "View"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "ugc_season"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "sections"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sections:Lcom/alibaba/fastjson/JSONArray;

    .line 155
    const-string v2, "View"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "ugc_season"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    .line 158
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    move v2, v1

    .line 159
    :goto_5a
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sections:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sections:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 161
    const-string v3, "title"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string v4, "episodes"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 163
    const-string v5, "id"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    .line 164
    const-string v6, "type"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 166
    iget-object v6, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    new-instance v7, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    invoke-direct {v7, v3, v4, v5, v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 168
    :goto_8b
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9d

    .line 169
    iget-object v3, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_9a} :catch_a1

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 159
    :cond_9d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5a

    .line 172
    :catch_a1
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public hasVipQuality()Z
    .locals 1

    .prologue
    .line 215
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
    .line 403
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    long-to-int v0, v0

    return v0
.end method

.method public increaseCoins(I)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-nez v0, :cond_5

    .line 304
    :goto_4
    return-void

    .line 303
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
    .line 293
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-nez v0, :cond_5

    .line 297
    :goto_4
    return-void

    .line 296
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

    .line 371
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

    .line 375
    :goto_18
    return v0

    .line 374
    :cond_19
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    .line 375
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
    .line 354
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
    .line 350
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
    .line 342
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

    .line 199
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
    .line 346
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
    .line 203
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

    .line 366
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

    .line 187
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
    .line 183
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
    .line 207
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
    .line 338
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
    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-nez v0, :cond_5

    .line 362
    :goto_4
    return-void

    .line 361
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
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bangumi"
    .end annotation

    .prologue
    .line 108
    const-string v0, "season"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 109
    return-void
.end method

.method public setCoinStatus(Z)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-nez v0, :cond_5

    .line 334
    :goto_4
    return-void

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-boolean p1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mCoin:Z

    goto :goto_4
.end method

.method public setFavoriteStatus(Z)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-nez v0, :cond_5

    .line 315
    :goto_4
    return-void

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    if-eq v0, p1, :cond_19

    .line 311
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mFavorites:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mFavorites:I

    .line 314
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-boolean p1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    goto :goto_4

    .line 312
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
    .line 319
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    if-nez v0, :cond_5

    .line 327
    :goto_4
    return-void

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iget-boolean v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    if-eq v0, p1, :cond_19

    .line 323
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mLikes:I

    .line 326
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    iput-boolean p1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    goto :goto_4

    .line 324
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
    .line 392
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
    .line 995
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 996
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 999
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mArcType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1001
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1002
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRights:Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1004
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1005
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1006
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1007
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1008
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRequestUser:Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1009
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1010
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiSponsorRankList:Lcom/bilibili/bangumi/api/BangumiSponsorRankList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1011
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSp:Lcom/bilibili/tv/api/video/BiliVideoDetail$Special;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1012
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mMovie:Lcom/bilibili/tv/api/video/BiliMovie;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1013
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1014
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDownloadableInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mJumpAid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    iget-wide v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1017
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->movieRecommendList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1018
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ownerExt:Lcom/bilibili/tv/api/video/OwnerExt;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1019
    return-void
.end method
