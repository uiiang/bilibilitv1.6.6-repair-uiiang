.class Lbl/wy$a;
.super Ljava/lang/Object;
.source "wy.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/wy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method

.method synthetic constructor <init>(Lbl/wy$1;)V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lbl/wy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .prologue
    .line 630
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 631
    packed-switch p1, :pswitch_data_16

    .line 645
    :cond_6
    :goto_6
    return-void

    .line 633
    :pswitch_7
    invoke-static {}, Lbl/wm;->f()V

    goto :goto_6

    .line 640
    :pswitch_b
    const-string v0, "wy"

    const-string v1, "[AUDIO_FOCUS] AUDIOFOCUS_LOSS, pause instead of release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Lbl/wm;->f()V

    goto :goto_6

    .line 631
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
