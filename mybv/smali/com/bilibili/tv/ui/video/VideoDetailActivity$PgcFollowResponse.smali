.class public final Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;
.super Lbl/vn;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PgcFollowResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final follow:Z

.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)V
    .locals 0

    .prologue
    .line 1986
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 1987
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->follow:Z

    .line 1988
    return-void
.end method

.method private getFollowAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 1992
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/PgcInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 1993
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/PgcInfo;

    move-result-object v0

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 1994
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/PgcInfo;

    move-result-object v0

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    :cond_1e
    const-string v0, "\u8ffd\u756a"

    .line 1992
    :goto_20
    return-object v0

    .line 1994
    :cond_21
    const-string v0, "\u8ffd\u5267"

    goto :goto_20
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1983
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->follow:Z

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2002(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 2000
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 2001
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->getFollowAction()Ljava/lang/String;

    move-result-object v0

    .line 2002
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2003
    iget-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->follow:Z

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u6210\u529f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2002
    :goto_2d
    invoke-static {v1, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2004
    return-void

    .line 2003
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u53d6\u6d88"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 2008
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->getFollowAction()Ljava/lang/String;

    move-result-object v0

    .line 2010
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2011
    iget-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;->follow:Z

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5931\u8d25"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2010
    :goto_26
    invoke-static {v1, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2012
    return-void

    .line 2011
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5931\u8d25"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method
