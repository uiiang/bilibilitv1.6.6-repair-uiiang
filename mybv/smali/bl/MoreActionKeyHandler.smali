.class public Lbl/MoreActionKeyHandler;
.super Ljava/lang/Object;
.source "MoreActionKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/MoreActionKeyHandler$Trigger;
    }
.end annotation


# instance fields
.field private final delayMs:J

.field private fired:Z

.field private final handler:Landroid/os/Handler;

.field private pending:Ljava/lang/Runnable;

.field private trigger:Lbl/MoreActionKeyHandler$Trigger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lbl/MoreActionKeyHandler;-><init>(J)V

    .line 30
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/MoreActionKeyHandler;->handler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/MoreActionKeyHandler;->fired:Z

    .line 25
    iput-wide p1, p0, Lbl/MoreActionKeyHandler;->delayMs:J

    .line 26
    return-void
.end method

.method static synthetic access$002(Lbl/MoreActionKeyHandler;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lbl/MoreActionKeyHandler;->fired:Z

    return p1
.end method

.method static synthetic access$100(Lbl/MoreActionKeyHandler;)Lbl/MoreActionKeyHandler$Trigger;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lbl/MoreActionKeyHandler;->trigger:Lbl/MoreActionKeyHandler$Trigger;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lbl/MoreActionKeyHandler;->pending:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 77
    iget-object v0, p0, Lbl/MoreActionKeyHandler;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/MoreActionKeyHandler;->pending:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/MoreActionKeyHandler;->pending:Ljava/lang/Runnable;

    .line 80
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/MoreActionKeyHandler;->fired:Z

    .line 81
    return-void
.end method

.method public handle(Landroid/view/KeyEvent;Lbl/MoreActionKeyHandler$Trigger;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 38
    const/16 v4, 0x17

    if-eq v2, v4, :cond_12

    const/16 v4, 0x42

    if-ne v2, v4, :cond_16

    :cond_12
    move v2, v1

    .line 40
    :goto_13
    if-nez v2, :cond_18

    .line 72
    :cond_15
    :goto_15
    return v0

    :cond_16
    move v2, v0

    .line 38
    goto :goto_13

    .line 43
    :cond_18
    if-nez v3, :cond_35

    .line 44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 45
    iput-object p2, p0, Lbl/MoreActionKeyHandler;->trigger:Lbl/MoreActionKeyHandler$Trigger;

    .line 46
    iput-boolean v0, p0, Lbl/MoreActionKeyHandler;->fired:Z

    .line 47
    new-instance v1, Lbl/MoreActionKeyHandler$1;

    invoke-direct {v1, p0}, Lbl/MoreActionKeyHandler$1;-><init>(Lbl/MoreActionKeyHandler;)V

    iput-object v1, p0, Lbl/MoreActionKeyHandler;->pending:Ljava/lang/Runnable;

    .line 56
    iget-object v1, p0, Lbl/MoreActionKeyHandler;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lbl/MoreActionKeyHandler;->pending:Ljava/lang/Runnable;

    iget-wide v4, p0, Lbl/MoreActionKeyHandler;->delayMs:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    .line 60
    :cond_35
    if-ne v3, v1, :cond_15

    .line 61
    iget-object v2, p0, Lbl/MoreActionKeyHandler;->pending:Ljava/lang/Runnable;

    if-eqz v2, :cond_45

    .line 62
    iget-object v2, p0, Lbl/MoreActionKeyHandler;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lbl/MoreActionKeyHandler;->pending:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    const/4 v2, 0x0

    iput-object v2, p0, Lbl/MoreActionKeyHandler;->pending:Ljava/lang/Runnable;

    .line 65
    :cond_45
    iget-boolean v2, p0, Lbl/MoreActionKeyHandler;->fired:Z

    if-eqz v2, :cond_15

    .line 66
    iput-boolean v0, p0, Lbl/MoreActionKeyHandler;->fired:Z

    move v0, v1

    .line 68
    goto :goto_15
.end method
