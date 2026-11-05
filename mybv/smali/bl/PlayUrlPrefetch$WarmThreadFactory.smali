.class final Lbl/PlayUrlPrefetch$WarmThreadFactory;
.super Ljava/lang/Object;
.source "PlayUrlPrefetch.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/PlayUrlPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WarmThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbl/PlayUrlPrefetch$1;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lbl/PlayUrlPrefetch$WarmThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 168
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "next-prefetch-warm"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 171
    return-object v0
.end method
