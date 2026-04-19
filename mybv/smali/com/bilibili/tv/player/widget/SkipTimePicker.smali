.class public Lcom/bilibili/tv/player/widget/SkipTimePicker;
.super Landroid/widget/LinearLayout;
.source "SkipTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;
    }
.end annotation


# static fields
.field private static final STEP_SHORT:I = 0x1388


# instance fields
.field private maxTimeMs:J

.field private onConfirmListener:Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;

.field private timeDisplay:Landroid/widget/TextView;

.field private timeMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    .line 16
    const-wide/32 v0, 0x5265818

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->maxTimeMs:J

    .line 29
    invoke-direct {p0, p1}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    .line 16
    const-wide/32 v0, 0x5265818

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->maxTimeMs:J

    .line 34
    invoke-direct {p0, p1}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    .line 16
    const-wide/32 v0, 0x5265818

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->maxTimeMs:J

    .line 39
    invoke-direct {p0, p1}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    .line 129
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 130
    div-long v2, v0, v4

    .line 131
    rem-long v4, v0, v4

    div-long/2addr v4, v6

    .line 132
    rem-long/2addr v0, v6

    .line 133
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

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    const-string v0, "SkipTimePicker"

    const-string v1, "init() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const v0, 0x7f0a00a5

    invoke-static {p1, v0, p0}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    const v0, 0x7f08020b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeDisplay:Landroid/widget/TextView;

    .line 46
    const-string v0, "SkipTimePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeDisplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->updateTimeDisplay()V

    .line 48
    return-void
.end method

.method private updateTimeDisplay()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeDisplay:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_f
    return-void
.end method


# virtual methods
.method public adjustTime(I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 102
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    .line 103
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_10

    iput-wide v4, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    .line 104
    :cond_10
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->maxTimeMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->maxTimeMs:J

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    .line 105
    :cond_1c
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->updateTimeDisplay()V

    .line 106
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    .line 119
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->updateTimeDisplay()V

    .line 120
    return-void
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    return-wide v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    sparse-switch p1, :sswitch_data_1a

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 59
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_8

    .line 62
    :sswitch_d
    const/16 v1, -0x1388

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->adjustTime(I)V

    goto :goto_8

    .line 65
    :sswitch_13
    const/16 v1, 0x1388

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->adjustTime(I)V

    goto :goto_8

    .line 56
    nop

    :sswitch_data_1a
    .sparse-switch
        0x15 -> :sswitch_d
        0x16 -> :sswitch_13
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x17

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-ne p1, v0, :cond_a

    .line 96
    :cond_8
    const/4 v0, 0x1

    .line 98
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 73
    const/16 v1, 0x17

    if-eq p1, v1, :cond_9

    const/16 v1, 0x42

    if-ne p1, v1, :cond_33

    .line 74
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_12

    .line 90
    :cond_11
    :goto_11
    return v0

    .line 77
    :cond_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 78
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->onConfirmListener:Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;

    if-eqz v1, :cond_21

    .line 79
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->onConfirmListener:Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;->onClear()V

    .line 81
    :cond_21
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->clear()V

    goto :goto_11

    .line 83
    :cond_25
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->onConfirmListener:Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;

    if-eqz v1, :cond_11

    .line 84
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->onConfirmListener:Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;

    invoke-interface {v1}, Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;->getCurrentPosition()J

    move-result-wide v2

    .line 85
    invoke-virtual {p0, v2, v3}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->setTime(J)V

    goto :goto_11

    .line 90
    :cond_33
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public setOnConfirmListener(Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->onConfirmListener:Lcom/bilibili/tv/player/widget/SkipTimePicker$OnConfirmListener;

    .line 52
    return-void
.end method

.method public setTime(J)V
    .locals 5

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->maxTimeMs:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/player/widget/SkipTimePicker;->timeMs:J

    .line 110
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/SkipTimePicker;->updateTimeDisplay()V

    .line 111
    return-void
.end method
