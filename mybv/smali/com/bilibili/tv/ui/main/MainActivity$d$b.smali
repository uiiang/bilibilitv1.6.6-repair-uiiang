.class public final Lcom/bilibili/tv/ui/main/MainActivity$d$b;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/MainActivity$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final b:I

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/MainActivity$d;I)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput p2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    .line 687
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 691
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 693
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_35

    .line 696
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a()I

    move-result v1

    .line 697
    add-int/lit8 v2, v1, -0x2

    .line 698
    add-int/lit8 v1, v1, -0x1

    .line 699
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    iget v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/ui/main/MainActivity$d;->getTabType(I)I

    move-result v3

    .line 700
    iget v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    if-nez v4, :cond_36

    .line 701
    sget-object v1, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 721
    :cond_35
    :goto_35
    return-void

    .line 702
    :cond_36
    iget v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    if-ne v4, v2, :cond_40

    .line 704
    sget-object v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->Companion:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

    invoke-virtual {v1, v0, v5}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;->a(Landroid/content/Context;I)V

    goto :goto_35

    .line 705
    :cond_40
    iget v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    if-ne v2, v1, :cond_50

    .line 706
    sget-object v1, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    sget-object v2, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;->a(Landroid/content/Context;I)V

    goto :goto_35

    .line 707
    :cond_50
    if-ne v3, v5, :cond_5c

    .line 708
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    if-eqz v0, :cond_35

    .line 709
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getRecommendVideos()V

    goto :goto_35

    .line 711
    :cond_5c
    const/4 v0, 0x2

    if-ne v3, v0, :cond_69

    .line 712
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    if-eqz v0, :cond_35

    .line 713
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getHotVideos()V

    goto :goto_35

    .line 715
    :cond_69
    const/4 v0, 0x3

    if-ne v3, v0, :cond_35

    .line 716
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    if-eqz v0, :cond_35

    .line 717
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getLiveVideos()V

    goto :goto_35
.end method
