.class public final Lbl/afn;
.super Lbl/adw;
.source "afn.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afn$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afn$a;

.field public static prefect_codec:Ljava/lang/String;

.field public static prefect_decoder:Ljava/lang/String;


# instance fields
.field private b:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private c:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private codecSettingsLayout:Landroid/view/ViewGroup;

.field private d:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeSettingsLayout:Landroid/view/ViewGroup;

.field private decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field public e:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field public supported_codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    new-instance v0, Lbl/afn$a;

    invoke-direct {v0, v1}, Lbl/afn$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afn;->Companion:Lbl/afn$a;

    .line 31
    sput-object v1, Lbl/afn;->prefect_codec:Ljava/lang/String;

    .line 32
    sput-object v1, Lbl/afn;->prefect_decoder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Lbl/adw;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "video/avc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "video/hevc"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "video/av01"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lbl/afn;->supported_codecs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    return-object v0
.end method

.method private updateLivePlayerSelection()V
    .locals 4

    .prologue
    const v3, 0x7f0700f0

    const v2, 0x7f0700ef

    .line 231
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_f

    .line 243
    :cond_e
    :goto_e
    return-void

    .line 233
    :cond_f
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_live_player_type(Landroid/content/Context;)I

    move-result v0

    .line 235
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 236
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 237
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 238
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_e

    .line 240
    :cond_2b
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 241
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_e
.end method

.method private updatePlayerSelection()V
    .locals 8

    .prologue
    const v7, 0x7f0700f0

    const v6, 0x7f0700ef

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 201
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_12

    .line 228
    :cond_11
    :goto_11
    return-void

    .line 203
    :cond_12
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_type(Landroid/content/Context;)I

    move-result v0

    .line 204
    const-string v1, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayerSelection: playerType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ijkVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 205
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exoVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 206
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v1, 0x3

    if-ne v0, v1, :cond_78

    .line 209
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 210
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 211
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 212
    iget-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6e

    .line 213
    iget-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 215
    :cond_6e
    iget-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 216
    iget-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_11

    .line 219
    :cond_78
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 220
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8b

    .line 222
    iget-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    :cond_8b
    iget-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 225
    iget-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_11
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 355
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 386
    :cond_5
    :goto_5
    return v0

    .line 358
    :cond_6
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 361
    iget-object v1, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 364
    :cond_32
    iget-object v1, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 367
    :cond_3e
    iget-object v1, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 370
    :cond_4a
    iget-object v1, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 373
    :cond_56
    iget-object v1, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 376
    :cond_62
    iget-object v1, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 379
    :cond_6e
    iget-object v1, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 382
    :cond_7a
    iget-object v1, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 385
    :cond_86
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_5
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 390
    iget-object v2, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 420
    :cond_6
    :goto_6
    return v0

    .line 393
    :cond_7
    iget-object v2, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_27
    move v0, v1

    .line 394
    goto :goto_6

    .line 396
    :cond_29
    iget-object v2, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_37

    move v0, v1

    .line 397
    goto :goto_6

    .line 399
    :cond_37
    iget-object v2, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_45

    move v0, v1

    .line 400
    goto :goto_6

    .line 402
    :cond_45
    iget-object v2, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_53

    move v0, v1

    .line 403
    goto :goto_6

    .line 405
    :cond_53
    iget-object v2, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_61

    move v0, v1

    .line 406
    goto :goto_6

    .line 408
    :cond_61
    iget-object v2, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6f

    move v0, v1

    .line 409
    goto :goto_6

    .line 411
    :cond_6f
    iget-object v2, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7d

    move v0, v1

    .line 412
    goto :goto_6

    .line 414
    :cond_7d
    iget-object v2, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_8c

    move v0, v1

    .line 415
    goto/16 :goto_6

    .line 417
    :cond_8c
    iget-object v2, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 418
    goto/16 :goto_6
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

.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const v4, 0x7f0700f0

    const v3, 0x7f0700ef

    .line 247
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2a

    .line 248
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 249
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 250
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 251
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 252
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 254
    :cond_2a
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_4b

    .line 255
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 256
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 257
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 258
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 259
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 261
    :cond_4b
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_6c

    .line 262
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x50

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 263
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 264
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 265
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 266
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 268
    :cond_6c
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_8d

    .line 269
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x78

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 270
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 271
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 272
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 273
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 276
    :cond_8d
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_a8

    .line 277
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 278
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 279
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 280
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 282
    :cond_a8
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_c2

    .line 283
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 284
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 285
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 286
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 288
    :cond_c2
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_dc

    .line 289
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 290
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 291
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 292
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 294
    :cond_dc
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_14a

    .line 295
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 296
    const-string v0, "\u65e0"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 298
    const-string v0, "\u65e0"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 299
    :goto_f5
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v0, v2, :cond_129

    .line 300
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 301
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-nez v2, :cond_126

    .line 302
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v2, v1

    .line 303
    :goto_10a
    array-length v7, v6

    if-ge v2, v7, :cond_126

    .line 304
    iget-object v7, p0, Lbl/afn;->supported_codecs:Ljava/util/List;

    aget-object v8, v6, v2

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_123

    .line 305
    aget-object v7, v6, v2

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_123
    add-int/lit8 v2, v2, 0x1

    goto :goto_10a

    .line 299
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    .line 310
    :cond_129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbl/afn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [Ljava/lang/String;

    .line 311
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Lbl/afn$1;

    invoke-direct {v1, p0, v3, v4}, Lbl/afn$1;-><init>(Lbl/afn;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 336
    :cond_14a
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_158

    .line 337
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 338
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 340
    :cond_158
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_166

    .line 341
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 342
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 344
    :cond_166
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_174

    .line 345
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9}, Lbl/abd;->set_live_player_type(Landroid/content/Context;I)V

    .line 346
    invoke-direct {p0}, Lbl/afn;->updateLivePlayerSelection()V

    .line 348
    :cond_174
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_182

    .line 349
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lbl/abd;->set_live_player_type(Landroid/content/Context;I)V

    .line 350
    invoke-direct {p0}, Lbl/afn;->updateLivePlayerSelection()V

    .line 352
    :cond_182
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const v3, 0x7f0700f0

    const v4, 0x7f0700e8

    .line 63
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const v0, 0x7f0a003a

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const-string v0, "view"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const v0, 0x7f0800bb

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 68
    const v0, 0x7f08016f

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 69
    const v0, 0x7f080096

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 70
    const v0, 0x7f080120

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 72
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_4d

    invoke-static {}, Lbl/bbi;->a()V

    .line 73
    :cond_4d
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 74
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_59

    invoke-static {}, Lbl/bbi;->a()V

    .line 75
    :cond_59
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 76
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_65

    invoke-static {}, Lbl/bbi;->a()V

    .line 77
    :cond_65
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 78
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_71

    invoke-static {}, Lbl/bbi;->a()V

    .line 79
    :cond_71
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 81
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 86
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->d(Landroid/content/Context;)I

    move-result v0

    .line 87
    const/16 v2, 0x10

    if-ne v0, v2, :cond_255

    .line 88
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 97
    :cond_9b
    :goto_9b
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f080227

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 103
    const v0, 0x7f080228

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 104
    const v0, 0x7f080229

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 105
    const v0, 0x7f080184

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 107
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_ee

    .line 108
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 109
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_ee
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_101

    .line 113
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 114
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_101
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_114

    .line 118
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 119
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_114
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_127

    .line 123
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 124
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 125
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_127
    const v0, 0x7f08022b

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/afn;->decodeSettingsLayout:Landroid/view/ViewGroup;

    .line 129
    const v0, 0x7f08022c

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/afn;->codecSettingsLayout:Landroid/view/ViewGroup;

    .line 131
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->h(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_2b8

    .line 146
    :cond_148
    :goto_148
    sget-object v0, Lbl/afn;->prefect_decoder:Ljava/lang/String;

    if-eqz v0, :cond_15d

    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_15d

    .line 147
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    sget-object v2, Lbl/afn;->prefect_decoder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_15d
    const v0, 0x7f080224

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 151
    const v0, 0x7f080225

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 153
    const-string v0, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ijkPlayerBtn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exoPlayerBtn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExoPlayerSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isExoPlayerAvailable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_1d6

    .line 158
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 159
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_1d6
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_201

    .line 163
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 164
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_1f5

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_297

    .line 168
    :cond_1f5
    const-string v0, "afn"

    const-string v2, "Hiding exoPlayerBtn - ExoPlayer not supported/available"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 175
    :cond_201
    :goto_201
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 177
    const v0, 0x7f080232

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 178
    const v0, 0x7f080233

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 180
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_22d

    .line 181
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 182
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 183
    iget-object v0, p0, Lbl/afn;->liveIjkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_22d
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_251

    .line 186
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 187
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_24c

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_251

    .line 191
    :cond_24c
    iget-object v0, p0, Lbl/afn;->liveExoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 195
    :cond_251
    invoke-direct {p0}, Lbl/afn;->updateLivePlayerSelection()V

    .line 197
    return-object v1

    .line 89
    :cond_255
    const/16 v2, 0x20

    if-ne v0, v2, :cond_260

    .line 90
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_9b

    .line 91
    :cond_260
    const/16 v2, 0x50

    if-ne v0, v2, :cond_26b

    .line 92
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_9b

    .line 93
    :cond_26b
    const/16 v2, 0x78

    if-ne v0, v2, :cond_9b

    .line 94
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_9b

    .line 133
    :pswitch_276
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_148

    .line 134
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_148

    .line 137
    :pswitch_281
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_148

    .line 138
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_148

    .line 141
    :pswitch_28c
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_148

    .line 142
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_148

    .line 171
    :cond_297
    const-string v0, "afn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exoPlayerBtn is visible, focusable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->isFocusable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_201

    .line 131
    nop

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_276
        :pswitch_281
        :pswitch_28c
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 425
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    const-string v0, "afn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange: view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_30

    .line 428
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 430
    :cond_30
    return-void
.end method
