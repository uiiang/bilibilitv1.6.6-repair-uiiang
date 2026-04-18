.class Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$1;
.super Ljava/lang/Object;
.source "PlayerSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$1;->this$1:Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$1;->this$1:Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;

    iget-object v0, v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$callback:Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;

    invoke-interface {v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;->onLoadFailed()V

    .line 273
    return-void
.end method
