.class Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;
.super Ljava/lang/Object;
.source "NavigationTagAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->a(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

.field final synthetic val$startIdx:I

.field final synthetic val$tagPos:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 259
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;->val$tagPos:I

    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;->val$startIdx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 262
    if-eqz p2, :cond_17

    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$000(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->access$000(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;->val$tagPos:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$2;->val$startIdx:I

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;->onTagFocus(II)V

    .line 267
    :cond_17
    return-void
.end method
