.class public Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;
.super Ljava/lang/Object;
.source "BiliVideoDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/BiliVideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hasHate:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hated"
    .end annotation
.end field

.field public hasLike:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "liked"
    .end annotation
.end field

.field public hasReport:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field public hateNum:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hates"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tag_id"
    .end annotation
.end field

.field public likeNum:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "likes"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tag_name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 867
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->hasReport:Z

    .line 911
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->hasReport:Z

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->id:I

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->name:Ljava/lang/String;

    .line 916
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->likeNum:I

    .line 917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->hateNum:I

    .line 918
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 906
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->likeNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->hateNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    return-void
.end method
