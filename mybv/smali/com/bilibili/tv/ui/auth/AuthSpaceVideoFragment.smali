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

.field private static final TAG:Ljava/lang/String; = "AuthSpaceVideo"


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

.field private allVideoOrder:Ljava/lang/String;

.field public attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

.field private callback:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

.field private cursor:Ljava/lang/Long;

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 55
    iput-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    .line 56
    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 57
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    .line 58
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    .line 72
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    .line 78
    iput-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    .line 80
    const-string v0, "desc"

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    return v0
.end method

.method static synthetic access$608(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    return v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    return v0
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->firstLoad:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    .line 340
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 341
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadAllVideos()V

    .line 349
    :goto_10
    return-void

    .line 342
    :cond_11
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 343
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeasonVideos()V

    goto :goto_10

    .line 344
    :cond_1f
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 345
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loadSeriesVideos()V

    goto :goto_10

    .line 347
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

    .line 153
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 155
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_6d

    .line 162
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 164
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_6d

    .line 206
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-interface {v0, v2, v3, v1}, Lmybl/MyBiliApiService;->getRelation(JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$3;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 208
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 227
    :cond_6d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_8f

    .line 228
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

    .line 230
    :cond_8f
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_98

    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_98
    :goto_98
    return-void

    .line 158
    :cond_99
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 228
    :cond_a5
    const-string v0, ""

    goto :goto_8c

    .line 233
    :cond_a8
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_bd

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_bd
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_c6

    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 241
    :cond_c6
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_e8

    .line 242
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

    .line 244
    :cond_e8
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_98

    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_98

    .line 242
    :cond_f2
    const-string v0, ""

    goto :goto_e5

    .line 247
    :cond_f5
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 249
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_10a

    .line 250
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_10a
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_113

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 255
    :cond_113
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_135

    .line 256
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

    .line 258
    :cond_135
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_98

    .line 259
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_98

    .line 256
    :cond_140
    const-string v0, ""

    goto :goto_132
.end method

.method private loadAllVideos()V
    .locals 7

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 353
    if-nez v1, :cond_7

    .line 426
    :cond_6
    :goto_6
    return-void

    .line 355
    :cond_7
    const-class v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    .line 356
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_6

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.bilibili.com/x/space/wbi/arc/search?access_key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    invoke-virtual {v2}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&mid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&ps=20"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    if-eqz v1, :cond_aa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&cursor="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    if-eqz v1, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&order="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    const-string v3, "AuthSpaceVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAllVideos URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;->loadArchiveVideos(Ljava/lang/String;JLjava/lang/Long;ILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$4;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 366
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_6

    .line 360
    :cond_aa
    const-string v1, ""

    goto :goto_53

    :cond_ad
    const-string v1, ""

    goto :goto_70
.end method

.method private loadSeasonVideos()V
    .locals 12

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 430
    if-nez v0, :cond_7

    .line 508
    :cond_6
    :goto_6
    return-void

    .line 433
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_6

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/polymer/web-space/seasons_archives_list?mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&season_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sort_reverse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page_size=30&page_num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&web_location=333.1387"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    const-string v2, "AuthSpaceVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSeasonVideos URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://space.bilibili.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?type=season"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 441
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v11

    .line 442
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    iget-boolean v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    const/16 v7, 0x1e

    iget v8, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const-string v9, "333.1387"

    .line 443
    invoke-interface/range {v1 .. v11}, Lmybl/MyBiliApiService;->getSeasonsArchivesList(JJZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$5;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 444
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_6
.end method

.method private loadSeriesVideos()V
    .locals 15

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 512
    if-nez v0, :cond_7

    .line 591
    :cond_6
    :goto_6
    return-void

    .line 514
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_6

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/series/archives?mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&current_mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 517
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&series_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&only_normal=true&sort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ps=30&pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&web_location=333.1387"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    const-string v2, "AuthSpaceVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSeriesVideos URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://space.bilibili.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?type=series"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 523
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v14

    .line 524
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 525
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortDirection:Ljava/lang/String;

    const/16 v10, 0x1e

    iget v11, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    const-string v12, "333.1387"

    invoke-interface/range {v1 .. v14}, Lmybl/MyBiliApiService;->getSeriesArchives(JJJZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$6;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    .line 526
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_6
.end method

.method public static newInstance(Ljava/lang/String;JJ)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;-><init>()V

    .line 84
    iput-object p0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    .line 85
    iput-wide p1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 86
    iput-wide p3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    .line 87
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;-><init>()V

    .line 92
    iput-object p0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    .line 93
    iput-wide p1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J

    .line 94
    iput-wide p3, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->targetId:J

    .line 95
    iput-object p5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->upName:Ljava/lang/String;

    .line 96
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 118
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 119
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 120
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 121
    if-nez v0, :cond_16

    .line 141
    :goto_15
    return-void

    .line 123
    :cond_16
    new-instance v2, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 124
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 125
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 126
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 127
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 128
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 129
    new-instance v3, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 130
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 131
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 133
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->callback:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$b;

    .line 136
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->initHeader()V

    .line 139
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->i()V

    .line 140
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    goto :goto_15
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-eqz v1, :cond_14

    .line 324
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 326
    :cond_14
    return v0
.end method

.method public canSort()Z
    .locals 2

    .prologue
    .line 284
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
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 331
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->cursor:Ljava/lang/Long;

    .line 333
    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->page:I

    .line 334
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hasMore:Z

    .line 335
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->b()V

    .line 336
    return-void
.end method

.method public getCurrentMode()I
    .locals 2

    .prologue
    .line 288
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 291
    :goto_b
    return v0

    .line 289
    :cond_c
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_b

    .line 290
    :cond_18
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    goto :goto_b

    .line 291
    :cond_24
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 302
    :goto_c
    return-object v0

    .line 297
    :cond_d
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 298
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    if-eqz v0, :cond_1e

    const-string v0, "default"

    goto :goto_c

    :cond_1e
    const-string v0, "reverse"

    goto :goto_c

    .line 299
    :cond_21
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 300
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

    .line 302
    :cond_3b
    const-string v0, "default"

    goto :goto_c
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->loading:Z

    return v0
.end method

.method public isSeasonOrSeriesMode()Z
    .locals 2

    .prologue
    .line 280
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
    .line 101
    const v0, 0x7f0a008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 102
    const v0, 0x7f080199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerLayout:Landroid/view/View;

    .line 103
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f08019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f08016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 106
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 107
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lbl/ady;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 319
    :cond_a
    :goto_a
    return-void

    .line 309
    :cond_b
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 310
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->allVideoOrder:Ljava/lang/String;

    .line 316
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->adapter:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;

    if-eqz v0, :cond_a

    .line 317
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->d_()V

    goto :goto_a

    .line 311
    :cond_1f
    const-string v0, "season"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 312
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->sortReverse:Z

    goto :goto_17

    .line 313
    :cond_32
    const-string v0, "series"

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 314
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
    .line 266
    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->totalCount:I

    .line 267
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 268
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u89c6\u9891"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "all"

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6761"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_41
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_46
    return-void
.end method
