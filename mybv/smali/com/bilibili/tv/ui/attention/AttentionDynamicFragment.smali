.class public final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
.super Lbl/ady;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

.field private static final DYNAMIC_FEATURES:Ljava/lang/String; = "itemOpusStyle,listOnlyfans,opusBigCover,onlyfansVote,decorationCard,onlyfansAssetsV2,forwardListHidden,ugcDelete,onlyfansQaCard,commentsNewVersion,avatarAutoTheme,sunflowerStyle,cardsEnhance,eva3CardOpus,eva3CardVideo,eva3CardComment,eva3CardVote,eva3CardUser"

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

.field private headerHint:Landroid/widget/TextView;

.field private headerLayout:Landroid/view/View;

.field private headerTitle:Landroid/widget/TextView;

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mid:J

.field private mode:Ljava/lang/String;

.field private offset:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private uperDynamicMode:I

.field private uperDynamicOffset:Ljava/lang/String;

.field private uperFace:Ljava/lang/String;

.field private uperName:Ljava/lang/String;

.field private uperPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 60
    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    .line 61
    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;

    .line 62
    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I

    .line 63
    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicMode:I

    .line 65
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->e:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->e:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    return v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I

    return v0
.end method

.method static synthetic access$708(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I

    return v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    return v0
.end method

.method static synthetic access$808(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    return v0
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    return-object p1
.end method

.method private initHeader()V
    .locals 5

    .prologue
    const/high16 v4, 0x7f0b0000

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 144
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u52a8\u6001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    if-eqz v0, :cond_28

    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 152
    :cond_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_31

    .line 153
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :cond_3a
    :goto_3a
    return-void

    .line 158
    :cond_3b
    const-string v0, "uper"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_54

    .line 160
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    :goto_51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_54
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 163
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    invoke-static {v1, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 164
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 169
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_85

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_85
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_3a

    .line 173
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 174
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_3a

    .line 214
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    invoke-interface {v0, v2, v3, v1}, Lmybl/MyBiliApiService;->getRelation(JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$3;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    .line 216
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_3a

    .line 160
    :cond_cb
    const-string v0, ""

    goto :goto_51

    .line 165
    :cond_ce
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    if-eqz v0, :cond_7c

    .line 166
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    goto :goto_7c
.end method

.method private loadAllDynamic()V
    .locals 7

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_2e

    .line 445
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 446
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_2e

    .line 448
    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 449
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    const-string v2, "itemOpusStyle,listOnlyfans,opusBigCover,onlyfansVote,decorationCard,onlyfansAssetsV2,forwardListHidden,ugcDelete,onlyfansQaCard,commentsNewVersion,avatarAutoTheme,sunflowerStyle,cardsEnhance,eva3CardOpus,eva3CardVideo,eva3CardComment,eva3CardVote,eva3CardUser"

    const-string v3, "web"

    const/16 v4, -0x1e0

    const-string v5, "333.1365"

    invoke-interface/range {v0 .. v6}, Lmybl/MyBiliApiService;->getFeedVideos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$4;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 511
    :cond_2e
    return-void
.end method

.method private loadUperDynamicVideos()V
    .locals 9

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 606
    if-nez v0, :cond_7

    .line 698
    :cond_6
    :goto_6
    return-void

    .line 608
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 609
    if-eqz v0, :cond_6

    .line 611
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v8

    .line 612
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 613
    iget-object v4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;

    .line 615
    iget-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    const-string v5, "itemOpusStyle,listOnlyfans,opusBigCover,onlyfansVote,decorationCard,onlyfansAssetsV2,forwardListHidden,ugcDelete,onlyfansQaCard,commentsNewVersion,avatarAutoTheme,sunflowerStyle,cardsEnhance,eva3CardOpus,eva3CardVideo,eva3CardComment,eva3CardVote,eva3CardUser"

    const/16 v6, -0x1e0

    const-string v7, "web"

    invoke-interface/range {v1 .. v8}, Lmybl/MyBiliApiService;->getSpaceDynamicFeed(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$6;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    .line 616
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private loadUperVideos()V
    .locals 13

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_33

    .line 516
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_33

    .line 518
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v12

    .line 519
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 520
    iget-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    iget v4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I

    const/16 v5, 0x28

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x1

    const-string v10, "web"

    const-string v11, "333.1387"

    invoke-interface/range {v1 .. v12}, Lmybl/MyBiliApiService;->getSpaceArcSearch(JIIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$5;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    .line 521
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 602
    :cond_33
    return-void
.end method

.method public static newInstance(JLjava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;-><init>()V

    .line 98
    iput-wide p0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    .line 99
    iput-object p2, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    .line 100
    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;-><init>()V

    .line 105
    iput-wide p0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    .line 106
    iput-object p2, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    .line 107
    iput-object p3, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    .line 108
    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;-><init>()V

    .line 113
    iput-wide p0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    .line 114
    iput-object p2, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    .line 115
    iput-object p3, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    .line 116
    iput-object p4, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperFace:Ljava/lang/String;

    .line 117
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 247
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 249
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 250
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 251
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 252
    if-nez v0, :cond_22

    .line 253
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.attention.AttentionDynamicSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_22
    new-instance v2, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 256
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 257
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 258
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 259
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 260
    const v4, 0x7f060154

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    .line 261
    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 262
    new-instance v3, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 263
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 264
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 266
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->i()V

    .line 267
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->d:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    .line 268
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    .line 270
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    .line 400
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 401
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadAllDynamic()V

    .line 413
    :cond_10
    :goto_10
    return-void

    .line 402
    :cond_11
    const-string v0, "uper"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 403
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 404
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_space_dynamic_mode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicMode:I

    .line 406
    :cond_2a
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicMode:I

    if-nez v0, :cond_42

    .line 408
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadUperDynamicVideos()V

    goto :goto_10

    .line 410
    :cond_42
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadUperVideos()V

    goto :goto_10
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    if-eqz v1, :cond_14

    .line 373
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 375
    :cond_14
    return v0
.end method

.method public d_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 387
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 388
    iput v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    .line 389
    iput-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->cursor:Ljava/lang/Long;

    .line 390
    iput v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperPage:I

    .line 391
    iput-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicOffset:Ljava/lang/String;

    .line 392
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperDynamicMode:I

    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    .line 394
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    .line 395
    return-void
.end method

.method public isAtBottom()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 292
    :cond_5
    :goto_5
    return v1

    .line 283
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 284
    instance-of v2, v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    if-eqz v2, :cond_5

    .line 285
    check-cast v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 287
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

    .line 288
    :catch_23
    move-exception v0

    goto :goto_5
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 122
    const v0, 0x7f0a0095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerLayout:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButtonLayout:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/CircleImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerFace:Lcom/bilibili/tv/widget/CircleImageView;

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerTitle:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 128
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerHint:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerHint:Landroid/widget/TextView;

    if-eqz v0, :cond_74

    .line 131
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u7b5b\u9009\u5206\u7ec4"

    invoke-static {v1, v2}, Lbl/abd;->get_more_action_hint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_74
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->initHeader()V

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 135
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 380
    move-object v0, v1

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    .line 381
    check-cast v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    iput-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->d:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    .line 382
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 383
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public updateHeaderCount(I)V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    const-string v0, "uper"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 240
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

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->headerCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_2e
    return-void

    .line 240
    :cond_2f
    const-string v0, ""

    goto :goto_25
.end method
