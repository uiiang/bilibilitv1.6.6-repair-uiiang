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

.field private allVideoOrder:Ljava/lang/String;

.field public attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

.field private callback:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

.field private firstLoad:Z

.field private hasMore:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/view/View;

.field private headerTitle:Landroid/widget/TextView;

.field private hintSort:Landroid/widget/TextView;

.field private loading:Z

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mid:J

.field private mode:Ljava/lang/String;

.field private page:I

.field private sortDirection:Ljava/lang/String;

.field private sortReverse:Z

.field private targetId:J

.field private totalCount:I

.field private upName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 46
    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 47
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    .line 48
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    .line 62
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    .line 68
    const-string v0, "pubdate"

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    .line 70
    const-string v0, "desc"

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    return v0
.end method

.method static synthetic access$308(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    return v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    return v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 326
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 327
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadAllVideos()V

    .line 335
    :goto_10
    return-void

    .line 328
    :cond_11
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 329
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeasonVideos()V

    goto :goto_10

    .line 330
    :cond_1f
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 331
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeriesVideos()V

    goto :goto_10

    .line 333
    :cond_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    goto :goto_10
.end method

.method private initHeader()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 143
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_6d

    .line 152
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_6d

    .line 194
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

    .line 195
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 214
    :cond_6d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_8f

    .line 215
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    if-lez v0, :cond_a5

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

    .line 217
    :cond_8f
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_98

    .line 218
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_98
    :goto_98
    return-void

    .line 148
    :cond_99
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 215
    :cond_a5
    const-string v0, ""

    goto :goto_8c

    .line 220
    :cond_a8
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 222
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_bd

    .line 223
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_c6

    .line 226
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 228
    :cond_c6
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_e8

    .line 229
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    if-lez v0, :cond_f2

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

    :goto_e5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_e8
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_98

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_98

    .line 229
    :cond_f2
    const-string v0, ""

    goto :goto_e5

    .line 234
    :cond_f5
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_10a

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_10a
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_113

    .line 240
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 242
    :cond_113
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_135

    .line 243
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    if-lez v0, :cond_140

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

    :goto_132
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_135
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_98

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_98

    .line 243
    :cond_140
    const-string v0, ""

    goto :goto_132
.end method

.method private loadAllVideos()V
    .locals 7

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 339
    if-nez v1, :cond_7

    .line 396
    :cond_6
    :goto_6
    return-void

    .line 341
    :cond_7
    const-class v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    .line 342
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_6

    .line 345
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    iget v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;->loadArchiveVideos(Ljava/lang/String;JIILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private loadSeasonVideos()V
    .locals 10

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 400
    if-nez v0, :cond_7

    .line 469
    :cond_6
    :goto_6
    return-void

    .line 403
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_6

    .line 405
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 406
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    iget-boolean v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    const/16 v7, 0x1e

    iget v8, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const-string v9, "333.1387"

    invoke-interface/range {v0 .. v9}, Lmybl/MyBiliApiService;->getSeasonsArchivesList(Ljava/lang/String;JJZIILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 407
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private loadSeriesVideos()V
    .locals 13

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 473
    if-nez v0, :cond_7

    .line 543
    :cond_6
    :goto_6
    return-void

    .line 475
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    .line 476
    if-eqz v4, :cond_6

    .line 478
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 479
    invoke-virtual {v4}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v4}, Lbl/mg;->d()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    const/16 v10, 0x1e

    iget v11, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const-string v12, "333.1387"

    invoke-interface/range {v0 .. v12}, Lmybl/MyBiliApiService;->getSeriesArchives(Ljava/lang/String;JJJZLjava/lang/String;IILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 480
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method public static newInstance(Ljava/lang/String;JJ)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;-><init>()V

    .line 74
    iput-object p0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    .line 75
    iput-wide p1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 76
    iput-wide p3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    .line 77
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;-><init>()V

    .line 82
    iput-object p0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    .line 83
    iput-wide p1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 84
    iput-wide p3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    .line 85
    iput-object p5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    .line 86
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 108
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 109
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 110
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 111
    if-nez v0, :cond_16

    .line 131
    :goto_15
    return-void

    .line 113
    :cond_16
    new-instance v2, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 115
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 116
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 117
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 118
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 119
    new-instance v3, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 120
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 121
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 123
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->callback:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

    .line 126
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->initHeader()V

    .line 129
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->i()V

    .line 130
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    goto :goto_15
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-eqz v1, :cond_14

    .line 311
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 313
    :cond_14
    return v0
.end method

.method public canSort()Z
    .locals 2

    .prologue
    .line 271
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public d_()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 318
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 319
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 320
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    .line 321
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    .line 322
    return-void
.end method

.method public getCurrentMode()I
    .locals 2

    .prologue
    .line 275
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 278
    :goto_b
    return v0

    .line 276
    :cond_c
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_b

    .line 277
    :cond_18
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    goto :goto_b

    .line 278
    :cond_24
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 289
    :goto_c
    return-object v0

    .line 284
    :cond_d
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 285
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    if-eqz v0, :cond_1e

    const-string v0, "default"

    goto :goto_c

    :cond_1e
    const-string v0, "reverse"

    goto :goto_c

    .line 286
    :cond_21
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 287
    const-string v0, "desc"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "default"

    goto :goto_c

    :cond_38
    const-string v0, "reverse"

    goto :goto_c

    .line 289
    :cond_3b
    const-string v0, "default"

    goto :goto_c
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return v0
.end method

.method public isSeasonOrSeriesMode()Z
    .locals 2

    .prologue
    .line 267
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f0a008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 93
    const v0, 0x7f080199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerLayout:Landroid/view/View;

    .line 94
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f08019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f08016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 97
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 100
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 102
    return-object v1
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 306
    :cond_a
    :goto_a
    return-void

    .line 296
    :cond_b
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 297
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 303
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-eqz v0, :cond_a

    .line 304
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->d_()V

    goto :goto_a

    .line 298
    :cond_1f
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 299
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    goto :goto_17

    .line 300
    :cond_32
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 301
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "desc"

    :goto_46
    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    goto :goto_17

    :cond_49
    const-string v0, "asc"

    goto :goto_46
.end method

.method public updateHeaderInfo(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 253
    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u89c6\u9891"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "all"

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6761"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_41
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_46
    return-void
.end method
