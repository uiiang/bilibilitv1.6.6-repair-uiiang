.class final Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventWithSubscriber"
.end annotation


# instance fields
.field private final event:Ljava/lang/Object;

.field private final subscriber:Lcom/google/common/eventbus/Subscriber;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/common/eventbus/Subscriber;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "subscriber"    # Lcom/google/common/eventbus/Subscriber;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->event:Ljava/lang/Object;

    .line 185
    iput-object p2, p0, Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->subscriber:Lcom/google/common/eventbus/Subscriber;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/common/eventbus/Subscriber;Lcom/google/common/eventbus/Dispatcher$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/common/eventbus/Subscriber;
    .param p3, "x2"    # Lcom/google/common/eventbus/Dispatcher$1;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;-><init>(Ljava/lang/Object;Lcom/google/common/eventbus/Subscriber;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->event:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;)Lcom/google/common/eventbus/Subscriber;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->subscriber:Lcom/google/common/eventbus/Subscriber;

    return-object v0
.end method
