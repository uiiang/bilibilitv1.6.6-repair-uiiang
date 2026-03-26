.class public Lbl/xp;
.super Lbl/xh;
.source "xp.java"


# instance fields
.field private c:Lbl/agb;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xp;->d:Z

    return-void
.end method

.method private P()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private Q()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_2a

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xp;->d:Z

    .line 53
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    invoke-virtual {v0}, Lbl/azo;->e()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 54
    sget-object v0, Lbl/ace;->a:Lbl/ace;

    invoke-virtual {v0}, Lbl/ace;->b()V

    .line 55
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    invoke-virtual {v0}, Lbl/azo;->i()V

    .line 57
    :cond_22
    invoke-virtual {p0}, Lbl/xp;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 88
    :cond_29
    :goto_29
    return-void

    .line 60
    :cond_2a
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    if-nez v0, :cond_67

    .line 61
    new-instance v0, Lbl/agb$a;

    invoke-virtual {p0}, Lbl/xp;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u8981\u9000\u51fa\u64ad\u653e\u5417\uff1f"

    invoke-virtual {v0, v1}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u64ad\u653e"

    new-instance v2, Lbl/xp$2;

    invoke-direct {v2, p0}, Lbl/xp$2;-><init>(Lbl/xp;)V

    invoke-virtual {v0, v1, v2}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u9000\u51fa"

    new-instance v2, Lbl/xp$1;

    invoke-direct {v2, p0}, Lbl/xp$1;-><init>(Lbl/xp;)V

    .line 66
    invoke-virtual {v0, v1, v2}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    iput-object v0, p0, Lbl/xp;->c:Lbl/agb;

    .line 72
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    new-instance v1, Lbl/xp$3;

    invoke-direct {v1, p0}, Lbl/xp$3;-><init>(Lbl/xp;)V

    invoke-virtual {v0, v1}, Lbl/agb;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    :cond_67
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 80
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->dismiss()V

    goto :goto_29

    .line 83
    :cond_75
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 84
    invoke-virtual {p0}, Lbl/xp;->K()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 85
    invoke-virtual {p0}, Lbl/xp;->B()V

    .line 86
    iput-boolean v3, p0, Lbl/xp;->d:Z

    goto :goto_29
.end method


# virtual methods
.method final a(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lbl/xp;->J()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lbl/xp;->d:Z

    if-eqz v0, :cond_10

    .line 112
    invoke-virtual {p0}, Lbl/xp;->F()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xp;->d:Z

    .line 115
    :cond_10
    return-void
.end method

.method final a(Lbl/agb;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xp;->d:Z

    .line 99
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->dismiss()V

    .line 102
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xp;->c:Lbl/agb;

    .line 103
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    invoke-virtual {v0}, Lbl/azo;->e()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 104
    sget-object v0, Lbl/ace;->a:Lbl/ace;

    invoke-virtual {v0}, Lbl/ace;->b()V

    .line 105
    sget-object v0, Lbl/azo;->a:Lbl/azo$a;

    invoke-virtual {v0}, Lbl/azo$a;->a()Lbl/azo;

    move-result-object v0

    invoke-virtual {v0}, Lbl/azo;->i()V

    .line 107
    :cond_29
    invoke-virtual {p0}, Lbl/xp;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 108
    return-void
.end method

.method final b(Lbl/agb;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->dismiss()V

    .line 94
    :cond_9
    invoke-virtual {p0}, Lbl/xp;->F()V

    .line 95
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lbl/xp;->P()Z

    move-result v0

    return v0
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lbl/xp;->P()Z

    move-result v0

    return v0
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2a

    .line 33
    iget-object v1, p0, Lbl/xp;->c:Lbl/agb;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v1}, Lbl/agb;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 34
    iget-object v1, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v1}, Lbl/agb;->dismiss()V

    .line 43
    :cond_15
    :goto_15
    return v0

    .line 37
    :cond_16
    invoke-virtual {p0}, Lbl/xp;->a()Lbl/xh;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lbl/xp;->a()Lbl/xh;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lbl/xh;->g(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 40
    :cond_26
    invoke-direct {p0}, Lbl/xp;->Q()V

    goto :goto_15

    .line 43
    :cond_2a
    invoke-direct {p0}, Lbl/xp;->P()Z

    move-result v0

    goto :goto_15
.end method

.method public h()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lbl/xp;->c:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->dismiss()V

    .line 122
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xp;->c:Lbl/agb;

    .line 123
    invoke-super {p0}, Lbl/xh;->h()V

    .line 124
    return-void
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
