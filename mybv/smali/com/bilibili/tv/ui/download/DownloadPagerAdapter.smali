.class public final Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
.super Lbl/adx;
.source "DownloadPagerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lbl/adx;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    .line 21
    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    return v0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 26
    packed-switch p1, :pswitch_data_12

    .line 34
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 29
    :pswitch_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->newInstance(Z)Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    move-result-object v0

    goto :goto_4

    .line 32
    :pswitch_b
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;->newInstance(Z)Lcom/bilibili/tv/ui/download/GroupedDownloadFragment;

    move-result-object v0

    goto :goto_4

    .line 26
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_16

    .line 44
    const-string v0, ""

    :goto_5
    return-object v0

    .line 40
    :pswitch_6
    const v0, 0x7f0c0194

    invoke-static {v0}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 42
    :pswitch_e
    const v0, 0x7f0c0195

    invoke-static {v0}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 38
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method
