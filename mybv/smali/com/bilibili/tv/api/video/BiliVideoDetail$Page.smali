.class public Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
.super Ljava/lang/Object;
.source "BiliVideoDetail.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/BiliVideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlreadyPlayed:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field public mCid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cid"
    .end annotation
.end field

.field public mFrom:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "from"
    .end annotation
.end field

.field public mHasAlias:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "has_alias"
    .end annotation
.end field

.field public mLink:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "link"
    .end annotation
.end field

.field public mOffsite:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "offsite"
    .end annotation
.end field

.field public mPage:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "page"
    .end annotation
.end field

.field public mRawVid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rich_vid"
    .end annotation
.end field

.field public mTid:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tid"
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "part"
    .end annotation
.end field

.field public mVid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "vid"
    .end annotation
.end field

.field public mWebLink:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "weblink"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 537
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mLink:Ljava/lang/String;

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_36
    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mOffsite:Ljava/lang/String;

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4f

    :goto_4a
    iput-boolean v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mAlreadyPlayed:Z

    .line 634
    return-void

    :cond_4d
    move v0, v2

    .line 630
    goto :goto_36

    :cond_4f
    move v1, v2

    .line 633
    goto :goto_4a
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public getRaw_vid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public m3clone()Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    return-object v0
.end method

.method public setRaw_vid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    .line 584
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 609
    iget-wide v4, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 610
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mRawVid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mHasAlias:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 617
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mWebLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mOffsite:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mAlreadyPlayed:Z

    if-eqz v0, :cond_41

    :goto_3b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 620
    return-void

    :cond_3f
    move v0, v2

    .line 616
    goto :goto_2a

    :cond_41
    move v1, v2

    .line 619
    goto :goto_3b
.end method
