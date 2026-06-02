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
    .line 169
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$tagsSize:I

    iput p4, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    if-ltz v0, :cond_11

    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$tagsSize:I

    if-ge v0, v1, :cond_11

    .line 173
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalOldSelected:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->c(I)V

    .line 175
    :cond_11
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    if-ltz v0, :cond_22

    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$tagsSize:I

    if-ge v0, v1, :cond_22

    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$1;->val$finalPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->c(I)V

    .line 178
    :cond_22
    return-void
.end method
