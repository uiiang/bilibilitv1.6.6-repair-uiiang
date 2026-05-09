.class public final Lbl/afm3;
.super Lbl/adw;
.source "afm3.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afm3$Response;,
        Lbl/afm3$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afm3$a;

.field public static tmp_cdns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static tmp_splashs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private cdn_custom_layout:Landroid/view/View;

.field private cdn_pref_auto:Landroid/widget/RadioButton;

.field private cdn_pref_bilivideo:Landroid/widget/RadioButton;

.field private cdn_pref_manual:Landroid/widget/RadioButton;

.field private cdn_pref_mcdn:Landroid/widget/RadioButton;

.field private cdn_preference_group:Landroid/widget/RadioGroup;

.field private cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

.field private export_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private filter_path:Lcom/bilibili/tv/widget/DrawEditText;

.field private folder_open_button:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private skip_checkbox0:Landroid/widget/CheckBox;

.field private skip_checkbox1:Landroid/widget/CheckBox;

.field private skip_checkbox2:Landroid/widget/CheckBox;

.field private splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private view_radiobutton0:Landroid/widget/RadioButton;

.field private view_radiobutton1:Landroid/widget/RadioButton;

.field private view_radiobutton2:Landroid/widget/RadioButton;

.field private view_radiogroup:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lbl/afm3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afm3$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afm3;->Companion:Lbl/afm3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lbl/adw;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lbl/afm3;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lbl/afm3;->updateCdnCustomLayoutVisibility(I)V

    return-void
.end method

.method static synthetic access$100(Lbl/afm3;)Lcom/bilibili/tv/widget/DrawEditText;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    return-object v0
.end method

.method static synthetic access$200(Lbl/afm3;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method private updateCdnCustomLayoutVisibility(I)V
    .locals 6

    .prologue
    const v5, 0x7f0801e5

    const v4, 0x7f080176

    const v3, 0x7f080174

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lbl/afm3;->cdn_custom_layout:Landroid/view/View;

    if-eqz v0, :cond_4e

    .line 364
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4f

    .line 365
    iget-object v0, p0, Lbl/afm3;->cdn_custom_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawEditText;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawEditText;->setFocusable(Z)V

    .line 369
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawEditText;->setFocusableInTouchMode(Z)V

    .line 370
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawEditText;->setClickable(Z)V

    .line 372
    iget-object v0, p0, Lbl/afm3;->cdn_pref_auto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 373
    iget-object v0, p0, Lbl/afm3;->cdn_pref_bilivideo:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 374
    iget-object v0, p0, Lbl/afm3;->cdn_pref_mcdn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 375
    iget-object v0, p0, Lbl/afm3;->cdn_pref_manual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 377
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusUpId(I)V

    .line 378
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawEditText;->setNextFocusUpId(I)V

    .line 393
    :cond_4e
    :goto_4e
    return-void

    .line 380
    :cond_4f
    iget-object v0, p0, Lbl/afm3;->cdn_custom_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setFocusable(Z)V

    .line 384
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setFocusableInTouchMode(Z)V

    .line 385
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setClickable(Z)V

    .line 387
    iget-object v0, p0, Lbl/afm3;->cdn_pref_auto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 388
    iget-object v0, p0, Lbl/afm3;->cdn_pref_bilivideo:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 389
    iget-object v0, p0, Lbl/afm3;->cdn_pref_mcdn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 390
    iget-object v0, p0, Lbl/afm3;->cdn_pref_manual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    goto :goto_4e
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 442
    :cond_d
    :goto_d
    return v0

    .line 425
    :cond_e
    iget-object v1, p0, Lbl/afm3;->folder_open_button:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->folder_open_button:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 426
    iget-object v1, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawEditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 427
    iget-object v1, p0, Lbl/afm3;->cdn_pref_auto:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->cdn_pref_auto:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 428
    iget-object v1, p0, Lbl/afm3;->cdn_pref_bilivideo:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->cdn_pref_bilivideo:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 429
    iget-object v1, p0, Lbl/afm3;->cdn_pref_mcdn:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->cdn_pref_mcdn:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 430
    iget-object v1, p0, Lbl/afm3;->cdn_pref_manual:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->cdn_pref_manual:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 431
    iget-object v1, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 432
    iget-object v1, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawEditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 433
    iget-object v1, p0, Lbl/afm3;->skip_checkbox0:Landroid/widget/CheckBox;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->skip_checkbox0:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 434
    iget-object v1, p0, Lbl/afm3;->skip_checkbox1:Landroid/widget/CheckBox;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->skip_checkbox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 435
    iget-object v1, p0, Lbl/afm3;->skip_checkbox2:Landroid/widget/CheckBox;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->skip_checkbox2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 436
    iget-object v1, p0, Lbl/afm3;->view_radiobutton0:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->view_radiobutton0:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 437
    iget-object v1, p0, Lbl/afm3;->view_radiobutton1:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->view_radiobutton1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 438
    iget-object v1, p0, Lbl/afm3;->view_radiobutton2:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->view_radiobutton2:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 439
    iget-object v1, p0, Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 440
    iget-object v1, p0, Lbl/afm3;->export_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbl/afm3;->export_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 441
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 442
    const/4 v0, 0x1

    goto/16 :goto_d
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lbl/afm3;->skip_checkbox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/afm3;->skip_checkbox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Lbl/afm3;->skip_checkbox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbl/afm3;->skip_checkbox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    .line 420
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lbl/afm3;->skip_checkbox0:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_d

    .line 324
    if-eqz p2, :cond_3e

    sget-object v0, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v1, "intro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_d
    :goto_d
    iget-object v0, p0, Lbl/afm3;->skip_checkbox1:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1a

    .line 328
    if-eqz p2, :cond_46

    sget-object v0, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v1, "outro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lbl/afm3;->skip_checkbox2:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_30

    .line 332
    if-eqz p2, :cond_4e

    .line 333
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "UP\u4e3b\u521b\u4f5c\u4e0d\u6613\uff0c\u5efa\u8bae\u53ea\u5c4f\u853d\u5f71\u54cd\u89c2\u611f\u7684\u5546\u4e1a\u5e7f\u544a"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v1, "sponsor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_30
    :goto_30
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    invoke-static {v0, v1}, Lbl/abd;->set_skip_categories(Landroid/content/Context;Ljava/util/Set;)V

    .line 339
    return-void

    .line 325
    :cond_3e
    sget-object v0, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v1, "intro"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    .line 329
    :cond_46
    sget-object v0, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v1, "outro"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 336
    :cond_4e
    sget-object v0, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v1, "sponsor"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_30
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_58

    .line 176
    sget-boolean v0, Lmybl/BiliFilter;->filter_on:Z

    if-eqz v0, :cond_8f

    move-object v0, p1

    .line 177
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u7981\u7528\u89c6\u9891\u8fc7\u6ee4"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v3, 0x7f08017c

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    .line 180
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setFocusable(Z)V

    .line 182
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setClickable(Z)V

    .line 183
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawEditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_3e
    sget-boolean v0, Lmybl/BiliFilter;->filter_on:Z

    if-nez v0, :cond_df

    move v0, v1

    :goto_43
    sput-boolean v0, Lmybl/BiliFilter;->filter_on:Z

    .line 203
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "filter_on"

    sget-boolean v4, Lmybl/BiliFilter;->filter_on:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    :cond_58
    iget-object v0, p0, Lbl/afm3;->folder_open_button:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-ne p1, v0, :cond_77

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v3, "application/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :try_start_6d
    const-string v3, "\u9009\u62e9\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lbl/afm3;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_e2

    .line 216
    :cond_77
    :goto_77
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_17a

    .line 218
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v11, :cond_ed

    .line 219
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u5148\u9009\u62e9\"\u624b\u52a8\u6307\u5b9a\"\u6a21\u5f0f"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    move-object v0, p1

    .line 186
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v3, "\u542f\u7528\u89c6\u9891\u8fc7\u6ee4"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v3, 0x7f080173

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    .line 189
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawEditText;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawEditText;->setFocusable(Z)V

    .line 191
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawEditText;->setClickable(Z)V

    .line 193
    :try_start_ba
    invoke-static {}, Lmybl/BiliFilter;->updateConfig()V

    .line 194
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "\u8fc7\u6ee4\u5668\u914d\u7f6e\u5df2\u66f4\u65b0"

    invoke-static {v0, v3}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c6} :catch_cf

    .line 200
    :goto_c6
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    sget-object v3, Lmybl/BiliFilter;->filter_rule_path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3e

    .line 196
    :catch_cf
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c6

    :cond_df
    move v0, v2

    .line 202
    goto/16 :goto_43

    .line 212
    :catch_e2
    move-exception v0

    .line 213
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "\u65e0\u53ef\u7528\u6587\u4ef6\u7ba1\u7406\u5668\uff0c\u8bf7\u624b\u52a8\u8f93\u5165"

    invoke-static {v0, v3}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_77

    .line 222
    :cond_ed
    sget-object v0, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    sput-object v0, Lbl/afm3;->tmp_cdns:Ljava/util/List;

    .line 223
    sget-object v0, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    .line 224
    sget-object v3, Lbl/afm3;->tmp_cdns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_159

    .line 225
    const-string v0, "{\"\u817e\u8baf\":[\"upos-sz-mirrorcos.bilivideo.com\",\"upos-sz-mirrorcosb.bilivideo.com\",\"upos-sz-mirrorcoso1.bilivideo.com\"],\"\u767e\u5ea6\":[\"upos-sz-mirrorbos.bilivideo.com\"],\"\u963f\u91cc\":[\"upos-sz-mirrorali.bilivideo.com\",\"upos-sz-mirroralib.bilivideo.com\",\"upos-sz-mirroralio1.bilivideo.com\"],\"\u534e\u4e3a\":[\"upos-sz-mirrorhw.bilivideo.com\",\"upos-sz-mirrorhwb.bilivideo.com\",\"upos-sz-mirrorhwo1.bilivideo.com\",\"upos-sz-mirror08c.bilivideo.com\",\"upos-sz-mirror08h.bilivideo.com\",\"upos-sz-mirror08ct.bilivideo.com\"],\"\u6d77\u5916\":[\"upos-sz-mirroraliov.bilivideo.com\"],\"\u5176\u5b83\":[\"upos-sz-upcdnbda2.bilivideo.com\",\"upos-sz-upcdnws.bilivideo.com\",\"upos-tf-all-tx.bilivideo.com\"]}"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbl/afm3;->tmp_cdns:Ljava/util/List;

    .line 227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_115
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_158

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    move v3, v2

    .line 230
    :goto_126
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_115

    .line 231
    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 232
    sget-object v10, Lbl/afm3;->tmp_cdns:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff08"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff09"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_126

    :cond_158
    move-object v0, v4

    .line 237
    :cond_159
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbl/afm3;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v4, v2, [Ljava/lang/String;

    .line 238
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lbl/afm3$3;

    invoke-direct {v4, p0}, Lbl/afm3$3;-><init>(Lbl/afm3;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 248
    :cond_17a
    iget-object v0, p0, Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_1e5

    .line 251
    const-string v0, "{\"\u6b3e\u5f0f\u4e00\":\"http://i0.hdslb.com/bfs/archive/1d40e975b09d5c87b11b3ae0c9ce6c6b82f63d9e.png\",\"\u6b3e\u5f0f\u4e8c\":\"http://i0.hdslb.com/bfs/archive/351c02ba3f75f5eaa107c68ddf2222d74521773a.png\",\"slogan\":\"http://i0.hdslb.com/bfs/archive/06543a163e2a4e0189b12e3025f9c1d69203ed6d.png\",\"10\u5468\u5e74\":\"http://i0.hdslb.com/bfs/archive/574469a4a20f41ba4dc9ecd41d15f94eea875ed9.png\",\"11\u5468\u5e74\":\"http://i0.hdslb.com/bfs/archive/3007728d674a385306ba0b07055103a78b9eed62.png\",\"BW2020\":\"http://i0.hdslb.com/bfs/archive/e2d2f57e08b511d1a47203859f7bddb4ef9d4e16.png\"}"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 252
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "\u9ed8\u8ba4"

    aput-object v0, v4, v2

    const-string v0, "\u6b3e\u5f0f\u4e00"

    aput-object v0, v4, v1

    const/4 v0, 0x2

    const-string v1, "\u6b3e\u5f0f\u4e8c"

    aput-object v1, v4, v0

    const-string v0, "slogan"

    aput-object v0, v4, v11

    const/4 v0, 0x4

    const-string v1, "10\u5468\u5e74"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "11\u5468\u5e74"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "BW2020"

    aput-object v1, v4, v0

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbl/afm3;->tmp_splashs:Ljava/util/List;

    .line 254
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    sget-object v2, Lbl/afm3;->tmp_splashs:Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b6

    .line 257
    :cond_1cc
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbl/afm3;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbl/afm3$4;

    invoke-direct {v1, p0, v4}, Lbl/afm3$4;-><init>(Lbl/afm3;[Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 300
    :cond_1e5
    iget-object v0, p0, Lbl/afm3;->export_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_8e

    .line 304
    :try_start_1e9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -t 10000"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1f6} :catch_24a

    move-result-object v2

    .line 305
    :try_start_1f7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/MainApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "bilibilitv.log"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_20c} :catch_24e

    .line 307
    :try_start_20c
    invoke-static {v2, v1}, Lbl/kz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 308
    invoke-static {v2}, Lbl/kz;->a(Ljava/io/InputStream;)V

    .line 309
    invoke-static {v1}, Lbl/kz;->a(Ljava/io/OutputStream;)V

    .line 310
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u65e5\u5fd7\u5bfc\u51fa\u81f3\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_233} :catch_235

    goto/16 :goto_8e

    .line 311
    :catch_235
    move-exception v0

    .line 312
    :goto_236
    invoke-static {v2}, Lbl/kz;->a(Ljava/io/InputStream;)V

    .line 313
    invoke-static {v1}, Lbl/kz;->a(Ljava/io/OutputStream;)V

    .line 314
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u65e5\u5fd7\u5bfc\u51fa\u5931\u8d25\uff01"

    invoke-static {v1, v2}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8e

    .line 311
    :catch_24a
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    goto :goto_236

    :catch_24e
    move-exception v0

    move-object v1, v5

    goto :goto_236
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v3, 0x7f080173

    const v2, 0x7f0700e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 63
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const v0, 0x7f0a0089

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f080172

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 66
    const v0, 0x7f08017c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lbl/afm3;->folder_open_button:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 67
    const v0, 0x7f080174

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 68
    const v0, 0x7f080179

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 69
    const v0, 0x7f080186

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm3;->export_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawEditText;

    iput-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    .line 71
    const v0, 0x7f080175

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawEditText;

    iput-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    .line 72
    const v0, 0x7f080176

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbl/afm3;->skip_checkbox0:Landroid/widget/CheckBox;

    .line 73
    const v0, 0x7f080177

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbl/afm3;->skip_checkbox1:Landroid/widget/CheckBox;

    .line 74
    const v0, 0x7f080178

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbl/afm3;->skip_checkbox2:Landroid/widget/CheckBox;

    .line 75
    const v0, 0x7f080187

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lbl/afm3;->view_radiobutton0:Landroid/widget/RadioButton;

    .line 76
    const v0, 0x7f080188

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lbl/afm3;->view_radiobutton1:Landroid/widget/RadioButton;

    .line 77
    const v0, 0x7f080189

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lbl/afm3;->view_radiobutton2:Landroid/widget/RadioButton;

    .line 78
    const v0, 0x7f08018a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lbl/afm3;->view_radiogroup:Landroid/widget/RadioGroup;

    .line 79
    const v0, 0x7f0801e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lbl/afm3;->cdn_preference_group:Landroid/widget/RadioGroup;

    .line 80
    const v0, 0x7f0801e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lbl/afm3;->cdn_pref_auto:Landroid/widget/RadioButton;

    .line 81
    const v0, 0x7f0801e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lbl/afm3;->cdn_pref_bilivideo:Landroid/widget/RadioButton;

    .line 82
    const v0, 0x7f0801e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lbl/afm3;->cdn_pref_mcdn:Landroid/widget/RadioButton;

    .line 83
    const v0, 0x7f0801e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lbl/afm3;->cdn_pref_manual:Landroid/widget/RadioButton;

    .line 84
    const v0, 0x7f0801e9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbl/afm3;->cdn_custom_layout:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 87
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    iget-object v0, p0, Lbl/afm3;->folder_open_button:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 89
    iget-object v0, p0, Lbl/afm3;->folder_open_button:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 91
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 92
    iget-object v0, p0, Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 93
    iget-object v0, p0, Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    iget-object v0, p0, Lbl/afm3;->export_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 95
    iget-object v0, p0, Lbl/afm3;->export_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 96
    sget-boolean v0, Lmybl/BiliFilter;->filter_on:Z

    if-eqz v0, :cond_15b

    .line 97
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v2, "\u542f\u7528\u89c6\u9891\u8fc7\u6ee4"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v2, 0x7f0700f0

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setNextFocusRightId(I)V

    .line 100
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawEditText;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawEditText;->setFocusable(Z)V

    .line 102
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawEditText;->setClickable(Z)V

    .line 103
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_filter_path(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_15b
    sget-object v0, Lmybl/VideoViewParams;->cdn_history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_21e

    .line 106
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v2, "\u901a\u7528CDN"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_170
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    sget-object v2, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawEditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lbl/afm3;->filter_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lbl/afm3;->folder_open_button:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lbl/afm3;->export_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    iget-object v0, p0, Lbl/afm3;->skip_checkbox0:Landroid/widget/CheckBox;

    sget-object v2, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v3, "intro"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lbl/afm3;->skip_checkbox1:Landroid/widget/CheckBox;

    sget-object v2, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v3, "outro"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lbl/afm3;->skip_checkbox2:Landroid/widget/CheckBox;

    sget-object v2, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v3, "sponsor"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lbl/afm3;->view_radiogroup:Landroid/widget/RadioGroup;

    sget v2, Lmybl/BiliFilter;->prefer_videoview:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lbl/afm3;->skip_checkbox0:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iget-object v0, p0, Lbl/afm3;->skip_checkbox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v0, p0, Lbl/afm3;->skip_checkbox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    iget-object v0, p0, Lbl/afm3;->view_radiogroup:Landroid/widget/RadioGroup;

    new-instance v2, Lbl/afm3$1;

    invoke-direct {v2, p0}, Lbl/afm3$1;-><init>(Lbl/afm3;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 138
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v0

    .line 139
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/RadioButton;

    iget-object v3, p0, Lbl/afm3;->cdn_pref_auto:Landroid/widget/RadioButton;

    aput-object v3, v2, v4

    iget-object v3, p0, Lbl/afm3;->cdn_pref_bilivideo:Landroid/widget/RadioButton;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lbl/afm3;->cdn_pref_mcdn:Landroid/widget/RadioButton;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lbl/afm3;->cdn_pref_manual:Landroid/widget/RadioButton;

    aput-object v4, v2, v3

    .line 140
    if-ltz v0, :cond_22d

    array-length v3, v2

    if-ge v0, v3, :cond_22d

    .line 141
    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 145
    :goto_210
    invoke-direct {p0, v0}, Lbl/afm3;->updateCdnCustomLayoutVisibility(I)V

    .line 147
    iget-object v0, p0, Lbl/afm3;->cdn_preference_group:Landroid/widget/RadioGroup;

    new-instance v2, Lbl/afm3$2;

    invoke-direct {v2, p0}, Lbl/afm3$2;-><init>(Lbl/afm3;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 170
    return-object v1

    .line 109
    :cond_21e
    iget-object v0, p0, Lbl/afm3;->cdn_button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    const-string v2, "\u533a\u57dfCDN"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_170

    .line 143
    :cond_22d
    iget-object v2, p0, Lbl/afm3;->cdn_pref_auto:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_210
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 397
    const/4 v0, 0x6

    if-ne p2, v0, :cond_80

    .line 398
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    if-ne p1, v0, :cond_13

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbl/afm3;->updateFilterPath(Ljava/lang/String;)V

    .line 399
    :cond_13
    iget-object v0, p0, Lbl/afm3;->cdn_value:Lcom/bilibili/tv/widget/DrawEditText;

    if-ne p1, v0, :cond_71

    .line 400
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2d

    .line 401
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "\u8bf7\u5148\u9009\u62e9\"\u624b\u52a8\u6307\u5b9a\"\u6a21\u5f0f"

    invoke-static {v0, v2}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 415
    :goto_2c
    return v0

    .line 404
    :cond_2d
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".bilivideo.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 405
    :cond_4b
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    .line 406
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v2, "prefect_cdn"

    sget-object v3, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v0, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "\u5df2\u6e05\u7a7a\u9ed8\u8ba4CDN"

    :goto_6e
    invoke-static {v2, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_71
    :goto_71
    move v0, v1

    .line 413
    goto :goto_2c

    .line 407
    :cond_73
    const-string v0, "\u5df2\u8bbe\u7f6e\u9ed8\u8ba4CDN"

    goto :goto_6e

    .line 410
    :cond_76
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "CDN\u4e0d\u5408\u6cd5"

    invoke-static {v0, v2}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_71

    .line 415
    :cond_80
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 343
    if-eqz p2, :cond_9

    .line 344
    check-cast p1, Lbl/afz;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lbl/afz;->setUpEnabled(Z)V

    .line 348
    :goto_8
    return-void

    .line 346
    :cond_9
    check-cast p1, Lbl/afz;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbl/afz;->setUpEnabled(Z)V

    goto :goto_8
.end method

.method public updateFilterPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_filter_path(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    :try_start_b
    invoke-static {}, Lmybl/BiliFilter;->updateConfig()V

    .line 354
    iget-object v0, p0, Lbl/afm3;->filter_path:Lcom/bilibili/tv/widget/DrawEditText;

    sget-object v1, Lmybl/BiliFilter;->filter_rule_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawEditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8fc7\u6ee4\u5668\u914d\u7f6e\u5df2\u66f4\u65b0"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f

    .line 360
    :goto_1e
    return-void

    .line 357
    :catch_1f
    move-exception v0

    .line 358
    invoke-virtual {p0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e
.end method
