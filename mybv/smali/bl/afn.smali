.class public final Lbl/afn;
.super Lbl/adw;
.source "afn.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afn$a;,
        Lbl/afn$g;,
        Lbl/afn$f;,
        Lbl/afn$e;,
        Lbl/afn$d;,
        Lbl/afn$c;,
        Lbl/afn$b;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afn$a;


# instance fields
.field private b:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private c:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private d:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field public e:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lbl/afn$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afn$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afn;->Companion:Lbl/afn$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lbl/adw;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lbl/afn;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    return-void
.end method

.method private updatePlayerSelection()V
    .locals 6

    .prologue
    const v5, 0x7f0700f0

    const v4, 0x7f0700ef

    .line 134
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_f

    .line 149
    :cond_e
    :goto_e
    return-void

    .line 136
    :cond_f
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_type(Landroid/content/Context;)I

    move-result v0

    .line 137
    const-string v1, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayerSelection: playerType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ijkVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 138
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exoVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 139
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x3

    if-ne v0, v1, :cond_63

    .line 142
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 143
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 144
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_e

    .line 146
    :cond_63
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_e
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 329
    :cond_5
    :goto_5
    return v0

    .line 305
    :cond_6
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 306
    if-nez v1, :cond_d

    .line 307
    invoke-static {}, Lbl/bbi;->a()V

    .line 309
    :cond_d
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 310
    iget-object v1, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 311
    if-nez v1, :cond_1a

    .line 312
    invoke-static {}, Lbl/bbi;->a()V

    .line 314
    :cond_1a
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 315
    iget-object v1, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 316
    if-nez v1, :cond_27

    .line 317
    invoke-static {}, Lbl/bbi;->a()V

    .line 319
    :cond_27
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 320
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 321
    if-nez v0, :cond_34

    .line 322
    invoke-static {}, Lbl/bbi;->a()V

    .line 324
    :cond_34
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 325
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 333
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 336
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v3, 0x7f0700f0

    const v4, 0x7f0700e8

    .line 37
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const v0, 0x7f0a003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 39
    const-string v0, "view"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const v0, 0x7f0800bb

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 41
    const v0, 0x7f08016f

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 42
    const v0, 0x7f080096

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 43
    const v0, 0x7f080120

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 44
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_4b

    .line 45
    invoke-static {}, Lbl/bbi;->a()V

    .line 47
    :cond_4b
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 48
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_57

    .line 49
    invoke-static {}, Lbl/bbi;->a()V

    .line 51
    :cond_57
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 52
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_63

    .line 53
    invoke-static {}, Lbl/bbi;->a()V

    .line 55
    :cond_63
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 56
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_6f

    .line 57
    invoke-static {}, Lbl/bbi;->a()V

    .line 59
    :cond_6f
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 61
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 62
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 63
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 64
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->d(Landroid/content/Context;)I

    move-result v0

    .line 66
    const/16 v2, 0x10

    if-ne v0, v2, :cond_17f

    .line 67
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 75
    :cond_99
    :goto_99
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lbl/afn$b;

    invoke-direct {v2, p0}, Lbl/afn$b;-><init>(Lbl/afn;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lbl/afn$c;

    invoke-direct {v2, p0}, Lbl/afn$c;-><init>(Lbl/afn;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lbl/afn$d;

    invoke-direct {v2, p0}, Lbl/afn$d;-><init>(Lbl/afn;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lbl/afn$e;

    invoke-direct {v2, p0}, Lbl/afn$e;-><init>(Lbl/afn;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f080224

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 81
    const v0, 0x7f080225

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 83
    const-string v0, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ijkPlayerBtn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exoPlayerBtn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExoPlayerSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isExoPlayerAvailable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_13f

    .line 88
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 89
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lbl/afn$f;

    invoke-direct {v2, p0}, Lbl/afn$f;-><init>(Lbl/afn;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_13f
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_171

    .line 93
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 94
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lbl/afn$g;

    invoke-direct {v2, p0}, Lbl/afn$g;-><init>(Lbl/afn;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 98
    :cond_163
    const-string v0, "afn"

    const-string v2, "Hiding exoPlayerBtn - ExoPlayer not supported/available"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 105
    :cond_171
    :goto_171
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 107
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    new-instance v2, Lbl/afn$1;

    invoke-direct {v2, p0}, Lbl/afn$1;-><init>(Lbl/afn;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-object v1

    .line 68
    :cond_17f
    const/16 v2, 0x20

    if-ne v0, v2, :cond_18a

    .line 69
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_99

    .line 70
    :cond_18a
    const/16 v2, 0x50

    if-ne v0, v2, :cond_195

    .line 71
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_99

    .line 72
    :cond_195
    const/16 v2, 0x78

    if-ne v0, v2, :cond_99

    .line 73
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_99

    .line 101
    :cond_1a0
    const-string v0, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exoPlayerBtn is visible, focusable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->isFocusable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_171
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 341
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    const-string v0, "afn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange: view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_30

    .line 344
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 346
    :cond_30
    return-void
.end method
