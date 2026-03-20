.class Lcom/bilibili/tv/player/widget/PlayerSeekBar$1;
.super Ljava/lang/Object;
.source "PlayerSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$1;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$1;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$1;->this$0:Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    # getter for: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$000(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # invokes: Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->access$100(Lcom/bilibili/tv/player/widget/PlayerSeekBar;I)V

    .line 59
    return-void
.end method
