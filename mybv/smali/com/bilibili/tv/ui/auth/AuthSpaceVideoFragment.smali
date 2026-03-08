.class public final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
.super Lbl/ady;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;
    }
.end annotation


# static fields
.field private static final COLUMNS:I = 0x2


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

.field public attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

.field private callback:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

.field private firstLoad:Z

.field private hasMore:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/view/View;

.field private headerTitle:Landroid/widget/TextView;

.field private loading:Z

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mid:J

.field private mode:Ljava/lang/String;

.field private page:I

.field private targetId:J

.field private totalCount:I

.field private upName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 45
    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 46
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    .line 47
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    .line 60
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    return v0
.end method

.method static synthetic access$308(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    return v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    return v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 266
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 267
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadAllVideos()V

    .line 275
    :goto_10
    return-void

    .line 268
    :cond_11
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 269
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeasonVideos()V

    goto :goto_10

    .line 270
    :cond_1f
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 271
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeriesVideos()V

    goto :goto_10

    .line 273
    :cond_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    goto :goto_10
.end method

.method private initHeader()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 131
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 133
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    .line 135
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_90

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_6d

    .line 142
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_6d

    .line 184
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-interface {v0, v1, v2, v3}, Lmybl/MyBiliApiService;->getRelation(Ljava/lang/String;J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 185
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 204
    :cond_6d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_8f

    .line 205
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    if-lez v0, :cond_9c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u6761"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_8f
    :goto_8f
    return-void

    .line 138
    :cond_90
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 205
    :cond_9c
    const-string v0, ""

    goto :goto_8c

    .line 207
    :cond_9f
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 209
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_b4

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_bd

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 215
    :cond_bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_8f

    .line 216
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    if-lez v0, :cond_e0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4e2a\u89c6\u9891"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_dc
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8f

    :cond_e0
    const-string v0, ""

    goto :goto_dc

    .line 218
    :cond_e3
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_f8

    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_f8
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_101

    .line 224
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 226
    :cond_101
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_8f

    .line 227
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    if-lez v0, :cond_125

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4e2a\u89c6\u9891"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_120
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8f

    :cond_125
    const-string v0, ""

    goto :goto_120
.end method

.method private loadAllVideos()V
    .locals 6

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 279
    if-nez v1, :cond_7

    .line 342
    :cond_6
    :goto_6
    return-void

    .line 281
    :cond_7
    const-class v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    .line 282
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_6

    .line 285
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    iget v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const/16 v5, 0x14

    invoke-interface/range {v0 .. v5}, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;->loadArchiveVideos(Ljava/lang/String;JII)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private loadSeasonVideos()V
    .locals 10

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 346
    if-nez v0, :cond_7

    .line 415
    :cond_6
    :goto_6
    return-void

    .line 349
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_6

    .line 351
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 352
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    const/4 v6, 0x0

    const/16 v7, 0x1e

    iget v8, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const-string v9, "333.1387"

    invoke-interface/range {v0 .. v9}, Lmybl/MyBiliApiService;->getSeasonsArchivesList(Ljava/lang/String;JJZIILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 353
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private loadSeriesVideos()V
    .locals 13

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 419
    if-nez v0, :cond_7

    .line 495
    :cond_6
    :goto_6
    return-void

    .line 421
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    .line 422
    if-eqz v4, :cond_6

    .line 424
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 425
    invoke-virtual {v4}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v4}, Lbl/mg;->d()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    const/4 v8, 0x1

    const-string v9, "desc"

    const/16 v10, 0x1e

    iget v11, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const-string v12, "333.1387"

    invoke-interface/range {v0 .. v12}, Lmybl/MyBiliApiService;->getSeriesArchives(Ljava/lang/String;JJJZLjava/lang/String;IILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 426
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method public static newInstance(Ljava/lang/String;JJ)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;-><init>()V

    .line 64
    iput-object p0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    .line 65
    iput-wide p1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 66
    iput-wide p3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    .line 67
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;-><init>()V

    .line 72
    iput-object p0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    .line 73
    iput-wide p1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 74
    iput-wide p3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    .line 75
    iput-object p5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    .line 76
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 100
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 101
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 102
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 103
    if-nez v0, :cond_16

    .line 119
    :goto_15
    return-void

    .line 105
    :cond_16
    new-instance v2, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 106
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 107
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 108
    const v2, 0x7f0600de

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 109
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 110
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 111
    new-instance v3, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 112
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 113
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    .line 114
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 115
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->callback:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

    .line 118
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->initHeader()V

    goto :goto_15
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-eqz v1, :cond_14

    .line 250
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 252
    :cond_14
    return v0
.end method

.method public d_()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 259
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 260
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    .line 261
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    .line 262
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0a008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 83
    const v0, 0x7f080199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerLayout:Landroid/view/View;

    .line 84
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f08019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f08016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 88
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 89
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->d_()V

    .line 94
    return-object v1
.end method

.method public updateHeaderInfo(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 234
    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u89c6\u9891"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "all"

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6761"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_41
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_46
    return-void
.end method
