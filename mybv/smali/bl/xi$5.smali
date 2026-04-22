.class Lbl/xi$5;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xi;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xi;


# direct methods
.method constructor <init>(Lbl/xi;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lbl/xi$5;->this$0:Lbl/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lbl/xi$5;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->m:Lcom/bilibili/tv/player/widget/PlayerBufferingView;
    invoke-static {v0}, Lbl/xi;->access$300(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 811
    return-void
.end method
