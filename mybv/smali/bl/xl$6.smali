.class Lbl/xl$6;
.super Ljava/lang/Object;
.source "xl.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xl;->showShotMenu()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xl;


# direct methods
.method constructor <init>(Lbl/xl;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lbl/xl$6;->this$0:Lbl/xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotClicked(I)V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lbl/xl$6;->this$0:Lbl/xl;

    # invokes: Lbl/xl;->seekTo(I)V
    invoke-static {v0, p1}, Lbl/xl;->access$300(Lbl/xl;I)V

    .line 583
    return-void
.end method
