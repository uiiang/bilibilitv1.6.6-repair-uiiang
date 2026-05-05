.class public final Lcom/google/android/exoplayer2/util/RepeatModeUtil;
.super Ljava/lang/Object;
.source "RepeatModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/RepeatModeUtil$RepeatToggleModes;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final REPEAT_TOGGLE_MODE_ALL:I = 0x2

.field public static final REPEAT_TOGGLE_MODE_NONE:I = 0x0

.field public static final REPEAT_TOGGLE_MODE_ONE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getNextRepeatMode(II)I
    .registers 5
    .param p0, "currentMode"    # I
    .param p1, "enabledModes"    # I

    .line 76
    const/4 v0, 0x1

    .local v0, "offset":I
    :goto_1
    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    .line 77
    add-int v1, p0, v0

    rem-int/lit8 v1, v1, 0x3

    .line 78
    .local v1, "proposedMode":I
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/RepeatModeUtil;->isRepeatModeEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 79
    return v1

    .line 76
    .end local v1    # "proposedMode":I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "offset":I
    :cond_12
    return p0
.end method

.method public static isRepeatModeEnabled(II)Z
    .registers 5
    .param p0, "repeatMode"    # I
    .param p1, "enabledModes"    # I

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_14

    .line 101
    return v0

    .line 99
    :pswitch_6
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 97
    :pswitch_c
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 95
    :pswitch_12
    return v1

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
