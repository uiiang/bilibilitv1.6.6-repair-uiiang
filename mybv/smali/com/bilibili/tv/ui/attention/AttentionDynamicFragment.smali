.class public final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
.super Lbl/ady;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

.field private static final j:I = 0x2


# instance fields
.field public attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

.field private attentionButtonLayout:Landroid/view/View;

.field private c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

.field private cursor:Ljava/lang/Long;

.field private d:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerFace:Lcom/bilibili/tv/widget/CircleImageView;

.field private headerLayout:Landroid/view/View;

.field private headerTitle:Landroid/widget/TextView;

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mid:J

.field private mode:Ljava/lang/String;

.field private offset:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private uperFace:Ljava/lang/String;

.field private uperName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 59
    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;

    .line 61
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->e:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->e:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    return v0
.end method

.method static synthetic access$508(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    return v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    return v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    return p1
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    return-object p1
.end method

.method private initHeader()V
    .locals 5

    .prologue
    const/high16 v4, 0x7f0b0000

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 135
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 137
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u52a8\u6001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    if-eqz v0, :cond_28

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 143
    :cond_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_31

    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_3a
    :goto_3a
    return-void

    .line 149
    :cond_3b
    const-string v0, "uper"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 150
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_54

    .line 151
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    :goto_51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_54
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 154
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    invoke-static {v1, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 155
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 160
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_85

    .line 161
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_85
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_3a

    .line 164
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 165
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_3a

    .line 205
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    invoke-interface {v0, v2, v3, v1}, Lmybl/MyBiliApiService;->getRelation(JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$3;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    .line 207
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_3a

    .line 151
    :cond_cb
    const-string v0, ""

    goto :goto_51

    .line 156
    :cond_ce
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    if-eqz v0, :cond_7c

    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    goto :goto_7c
.end method

.method private loadAllDynamic()V
    .locals 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_26

    .line 421
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 422
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_26

    .line 424
    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lmybl/MyBiliApiService;->getFeedVideos(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 480
    :cond_26
    return-void
.end method

.method private loadUperVideos()V
    .locals 7

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 484
    if-eqz v1, :cond_2b

    .line 485
    const-class v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    .line 486
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_2b

    .line 488
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    iget-object v4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;->loadArchiveVideos(Ljava/lang/String;JLjava/lang/Long;ILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    .line 489
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 555
    :cond_2b
    return-void
.end method

.method public static newInstance(JLjava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;-><init>()V

    .line 93
    iput-wide p0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    .line 94
    iput-object p2, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    .line 95
    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;-><init>()V

    .line 100
    iput-wide p0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    .line 101
    iput-object p2, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    .line 102
    iput-object p3, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    .line 103
    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;-><init>()V

    .line 108
    iput-wide p0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    .line 109
    iput-object p2, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    .line 110
    iput-object p3, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    .line 111
    iput-object p4, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    .line 112
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 238
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 240
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 241
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 242
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 243
    if-nez v0, :cond_22

    .line 244
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.attention.AttentionDynamicSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_22
    new-instance v2, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 247
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 248
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 249
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 250
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 251
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 252
    new-instance v3, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 253
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 254
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 256
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->i()V

    .line 257
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->d:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    .line 258
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    .line 260
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    .line 384
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 385
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadAllDynamic()V

    .line 389
    :cond_10
    :goto_10
    return-void

    .line 386
    :cond_11
    const-string v0, "uper"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 387
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadUperVideos()V

    goto :goto_10
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    if-eqz v1, :cond_14

    .line 360
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 362
    :cond_14
    return v0
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 375
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    .line 379
    return-void
.end method

.method public isAtBottom()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 282
    :cond_5
    :goto_5
    return v1

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 274
    instance-of v2, v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    if-eqz v2, :cond_5

    .line 275
    check-cast v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 277
    :try_start_12
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->p()I

    move-result v2

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_23

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_21

    const/4 v0, 0x1

    :goto_1f
    move v1, v0

    goto :goto_5

    :cond_21
    move v0, v1

    goto :goto_1f

    .line 278
    :catch_23
    move-exception v0

    goto :goto_5
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 117
    const v0, 0x7f0a0095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerLayout:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/CircleImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    .line 124
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->initHeader()V

    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 126
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 367
    move-object v0, v1

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    .line 368
    check-cast v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    iput-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->d:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    .line 369
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 370
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public updateHeaderCount(I)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    const-string v0, "uper"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 231
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    if-lez p1, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u6761"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_2e
    return-void

    .line 231
    :cond_2f
    const-string v0, ""

    goto :goto_25
.end method
