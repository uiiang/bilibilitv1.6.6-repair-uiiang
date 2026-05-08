.class final Lcom/google/android/exoplayer2/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;,
        Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;,
        Lcom/google/android/exoplayer2/AudioFocusManager$PlayerCommand;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AUDIOFOCUS_GAIN:I = 0x1

.field private static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field private static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field private static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field private static final AUDIOFOCUS_NONE:I = 0x0

.field private static final AUDIO_FOCUS_STATE_HAVE_FOCUS:I = 0x1

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I = 0x2

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK:I = 0x3

.field private static final AUDIO_FOCUS_STATE_NO_FOCUS:I = 0x0

.field public static final PLAYER_COMMAND_DO_NOT_PLAY:I = -0x1

.field public static final PLAYER_COMMAND_PLAY_WHEN_READY:I = 0x1

.field public static final PLAYER_COMMAND_WAIT_FOR_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static final VOLUME_MULTIPLIER_DEFAULT:F = 1.0f

.field private static final VOLUME_MULTIPLIER_DUCK:F = 0.2f


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusState:I

.field private final audioManager:Landroid/media/AudioManager;

.field private focusGainToRequest:I

.field private final focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

.field private playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "playerControl"    # Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    .line 173
    nop

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 174
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    .line 176
    iput-object p3, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    .line 177
    new-instance v0, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;-><init>(Lcom/google/android/exoplayer2/AudioFocusManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    .line 179
    return-void
.end method

.method private abandonAudioFocusDefault()V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 298
    return-void
.end method

.method private abandonAudioFocusIfHeld()V
    .registers 3

    .line 256
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_5

    .line 257
    return-void

    .line 259
    :cond_5
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 260
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusV26()V

    goto :goto_12

    .line 262
    :cond_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusDefault()V

    .line 264
    :goto_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    .line 265
    return-void
.end method

.method private abandonAudioFocusV26()V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_9

    .line 303
    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 305
    :cond_9
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/AudioFocusManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/AudioFocusManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->handlePlatformAudioFocusChange(I)V

    return-void
.end method

.method private static convertAudioAttributesToFocusGain(Lcom/google/android/exoplayer2/audio/AudioAttributes;)I
    .registers 7
    .param p0, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 321
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 324
    return v0

    .line 327
    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_40

    .line 385
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified audio usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return v0

    .line 371
    :pswitch_27
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2f

    .line 372
    const/4 v0, 0x4

    return v0

    .line 374
    :cond_2f
    return v4

    .line 379
    :pswitch_30
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne v0, v5, :cond_35

    .line 381
    return v4

    .line 383
    :cond_35
    return v2

    .line 365
    :pswitch_36
    return v2

    .line 332
    :pswitch_37
    return v0

    .line 353
    :pswitch_38
    return v4

    .line 338
    :pswitch_39
    return v5

    .line 343
    :pswitch_3a
    const-string v0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return v5

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_30
        :pswitch_36
        :pswitch_36
        :pswitch_39
        :pswitch_e
        :pswitch_27
    .end packed-switch
.end method

.method private executePlayerCommand(I)V
    .registers 3
    .param p1, "playerCommand"    # I

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_7

    .line 435
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    .line 437
    :cond_7
    return-void
.end method

.method private handlePlatformAudioFocusChange(I)V
    .registers 4
    .param p1, "focusChange"    # I

    .line 410
    packed-switch p1, :pswitch_data_44

    .line 429
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusManager"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void

    .line 412
    :pswitch_1c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    .line 413
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    .line 414
    return-void

    .line 416
    :pswitch_24
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    .line 417
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 418
    return-void

    .line 421
    :pswitch_2c
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3b

    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_3b

    .line 425
    :cond_36
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    goto :goto_43

    .line 422
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    .line 423
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    .line 427
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch -0x3
        :pswitch_2c
        :pswitch_2c
        :pswitch_24
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private requestAudioFocus()I
    .registers 4

    .line 242
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 243
    return v1

    .line 245
    :cond_6
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_11

    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocusV26()I

    move-result v0

    goto :goto_15

    :cond_11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocusDefault()I

    move-result v0

    .line 246
    .local v0, "requestResult":I
    :goto_15
    if-ne v0, v1, :cond_1b

    .line 247
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    .line 248
    return v1

    .line 250
    :cond_1b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    .line 251
    const/4 v1, -0x1

    return v1
.end method

.method private requestAudioFocusDefault()I
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 270
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private requestAudioFocusV26()I
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v1, :cond_43

    .line 278
    :cond_8
    if-nez v0, :cond_12

    .line 279
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_19

    .line 280
    :cond_12
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    :goto_19
    nop

    .line 282
    .local v0, "builder":Landroid/media/AudioFocusRequest$Builder;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    .line 283
    .local v1, "willPauseWhenDucked":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 286
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    .line 285
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 287
    invoke-virtual {v2, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    .line 288
    invoke-virtual {v2, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 291
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->rebuildAudioFocusRequest:Z

    .line 293
    .end local v0    # "builder":Landroid/media/AudioFocusRequest$Builder;
    .end local v1    # "willPauseWhenDucked":Z
    :cond_43
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private setAudioFocusState(I)V
    .registers 4
    .param p1, "audioFocusState"    # I

    .line 391
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_5

    .line 392
    return-void

    .line 394
    :cond_5
    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    .line 397
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 398
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_10

    .line 399
    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_10
    nop

    .line 400
    .local v0, "volumeMultiplier":F
    iget v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_18

    .line 401
    return-void

    .line 403
    :cond_18
    iput v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    .line 404
    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    if-eqz v1, :cond_21

    .line 405
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    .line 407
    :cond_21
    return-void
.end method

.method private shouldAbandonAudioFocusIfHeld(I)Z
    .registers 4
    .param p1, "playbackState"    # I

    .line 238
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    iget v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    if-eq v1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method private willPauseWhenDucked()Z
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method getFocusListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    return-object v0
.end method

.method public getVolumeMultiplier()F
    .registers 2

    .line 183
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public release()V
    .registers 2

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    .line 227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 228
    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 4
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 197
    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 198
    invoke-static {p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->convertAudioAttributesToFocusGain(Lcom/google/android/exoplayer2/audio/AudioAttributes;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    .line 199
    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_17
    const-string v0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 203
    :cond_1c
    return-void
.end method

.method public updateAudioFocus(ZI)I
    .registers 5
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 214
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/AudioFocusManager;->shouldAbandonAudioFocusIfHeld(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    .line 215
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 216
    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    .line 218
    :cond_e
    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocus()I

    move-result v1

    :cond_14
    return v1
.end method
