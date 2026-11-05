.class Lbl/PlayUrlPrefetch$1;
.super Ljava/lang/Object;
.source "PlayUrlPrefetch.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/PlayUrlPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "next-prefetch"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 77
    return-object v0
.end method
