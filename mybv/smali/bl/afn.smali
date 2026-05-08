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

.field private d:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field public e:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

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

.method private updatePlayerSelection()V
    .locals 6

    .prologue
    const v5, 0x7f0700f0

    const v4, 0x7f0700ef

    .line 173
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_f

    .line 188
    :cond_e
    :goto_e
    return-void

    .line 175
    :cond_f
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_type(Landroid/content/Context;)I

    move-result v0

    .line 176
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

    .line 177
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exoVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 178
    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x3

    if-ne v0, v1, :cond_63

    .line 181
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 182
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 183
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_e

    .line 185
    :cond_63
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 186
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_e
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 317
    :cond_5
    :goto_5
    return v0

    .line 295
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

    .line 298
    iget-object v1, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 301
    :cond_32
    iget-object v1, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 304
    :cond_3e
    iget-object v1, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 307
    :cond_4a
    iget-object v1, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 310
    :cond_56
    iget-object v1, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 313
    :cond_62
    iget-object v1, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 316
    :cond_6e
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 317
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 321
    iget-object v2, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v2, :cond_7

    .line 345
    :cond_6
    :goto_6
    return v0

    .line 324
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

    .line 325
    goto :goto_6

    .line 327
    :cond_29
    iget-object v2, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_37

    move v0, v1

    .line 328
    goto :goto_6

    .line 330
    :cond_37
    iget-object v2, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_45

    move v0, v1

    .line 331
    goto :goto_6

    .line 333
    :cond_45
    iget-object v2, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_53

    move v0, v1

    .line 334
    goto :goto_6

    .line 336
    :cond_53
    iget-object v2, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_61

    move v0, v1

    .line 337
    goto :goto_6

    .line 339
    :cond_61
    iget-object v2, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6f

    move v0, v1

    .line 340
    goto :goto_6

    .line 342
    :cond_6f
    iget-object v2, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 343
    goto :goto_6
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 54
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

    .line 192
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_2a

    .line 193
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 194
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 196
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 197
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 199
    :cond_2a
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_4b

    .line 200
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 201
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 203
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 204
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 206
    :cond_4b
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_6c

    .line 207
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x50

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 208
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 209
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 210
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 211
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 213
    :cond_6c
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_8d

    .line 214
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x78

    invoke-static {v0, v2}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 215
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 216
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 217
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 221
    :cond_8d
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_a8

    .line 222
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 223
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 225
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 227
    :cond_a8
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_c2

    .line 228
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 229
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 230
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 231
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 233
    :cond_c2
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_dc

    .line 234
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lbl/abd;->b(Landroid/content/Context;I)V

    .line 235
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 236
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 237
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 239
    :cond_dc
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_14a

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    const-string v0, "\u65e0"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    const-string v0, "\u65e0"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 244
    :goto_f5
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v0, v2, :cond_129

    .line 245
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 246
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-nez v2, :cond_126

    .line 247
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v2, v1

    .line 248
    :goto_10a
    array-length v7, v6

    if-ge v2, v7, :cond_126

    .line 249
    iget-object v7, p0, Lbl/afn;->supported_codecs:Ljava/util/List;

    aget-object v8, v6, v2

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_123

    .line 250
    aget-object v7, v6, v2

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_123
    add-int/lit8 v2, v2, 0x1

    goto :goto_10a

    .line 244
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    .line 255
    :cond_129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbl/afn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [Ljava/lang/String;

    .line 256
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Lbl/afn$1;

    invoke-direct {v1, p0, v3, v4}, Lbl/afn$1;-><init>(Lbl/afn;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 281
    :cond_14a
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_158

    .line 282
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 283
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 285
    :cond_158
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_166

    .line 286
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 287
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 289
    :cond_166
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f0700f0

    const v4, 0x7f0700e8

    .line 58
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const v0, 0x7f0a003a

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    const-string v0, "view"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const v0, 0x7f0800bb

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 63
    const v0, 0x7f08016f

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 64
    const v0, 0x7f080096

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 65
    const v0, 0x7f080120

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 67
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_4b

    invoke-static {}, Lbl/bbi;->a()V

    .line 68
    :cond_4b
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 69
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_57

    invoke-static {}, Lbl/bbi;->a()V

    .line 70
    :cond_57
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 71
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_63

    invoke-static {}, Lbl/bbi;->a()V

    .line 72
    :cond_63
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 73
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v0, :cond_6f

    invoke-static {}, Lbl/bbi;->a()V

    .line 74
    :cond_6f
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 76
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 78
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 79
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 81
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->d(Landroid/content/Context;)I

    move-result v0

    .line 82
    const/16 v2, 0x10

    if-ne v0, v2, :cond_1ef

    .line 83
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 92
    :cond_99
    :goto_99
    iget-object v0, p0, Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f080227

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 98
    const v0, 0x7f080228

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 99
    const v0, 0x7f080229

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 100
    const v0, 0x7f080184

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 102
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_ec

    .line 103
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 104
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 105
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_ec
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_ff

    .line 108
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 109
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_ff
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_112

    .line 113
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 114
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_112
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_125

    .line 118
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 119
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_125
    invoke-virtual {p0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->h(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_250

    .line 138
    :cond_130
    :goto_130
    sget-object v0, Lbl/afn;->prefect_decoder:Ljava/lang/String;

    if-eqz v0, :cond_145

    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_145

    .line 139
    iget-object v0, p0, Lbl/afn;->codecButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    sget-object v2, Lbl/afn;->prefect_decoder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_145
    const v0, 0x7f080224

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 143
    const v0, 0x7f080225

    invoke-virtual {p0, v1, v0}, Lbl/afn;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 145
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

    .line 146
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

    .line 147
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_1be

    .line 150
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 151
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    iget-object v0, p0, Lbl/afn;->ijkPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_1be
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_1eb

    .line 155
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 156
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_1dd

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_231

    .line 160
    :cond_1dd
    const-string v0, "afn"

    const-string v2, "Hiding exoPlayerBtn - ExoPlayer not supported/available"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lbl/afn;->exoPlayerBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setVisibility(I)V

    .line 167
    :cond_1eb
    :goto_1eb
    invoke-direct {p0}, Lbl/afn;->updatePlayerSelection()V

    .line 169
    return-object v1

    .line 84
    :cond_1ef
    const/16 v2, 0x20

    if-ne v0, v2, :cond_1fa

    .line 85
    iget-object v0, p0, Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_99

    .line 86
    :cond_1fa
    const/16 v2, 0x50

    if-ne v0, v2, :cond_205

    .line 87
    iget-object v0, p0, Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_99

    .line 88
    :cond_205
    const/16 v2, 0x78

    if-ne v0, v2, :cond_99

    .line 89
    iget-object v0, p0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_99

    .line 125
    :pswitch_210
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_130

    .line 126
    iget-object v0, p0, Lbl/afn;->decodeSystemBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_130

    .line 129
    :pswitch_21b
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_130

    .line 130
    iget-object v0, p0, Lbl/afn;->decodeIjkHardBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_130

    .line 133
    :pswitch_226
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_130

    .line 134
    iget-object v0, p0, Lbl/afn;->decodeIjkSoftBtn:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_130

    .line 163
    :cond_231
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

    goto :goto_1eb

    .line 123
    :pswitch_data_250
    .packed-switch 0x1
        :pswitch_210
        :pswitch_21b
        :pswitch_226
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 350
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
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

    .line 352
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_30

    .line 353
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 355
    :cond_30
    return-void
.end method
