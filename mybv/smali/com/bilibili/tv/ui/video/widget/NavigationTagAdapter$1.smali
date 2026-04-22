.class Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;
.super Ljava/lang/Object;
.source "NavigationTagAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

.field final synthetic val$finalOldSelected:I

.field final synthetic val$finalPosition:I

.field final synthetic val$tagsSize:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;III)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$tagsSize:I

    iput p4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    if-ltz v0, :cond_2b

    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$tagsSize:I

    if-ge v0, v1, :cond_2b

    .line 172
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->c(I)V

    .line 173
    const-string v0, "NavigationTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedPosition | notifyItemChanged\u65e7\u4f4d\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_2b
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    if-ltz v0, :cond_56

    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$tagsSize:I

    if-ge v0, v1, :cond_56

    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->c(I)V

    .line 177
    const-string v0, "NavigationTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedPosition | notifyItemChanged\u65b0\u4f4d\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_56
    return-void
.end method
