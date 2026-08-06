.class public Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;
.super Landroid/app/Activity;
.source "EpisodeSelectActivity.java"


# static fields
.field public static final EXTRA_AVID:Ljava/lang/String; = "avid"

.field public static final EXTRA_BVID:Ljava/lang/String; = "bvid"

.field public static final EXTRA_COVER:Ljava/lang/String; = "cover"

.field public static final EXTRA_EPISODES:Ljava/lang/String; = "episodes"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_UP_NAME:Ljava/lang/String; = "up_name"

.field private static final TAG:Ljava/lang/String; = "EpisodeSelect"


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

.field private avid:J

.field private bvid:Ljava/lang/String;

.field private cancelButton:Landroid/widget/Button;

.field private cover:Ljava/lang/String;

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

.field private episodeListView:Landroid/support/v7/widget/RecyclerView;

.field private selectAllCheckbox:Landroid/widget/TextView;

.field private selectedCountText:Landroid/widget/TextView;

.field private startDownloadButton:Landroid/widget/Button;

.field private title:Ljava/lang/String;

.field private totalSizeText:Landroid/widget/TextView;

.field private upName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->startDownload()V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->toggleSelectAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->updateSelectedInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private estimateFileSize(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)J
    .locals 4

    .prologue
    .line 317
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    if-lez v0, :cond_d

    .line 318
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 320
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

    .line 327
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    :goto_1b
    return-object v0

    .line 329
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_36

    .line 330
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

    .line 331
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_50

    .line 332
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

    .line 334
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

.method private initViews()V
    .locals 5

    .prologue
    .line 78
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    .line 79
    const v0, 0x7f08024f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->selectedCountText:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f080250

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->totalSizeText:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f080251

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->startDownloadButton:Landroid/widget/Button;

    .line 82
    const v0, 0x7f080252

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->cancelButton:Landroid/widget/Button;

    .line 83
    const v0, 0x7f08025a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->selectAllCheckbox:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f080254

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    const v1, 0x7f080255

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    const v2, 0x7f080256

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    iget-object v3, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->title:Ljava/lang/String;

    if-eqz v3, :cond_79

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89c6\u9891\u6807\u9898: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_79
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->upName:Ljava/lang/String;

    if-eqz v0, :cond_95

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UP\u4e3b: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->upName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_95
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    if-eqz v0, :cond_b5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u603b\u5206P\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_b5
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$1;-><init>(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->startDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$2;-><init>(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->selectAllCheckbox:Landroid/widget/TextView;

    new-instance v1, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$3;-><init>(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private setupAdapter()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 141
    :cond_c
    const-string v0, "EpisodeSelect"

    const-string v1, "episodeList is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_13
    return-void

    .line 145
    :cond_14
    new-instance v0, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->setVideoCoverUrl(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 151
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$4;-><init>(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->setOnEpisodeClickListener(Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter$OnEpisodeClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectAll()V

    .line 160
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->updateSelectedInfo()V

    .line 163
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$5;-><init>(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method public static start(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    const-string v1, "avid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 345
    const-string v1, "bvid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "cover"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "up_name"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v1, "episodes"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method private startDownload()V
    .locals 19

    .prologue
    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    if-nez v2, :cond_7

    .line 311
    :goto_6
    return-void

    .line 270
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->getSelectedEpisodes()Ljava/util/Set;

    move-result-object v3

    .line 271
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 272
    const-string v2, "\u8bf7\u9009\u62e9\u8981\u4e0b\u8f7d\u7684\u5206P"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 276
    :cond_22
    const-string v2, "EpisodeSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownload: selectedEpisodes count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v2, 0x0

    .line 280
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move/from16 v17, v2

    :goto_45
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 282
    iget-wide v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 283
    iget-object v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    .line 285
    const-string v3, "EpisodeSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownload: adding task for index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", partTitle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->avid:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->bvid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->cover:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->upName:Ljava/lang/String;

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    int-to-long v12, v2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    .line 299
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v2, p0

    .line 288
    invoke-static/range {v2 .. v16}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->startDownload(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 303
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    .line 304
    goto :goto_45

    .line 307
    :cond_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6dfb\u52a0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u89c6\u9891\u5230\u4e0b\u8f7d\u961f\u5217"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->finish()V

    goto/16 :goto_6
.end method

.method private toggleSelectAll()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    if-nez v0, :cond_5

    .line 137
    :goto_4
    return-void

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->getSelectedCount()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->unselectAll()V

    .line 136
    :goto_18
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->updateSelectedInfo()V

    goto :goto_4

    .line 134
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->selectAll()V

    goto :goto_18
.end method

.method private updateSelectedInfo()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    if-nez v0, :cond_7

    .line 260
    :goto_6
    return-void

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->getSelectedCount()I

    move-result v6

    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->selectedCountText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u9009\u62e9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const-wide/16 v0, 0x0

    .line 246
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->adapter:Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/adapter/EpisodeSelectAdapter;->getSelectedEpisodes()Ljava/util/Set;

    move-result-object v2

    .line 247
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 249
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->estimateFileSize(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 250
    goto :goto_38

    .line 251
    :cond_57
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->totalSizeText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u603b\u5927\u5c0f: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->startDownloadButton:Landroid/widget/Button;

    if-lez v6, :cond_9b

    move v0, v4

    :goto_78
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v6, v0, :cond_9d

    .line 258
    :goto_83
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->selectAllCheckbox:Landroid/widget/TextView;

    if-eqz v4, :cond_9f

    const-string v0, "\u2713 \u5168\u9009/\u53d6\u6d88\u5168\u9009"

    :goto_89
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->selectAllCheckbox:Landroid/widget/TextView;

    if-eqz v4, :cond_a2

    const-string v0, "#FB7299"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    :cond_9b
    move v0, v5

    .line 254
    goto :goto_78

    :cond_9d
    move v4, v5

    .line 257
    goto :goto_83

    .line 258
    :cond_9f
    const-string v0, "\u25cb \u5168\u9009/\u53d6\u6d88\u5168\u9009"

    goto :goto_89

    .line 259
    :cond_a2
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_96
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    const-string v1, "avid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->avid:J

    .line 64
    const-string v1, "bvid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->bvid:Ljava/lang/String;

    .line 65
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->title:Ljava/lang/String;

    .line 66
    const-string v1, "cover"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->cover:Ljava/lang/String;

    .line 67
    const-string v1, "up_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->upName:Ljava/lang/String;

    .line 68
    const-string v1, "episodes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    .line 70
    const-string v0, "EpisodeSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->avid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bvid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->bvid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "EpisodeSelect"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: episodeList size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->initViews()V

    .line 74
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->setupAdapter()V

    .line 75
    return-void

    .line 71
    :cond_9a
    const/4 v0, 0x0

    goto :goto_88
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 178
    const/16 v0, 0x52

    if-ne p1, v0, :cond_b

    .line 179
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->toggleSelectAll()V

    move v0, v1

    .line 230
    :goto_a
    return v0

    .line 183
    :cond_b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 188
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 189
    :goto_15
    if-eqz v0, :cond_7a

    .line 190
    iget-object v4, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, v4, :cond_33

    move v0, v1

    .line 198
    :goto_1c
    if-eqz v0, :cond_21

    .line 199
    packed-switch p1, :pswitch_data_7c

    .line 214
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->cancelButton:Landroid/widget/Button;

    if-eq v3, v0, :cond_29

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->startDownloadButton:Landroid/widget/Button;

    if-ne v3, v0, :cond_2c

    .line 215
    :cond_29
    packed-switch p1, :pswitch_data_84

    .line 230
    :cond_2c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a

    .line 188
    :cond_31
    const/4 v0, 0x0

    goto :goto_15

    .line 194
    :cond_33
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_15

    .line 201
    :pswitch_38
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    move v0, v1

    .line 202
    goto :goto_a

    .line 204
    :pswitch_3f
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->startDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->startDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :goto_4c
    move v0, v1

    .line 209
    goto :goto_a

    .line 207
    :cond_4e
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_4c

    .line 218
    :pswitch_54
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    if-lez v0, :cond_78

    .line 219
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->episodeListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_78

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_78
    move v0, v1

    .line 226
    goto :goto_a

    :cond_7a
    move v0, v2

    goto :goto_1c

    .line 199
    :pswitch_data_7c
    .packed-switch 0x15
        :pswitch_38
        :pswitch_3f
    .end packed-switch

    .line 215
    :pswitch_data_84
    .packed-switch 0x13
        :pswitch_54
    .end packed-switch
.end method
