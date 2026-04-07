.class public final Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;
.super Lbl/ady;
.source "WeeklyVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;,
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;,
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;,
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$f;,
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;
    }
.end annotation


# static fields
.field private static final j:I = 0x2


# instance fields
.field private c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

.field private e:Z

.field private g:Z

.field private h:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/widget/LinearLayout;

.field private headerTitle:Landroid/widget/TextView;

.field private name:Ljava/lang/String;

.field private number:I

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->e:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->e:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->name:Ljava/lang/String;

    return-object v0
.end method

.method private final b()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z

    .line 208
    invoke-direct {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->loadWeeklyVideos()V

    .line 209
    return-void
.end method

.method private loadWeeklyVideos()V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_2b

    .line 214
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 215
    if-eqz v0, :cond_2b

    .line 216
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 217
    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 219
    iget v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->number:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3, v1}, Lmybl/MyBiliApiService;->getWeeklyPrecious(JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)V

    .line 220
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 265
    :cond_2b
    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;-><init>()V

    .line 65
    iput p0, v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->number:I

    .line 66
    iput-object p1, v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->name:Ljava/lang/String;

    .line 67
    iput-object p2, v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->subject:Ljava/lang/String;

    .line 68
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 93
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 95
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 96
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 97
    if-nez v0, :cond_20

    .line 98
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.weekly.WeeklyActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_20
    new-instance v2, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 102
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 103
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 104
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 105
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 106
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 107
    new-instance v3, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 108
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 109
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    .line 110
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 111
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->i()V

    .line 112
    invoke-direct {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->b()V

    .line 113
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    if-eqz v0, :cond_19

    .line 183
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    .line 184
    if-nez v0, :cond_11

    .line 185
    invoke-static {}, Lbl/bbi;->a()V

    .line 187
    :cond_11
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->a()I

    move-result v0

    if-lez v0, :cond_19

    .line 188
    const/4 v0, 0x1

    .line 191
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 203
    invoke-direct {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->b()V

    .line 204
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f0a0094

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    const v0, 0x7f08019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f08019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0801a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 78
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 79
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    .line 197
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 198
    return-void
.end method

.method public updateHeaderInfo(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 84
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    if-lez p2, :cond_29

    .line 87
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u89c6\u9891"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_29
    return-void
.end method
