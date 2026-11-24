.class public Lmybl/BiliLiveContent;
.super Ljava/lang/Object;
.source "BiliLiveContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/BiliLiveContent$playUrlResponse;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmybl/BiliLiveContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAcceptQuality:[I

.field public mArea:Ljava/lang/String;

.field public mAreaId:I

.field public mCorner:Ljava/lang/String;

.field public mCover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field public mCurrentQuality:I

.field public mFace:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "face"
    .end annotation
.end field

.field public mIndex:I

.field public mIsRound:Z

.field public mIsTv:I

.field public mOnline:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "online"
    .end annotation
.end field

.field public mParsedTime:J

.field public mPlayFormat:Ljava/lang/String;

.field public mPlayUrl:Ljava/lang/String;

.field public mPlayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRealUrl:Ljava/lang/String;

.field public mRoomId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "roomid"
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field public mUid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uid"
    .end annotation
.end field

.field public mUname:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uname"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lmybl/BiliLiveContent$1;

    invoke-direct {v0}, Lmybl/BiliLiveContent$1;-><init>()V

    sput-object v0, Lmybl/BiliLiveContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x2710

    iput v0, p0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmybl/BiliLiveContent;->mParsedTime:J

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x2710

    iput v0, p0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmybl/BiliLiveContent;->mAreaId:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmybl/BiliLiveContent;->mOnline:J

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmybl/BiliLiveContent;->mUid:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmybl/BiliLiveContent;->mParsedTime:J

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/BiliLiveContent;->mRealUrl:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmybl/BiliLiveContent;->mRoomId:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    .line 198
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayUrl()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string v0, "BiliLiveContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlayUrl: \u5f00\u59cb\u83b7\u53d6\u64ad\u653e\u5730\u5740, roomId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmybl/BiliLiveContent;->mRoomId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v4

    .line 97
    const-string v5, "BiliLiveContent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPlayUrl: Cookie\u957f\u5ea6="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_b2

    move v0, v1

    :goto_3b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", hasSESSDATA="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v4, :cond_50

    const-string v6, "SESSDATA="

    .line 98
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    const/4 v1, 0x1

    :cond_50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 100
    new-instance v1, Lmybl/BiliLiveContent$2;

    invoke-direct {v1, p0, v4}, Lmybl/BiliLiveContent$2;-><init>(Lmybl/BiliLiveContent;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 154
    :try_start_68
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    const-string v4, "BiliLiveContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlayUrl: \u5b8c\u6210, \u603b\u8017\u65f6="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, mPlayUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x32

    iget-object v6, p0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_a6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_b1} :catch_ba

    .line 159
    :goto_b1
    return v0

    .line 97
    :cond_b2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3b

    .line 155
    :cond_b7
    :try_start_b7
    const-string v1, "null"
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b9} :catch_ba

    goto :goto_a6

    .line 157
    :catch_ba
    move-exception v0

    .line 158
    const-string v1, "BiliLiveContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlayUrl: \u5f02\u5e38, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, -0x1

    goto :goto_b1
.end method

.method public hasPlayUrl()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasPlayUrlResolved()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmybl/BiliLiveContent;->mRealUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiliLive{roomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmybl/BiliLiveContent;->mRoomId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lmybl/BiliLiveContent;->mAreaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-wide v0, p0, Lmybl/BiliLiveContent;->mOnline:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-wide v0, p0, Lmybl/BiliLiveContent;->mUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-object v0, p0, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-wide v0, p0, Lmybl/BiliLiveContent;->mParsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-object v0, p0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lmybl/BiliLiveContent;->mRealUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget v0, p0, Lmybl/BiliLiveContent;->mRoomId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 180
    return-void
.end method
