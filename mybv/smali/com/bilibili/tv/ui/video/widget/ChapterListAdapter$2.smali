.class Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;
.super Ljava/lang/Object;
.source "ChapterListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->a(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

.field final synthetic val$chapterPos:I

.field final synthetic val$startTime:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;II)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;->val$chapterPos:I

    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;->val$startTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->access$000(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;)Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;->this$0:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    # getter for: Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->access$000(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;)Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;->val$chapterPos:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;->val$startTime:I

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;->onChapterClick(II)V

    .line 215
    :cond_15
    return-void
.end method
