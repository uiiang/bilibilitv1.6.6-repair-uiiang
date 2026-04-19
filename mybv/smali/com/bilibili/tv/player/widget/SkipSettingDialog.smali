.class public Lcom/bilibili/tv/player/widget/SkipSettingDialog;
.super Landroid/app/Dialog;
.source "SkipSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;,
        Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;
    }
.end annotation


# static fields
.field private static final LONG_PRESS_DELAY:I = 0x1f4

.field private static final MSG_LONG_PRESS:I = 0x1

.field private static final STEP_LONG:I = 0x7530

.field private static final STEP_SHORT:I = 0x1388


# instance fields
.field private btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private btnSaveLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private currentDirection:I

.field private currentPosition:J

.field private introTimeDisplay:Landroid/widget/TextView;

.field private introTimeLayout:Landroid/widget/LinearLayout;

.field private introTimeMs:J

.field private isLongPress:Z

.field private longPressHandler:Landroid/os/Handler;

.field private onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

.field private onSaveListener:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;

.field private outroTimeDisplay:Landroid/widget/TextView;

.field private outroTimeLayout:Landroid/widget/LinearLayout;

.field private outroTimeMs:J

.field private params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    .line 31
    iput-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    .line 41
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z

    .line 42
    iput v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I

    .line 56
    iput-object p2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 57
    iput-wide p3, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentPosition:J

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->saveAndClose()V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->clearAndClose()V

    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/player/widget/SkipSettingDialog;J)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setIntroTime(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentPosition:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;J)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOutroTime(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I

    return v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I

    return p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustIntroTime(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustOutroTime(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnSaveLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

    return-object v0
.end method

.method private adjustIntroTime(I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 244
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    .line 245
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_10

    iput-wide v4, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    .line 246
    :cond_10
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getMaxTimeMs()J

    move-result-wide v0

    .line 247
    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1c

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    .line 248
    :cond_1c
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->updateIntroDisplay()V

    .line 249
    return-void
.end method

.method private adjustOutroTime(I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 252
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    .line 253
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_10

    iput-wide v4, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    .line 254
    :cond_10
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getMaxTimeMs()J

    move-result-wide v0

    .line 255
    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1c

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    .line 256
    :cond_1c
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->updateOutroDisplay()V

    .line 257
    return-void
.end method

.method private clearAndClose()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 339
    iput-wide v4, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    .line 340
    iput-wide v4, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    .line 342
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_41

    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 344
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip_list_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/abd;->clearSkipTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    :cond_32
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/abd;->clearSkipTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    :cond_41
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onSaveListener:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;

    if-eqz v0, :cond_4a

    .line 350
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onSaveListener:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;

    invoke-interface {v0, v4, v5, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;->onSave(JJ)V

    .line 353
    :cond_4a
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c018c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 354
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->dismiss()V

    .line 355
    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    .line 287
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 288
    div-long v2, v0, v4

    .line 289
    rem-long v4, v0, v4

    div-long/2addr v4, v6

    .line 290
    rem-long/2addr v0, v6

    .line 291
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMaxTimeMs()J
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    if-lez v0, :cond_13

    .line 273
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 275
    :goto_12
    return-wide v0

    :cond_13
    const-wide/32 v0, 0x5265818

    goto :goto_12
.end method

.method private initLongPressHandler()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method private loadExistingSettings()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_d

    .line 296
    invoke-direct {p0, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setIntroTime(J)V

    .line 297
    invoke-direct {p0, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOutroTime(J)V

    .line 318
    :goto_c
    return-void

    .line 301
    :cond_d
    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 304
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip_list_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v0

    .line 307
    :cond_37
    if-nez v0, :cond_49

    .line 308
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v0

    .line 311
    :cond_49
    if-eqz v0, :cond_58

    .line 312
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setIntroTime(J)V

    .line 313
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOutroTime(J)V

    goto :goto_c

    .line 315
    :cond_58
    invoke-direct {p0, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setIntroTime(J)V

    .line 316
    invoke-direct {p0, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOutroTime(J)V

    goto :goto_c
.end method

.method private saveAndClose()V
    .locals 6

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_3f

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 323
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip_list_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    iget-wide v4, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    invoke-static/range {v0 .. v5}, Lbl/abd;->setSkipTime(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 324
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/abd;->clearSkipTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onSaveListener:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;

    if-eqz v0, :cond_4c

    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onSaveListener:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;

    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    iget-wide v4, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;->onSave(JJ)V

    .line 334
    :cond_4c
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c018b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->dismiss()V

    .line 336
    return-void

    .line 326
    :cond_5f
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    iget-wide v4, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    invoke-static/range {v0 .. v5}, Lbl/abd;->setSkipTime(Landroid/content/Context;Ljava/lang/String;JJ)V

    goto :goto_3f
.end method

.method private setIntroTime(J)V
    .locals 5

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getMaxTimeMs()J

    move-result-wide v0

    .line 261
    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    .line 262
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->updateIntroDisplay()V

    .line 263
    return-void
.end method

.method private setOutroTime(J)V
    .locals 5

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getMaxTimeMs()J

    move-result-wide v0

    .line 267
    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    .line 268
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->updateOutroDisplay()V

    .line 269
    return-void
.end method

.method private setupFocusEffect()V
    .locals 3

    .prologue
    const v2, 0x7f0700e7

    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnSaveLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_16

    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnSaveLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnSaveLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$4;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 133
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_29

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 135
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$5;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 146
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$6;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$7;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 159
    return-void
.end method

.method private setupTimePickers()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 202
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 241
    return-void
.end method

.method private updateIntroDisplay()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeDisplay:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeMs:J

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method private updateOutroDisplay()V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeDisplay:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeMs:J

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->requestWindowFeature(I)Z

    .line 65
    const v0, 0x7f0a00a4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setContentView(I)V

    .line 67
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeLayout:Landroid/widget/LinearLayout;

    .line 68
    const v0, 0x7f080204

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeLayout:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeDisplay:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f08020e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->outroTimeDisplay:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnSaveLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 72
    const v0, 0x7f080210

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 74
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->initLongPressHandler()V

    .line 75
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setupFocusEffect()V

    .line 76
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setupTimePickers()V

    .line 77
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->loadExistingSettings()V

    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnSaveLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_69

    .line 80
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnSaveLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$1;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_69
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_77

    .line 88
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->btnCancelLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$2;-><init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_77
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->introTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 97
    return-void
.end method

.method public setCurrentPosition(J)V
    .locals 1

    .prologue
    .line 366
    iput-wide p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentPosition:J

    .line 367
    return-void
.end method

.method public setOnPositionProvider(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

    .line 363
    return-void
.end method

.method public setOnSaveListener(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onSaveListener:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;

    .line 359
    return-void
.end method
