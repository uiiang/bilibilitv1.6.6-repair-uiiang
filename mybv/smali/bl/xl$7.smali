.class Lbl/xl$7;
.super Ljava/lang/Object;
.source "xl.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xl;->showShotMenu(Z)Z
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
    .line 814
    iput-object p1, p0, Lbl/xl$7;->this$0:Lbl/xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotMenuVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lbl/xl$7;->this$0:Lbl/xl;

    # invokes: Lbl/xl;->findXiHandler()Lbl/xi;
    invoke-static {v0}, Lbl/xl;->access$400(Lbl/xl;)Lbl/xi;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_b

    .line 819
    invoke-virtual {v0}, Lbl/xi;->refreshTvToggleIcon()V

    .line 821
    :cond_b
    return-void
.end method
