.class public final Lbl/afm4;
.super Lbl/adw;
.source "afm4.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afm4$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afm4$a;

.field public static tab_names:[Ljava/lang/String;


# instance fields
.field private fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lbl/afm4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afm4$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afm4;->Companion:Lbl/afm4$a;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u767b\u5f55"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u52a8\u6001"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5f85\u770b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5173\u6ce8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6536\u85cf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5386\u53f2"

    aput-object v2, v0, v1

    sput-object v0, Lbl/afm4;->tab_names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lbl/adw;-><init>()V

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    iput-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    iget-object v2, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 174
    :cond_6
    :goto_6
    return v0

    .line 161
    :cond_7
    iget-object v2, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    .line 163
    :goto_28
    const/4 v3, 0x6

    if-ge v2, v3, :cond_48

    .line 164
    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    if-eqz v3, :cond_45

    iget-object v3, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_45

    move v2, v0

    .line 169
    :goto_3c
    if-eqz v2, :cond_6

    .line 170
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    move v0, v1

    .line 171
    goto :goto_6

    .line 163
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_48
    move v2, v1

    goto :goto_3c
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 154
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v1, 0x1

    const v9, 0x7f0700f0

    const v8, 0x7f0700ef

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_3c

    .line 94
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_8d

    move-object v0, p1

    .line 95
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    :goto_22
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-nez v0, :cond_9f

    move v0, v1

    :goto_27
    sput-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    .line 103
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar_on"

    sget-boolean v4, Lmybl/BiliFilter;->progressbar_on:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_3c
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_6f

    .line 106
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_a1

    move-object v0, p1

    .line 107
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5173"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    :goto_55
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-nez v0, :cond_b3

    move v0, v1

    :goto_5a
    sput-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    .line 115
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "fastquit_on"

    sget-boolean v4, Lmybl/BiliFilter;->fastquit_on:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6f
    move v5, v2

    .line 117
    :goto_70
    if-ge v5, v10, :cond_101

    .line 118
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v5

    if-ne v0, p1, :cond_fc

    .line 119
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v0, v5

    .line 120
    add-int/lit8 v0, v5, -0x1

    :goto_7e
    if-ltz v0, :cond_b5

    sget-object v4, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    add-int/lit8 v6, v0, 0x1

    sget-object v7, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v7, v7, v0

    aput v7, v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_7e

    :cond_8d
    move-object v0, p1

    .line 99
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_22

    :cond_9f
    move v0, v2

    .line 102
    goto :goto_27

    :cond_a1
    move-object v0, p1

    .line 111
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u5f00"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_55

    :cond_b3
    move v0, v2

    .line 114
    goto :goto_5a

    .line 121
    :cond_b5
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aput v3, v0, v2

    .line 122
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v3, "myarea_map"

    sget-object v4, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    move v4, v2

    .line 123
    :goto_c9
    if-ge v4, v10, :cond_fc

    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v4, v5, :cond_f9

    const-string v3, "\u226a "

    :goto_de
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lbl/afm4;->tab_names:[Ljava/lang/String;

    sget-object v7, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_c9

    :cond_f9
    const-string v3, ""

    goto :goto_de

    .line 117
    :cond_fc
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_70

    .line 127
    :cond_101
    iget-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_117

    .line 128
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lbl/abd;->set_home_default(Landroid/content/Context;I)V

    .line 129
    iget-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 130
    iget-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 136
    :cond_116
    :goto_116
    return-void

    .line 131
    :cond_117
    iget-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_116

    .line 132
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lbl/abd;->set_home_default(Landroid/content/Context;I)V

    .line 133
    iget-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 134
    iget-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_116
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0700ef

    const v7, 0x7f0700f0

    const v6, 0x7f0700e8

    const/4 v2, 0x0

    .line 38
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const v0, 0x7f0a008a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 40
    const v0, 0x7f08017a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 41
    const v0, 0x7f08017b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 42
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v0, 0x7f08017e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v1, v2

    .line 43
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x1

    const v0, 0x7f08017f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v1, v4

    .line 44
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x2

    const v0, 0x7f080180

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v1, v4

    .line 45
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x3

    const v0, 0x7f080181

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v1, v4

    .line 46
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x4

    const v0, 0x7f080182

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v1, v4

    .line 47
    iget-object v1, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v4, 0x5

    const v0, 0x7f080183

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    aput-object v0, v1, v4

    .line 49
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 50
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 51
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 52
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 53
    sget-boolean v0, Lmybl/BiliFilter;->progressbar_on:Z

    if-eqz v0, :cond_a9

    .line 54
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v1, "\u5f00"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 57
    :cond_a9
    sget-boolean v0, Lmybl/BiliFilter;->fastquit_on:Z

    if-eqz v0, :cond_bf

    .line 58
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v1, "\u5f00"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 61
    :cond_bf
    iget-object v0, p0, Lbl/afm4;->progressbar_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lbl/afm4;->fastquit_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v1, v2

    .line 63
    :goto_ca
    const/4 v0, 0x6

    if-ge v1, v0, :cond_fb

    .line 64
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 65
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 66
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    sget-object v4, Lbl/afm4;->tab_names:[Ljava/lang/String;

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ca

    .line 70
    :cond_fb
    const v0, 0x7f08018b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 71
    const v0, 0x7f08018c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 72
    iget-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 73
    iget-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 74
    iget-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 75
    iget-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 76
    iget-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lbl/afm4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_default(Landroid/content/Context;)I

    move-result v0

    .line 80
    if-nez v0, :cond_144

    .line 81
    iget-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 82
    iget-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 88
    :goto_143
    return-object v3

    .line 84
    :cond_144
    iget-object v0, p0, Lbl/afm4;->hotRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lbl/afm4;->personalRecommendButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_143
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 140
    if-eqz p2, :cond_4c

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    :goto_a
    move v2, v3

    .line 145
    :goto_b
    const/4 v0, 0x6

    if-ge v2, v0, :cond_56

    .line 146
    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_48

    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lbl/afm4;->tab_buttons:[Lcom/bilibili/tv/widget/DrawFrameLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_53

    const-string v1, "\u226a "

    :goto_31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lbl/afm4;->tab_names:[Ljava/lang/String;

    sget-object v5, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_4c
    move-object v0, p1

    .line 143
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    goto :goto_a

    .line 146
    :cond_53
    const-string v1, ""

    goto :goto_31

    .line 148
    :cond_56
    return-void
.end method
