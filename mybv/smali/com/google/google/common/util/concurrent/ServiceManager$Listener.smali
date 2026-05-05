.class public abstract Lcom/google/common/util/concurrent/ServiceManager$Listener;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/google/common/util/concurrent/Service;)V
    .registers 2
    .param p1, "service"    # Lcom/google/common/util/concurrent/Service;

    .prologue
    .line 172
    return-void
.end method

.method public healthy()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method public stopped()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method
