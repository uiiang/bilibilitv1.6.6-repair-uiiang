.class Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;
.super Ljava/lang/Object;
.source "VideoCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->bindCompactHolder(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

.field final synthetic val$compactHolder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;I)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;->val$compactHolder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;->val$compactHolder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getRootLayout()Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 201
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;->val$compactHolder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getRootLayout()Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    .line 203
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->focusListener:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$4;->val$position:I

    invoke-interface {v0, v1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;->onItemFocus(IZ)V

    .line 206
    :cond_24
    return-void
.end method
