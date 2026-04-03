.class public final Lbl/aft$a;
.super Ljava/lang/Object;
.source "aft.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field final c:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lbl/aft$a;->a:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lbl/aft$a;->b:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 62
    iput-object p3, p0, Lbl/aft$a;->c:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 63
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 68
    iget-object v0, p0, Lbl/aft$a;->b:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lbl/aft$a;->b:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 69
    iget-object v0, p0, Lbl/aft$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lbl/aft$a;->b:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/abd;->prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    :cond_16
    iget-object v0, p0, Lbl/aft$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lbl/aft$a;->b:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, p0, Lbl/aft$a;->c:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbl/xg;->a(Landroid/content/Context;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
