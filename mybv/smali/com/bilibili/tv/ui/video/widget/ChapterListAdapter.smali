.class public Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "ChapterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;,
        Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;,
        Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;,
        Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentChapterIndex:I

.field private focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;

.field private listener:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;)Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;

    return-object v0
.end method

.method private getNextChapterStartTime(Lorg/json/JSONArray;I)I
    .locals 3

    .prologue
    .line 102
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_17

    .line 103
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_14

    .line 105
    const-string v1, "from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    :goto_13
    return v0

    .line 102
    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 108
    :cond_17
    const v0, 0x7fffffff

    goto :goto_13
.end method

.method private isChildOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 242
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 250
    :goto_6
    return v0

    .line 248
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 244
    :cond_a
    if-eqz p1, :cond_18

    .line 245
    if-ne p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    .line 246
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 247
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 250
    goto :goto_6
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 172
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->context:Landroid/content/Context;

    .line 174
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->a(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    if-ltz p2, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_e

    .line 217
    :cond_d
    :goto_d
    return-void

    .line 184
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;

    .line 186
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-boolean v1, v0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->isCurrent:Z

    if-eqz v1, :cond_52

    .line 189
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    :goto_2b
    iget-boolean v1, v0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->isPlayed:Z

    if-eqz v1, :cond_5f

    .line 197
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 202
    :goto_34
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;

    if-eqz v1, :cond_45

    .line 203
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;

    iget-object v2, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, p2, v3}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;->setupFocusBoundary(Landroid/view/View;II)V

    .line 207
    :cond_45
    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->startTime:I

    .line 209
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->a:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$2;-><init>(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    .line 192
    :cond_52
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->playIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2b

    .line 199
    :cond_5f
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterViewHolder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_34
.end method

.method public attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 6

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3a

    if-ltz p1, :cond_3a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3a

    .line 158
    :try_start_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_3a

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 161
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_38} :catch_39

    .line 166
    :goto_38
    return-object v0

    .line 163
    :catch_39
    move-exception v0

    .line 166
    :cond_3a
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public focusCurrentChapter()V
    .locals 6

    .prologue
    .line 131
    const-string v0, "ChapterListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[focusCurrentChapter] currentChapterIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attachedRecyclerView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    if-ltz v0, :cond_6a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6a

    .line 133
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 134
    const-string v1, "ChapterListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[focusCurrentChapter] itemView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v0, :cond_6b

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 137
    const-string v1, "ChapterListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[focusCurrentChapter] requestFocus result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_6a
    :goto_6a
    return-void

    .line 139
    :cond_6b
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    .line 140
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$1;-><init>(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6a
.end method

.method public getChapterCount()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentChapterIndex()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    return v0
.end method

.method public getFocusedPosition(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 229
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_9

    :cond_7
    move v0, v1

    .line 238
    :cond_8
    :goto_8
    return v0

    .line 232
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 233
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 234
    if-eqz v2, :cond_20

    if-eq v2, p1, :cond_8

    invoke-direct {p0, p1, v2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->isChildOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 232
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_23
    move v0, v1

    .line 238
    goto :goto_8
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public scrollToCurrentChapter()V
    .locals 5

    .prologue
    .line 116
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    if-ltz v0, :cond_2d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2d

    .line 118
    :try_start_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2e

    .line 128
    :cond_2d
    :goto_2d
    return-void

    .line 120
    :catch_2e
    move-exception v0

    .line 122
    :try_start_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "scrollToPosition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_54} :catch_55

    goto :goto_2d

    .line 124
    :catch_55
    move-exception v0

    goto :goto_2d
.end method

.method public setChapters(Lorg/json/JSONArray;I)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    .line 75
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 76
    :cond_12
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->d()V

    .line 99
    :goto_15
    return-void

    :cond_16
    move v0, v1

    .line 80
    :goto_17
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_72

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_6b

    .line 83
    new-instance v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;

    invoke-direct {v4}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;-><init>()V

    .line 84
    const-string v5, "content"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->title:Ljava/lang/String;

    .line 85
    const-string v5, "from"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->startTime:I

    .line 86
    const-string v5, "to"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->endTime:I

    .line 87
    iget v2, v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->startTime:I

    if-ge v2, p2, :cond_6e

    move v2, v3

    :goto_47
    iput-boolean v2, v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->isPlayed:Z

    .line 88
    iget v2, v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->startTime:I

    if-gt v2, p2, :cond_70

    add-int/lit8 v2, v0, 0x1

    .line 89
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_5d

    add-int/lit8 v2, v0, 0x1

    .line 90
    invoke-direct {p0, p1, v2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->getNextChapterStartTime(Lorg/json/JSONArray;I)I

    move-result v2

    if-le v2, p2, :cond_70

    :cond_5d
    move v2, v3

    :goto_5e
    iput-boolean v2, v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->isCurrent:Z

    .line 92
    iget-boolean v2, v4, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;->isCurrent:Z

    if-eqz v2, :cond_66

    .line 93
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->currentChapterIndex:I

    .line 95
    :cond_66
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->chapters:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_6e
    move v2, v1

    .line 87
    goto :goto_47

    :cond_70
    move v2, v1

    .line 90
    goto :goto_5e

    .line 98
    :cond_72
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->d()V

    goto :goto_15
.end method

.method public setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->focusBoundaryHandler:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;

    .line 65
    return-void
.end method

.method public setOnChapterClickListener(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->listener:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;

    .line 61
    return-void
.end method
