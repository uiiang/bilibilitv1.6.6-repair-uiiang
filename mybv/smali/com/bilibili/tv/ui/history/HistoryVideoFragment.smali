.class public final Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
.super Lbl/ady;
.source "HistoryVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;,
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;,
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$f;,
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;,
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;
    }
.end annotation


# static fields
.field public static final ARG_HISTORY_TYPE:Ljava/lang/String; = "history_type"

.field private static final COLUMN_COUNT:I = 0x2

.field private static final MIN_DISPLAY_COUNT:I = 0x14

.field private static final PAGE_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "HistoryVideoFragment"

.field public static currentAvid:J

.field public static currentPos:I


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

.field private appHasData:Z

.field private appPageNum:I

.field private final appSeenKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cursorBusiness:Ljava/lang/String;

.field private cursorMax:J

.field private cursorViewAt:J

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private hasMore:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/widget/LinearLayout;

.field private headerTitle:Landroid/widget/TextView;

.field private hintSort:Landroid/widget/TextView;

.field private historyType:Ljava/lang/String;

.field private isLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 66
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    .line 67
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z

    .line 68
    iput-wide v4, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    .line 69
    iput-wide v4, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;

    .line 72
    iput v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appPageNum:I

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appSeenKeys:Ljava/util/HashSet;

    .line 76
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appHasData:Z

    .line 78
    const-string v0, "archive"

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadAppHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J
    .locals 1

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J
    .locals 1

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->b()V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadWebHistory()V

    return-void
.end method

.method static synthetic access$508(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appPageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appPageNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appSeenKeys:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appHasData:Z

    return v0
.end method

.method static synthetic access$802(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appHasData:Z

    return p1
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V

    return-void
.end method

.method private final b()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadHistoryData()V

    .line 244
    return-void
.end method

.method private loadAppHistory(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    .line 286
    const-class v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoApiService;

    iget v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appPageNum:I

    const/16 v2, 0x1e

    .line 287
    invoke-interface {v0, p1, v1, v2}, Lcom/bilibili/tv/api/video/VideoApiService;->getVideoHistory(Ljava/lang/String;II)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$2;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    .line 288
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 412
    return-void
.end method

.method private loadHistoryData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    if-eqz v0, :cond_6

    .line 272
    :goto_5
    return-void

    .line 251
    :cond_6
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 253
    :cond_12
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    goto :goto_5

    .line 257
    :cond_15
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 258
    if-nez v0, :cond_1e

    .line 259
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    goto :goto_5

    .line 265
    :cond_1e
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 267
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadAppHistory(Ljava/lang/String;)V

    goto :goto_5

    .line 271
    :cond_2c
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadWebHistory()V

    goto :goto_5
.end method

.method private loadWebHistory()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 417
    :cond_d
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    .line 505
    :goto_f
    return-void

    .line 421
    :cond_10
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 422
    if-nez v0, :cond_19

    .line 423
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    goto :goto_f

    .line 427
    :cond_19
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 429
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    goto :goto_f

    .line 433
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    .line 435
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J

    iget-object v6, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;

    iget-object v7, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    const/16 v8, 0x1e

    .line 436
    invoke-interface/range {v0 .. v8}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->getVideoHistoryList(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$3;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    .line 437
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_f
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;-><init>()V

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v2, "history_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v0
.end method

.method private updateHeaderInfo()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 509
    const-string v0, "live"

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 510
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u76f4\u64ad"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v0, :cond_3b

    .line 516
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u8bb0\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :cond_3b
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_54

    .line 519
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u5220\u9664\u5386\u53f2\u8bb0\u5f55"

    invoke-static {v1, v2}, Lbl/abd;->get_more_action_hint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hintSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :cond_54
    return-void

    .line 512
    :cond_55
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u89c6\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 115
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 118
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 120
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 121
    if-nez v0, :cond_20

    .line 122
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.history.HistorySideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_20
    new-instance v2, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/history/HistorySideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Lcom/bilibili/tv/ui/history/HistorySideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 127
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 129
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 130
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 131
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 132
    const v4, 0x7f060154

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    .line 133
    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 134
    new-instance v3, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 135
    new-instance v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 137
    new-instance v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    .line 138
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->setHistoryType(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 141
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->i()V

    .line 142
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->b()V

    .line 143
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v0, :cond_14

    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    if-lez v0, :cond_14

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public clearAllHistory()V
    .locals 3

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 526
    if-nez v0, :cond_7

    .line 546
    :cond_6
    :goto_6
    return-void

    .line 530
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_6

    .line 535
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 538
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    .line 539
    invoke-interface {v0, v2, v1}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoHistories(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 542
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v0, :cond_2d

    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->clear()V

    .line 545
    :cond_2d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V

    goto :goto_6
.end method

.method public d_()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 231
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 232
    iput-wide v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    .line 233
    iput-wide v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;

    .line 235
    iput v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appPageNum:I

    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appSeenKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->appHasData:Z

    .line 238
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z

    .line 239
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->b()V

    .line 240
    return-void
.end method

.method public deleteCurrentHistory()V
    .locals 6

    .prologue
    .line 579
    sget-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    sget v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    if-gez v0, :cond_d

    .line 609
    :cond_c
    :goto_c
    return-void

    .line 583
    :cond_d
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_c

    .line 588
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_c

    .line 593
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    .line 598
    invoke-interface {v0, v3, v2, v1}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoHistories(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 601
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v0, :cond_5a

    .line 602
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    sget v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->removeByPosition(I)V

    .line 605
    :cond_5a
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    .line 606
    const/4 v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    .line 608
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V

    goto :goto_c
.end method

.method public deleteHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 6

    .prologue
    .line 549
    if-nez p1, :cond_3

    .line 576
    :cond_2
    :goto_2
    return-void

    .line 553
    :cond_3
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_2

    .line 558
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v1, :cond_12

    .line 559
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->remove(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 562
    :cond_12
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_2

    .line 567
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 571
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    .line 572
    invoke-interface {v0, v3, v2, v1}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoHistories(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 575
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V

    goto :goto_2
.end method

.method public getHistoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Lbl/ady;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 97
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "history_type"

    const-string v2, "archive"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    .line 99
    :cond_17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    const v0, 0x7f0a0092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    const v0, 0x7f08019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f08019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0801a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 109
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 110
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    .line 226
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 227
    return-void
.end method
