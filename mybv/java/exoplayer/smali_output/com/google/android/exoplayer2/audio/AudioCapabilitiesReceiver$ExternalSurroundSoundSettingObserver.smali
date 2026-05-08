.class final Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;
.super Landroid/database/ContentObserver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExternalSurroundSoundSettingObserver"
.end annotation


# instance fields
.field private final resolver:Landroid/content/ContentResolver;

.field private final settingUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "resolver"    # Landroid/content/ContentResolver;
    .param p4, "settingUri"    # Landroid/net/Uri;

    .line 166
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    .line 167
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 168
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    .line 169
    iput-object p4, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Landroid/net/Uri;

    .line 170
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    # getter for: Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$300(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v1

    # invokes: Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$200(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    .line 183
    return-void
.end method

.method public register()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    return-void
.end method

.method public unregister()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 178
    return-void
.end method
