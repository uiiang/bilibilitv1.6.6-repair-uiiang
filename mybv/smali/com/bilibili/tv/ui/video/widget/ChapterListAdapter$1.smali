.class Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$1;
.super Ljava/lang/Object;
.source "ChapterListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->focusCurrentChapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$1;->this$0:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 144
    const-string v1, "ChapterListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[focusCurrentChapter delayed] itemView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-eqz v0, :cond_3e

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 147
    const-string v1, "ChapterListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[focusCurrentChapter delayed] requestFocus result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_3e
    return-void
.end method
