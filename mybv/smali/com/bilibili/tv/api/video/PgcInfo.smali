.class public Lcom/bilibili/tv/api/video/PgcInfo;
.super Ljava/lang/Object;
.source "PgcInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/api/video/PgcInfo$Section;,
        Lcom/bilibili/tv/api/video/PgcInfo$Episode;,
        Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;,
        Lcom/bilibili/tv/api/video/PgcInfo$Stat;,
        Lcom/bilibili/tv/api/video/PgcInfo$NewEp;,
        Lcom/bilibili/tv/api/video/PgcInfo$Rating;,
        Lcom/bilibili/tv/api/video/PgcInfo$Area;,
        Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;,
        Lcom/bilibili/tv/api/video/PgcInfo$Producer;,
        Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;,
        Lcom/bilibili/tv/api/video/PgcInfo$IconFont;,
        Lcom/bilibili/tv/api/video/PgcInfo$SeasonStat;,
        Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;,
        Lcom/bilibili/tv/api/video/PgcInfo$Season;,
        Lcom/bilibili/tv/api/video/PgcInfo$Progress;,
        Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public areas:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "areas"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field public cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field public episodes:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "episodes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$Episode;",
            ">;"
        }
    .end annotation
.end field

.field public evaluate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "evaluate"
    .end annotation
.end field

.field public mediaId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "media_id"
    .end annotation
.end field

.field public newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "new_ep"
    .end annotation
.end field

.field public producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "producer"
    .end annotation
.end field

.field public rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rating"
    .end annotation
.end field

.field public seasonId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "season_id"
    .end annotation
.end field

.field public seasons:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "seasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$Season;",
            ">;"
        }
    .end annotation
.end field

.field public sections:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "section"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$Section;",
            ">;"
        }
    .end annotation
.end field

.field public stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stat"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field public total:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "total"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field public typeName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type_name"
    .end annotation
.end field

.field public upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "up_info"
    .end annotation
.end field

.field public userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_status"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/bilibili/tv/api/video/PgcInfo$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/PgcInfo$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/PgcInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->mediaId:I

    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->cover:Ljava/lang/String;

    .line 831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    .line 832
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->typeName:Ljava/lang/String;

    .line 833
    sget-object v0, Lcom/bilibili/tv/api/video/PgcInfo$Area;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->areas:Ljava/util/List;

    .line 834
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    .line 835
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    .line 836
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->evaluate:Ljava/lang/String;

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->total:I

    .line 839
    sget-object v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    .line 840
    sget-object v0, Lcom/bilibili/tv/api/video/PgcInfo$Section;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    .line 841
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    .line 842
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    .line 843
    sget-object v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    .line 844
    const-class v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iput-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    .line 845
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public getAreaString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->areas:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->areas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 876
    :cond_c
    const-string v0, ""

    .line 885
    :goto_e
    return-object v0

    .line 878
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->areas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 880
    if-lez v1, :cond_25

    .line 881
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->areas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Area;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Area;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 885
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getRatingString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 889
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    if-nez v0, :cond_7

    .line 890
    const-string v0, ""

    .line 892
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2605 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bilibili/tv/api/video/PgcInfo;->rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    iget-wide v4, v4, Lcom/bilibili/tv/api/video/PgcInfo$Rating;->score:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->typeName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 897
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->typeName:Ljava/lang/String;

    .line 913
    :goto_e
    return-object v0

    .line 899
    :cond_f
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    packed-switch v0, :pswitch_data_2a

    .line 913
    :pswitch_14
    const-string v0, "PGC"

    goto :goto_e

    .line 901
    :pswitch_17
    const-string v0, "\u756a\u5267"

    goto :goto_e

    .line 903
    :pswitch_1a
    const-string v0, "\u7535\u5f71"

    goto :goto_e

    .line 905
    :pswitch_1d
    const-string v0, "\u7eaa\u5f55\u7247"

    goto :goto_e

    .line 907
    :pswitch_20
    const-string v0, "\u56fd\u521b"

    goto :goto_e

    .line 909
    :pswitch_23
    const-string v0, "\u7535\u89c6\u5267"

    goto :goto_e

    .line 911
    :pswitch_26
    const-string v0, "\u7efc\u827a"

    goto :goto_e

    .line 899
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_14
        :pswitch_26
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->mediaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->cover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 858
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->areas:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 861
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 862
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 863
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 864
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->evaluate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    iget v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 867
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 868
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 869
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 870
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 871
    iget-object v0, p0, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 872
    return-void
.end method
