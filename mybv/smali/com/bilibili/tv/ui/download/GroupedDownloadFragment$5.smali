.class Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$5;
.super Ljava/lang/Object;
.source "GroupedDownloadFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->groupTasks(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$5;->this$0:Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/bilibili/tv/ui/download/model/DownloadTask;Lcom/bilibili/tv/ui/download/model/DownloadTask;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 219
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCreateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 220
    cmp-long v2, v0, v4

    if-lez v2, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    cmp-long v0, v0, v4

    if-gez v0, :cond_17

    const/4 v0, -0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    check-cast p2, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment$5;->compare(Lcom/bilibili/tv/ui/download/model/DownloadTask;Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    move-result v0

    return v0
.end method
