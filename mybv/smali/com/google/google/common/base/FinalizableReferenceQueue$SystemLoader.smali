.class Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemLoader"
.end annotation


# static fields
.field static disabled:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 250
    sget-boolean v3, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;->disabled:Z

    if-eqz v3, :cond_6

    .line 268
    :cond_5
    :goto_5
    return-object v2

    .line 255
    :cond_6
    :try_start_6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_13

    move-result-object v1

    .line 260
    .local v1, "systemLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_5

    .line 262
    :try_start_c
    const-string v3, "com.google.common.base.internal.Finalizer"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_1e

    move-result-object v2

    goto :goto_5

    .line 256
    .end local v1    # "systemLoader":Ljava/lang/ClassLoader;
    :catch_13
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/SecurityException;
    # getter for: Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/base/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "Not allowed to access system class loader."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_5

    .line 263
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "systemLoader":Ljava/lang/ClassLoader;
    :catch_1e
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_5
.end method
