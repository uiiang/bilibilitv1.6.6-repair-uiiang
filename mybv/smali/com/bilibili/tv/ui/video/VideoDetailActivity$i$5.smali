.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field final synthetic val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;Lcom/bilibili/tv/widget/DrawLinearLayout;)V
    .locals 0

    .prologue
    .line 4018
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$5;->val$wrapper:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    .line 4022
    return-void
.end method
