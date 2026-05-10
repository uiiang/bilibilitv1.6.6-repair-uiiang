.class Lcom/bilibili/tv/player/BufferingOverlayController$1;
.super Ljava/lang/Object;
.source "BufferingOverlayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/BufferingOverlayController;->scheduleDelayedShow(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/BufferingOverlayController;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/BufferingOverlayController;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bilibili/tv/player/BufferingOverlayController$1;->this$0:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController$1;->this$0:Lcom/bilibili/tv/player/BufferingOverlayController;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/bilibili/tv/player/BufferingOverlayController;->access$002(Lcom/bilibili/tv/player/BufferingOverlayController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController$1;->this$0:Lcom/bilibili/tv/player/BufferingOverlayController;

    # invokes: Lcom/bilibili/tv/player/BufferingOverlayController;->update()V
    invoke-static {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->access$100(Lcom/bilibili/tv/player/BufferingOverlayController;)V

    .line 150
    return-void
.end method
