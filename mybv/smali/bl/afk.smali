.class public final Lbl/afk;
.super Lbl/adw;
.source "afk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afk$g;,
        Lbl/afk$f;,
        Lbl/afk$e;,
        Lbl/afk$c;,
        Lbl/afk$b;,
        Lbl/afk$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afk$a;


# instance fields
.field private b:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private c:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private d:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private e:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private f:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private g:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private h:Lcom/bilibili/tv/widget/DrawFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lbl/afk$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afk$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afk;->Companion:Lbl/afk$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lbl/adw;-><init>()V

    .line 27
    return-void
.end method

.method static final a(Lbl/afk;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method static synthetic access$000(Lbl/afk;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbl/afk;->updateImageSizeSelection(I)V

    return-void
.end method

.method static synthetic access$100(Lbl/afk;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbl/afk;->updateCacheLimitSelection(I)V

    return-void
.end method

.method private updateCacheLimitSelection(I)V
    .locals 3

    .prologue
    const v2, 0x7f0700f0

    const v1, 0x7f0700ef

    .line 153
    iget-object v0, p0, Lbl/afk;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 154
    iget-object v0, p0, Lbl/afk;->f:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 155
    iget-object v0, p0, Lbl/afk;->g:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lbl/afk;->h:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 158
    packed-switch p1, :pswitch_data_36

    .line 172
    :goto_1d
    return-void

    .line 160
    :pswitch_1e
    iget-object v0, p0, Lbl/afk;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_1d

    .line 163
    :pswitch_24
    iget-object v0, p0, Lbl/afk;->f:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_1d

    .line 166
    :pswitch_2a
    iget-object v0, p0, Lbl/afk;->g:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_1d

    .line 169
    :pswitch_30
    iget-object v0, p0, Lbl/afk;->h:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_1d

    .line 158
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_24
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method

.method private updateImageSizeSelection(I)V
    .locals 3

    .prologue
    const v2, 0x7f0700f0

    const v1, 0x7f0700ef

    .line 143
    if-nez p1, :cond_13

    .line 144
    iget-object v0, p0, Lbl/afk;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 145
    iget-object v0, p0, Lbl/afk;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 150
    :goto_12
    return-void

    .line 147
    :cond_13
    iget-object v0, p0, Lbl/afk;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lbl/afk;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_12
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 56
    :cond_d
    :goto_d
    return v0

    .line 37
    :cond_e
    iget-object v1, p0, Lbl/afk;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbl/afk;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 40
    :cond_1a
    iget-object v1, p0, Lbl/afk;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbl/afk;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 43
    :cond_26
    iget-object v1, p0, Lbl/afk;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afk;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 46
    :cond_32
    iget-object v1, p0, Lbl/afk;->f:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afk;->f:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 49
    :cond_3e
    iget-object v1, p0, Lbl/afk;->g:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbl/afk;->g:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 52
    :cond_4a
    iget-object v1, p0, Lbl/afk;->h:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lbl/afk;->h:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 55
    :cond_56
    iget-object v0, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 56
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 63
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0700e8

    .line 74
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const v0, 0x7f0a0035

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 77
    const-string v0, "view"

    invoke-static {v2, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const v0, 0x7f08005b

    invoke-virtual {p0, v2, v0}, Lbl/afk;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 80
    const v0, 0x7f080048

    invoke-virtual {p0, v2, v0}, Lbl/afk;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0801a4

    invoke-virtual {p0, v2, v1}, Lbl/afk;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v1, p0, Lbl/afk;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 83
    const v1, 0x7f0801a5

    invoke-virtual {p0, v2, v1}, Lbl/afk;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v1, p0, Lbl/afk;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 85
    iget-object v1, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 86
    iget-object v1, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$b;

    invoke-direct {v3, p0, p0}, Lbl/afk$b;-><init>(Lbl/afk;Lbl/afk;)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    iget-object v1, p0, Lbl/afk;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 89
    iget-object v1, p0, Lbl/afk;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 91
    iget-object v1, p0, Lbl/afk;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$e;

    invoke-direct {v3, p0, p0}, Lbl/afk$e;-><init>(Lbl/afk;Lbl/afk;)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 92
    iget-object v1, p0, Lbl/afk;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$e;

    invoke-direct {v3, p0, p0}, Lbl/afk$e;-><init>(Lbl/afk;Lbl/afk;)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    invoke-virtual {p0}, Lbl/afk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->get_image_size(Landroid/content/Context;)I

    move-result v1

    .line 95
    invoke-direct {p0, v1}, Lbl/afk;->updateImageSizeSelection(I)V

    .line 97
    iget-object v1, p0, Lbl/afk;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$f;

    invoke-direct {v3, p0, p0, v5}, Lbl/afk$f;-><init>(Lbl/afk;Lbl/afk;I)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v1, p0, Lbl/afk;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$f;

    invoke-direct {v3, p0, p0, v6}, Lbl/afk$f;-><init>(Lbl/afk;Lbl/afk;I)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v1, 0x7f0801a6

    invoke-virtual {p0, v2, v1}, Lbl/afk;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v1, p0, Lbl/afk;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 101
    const v1, 0x7f0801a7

    invoke-virtual {p0, v2, v1}, Lbl/afk;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v1, p0, Lbl/afk;->f:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 102
    const v1, 0x7f0801a8

    invoke-virtual {p0, v2, v1}, Lbl/afk;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v1, p0, Lbl/afk;->g:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 103
    const v1, 0x7f0801a9

    invoke-virtual {p0, v2, v1}, Lbl/afk;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v1, p0, Lbl/afk;->h:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 105
    iget-object v1, p0, Lbl/afk;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 106
    iget-object v1, p0, Lbl/afk;->f:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 107
    iget-object v1, p0, Lbl/afk;->g:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 108
    iget-object v1, p0, Lbl/afk;->h:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 110
    iget-object v1, p0, Lbl/afk;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$e;

    invoke-direct {v3, p0, p0}, Lbl/afk$e;-><init>(Lbl/afk;Lbl/afk;)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    iget-object v1, p0, Lbl/afk;->f:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$e;

    invoke-direct {v3, p0, p0}, Lbl/afk$e;-><init>(Lbl/afk;Lbl/afk;)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    iget-object v1, p0, Lbl/afk;->g:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$e;

    invoke-direct {v3, p0, p0}, Lbl/afk$e;-><init>(Lbl/afk;Lbl/afk;)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 113
    iget-object v1, p0, Lbl/afk;->h:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$e;

    invoke-direct {v3, p0, p0}, Lbl/afk$e;-><init>(Lbl/afk;Lbl/afk;)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    invoke-virtual {p0}, Lbl/afk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->get_cache_limit(Landroid/content/Context;)I

    move-result v1

    .line 116
    invoke-direct {p0, v1}, Lbl/afk;->updateCacheLimitSelection(I)V

    .line 118
    iget-object v1, p0, Lbl/afk;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$g;

    invoke-direct {v3, p0, p0, v5}, Lbl/afk$g;-><init>(Lbl/afk;Lbl/afk;I)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lbl/afk;->f:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$g;

    invoke-direct {v3, p0, p0, v6}, Lbl/afk$g;-><init>(Lbl/afk;Lbl/afk;I)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lbl/afk;->g:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$g;

    const/4 v4, 0x2

    invoke-direct {v3, p0, p0, v4}, Lbl/afk$g;-><init>(Lbl/afk;Lbl/afk;I)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lbl/afk;->h:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$g;

    const/4 v4, 0x3

    invoke-direct {v3, p0, p0, v4}, Lbl/afk$g;-><init>(Lbl/afk;Lbl/afk;I)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {}, Lbl/ajq;->b()Lbl/aoy;

    move-result-object v1

    .line 124
    const-string v3, "Fresco.getImagePipelineFactory()"

    invoke-static {v1, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Lbl/aoy;->g()Lbl/ahd;

    move-result-object v1

    .line 126
    const-string v3, "Fresco.getImagePipelineFactory().mainFileCache"

    invoke-static {v1, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-interface {v1}, Lbl/ahd;->a()J

    move-result-wide v4

    .line 129
    const-string v1, "0M"

    .line 130
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_154

    .line 131
    invoke-virtual {p0}, Lbl/afk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v3, "Formatter.formatFileSize(activity, cacheSize)"

    invoke-static {v1, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    :cond_154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730\u56fe\u7247\u7f13\u5b58 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lbl/afk;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v3, Lbl/afk$c;

    invoke-direct {v3, p0, v0}, Lbl/afk$c;-><init>(Lbl/afk;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-object v2
.end method
