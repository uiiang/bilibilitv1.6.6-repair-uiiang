.class public Lcom/bilibili/tv/ui/favorite/SortMenuDialog;
.super Landroid/app/Dialog;
.source "SortMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;,
        Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SortMenuDialog"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

.field private currentSortOrder:Ljava/lang/String;

.field private listener:Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;

.field private sortItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->sortItems:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->activity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->currentSortOrder:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->initSortItems()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/SortMenuDialog;)Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->listener:Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;

    return-object v0
.end method

.method private initSortItems()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->sortItems:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;

    const-string v2, "\u6700\u8fd1\u6536\u85cf"

    const-string v3, "mtime"

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->sortItems:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;

    const-string v2, "\u6700\u591a\u64ad\u653e"

    const-string v3, "view"

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->sortItems:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;

    const-string v2, "\u6700\u8fd1\u6295\u7a3f"

    const-string v3, "pubtime"

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->sortItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;

    .line 61
    iget-object v2, v0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->currentSortOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->isSelected:Z

    goto :goto_30

    .line 63
    :cond_47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->requestWindowFeature(I)Z

    .line 69
    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 73
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 81
    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$1;-><init>(Lcom/bilibili/tv/ui/favorite/SortMenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 90
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 91
    new-instance v1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->sortItems:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$2;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$2;-><init>(Lcom/bilibili/tv/ui/favorite/SortMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;-><init>(Ljava/util/List;Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->adapter:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    .line 100
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->adapter:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x52

    if-ne p1, v0, :cond_c

    .line 106
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->dismiss()V

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public setOnSortSelectedListener(Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->listener:Lcom/bilibili/tv/ui/favorite/SortMenuDialog$OnSortSelectedListener;

    .line 131
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 115
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 116
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->adapter:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog;->adapter:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 117
    new-instance v1, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$3;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$3;-><init>(Lcom/bilibili/tv/ui/favorite/SortMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_24
    return-void
.end method
