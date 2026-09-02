.class public final Lmybl/AppRecommendLoader$Result;
.super Ljava/lang/Object;
.source "AppRecommendLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/AppRecommendLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;"
        }
    .end annotation
.end field

.field public final end:Z

.field public final nextIdx:J


# direct methods
.method constructor <init>(Ljava/util/List;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lmybl/AppRecommendLoader$Result;->contents:Ljava/util/List;

    .line 52
    iput-wide p2, p0, Lmybl/AppRecommendLoader$Result;->nextIdx:J

    .line 53
    iput-boolean p4, p0, Lmybl/AppRecommendLoader$Result;->end:Z

    .line 54
    return-void
.end method
