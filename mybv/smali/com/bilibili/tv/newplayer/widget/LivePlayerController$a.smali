.class public Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;
.super Lbl/adz;
.source "LivePlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/newplayer/widget/LivePlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field final synthetic this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 588
    iput-object p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;

    .line 589
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 644
    .line 645
    sget-object v2, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$5;->$SwitchMap$com$bilibili$tv$newplayer$bean$PlayControllerOptionType:[I

    invoke-virtual {p2}, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1b6

    .line 765
    :cond_d
    :goto_d
    return-void

    .line 647
    :pswitch_e
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 648
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$400(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lmybl/BiliLiveContent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 649
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$400(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lmybl/BiliLiveContent;

    move-result-object v0

    iget-wide v0, v0, Lmybl/BiliLiveContent;->mUid:J

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;
    invoke-static {v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$400(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lmybl/BiliLiveContent;

    move-result-object v2

    iget-object v2, v2, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_d

    .line 654
    :pswitch_2f
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$300(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$300(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v3

    iget-boolean v3, v3, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    if-nez v3, :cond_40

    move v0, v1

    :cond_40
    invoke-virtual {v2, v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->a(Z)V

    .line 655
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b(Landroid/app/Activity;Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_d

    .line 658
    :pswitch_47
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 659
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 660
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->o:Lbl/cj;
    invoke-static {v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$500(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lbl/cj;

    move-result-object v2

    invoke-virtual {v2}, Lbl/cj;->b()I

    move-result v5

    move v3, v0

    move v2, v0

    .line 662
    :goto_68
    if-ge v2, v5, :cond_81

    .line 663
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->o:Lbl/cj;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$500(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lbl/cj;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/wn;

    invoke-virtual {v0, v4}, Lbl/wn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    move v0, v2

    .line 666
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_68

    .line 668
    :cond_81
    new-instance v0, Lbl/xa$a;

    invoke-direct {v0, p1}, Lbl/xa$a;-><init>(Landroid/app/Activity;)V

    .line 669
    invoke-virtual {v0, v1}, Lbl/xa$a;->a(I)Lbl/xa$a;

    move-result-object v1

    const-string v2, "\u5f39\u5e55\u5927\u5c0f"

    invoke-virtual {v1, v2}, Lbl/xa$a;->a(Ljava/lang/String;)Lbl/xa$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbl/xa$a;->b(I)Lbl/xa$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->o:Lbl/cj;
    invoke-static {v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$500(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lbl/cj;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$1;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$1;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)V

    invoke-virtual {v1, v2, v3}, Lbl/xa$a;->a(Lbl/cj;Lbl/xa$c;)Lbl/xa$a;

    .line 681
    invoke-virtual {v0}, Lbl/xa$a;->a()Lbl/xa;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xa;->show()V

    goto/16 :goto_d

    .line 684
    :pswitch_ab
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 685
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 686
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->p:Lbl/cj;
    invoke-static {v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$600(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lbl/cj;

    move-result-object v2

    invoke-virtual {v2}, Lbl/cj;->b()I

    move-result v5

    move v3, v0

    move v2, v0

    .line 688
    :goto_cc
    if-ge v2, v5, :cond_e5

    .line 689
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->p:Lbl/cj;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$600(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lbl/cj;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/wn;

    invoke-virtual {v0, v4}, Lbl/wn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    move v0, v2

    .line 692
    :goto_e1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_cc

    .line 694
    :cond_e5
    new-instance v0, Lbl/xa$a;

    invoke-direct {v0, p1}, Lbl/xa$a;-><init>(Landroid/app/Activity;)V

    .line 695
    invoke-virtual {v0, v1}, Lbl/xa$a;->a(I)Lbl/xa$a;

    move-result-object v1

    const-string v2, "\u5f39\u5e55\u900f\u660e\u5ea6"

    invoke-virtual {v1, v2}, Lbl/xa$a;->a(Ljava/lang/String;)Lbl/xa$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbl/xa$a;->b(I)Lbl/xa$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->p:Lbl/cj;
    invoke-static {v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$600(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lbl/cj;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$2;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$2;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)V

    invoke-virtual {v1, v2, v3}, Lbl/xa$a;->a(Lbl/cj;Lbl/xa$c;)Lbl/xa$a;

    .line 707
    invoke-virtual {v0}, Lbl/xa$a;->a()Lbl/xa;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xa;->show()V

    goto/16 :goto_d

    .line 710
    :pswitch_10f
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$300(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->o()V

    .line 711
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b(Landroid/app/Activity;Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_d

    .line 714
    :pswitch_11d
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 716
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->m:Lmybl/BiliLiveContent;
    invoke-static {v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$400(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lmybl/BiliLiveContent;

    move-result-object v4

    move v2, v0

    move v3, v0

    .line 717
    :goto_12a
    iget-object v0, v4, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    array-length v0, v0

    if-ge v2, v0, :cond_13c

    .line 718
    iget-object v0, v4, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    aget v0, v0, v2

    iget v5, v4, Lmybl/BiliLiveContent;->mCurrentQuality:I

    if-ne v0, v5, :cond_138

    move v3, v2

    .line 717
    :cond_138
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12a

    .line 720
    :cond_13c
    new-instance v0, Lbl/xa$a;

    invoke-direct {v0, p1}, Lbl/xa$a;-><init>(Landroid/app/Activity;)V

    .line 721
    invoke-virtual {v0, v1}, Lbl/xa$a;->a(I)Lbl/xa$a;

    move-result-object v1

    const-string v2, "\u753b\u8d28"

    invoke-virtual {v1, v2}, Lbl/xa$a;->a(Ljava/lang/String;)Lbl/xa$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbl/xa$a;->b(I)Lbl/xa$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v2, v2, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->qualitys:Lbl/cj;

    new-instance v3, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$3;

    invoke-direct {v3, p0, v4, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$3;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;Lmybl/BiliLiveContent;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lbl/xa$a;->a(Lbl/cj;Lbl/xa$c;)Lbl/xa$a;

    .line 736
    invoke-virtual {v0}, Lbl/xa$a;->a()Lbl/xa;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xa;->show()V

    goto/16 :goto_d

    .line 739
    :pswitch_164
    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->a(Z)V

    .line 740
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_audio_balance_level(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 742
    const-string v3, "standard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a6

    move v0, v1

    .line 747
    :cond_17e
    :goto_17e
    new-instance v2, Lbl/xa$a;

    invoke-direct {v2, p1}, Lbl/xa$a;-><init>(Landroid/app/Activity;)V

    .line 748
    invoke-virtual {v2, v1}, Lbl/xa$a;->a(I)Lbl/xa$a;

    move-result-object v1

    const-string v3, "\u97f3\u9891\u5e73\u8861"

    invoke-virtual {v1, v3}, Lbl/xa$a;->a(Ljava/lang/String;)Lbl/xa$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl/xa$a;->b(I)Lbl/xa$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v1, v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    new-instance v3, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$4;

    invoke-direct {v3, p0, p1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$4;-><init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v3}, Lbl/xa$a;->a(Lbl/cj;Lbl/xa$c;)Lbl/xa$a;

    .line 762
    invoke-virtual {v2}, Lbl/xa$a;->a()Lbl/xa;

    move-result-object v0

    invoke-virtual {v0}, Lbl/xa;->show()V

    goto/16 :goto_d

    .line 744
    :cond_1a6
    const-string v3, "high_dynamic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17e

    .line 745
    const/4 v0, 0x2

    goto :goto_17e

    :cond_1b0
    move v0, v3

    goto/16 :goto_e1

    :cond_1b3
    move v0, v3

    goto/16 :goto_7d

    .line 645
    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2f
        :pswitch_47
        :pswitch_ab
        :pswitch_10f
        :pswitch_11d
        :pswitch_164
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    const v3, 0x7f0700a4

    const/4 v0, 0x1

    .line 770
    sget-object v1, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$5;->$SwitchMap$com$bilibili$tv$newplayer$bean$PlayControllerOptionType:[I

    invoke-virtual {p2}, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_aa

    .line 807
    :cond_f
    :goto_f
    return-void

    .line 772
    :pswitch_10
    const-string v1, "UP\u6295\u7a3f"

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 774
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v2}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lbl/abd;->get_thumb_url_d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 776
    :cond_30
    instance-of v1, p4, Lcom/bilibili/tv/widget/ScalableImageView;

    if-eqz v1, :cond_f

    .line 777
    check-cast p4, Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {p4, v0}, Lcom/bilibili/tv/widget/ScalableImageView;->setRoundAsCircle(Z)V

    goto :goto_f

    .line 782
    :pswitch_3a
    const v1, 0x7f0700dd

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 783
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$300(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v1

    iget-boolean v1, v1, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    if-nez v1, :cond_5d

    :goto_4a
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 784
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$300(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->G:Z

    if-eqz v0, :cond_5f

    const-string v0, "\u5f39\u5e55\u5f00"

    :goto_59
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 783
    :cond_5d
    const/4 v0, 0x0

    goto :goto_4a

    .line 784
    :cond_5f
    const-string v0, "\u5f39\u5e55\u5173"

    goto :goto_59

    .line 787
    :pswitch_62
    const v0, 0x7f07006b

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 788
    const-string v0, "\u5f39\u5e55\u5927\u5c0f"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 791
    :pswitch_6e
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 792
    const-string v0, "\u5f39\u5e55\u900f\u660e"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 795
    :pswitch_77
    const v0, 0x7f070071

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 796
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$300(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->p()Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string v0, "\u955c\u50cf\u5f00"

    :goto_8b
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_8f
    const-string v0, "\u955c\u50cf\u5173"

    goto :goto_8b

    .line 799
    :pswitch_92
    const v0, 0x7f0700fc

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 800
    const-string v0, "\u753b\u8d28"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 803
    :pswitch_9f
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 804
    const-string v0, "\u97f3\u9891\u5e73\u8861"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 770
    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_10
        :pswitch_3a
        :pswitch_62
        :pswitch_6e
        :pswitch_77
        :pswitch_92
        :pswitch_9f
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 616
    const/4 v0, 0x0

    .line 618
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 593
    invoke-static {p1}, Lbl/xb;->a(Landroid/view/ViewGroup;)Lbl/xb;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    if-nez v0, :cond_f

    .line 611
    :cond_e
    :goto_e
    return-void

    .line 602
    :cond_f
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    .line 603
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_e

    .line 607
    check-cast p1, Lbl/xb;

    .line 608
    iget-object v2, p1, Lbl/xb;->n:Landroid/widget/TextView;

    iget-object v3, p1, Lbl/xb;->o:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->b(Landroid/app/Activity;Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 609
    iget-object v1, p1, Lbl/xb;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 610
    iget-object v0, p1, Lbl/xb;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->c:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    # getter for: Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->k:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->access$300(Lcom/bilibili/tv/newplayer/widget/LivePlayerController;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_15

    .line 641
    :cond_14
    :goto_14
    return-void

    .line 631
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 632
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->b()V

    .line 633
    instance-of v0, v2, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    if-eqz v0, :cond_14

    .line 634
    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 635
    const v1, 0x7f0800a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 636
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    .line 639
    check-cast v2, Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->a(Landroid/app/Activity;Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_14
.end method
