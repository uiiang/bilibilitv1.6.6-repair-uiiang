.class final Lcom/bilibili/tv/ui/history/VideoToviewActivity$ClearConfirmButton;
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
    name = "ClearConfirmButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$ClearConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbl/agb;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$ClearConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->c(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$ClearConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->c(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 296
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 299
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-interface {v0, v2, v1}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoToviews(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 300
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 301
    const-wide/16 v0, 0x3e8

    :try_start_36
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3f

    .line 302
    :goto_39
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$ClearConfirmButton;->this$0:Lcom/bilibili/tv/ui/history/VideoToviewActivity;

    # invokes: Lcom/bilibili/tv/ui/history/VideoToviewActivity;->o()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->access$400(Lcom/bilibili/tv/ui/history/VideoToviewActivity;)V

    .line 303
    return-void

    .line 301
    :catch_3f
    move-exception v0

    goto :goto_39
.end method
