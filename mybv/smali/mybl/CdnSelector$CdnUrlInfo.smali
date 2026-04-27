.class public Lmybl/CdnSelector$CdnUrlInfo;
.super Ljava/lang/Object;
.source "CdnSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/CdnSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdnUrlInfo"
.end annotation


# instance fields
.field public backupUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bandwidth:I

.field public cdnHost:Ljava/lang/String;

.field public codecid:I

.field public id:I

.field public score:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    .line 57
    iput p3, p0, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmybl/CdnSelector$CdnUrlInfo;->backupUrls:Ljava/util/List;

    .line 59
    return-void
.end method
