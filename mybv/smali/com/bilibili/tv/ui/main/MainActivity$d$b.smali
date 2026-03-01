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
    .line 595
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput p2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    .line 597
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const v6, 0x7f0c009d

    const v5, 0x7f080132

    const/4 v4, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 601
    const-string v2, "v"

    invoke-static {p1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 603
    const-string v3, "v.context"

    invoke-static {v2, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 605
    if-eqz v2, :cond_2a

    .line 606
    iget v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    if-nez v3, :cond_2b

    .line 607
    sget-object v1, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 632
    :cond_2a
    :goto_2a
    return-void

    .line 608
    :cond_2b
    iget v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    if-ne v3, v1, :cond_8a

    .line 609
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z
    invoke-static {v3}, Lcom/bilibili/tv/ui/main/MainActivity$d;->access$200(Lcom/bilibili/tv/ui/main/MainActivity$d;)Z

    move-result v3

    if-nez v3, :cond_3a

    move v0, v1

    :cond_3a
    # setter for: Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->access$202(Lcom/bilibili/tv/ui/main/MainActivity$d;Z)Z

    .line 610
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->access$200(Lcom/bilibili/tv/ui/main/MainActivity$d;)Z

    move-result v0

    sput-boolean v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isPersonalRecommend:Z

    .line 611
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->access$200(Lcom/bilibili/tv/ui/main/MainActivity$d;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 612
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->access$300(Lcom/bilibili/tv/ui/main/MainActivity$d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->setResId(I)V

    .line 613
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 618
    :goto_6b
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getRecommendVideos()V

    goto :goto_2a

    .line 615
    :cond_71
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->access$300(Lcom/bilibili/tv/ui/main/MainActivity$d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->setResId(I)V

    .line 616
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6b

    .line 619
    :cond_8a
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a2

    .line 620
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    # operator++ for: Lcom/bilibili/tv/ui/main/MainActivity$d;->a:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->access$408(Lcom/bilibili/tv/ui/main/MainActivity$d;)I

    .line 621
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity$d;->a:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->access$400(Lcom/bilibili/tv/ui/main/MainActivity$d;)I

    move-result v0

    const/16 v3, 0x1b

    if-lt v0, v3, :cond_2a

    .line 622
    invoke-static {v2, v1}, Lbl/abd;->b(Landroid/content/Context;Z)V

    goto :goto_2a

    .line 624
    :cond_a2
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_bc

    .line 625
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->this$0:Lcom/bilibili/tv/ui/main/MainActivity$d;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a()I

    move-result v0

    if-ge v0, v4, :cond_2a

    .line 626
    sget-object v0, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    sget-object v1, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;->a(Landroid/content/Context;I)V

    goto/16 :goto_2a

    .line 628
    :cond_bc
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d$b;->b:I

    if-ne v0, v4, :cond_2a

    .line 629
    sget-object v0, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    sget-object v1, Lcom/bilibili/tv/ui/setting/SettingActivity;->Companion:Lcom/bilibili/tv/ui/setting/SettingActivity$a;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ui/setting/SettingActivity$a;->a(Landroid/content/Context;I)V

    goto/16 :goto_2a
.end method
