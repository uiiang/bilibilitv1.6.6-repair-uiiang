.class Lbl/BottomEpisodeMenu$3;
.super Ljava/lang/Object;
.source "BottomEpisodeMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/BottomEpisodeMenu;->initAutoHideTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/BottomEpisodeMenu;


# direct methods
.method constructor <init>(Lbl/BottomEpisodeMenu;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lbl/BottomEpisodeMenu$3;->this$0:Lbl/BottomEpisodeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbl/BottomEpisodeMenu$3;->this$0:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->hide()V

    .line 144
    return-void
.end method
