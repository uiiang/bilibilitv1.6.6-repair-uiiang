.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$staffView:Lcom/bilibili/tv/widget/DrawTextView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/widget/DrawTextView;)V
    .locals 0

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$staffView:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$staffView:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    .line 2583
    return-void
.end method
