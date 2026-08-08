.class Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "DownloadingMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;


# direct methods
.method private constructor <init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->this$0:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$1;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;-><init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->this$0:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->itemNames:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->access$100(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;-><init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->a(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;I)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->sortName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;->this$0:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->itemNames:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;->access$100(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$2;-><init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 159
    return-void
.end method
