.class Lcom/google/common/eventbus/Subscriber$1;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/eventbus/Subscriber;->dispatchEvent(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/eventbus/Subscriber;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/Subscriber;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/common/eventbus/Subscriber$1;->this$0:Lcom/google/common/eventbus/Subscriber;

    iput-object p2, p0, Lcom/google/common/eventbus/Subscriber$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/google/common/eventbus/Subscriber$1;->this$0:Lcom/google/common/eventbus/Subscriber;

    iget-object v2, p0, Lcom/google/common/eventbus/Subscriber$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/common/eventbus/Subscriber;->invokeSubscriberMethod(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_7} :catch_8

    .line 80
    :goto_7
    return-void

    .line 77
    :catch_8
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v1, p0, Lcom/google/common/eventbus/Subscriber$1;->this$0:Lcom/google/common/eventbus/Subscriber;

    # getter for: Lcom/google/common/eventbus/Subscriber;->bus:Lcom/google/common/eventbus/EventBus;
    invoke-static {v1}, Lcom/google/common/eventbus/Subscriber;->access$200(Lcom/google/common/eventbus/Subscriber;)Lcom/google/common/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/eventbus/Subscriber$1;->this$0:Lcom/google/common/eventbus/Subscriber;

    iget-object v4, p0, Lcom/google/common/eventbus/Subscriber$1;->val$event:Ljava/lang/Object;

    # invokes: Lcom/google/common/eventbus/Subscriber;->context(Ljava/lang/Object;)Lcom/google/common/eventbus/SubscriberExceptionContext;
    invoke-static {v3, v4}, Lcom/google/common/eventbus/Subscriber;->access$100(Lcom/google/common/eventbus/Subscriber;Ljava/lang/Object;)Lcom/google/common/eventbus/SubscriberExceptionContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/eventbus/EventBus;->handleSubscriberException(Ljava/lang/Throwable;Lcom/google/common/eventbus/SubscriberExceptionContext;)V

    goto :goto_7
.end method
