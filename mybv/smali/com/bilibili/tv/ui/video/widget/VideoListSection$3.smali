.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 127
    const-string v0, "ListSection"

    const-string v2, "========== onFocusChange START =========="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v2, "ListSection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFocusChange | sectionId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | hasFocus="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | manualFocusRequested="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 130
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | \u4fdd\u5b58\u7684focusPosition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 131
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | childCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 132
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | dataSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 133
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9c

    move v0, v1

    :goto_6c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz p2, :cond_1bd

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 137
    const-string v0, "ListSection"

    const-string v2, "onFocusChange | manualFocusRequested=true\uff0c\u8df3\u8fc7\u81ea\u52a8\u6062\u590d\uff08\u5df2\u7531requestFocusOnSavedPosition\u5904\u7406\uff09"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 139
    const-string v0, "ListSection"

    const-string v1, "onFocusChange | \u91cd\u7f6emanualFocusRequested=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_94
    const-string v0, "ListSection"

    const-string v1, "========== onFocusChange END =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 133
    :cond_9c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6c

    .line 141
    :cond_a7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    .line 142
    const-string v2, "ListSection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFocusChange | \u83b7\u5f97\u7126\u70b9(\u81ea\u52a8\u6a21\u5f0f) | \u9884\u671f\u6062\u590d\u5230position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/view/View;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_157

    .line 146
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getViewPosition(Landroid/view/View;)I
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Landroid/view/View;)I

    move-result v1

    .line 147
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isViewFullyVisible(Landroid/view/View;)Z
    invoke-static {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Landroid/view/View;)Z

    move-result v3

    .line 148
    const-string v4, "ListSection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFocusChange | restoreFocus\u8fd4\u56deview | \u9884\u671fposition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " | \u5b9e\u9645position="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " | viewClass="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " | isFullyVisible="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz v3, :cond_14f

    .line 155
    const-string v0, "ListSection"

    const-string v3, "onFocusChange | \u76ee\u6807view\u5df2\u5b8c\u5168\u53ef\u89c1\uff0c\u76f4\u63a5requestFocus\uff08\u65e0\u6eda\u52a8\uff09"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_120
    const-string v0, "ListSection"

    const-string v3, "onFocusChange | >>> requestFocus\u6267\u884c"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 161
    const-string v2, "ListSection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFocusChange | <<< requestFocus\u8fd4\u56de "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | \u6700\u7ec8\u7126\u70b9\u4f4d\u7f6e="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    .line 157
    :cond_14f
    const-string v0, "ListSection"

    const-string v3, "onFocusChange | \u76ee\u6807view\u672a\u5b8c\u5168\u53ef\u89c1\uff0crequestFocus\u53ef\u80fd\u89e6\u53d1\u6eda\u52a8"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_120

    .line 163
    :cond_157
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1b4

    .line 164
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 166
    const-string v3, "ListSection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFocusChange | restoreFocus\u8fd4\u56denull\uff0cfallback\u5230\u7b2c1\u4e2achild | \u9884\u671fposition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | fallbackPosition="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "ListSection"

    const-string v1, "onFocusChange | >>> fallback requestFocus\u6267\u884c"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 171
    const-string v1, "ListSection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFocusChange | <<< fallback requestFocus\u8fd4\u56de "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    .line 173
    :cond_1b4
    const-string v0, "ListSection"

    const-string v1, "onFocusChange | \u65e0\u5b50view\u53ef\u805a\u7126! childCount=0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    .line 177
    :cond_1bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveCurrentFocusFromRecyclerView()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 179
    const-string v0, "ListSection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange | \u5931\u53bb\u7126\u70b9\uff0c\u5df2\u4fdd\u5b58\u5f53\u524d\u7126\u70b9\u4f4d\u7f6e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94
.end method
