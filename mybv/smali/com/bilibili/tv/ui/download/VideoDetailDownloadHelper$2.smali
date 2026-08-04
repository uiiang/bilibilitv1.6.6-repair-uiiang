.class final Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;
.super Ljava/lang/Object;
.source "VideoDetailDownloadHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->showDownloadDialog(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bvid:Ljava/lang/String;

.field final synthetic val$cid:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$coverUrl:Ljava/lang/String;

.field final synthetic val$duration:J

.field final synthetic val$finalAvid:J

.field final synthetic val$qualities:[Ljava/lang/String;

.field final synthetic val$selectedQuality:[I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$upName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$finalAvid:J

    iput-object p4, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$bvid:Ljava/lang/String;

    iput-wide p5, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$cid:J

    iput-object p7, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$title:Ljava/lang/String;

    iput-object p8, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$coverUrl:Ljava/lang/String;

    iput-object p9, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$upName:Ljava/lang/String;

    iput-wide p10, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$duration:J

    iput-object p12, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$qualities:[Ljava/lang/String;

    iput-object p13, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$selectedQuality:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14

    .prologue
    .line 68
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$finalAvid:J

    iget-object v4, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$bvid:Ljava/lang/String;

    iget-wide v5, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$cid:J

    iget-object v7, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$title:Ljava/lang/String;

    iget-object v8, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$coverUrl:Ljava/lang/String;

    iget-object v9, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$upName:Ljava/lang/String;

    iget-wide v10, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$duration:J

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$qualities:[Ljava/lang/String;

    iget-object v12, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;->val$selectedQuality:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    aget-object v12, v0, v12

    # invokes: Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->startDownload(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    invoke-static/range {v1 .. v12}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->access$000(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 79
    return-void
.end method
