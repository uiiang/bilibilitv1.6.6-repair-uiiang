.class public final Lcom/bilibili/tv/ui/history/VideoHistoryActivity;
.super Lcom/bilibili/tv/ui/base/BaseUpViewActivity;
.source "VideoHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$c;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$b;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$f;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$DeleteHistoryTask;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$a;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$j;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$i;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$DeleteConfirmButton;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$k;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$h;,
        Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$b;

.field public static current_avid:J = 0x0L

.field public static current_pos:I = 0x0

.field private static final e:Ljava/lang/String; = "fromType"

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x2

.field private static final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

.field private b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

.field private c:Lcom/bilibili/tv/ui/base/LoadingImageView;

.field private cursorBusiness:Ljava/lang/String;

.field private cursorMax:J

.field private cursorViewAt:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private isLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    new-instance v1, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$b;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$b;-><init>(Lbl/bbg;)V

    sput-object v1, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->Companion:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$b;

    .line 75
    check-cast v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$c;

    sget-object v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$c;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$c;

    sput-object v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->i:Ljava/util/Comparator;

    .line 77
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->current_avid:J

    .line 78
    const/4 v0, -0x1

    sput v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->current_pos:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d:Ljava/util/List;

    .line 80
    iput-wide v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorMax:J

    .line 81
    iput-wide v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorViewAt:J

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorBusiness:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorBusiness:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->o()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->b(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;J)J
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorMax:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;J)J
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorViewAt:J

    return-wide p1
.end method

.method public static final c(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 108
    if-nez v0, :cond_9

    .line 109
    const-string v1, "mLoadingImageView"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 111
    :cond_9
    return-object v0
.end method

.method private final o()V
    .locals 9

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->hasMore:Z

    if-nez v0, :cond_9

    .line 274
    :cond_8
    :goto_8
    return-void

    .line 263
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->isLoading:Z

    .line 264
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 267
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSDATA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorMax:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorViewAt:J

    iget-object v6, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->cursorBusiness:Ljava/lang/String;

    const-string v7, "archive"

    const/16 v8, 0x1e

    .line 271
    invoke-interface/range {v0 .. v8}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->getVideoHistoryList(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$e;-><init>(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V

    .line 272
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "ott-platform.history.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 116
    .line 117
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 118
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 120
    const-string v0, "tv_my_history_click"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "action"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    :goto_21
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_3e

    .line 126
    const-string v1, "fromType"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    if-ne v0, v4, :cond_d0

    .line 128
    const-string v0, "tv_history_pageview"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "from"

    aput-object v2, v1, v5

    const-string v2, "\u9996\u9875"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    :cond_3e
    :goto_3e
    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00d3

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    const-string v1, "\u83dc\u5355\u952e\u5220\u9664\uff0c\u957f\u6309[OK]\u952e\u6e05\u7a7a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 138
    sget-object v2, Lcom/bilibili/tv/ui/base/LoadingImageView;->Companion:Lcom/bilibili/tv/ui/base/LoadingImageView$a;

    const v1, 0x7f0800b8

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView$a;->a(Landroid/widget/FrameLayout;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 139
    new-instance v1, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-direct {v1, p0, v3}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 140
    new-instance v1, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;-><init>()V

    iput-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    .line 141
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 142
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 143
    const v1, 0x7f0600de

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v2

    .line 144
    const v1, 0x7f06029a

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 145
    const v3, 0x7f060309

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 146
    const v4, 0x7f060091

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    .line 147
    invoke-virtual {v0, v4, v2, v4, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 148
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 149
    if-nez v1, :cond_e3

    .line 150
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_bf
    const-string v0, "tv_my_history_click"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "action"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_21

    .line 129
    :cond_d0
    if-ne v0, v3, :cond_3e

    .line 130
    const-string v0, "tv_history_pageview"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "from"

    aput-object v2, v1, v5

    const-string v2, "\u4e2a\u4eba\u4e2d\u5fc3"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 152
    :cond_e3
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 153
    new-instance v1, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$h;

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$h;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 154
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 155
    new-instance v1, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$l;-><init>(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 156
    invoke-direct {p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->o()V

    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->c:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 158
    if-nez v0, :cond_108

    .line 159
    const-string v1, "mLoadingImageView"

    invoke-static {v1}, Lbl/bbi;->b(Ljava/lang/String;)V

    .line 161
    :cond_108
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 162
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 243
    if-eqz v0, :cond_c

    .line 244
    new-instance v1, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$k;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$k;-><init>(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;Lbl/agd;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 246
    :cond_c
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0a002a

    return v0
.end method

.method public final n()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$g;

    .line 252
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onDestroy()V

    .line 253
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 287
    const-string v0, "event"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    const/16 v0, 0x52

    if-ne p1, v0, :cond_48

    sget-wide v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->current_avid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_48

    sget v0, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->current_pos:I

    if-ltz v0, :cond_48

    .line 289
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 290
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const-string v2, "\u786e\u8ba4\u5220\u9664\u8be5\u6761\u5386\u53f2\u8bb0\u5f55\uff1f"

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$DeleteConfirmButton;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$DeleteConfirmButton;-><init>(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0076

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$j;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$j;

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 291
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 294
    :cond_48
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 278
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 280
    invoke-virtual {v0, v4}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c00a5

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$i;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$i;-><init>(Lcom/bilibili/tv/ui/history/VideoHistoryActivity;)V

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c0076

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/history/VideoHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/tv/ui/history/VideoHistoryActivity$j;->a:Lcom/bilibili/tv/ui/history/VideoHistoryActivity$j;

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 281
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 282
    return v4
.end method
