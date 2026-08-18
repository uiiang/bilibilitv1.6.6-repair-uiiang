.class Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$2;
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

.field final synthetic val$scaled:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 301
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$2;->this$1:Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;

    iput-object p2, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$2;->val$scaled:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$2;->this$1:Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;

    iget-object v0, v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3;->val$callback:Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;

    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar$3$2;->val$scaled:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;->onLoadSuccess(Landroid/graphics/Bitmap;)V

    .line 305
    return-void
.end method
