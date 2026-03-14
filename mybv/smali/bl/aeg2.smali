.class public Lbl/aeg2;
.super Lbl/adx;
.source "aeg2.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lbl/adx;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x2

    return v0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_10

    .line 38
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 34
    :pswitch_5
    invoke-static {}, Lbl/aef2;->b()Lbl/aef2;

    move-result-object v0

    goto :goto_4

    .line 36
    :pswitch_a
    invoke-static {}, Lbl/aef4;->b()Lbl/aef4;

    move-result-object v0

    goto :goto_4

    .line 32
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 16
    packed-switch p1, :pswitch_data_c

    .line 22
    const-string v0, ""

    :goto_5
    return-object v0

    .line 18
    :pswitch_6
    const-string v0, "\u7efc\u5408\u70ed\u95e8"

    goto :goto_5

    .line 20
    :pswitch_9
    const-string v0, "\u5165\u7ad9\u5fc5\u5237"

    goto :goto_5

    .line 16
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method
