.class public final Lcom/bilibili/tv/ui/download/DownloadManagerActivity;
.super Lcom/bilibili/tv/ui/base/BaseUpViewActivity;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;,
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;,
        Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

.field private static final e:Ljava/lang/String; = "fromType"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

.field private c:Ljava/lang/Integer;

.field private d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->Companion:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->c:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 43
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0193

    invoke-static {v1}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_32

    const-string v1, "fromType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->c:Ljava/lang/Integer;

    .line 46
    return-void

    .line 45
    :cond_32
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0a00ae

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onDestroy()V

    move-object v0, v1

    .line 109
    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    .line 110
    check-cast v1, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    iput-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 111
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 53
    const-string v2, "supportFragmentManager"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    const v3, 0x7f080091

    invoke-direct {v2, v0, v3}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 57
    if-nez v0, :cond_1f

    .line 58
    invoke-static {}, Lbl/bbi;->a()V

    .line 60
    :cond_1f
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->a()I

    move-result v0

    .line 61
    new-instance v2, Lbl/cj;

    invoke-direct {v2}, Lbl/cj;-><init>()V

    .line 62
    add-int/lit8 v3, v0, -0x1

    .line 63
    if-ltz v3, :cond_41

    move v0, v1

    .line 66
    :goto_2d
    iget-object v4, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    .line 67
    if-nez v4, :cond_34

    .line 68
    invoke-static {}, Lbl/bbi;->a()V

    .line 70
    :cond_34
    invoke-virtual {v4, v0}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->b(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 71
    if-ne v0, v3, :cond_7d

    .line 78
    :cond_41
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-direct {v0, p0, v2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;Lbl/cj;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    .line 79
    new-instance v0, Lcom/bilibili/tv/ui/ranking/RankingLeftLinearLayoutManger;

    invoke-direct {v0, p0, v5, v1}, Lcom/bilibili/tv/ui/ranking/RankingLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    .line 80
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 81
    if-nez v2, :cond_54

    .line 82
    invoke-static {}, Lbl/bbi;->a()V

    .line 84
    :cond_54
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 85
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 86
    if-nez v0, :cond_5e

    .line 87
    invoke-static {}, Lbl/bbi;->a()V

    .line 89
    :cond_5e
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 90
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 91
    if-nez v0, :cond_68

    .line 92
    invoke-static {}, Lbl/bbi;->a()V

    .line 94
    :cond_68
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 95
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 96
    if-nez v0, :cond_72

    .line 97
    invoke-static {}, Lbl/bbi;->a()V

    .line 99
    :cond_72
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->b:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 102
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->c(I)V

    .line 103
    return-void

    .line 74
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_2d
.end method
