.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$1$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->d(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1$1;->val$scrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1$1;->val$scrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 243
    return-void
.end method
