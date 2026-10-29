.class public final Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;
.super Lbl/ady;
.source "WeeklyVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;,
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;,
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$f;,
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;,
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;
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
    .line 43
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->e:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->e:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->name:Ljava/lang/String;

    return-object v0
.end method

.method private final b()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z

    .line 204
    invoke-direct {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->loadWeeklyVideos()V

    .line 205
    return-void
.end method

.method private loadWeeklyVideos()V
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_2b

    .line 210
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 211
    if-eqz v0, :cond_2b

    .line 212
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 213
    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 215
    iget v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->number:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3, v1}, Lmybl/MyBiliApiService;->getWeeklyPrecious(JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)V

    .line 216
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 261
    :cond_2b
    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;-><init>()V

    .line 60
    iput p0, v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->number:I

    .line 61
    iput-object p1, v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->name:Ljava/lang/String;

    .line 62
    iput-object p2, v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->subject:Ljava/lang/String;

    .line 63
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 88
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 90
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 91
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 92
    if-nez v0, :cond_20

    .line 93
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.weekly.WeeklyActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_20
    new-instance v2, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 97
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 98
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 99
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 100
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 101
    const v4, 0x7f060154

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    .line 102
    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 103
    new-instance v3, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 104
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 105
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    .line 106
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 107
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->i()V

    .line 108
    invoke-direct {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->b()V

    .line 109
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    if-eqz v0, :cond_19

    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    .line 180
    if-nez v0, :cond_11

    .line 181
    invoke-static {}, Lbl/bbi;->a()V

    .line 183
    :cond_11
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;->a()I

    move-result v0

    if-lez v0, :cond_19

    .line 184
    const/4 v0, 0x1

    .line 187
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 199
    invoke-direct {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->b()V

    .line 200
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f0a0094

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 69
    const v0, 0x7f08019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 70
    const v0, 0x7f08019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0801a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 73
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    .line 193
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 194
    return-void
.end method

.method public updateHeaderInfo(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    if-lez p2, :cond_29

    .line 82
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

    .line 84
    :cond_29
    return-void
.end method
