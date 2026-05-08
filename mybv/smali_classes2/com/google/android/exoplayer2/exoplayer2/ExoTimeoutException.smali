.class public final Lcom/google/android/exoplayer2/ExoTimeoutException;
.super Ljava/lang/RuntimeException;
.source "ExoTimeoutException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoTimeoutException$TimeoutOperation;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TIMEOUT_OPERATION_DETACH_SURFACE:I = 0x3

.field public static final TIMEOUT_OPERATION_RELEASE:I = 0x1

.field public static final TIMEOUT_OPERATION_SET_FOREGROUND_MODE:I = 0x2

.field public static final TIMEOUT_OPERATION_UNDEFINED:I


# instance fields
.field public final timeoutOperation:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "timeoutOperation"    # I

    .line 78
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoTimeoutException;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    iput p1, p0, Lcom/google/android/exoplayer2/ExoTimeoutException;->timeoutOperation:I

    .line 80
    return-void
.end method

.method private static getErrorMessage(I)Ljava/lang/String;
    .registers 2
    .param p0, "timeoutOperation"    # I

    .line 83
    packed-switch p0, :pswitch_data_10

    .line 92
    const-string v0, "Undefined timeout."

    return-object v0

    .line 89
    :pswitch_6
    const-string v0, "Detaching surface timed out."

    return-object v0

    .line 87
    :pswitch_9
    const-string v0, "Setting foreground mode timed out."

    return-object v0

    .line 85
    :pswitch_c
    const-string v0, "Player release timed out."

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
