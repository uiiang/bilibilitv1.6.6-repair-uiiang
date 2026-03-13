.class public Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;
.super Ljava/lang/Object;
.source "BiliVideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/BiliVideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionInfo"
.end annotation


# instance fields
.field public episodes:Lcom/alibaba/fastjson/JSONArray;

.field public id:I

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;II)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->title:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->episodes:Lcom/alibaba/fastjson/JSONArray;

    .line 129
    iput p3, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->id:I

    .line 130
    iput p4, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->type:I

    .line 131
    return-void
.end method
