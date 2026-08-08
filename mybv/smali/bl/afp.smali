.class public final Lbl/afp;
.super Lbl/adx;
.source "afp.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lbl/adx;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    .line 25
    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lbl/afp;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x6

    goto :goto_7
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    packed-switch p1, :pswitch_data_3c

    .line 46
    :cond_4
    :goto_4
    return-object v0

    .line 32
    :pswitch_5
    sget-object v0, Lbl/afq;->Companion:Lbl/afq$a;

    invoke-virtual {v0}, Lbl/afq$a;->a()Lbl/afq;

    move-result-object v0

    goto :goto_4

    .line 34
    :pswitch_c
    sget-object v0, Lbl/afn;->Companion:Lbl/afn$a;

    invoke-virtual {v0}, Lbl/afn$a;->a()Lbl/afn;

    move-result-object v0

    goto :goto_4

    .line 36
    :pswitch_13
    sget-object v0, Lbl/afk;->Companion:Lbl/afk$a;

    invoke-virtual {v0}, Lbl/afk$a;->a()Lbl/afk;

    move-result-object v0

    goto :goto_4

    .line 38
    :pswitch_1a
    sget-object v0, Lbl/afm;->Companion:Lbl/afm$a;

    invoke-virtual {v0}, Lbl/afm$a;->a()Lbl/afm;

    move-result-object v0

    goto :goto_4

    .line 40
    :pswitch_21
    sget-object v0, Lbl/afm3;->Companion:Lbl/afm3$a;

    invoke-virtual {v0}, Lbl/afm3$a;->a()Lbl/afm3;

    move-result-object v0

    goto :goto_4

    .line 42
    :pswitch_28
    sget-object v0, Lbl/afm4;->Companion:Lbl/afm4$a;

    invoke-virtual {v0}, Lbl/afm4$a;->a()Lbl/afm4;

    move-result-object v0

    goto :goto_4

    .line 44
    :pswitch_2f
    invoke-direct {p0}, Lbl/afp;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lbl/afm5;->Companion:Lbl/afm5$a;

    invoke-virtual {v0}, Lbl/afm5$a;->a()Lbl/afm5;

    move-result-object v0

    goto :goto_4

    .line 30
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_c
        :pswitch_13
        :pswitch_1a
        :pswitch_21
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_2e

    .line 67
    const-string v0, ""

    :goto_5
    return-object v0

    .line 53
    :pswitch_6
    const v0, 0x7f0c0122

    invoke-static {v0}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 55
    :pswitch_e
    const-string v0, "\u64ad\u653e\u8bbe\u7f6e"

    goto :goto_5

    .line 57
    :pswitch_11
    const-string v0, "\u7f13\u5b58\u8bbe\u7f6e"

    goto :goto_5

    .line 59
    :pswitch_14
    const v0, 0x7f0c0119

    invoke-static {v0}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 61
    :pswitch_1c
    const-string v0, "\u5b9e\u9a8c\u5ba4"

    goto :goto_5

    .line 63
    :pswitch_1f
    const-string v0, "\u4e2a\u6027\u5316"

    goto :goto_5

    .line 65
    :pswitch_22
    invoke-direct {p0}, Lbl/afp;->e()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "\u4e0b\u8f7d\u8bbe\u7f6e"

    goto :goto_5

    :cond_2b
    const-string v0, ""

    goto :goto_5

    .line 51
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method
