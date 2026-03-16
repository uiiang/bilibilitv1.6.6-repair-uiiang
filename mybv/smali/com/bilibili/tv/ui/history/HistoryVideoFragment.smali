.class public final Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
.super Lbl/ady;
.source "HistoryVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;,
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;,
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;,
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$f;,
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;
    }
.end annotation


# static fields
.field public static final ARG_HISTORY_TYPE:Ljava/lang/String; = "history_type"

.field private static final COLUMN_COUNT:I = 0x2

.field private static final PAGE_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "HistoryVideoFragment"

.field public static currentAvid:J

.field public static currentPos:I


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

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
    .line 52
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z

    .line 58
    iput-wide v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    .line 59
    iput-wide v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;

    .line 62
    const-string v0, "archive"

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    .line 67
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
    .line 46
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->b()V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;J)J
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V

    return-void
.end method

.method private final b()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->loadHistoryData()V

    .line 224
    return-void
.end method

.method private loadHistoryData()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    if-eqz v0, :cond_6

    .line 308
    :goto_5
    return-void

    .line 231
    :cond_6
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 233
    :cond_12
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    goto :goto_5

    .line 237
    :cond_15
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 238
    if-nez v0, :cond_1e

    .line 239
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    goto :goto_5

    .line 243
    :cond_1e
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 245
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    goto :goto_5

    .line 249
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    .line 251
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J

    iget-object v6, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;

    iget-object v7, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    const/16 v8, 0x1e

    .line 252
    invoke-interface/range {v0 .. v8}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->getVideoHistoryList(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V

    .line 253
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_5
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v2, "history_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v0
.end method

.method private updateHeaderInfo()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 312
    const-string v0, "live"

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 313
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u76f4\u64ad"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v0, :cond_3b

    .line 319
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

    .line 321
    :cond_3b
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_4c

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hintSort:Landroid/widget/TextView;

    const-string v1, "\u83dc\u5355\u952e\u5220\u9664\uff0c\u957f\u6309[OK]\u952e\u6e05\u7a7a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hintSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :cond_4c
    return-void

    .line 315
    :cond_4d
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerTitle:Landroid/widget/TextView;

    const-string v1, "\u89c6\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 99
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 102
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 104
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 105
    if-nez v0, :cond_20

    .line 106
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.history.HistorySideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_20
    new-instance v2, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/history/HistorySideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Lcom/bilibili/tv/ui/history/HistorySideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 113
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 114
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 115
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 116
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 117
    new-instance v3, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 118
    new-instance v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 120
    new-instance v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->setHistoryType(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 124
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->i()V

    .line 125
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->b()V

    .line 126
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v0, :cond_14

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a()I

    move-result v0

    if-lez v0, :cond_14

    .line 200
    const/4 v0, 0x1

    .line 203
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public clearAllHistory()V
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 329
    if-nez v0, :cond_7

    .line 348
    :cond_6
    :goto_6
    return-void

    .line 333
    :cond_7
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_6

    .line 338
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    .line 340
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    .line 341
    invoke-interface {v0, v1}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoHistories(Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 344
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v0, :cond_29

    .line 345
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->clear()V

    .line 347
    :cond_29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V

    goto :goto_6
.end method

.method public d_()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 214
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 215
    iput-wide v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorMax:J

    .line 216
    iput-wide v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorViewAt:J

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->cursorBusiness:Ljava/lang/String;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hasMore:Z

    .line 219
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->b()V

    .line 220
    return-void
.end method

.method public deleteCurrentHistory()V
    .locals 4

    .prologue
    .line 380
    sget-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    sget v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    if-gez v0, :cond_d

    .line 409
    :cond_c
    :goto_c
    return-void

    .line 384
    :cond_d
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_c

    .line 389
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_c

    .line 394
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    .line 398
    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoHistories(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 401
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v0, :cond_56

    .line 402
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    sget v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->removeByPosition(I)V

    .line 405
    :cond_56
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    .line 406
    const/4 v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    .line 408
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V

    goto :goto_c
.end method

.method public deleteHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    .line 351
    if-nez p1, :cond_3

    .line 377
    :cond_2
    :goto_2
    return-void

    .line 355
    :cond_3
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_2

    .line 360
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    if-eqz v1, :cond_12

    .line 361
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->remove(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 364
    :cond_12
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    .line 373
    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->clearVideoHistories(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lbl/vp;->a()V

    .line 376
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->updateHeaderInfo()V

    goto :goto_2
.end method

.method public getHistoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Lbl/ady;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 81
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "history_type"

    const-string v2, "archive"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->historyType:Ljava/lang/String;

    .line 83
    :cond_17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 87
    const v0, 0x7f0a0092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    const v0, 0x7f080199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f08019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 93
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 94
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->adapter:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    .line 209
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 210
    return-void
.end method
