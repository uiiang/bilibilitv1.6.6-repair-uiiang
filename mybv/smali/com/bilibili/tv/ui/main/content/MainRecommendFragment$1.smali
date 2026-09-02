.class Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;
.super Ljava/lang/Object;
.source "MainRecommendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->loadAppFeed(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

.field final synthetic val$accessKey:Ljava/lang/String;

.field final synthetic val$isLoadMore:Z

.field final synthetic val$isPrefetch:Z

.field final synthetic val$startIdx:J


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;JLjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    iput-wide p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$startIdx:J

    iput-object p4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$accessKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$isPrefetch:Z

    iput-boolean p6, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$isLoadMore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$startIdx:J

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->val$accessKey:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lmybl/AppRecommendLoader;->fetch(JLjava/lang/String;I)Lmybl/AppRecommendLoader$Result;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 154
    if-nez v1, :cond_13

    .line 206
    :goto_12
    return-void

    .line 157
    :cond_13
    new-instance v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;Lmybl/AppRecommendLoader$Result;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12
.end method
