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
    .line 681
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput p2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    .line 683
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 687
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 689
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_32

    .line 692
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a()I

    move-result v1

    .line 693
    add-int/lit8 v1, v1, -0x1

    .line 694
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    iget v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/main/MainActivity$d;->getTabType(I)I

    move-result v2

    .line 695
    iget v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    if-nez v3, :cond_33

    .line 696
    sget-object v1, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 713
    :cond_32
    :goto_32
    return-void

    .line 697
    :cond_33
    iget v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    if-ne v3, v1, :cond_43

    .line 698
    sget-object v1, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    sget-object v2, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;->a(Landroid/content/Context;I)V

    goto :goto_32

    .line 699
    :cond_43
    const/4 v0, 0x1

    if-ne v2, v0, :cond_50

    .line 700
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    if-eqz v0, :cond_32

    .line 701
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getRecommendVideos()V

    goto :goto_32

    .line 703
    :cond_50
    const/4 v0, 0x2

    if-ne v2, v0, :cond_5d

    .line 704
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    if-eqz v0, :cond_32

    .line 705
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getHotVideos()V

    goto :goto_32

    .line 707
    :cond_5d
    const/4 v0, 0x3

    if-ne v2, v0, :cond_32

    .line 708
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    if-eqz v0, :cond_32

    .line 709
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getLiveVideos()V

    goto :goto_32
.end method
