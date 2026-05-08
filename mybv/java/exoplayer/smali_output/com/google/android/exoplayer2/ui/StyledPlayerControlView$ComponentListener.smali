.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "StyledPlayerControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 2

    .line 1613
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;

    .line 1613
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 1697
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    .line 1698
    .local v0, "player":Lcom/google/android/exoplayer2/Player;
    if-nez v0, :cond_9

    .line 1699
    return-void

    .line 1701
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1702
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_27

    .line 1703
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1704
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    goto/16 :goto_13b

    .line 1706
    :cond_27
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3b

    .line 1707
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1708
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    goto/16 :goto_13b

    .line 1710
    :cond_3b
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_57

    .line 1711
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_13b

    .line 1712
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1713
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    goto/16 :goto_13b

    .line 1715
    :cond_57
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6c

    .line 1716
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1717
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    goto/16 :goto_13b

    .line 1719
    :cond_6c
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_79

    .line 1720
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->handlePlayPauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    goto/16 :goto_13b

    .line 1721
    :cond_79
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_9d

    .line 1722
    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1723
    nop

    .line 1724
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/RepeatModeUtil;->getNextRepeatMode(II)I

    move-result v1

    .line 1723
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto/16 :goto_13b

    .line 1726
    :cond_9d
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_b8

    .line 1727
    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1728
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    goto/16 :goto_13b

    .line 1730
    :cond_b8
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_d9

    .line 1731
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1732
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_13b

    .line 1733
    :cond_d9
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_fa

    .line 1734
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1735
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedButton:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_13b

    .line 1736
    :cond_fa
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_11b

    .line 1737
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1738
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackButton:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_13b

    .line 1739
    :cond_11b
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_13b

    .line 1740
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1741
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$3400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v3

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 1743
    :cond_13b
    :goto_13b
    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 1690
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1691
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1693
    :cond_11
    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 7
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/Player$Events;

    .line 1621
    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0xd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1625
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlayPauseButton()V
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1627
    :cond_13
    const/4 v3, 0x7

    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1632
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1634
    :cond_23
    const/16 v0, 0x8

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1635
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRepeatModeButton()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1637
    :cond_34
    const/16 v0, 0x9

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1639
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateShuffleButton()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1641
    :cond_45
    new-array v0, v3, [I

    fill-array-data v0, :array_8a

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1649
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1651
    :cond_55
    const/16 v0, 0xb

    const/4 v1, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1653
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1655
    :cond_67
    const/16 v0, 0xc

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1656
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlaybackSpeedList()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1658
    :cond_78
    const/4 v0, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1659
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTrackLists()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 1661
    :cond_88
    return-void

    nop

    :array_8a
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .registers 7
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;
    .param p2, "position"    # J

    .line 1674
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1675
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1677
    :cond_21
    return-void
.end method

.method public onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .registers 7
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;
    .param p2, "position"    # J

    .line 1665
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->scrubbing:Z
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1102(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z

    .line 1666
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1667
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    :cond_27
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1670
    return-void
.end method

.method public onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V
    .registers 7
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;
    .param p2, "position"    # J
    .param p4, "canceled"    # Z

    .line 1681
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->scrubbing:Z
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1102(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z

    .line 1682
    if-nez p4, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1683
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    # invokes: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->seekToTimeBarPosition(Lcom/google/android/exoplayer2/Player;J)V
    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/Player;J)V

    .line 1685
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    # getter for: Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1686
    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method
