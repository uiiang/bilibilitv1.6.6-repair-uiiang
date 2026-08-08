.class Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "DownloadingMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field groupTitle:Landroid/widget/TextView;

.field itemLayout:Landroid/widget/LinearLayout;

.field sortName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->this$1:Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter;

    .line 172
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 173
    const v0, 0x7f0801cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0801cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 175
    const v0, 0x7f0801cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadingMenuDialog$MenuAdapter$ViewHolder;->sortName:Landroid/widget/TextView;

    .line 176
    return-void
.end method
