.class Lbl/BottomEpisodeMenu$3;
.super Ljava/lang/Object;
.source "BottomEpisodeMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/BottomEpisodeMenu;->hide()V
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
    .line 137
    iput-object p1, p0, Lbl/BottomEpisodeMenu$3;->this$0:Lbl/BottomEpisodeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lbl/BottomEpisodeMenu$3;->this$0:Lbl/BottomEpisodeMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lbl/BottomEpisodeMenu$3;->this$0:Lbl/BottomEpisodeMenu;

    const/4 v1, 0x0

    # setter for: Lbl/BottomEpisodeMenu;->isHiding:Z
    invoke-static {v0, v1}, Lbl/BottomEpisodeMenu;->access$202(Lbl/BottomEpisodeMenu;Z)Z

    .line 145
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
