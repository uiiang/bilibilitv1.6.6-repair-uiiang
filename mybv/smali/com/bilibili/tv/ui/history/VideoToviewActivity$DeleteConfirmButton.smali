.class final Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;
.super Ljava/lang/Object;
.source "VideoToviewActivity.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/VideoToviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeleteConfirmButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbl/agb;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 269
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 272
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    sget-wide v4, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_avid:J

    invoke-interface {v0, v4, v5, v2, v1}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoToviews(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 273
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_avid:J

    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoToviewActivity;->d:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 275
    const/4 v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->current_pos:I

    .line 276
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoToviewActivity;->a:Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->access$300(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_3e

    .line 278
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$g;->d()V

    .line 280
    :cond_3e
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->b(I)V

    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    # getter for: Lcom/bilibili/tv/ui/history/VideoToviewActivity;->d:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->access$200(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$DeleteConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->c(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 284
    :cond_5b
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 285
    return-void
.end method
