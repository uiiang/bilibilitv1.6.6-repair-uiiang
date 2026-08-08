.class public Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;
.super Landroid/app/Dialog;
.source "DownloadingMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;,
        Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private itemNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->itemNames:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->activity:Landroid/app/Activity;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->itemNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->listener:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x600

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 64
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    const v0, 0x7f0801c4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 75
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 84
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 85
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;-><init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 86
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x52

    if-ne p1, v0, :cond_c

    .line 91
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->dismiss()V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->itemNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    if-eqz p1, :cond_c

    .line 43
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->itemNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_c
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->listener:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$OnMenuItemClickListener;

    .line 49
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 101
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 102
    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->itemNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 103
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$2;-><init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    :cond_20
    return-void
.end method
