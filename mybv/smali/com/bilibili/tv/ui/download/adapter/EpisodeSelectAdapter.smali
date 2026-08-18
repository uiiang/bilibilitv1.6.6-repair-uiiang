.class public Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "EpisodeSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;,
        Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLOR_CHECKED:I

.field private static final COLOR_UNCHECKED:I


# instance fields
.field private context:Landroid/content/Context;

.field private episodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;

.field private selectedEpisodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private videoCoverUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "#FB7299"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->COLOR_CHECKED:I

    .line 26
    const-string v0, "#CCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->COLOR_UNCHECKED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    .line 39
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->episodeList:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;)Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;

    return-object v0
.end method

.method private estimateFileSize(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)J
    .locals 4

    .prologue
    .line 173
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    if-lez v0, :cond_d

    .line 174
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 176
    :goto_c
    return-wide v0

    :cond_d
    const-wide/32 v0, 0x6400000

    goto :goto_c
.end method

.method private formatFileSize(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 183
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_1b
    return-object v0

    .line 185
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_36

    .line 186
    const-string v0, "%.2fKB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 187
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_50

    .line 188
    const-string v0, "%.2fMB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 190
    :cond_50
    const-string v0, "%.2fGB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->episodeList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->episodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->a(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;I)V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->episodeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->estimateFileSize(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)J

    move-result-wide v2

    .line 70
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->episodeSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->firstFrame:Ljava/lang/String;

    .line 74
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_45
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->videoCoverUrl:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 75
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->videoCoverUrl:Ljava/lang/String;

    .line 77
    :cond_4b
    if-eqz v0, :cond_96

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_96

    .line 78
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageURI(Ljava/lang/String;)V

    .line 84
    :goto_58
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->checkBox:Landroid/widget/TextView;

    if-eqz v1, :cond_9f

    const-string v0, "\u2713"

    :goto_68
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->checkBox:Landroid/widget/TextView;

    if-eqz v1, :cond_a2

    sget v0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->COLOR_CHECKED:I

    :goto_71
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->rootView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$1;-><init>(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->rootView:Landroid/view/View;

    if-eqz v1, :cond_a5

    const-string v0, "#1AFB7299"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_88
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->rootView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$2;-><init>(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void

    .line 80
    :cond_96
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$EpisodeViewHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    goto :goto_58

    .line 85
    :cond_9f
    const-string v0, "\u25cb"

    goto :goto_68

    .line 86
    :cond_a2
    sget v0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->COLOR_UNCHECKED:I

    goto :goto_71

    .line 101
    :cond_a5
    const/4 v0, 0x0

    goto :goto_88
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedEpisodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    return-object v0
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 130
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->episodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 131
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 133
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->d()V

    .line 134
    return-void
.end method

.method public setOnEpisodeClickListener(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;

    .line 45
    return-void
.end method

.method public setVideoCoverUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->videoCoverUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toggleSelectAll()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->episodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 149
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->unselectAll()V

    .line 153
    :goto_11
    return-void

    .line 151
    :cond_12
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectAll()V

    goto :goto_11
.end method

.method public unselectAll()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectedEpisodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 141
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->d()V

    .line 142
    return-void
.end method
