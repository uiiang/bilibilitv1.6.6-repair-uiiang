.class public final Lcom/google/android/exoplayer2/util/BundleUtil;
.super Ljava/lang/Object;
.source "BundleUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleUtil"

.field private static getIBinderMethod:Ljava/lang/reflect/Method;

.field private static putIBinderMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 49
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 52
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/BundleUtil;->getBinderByReflection(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private static getBinderByReflection(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 11
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->getIBinderMethod:Ljava/lang/reflect/Method;

    .line 76
    .local v0, "getIBinder":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const-string v2, "BundleUtil"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_27

    .line 78
    :try_start_9
    const-class v5, Landroid/os/Bundle;

    const-string v6, "getIBinder"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/exoplayer2/util/BundleUtil;->getIBinderMethod:Ljava/lang/reflect/Method;

    .line 79
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1c} :catch_20

    .line 83
    nop

    .line 84
    sget-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->getIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_27

    .line 80
    :catch_20
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Failed to retrieve getIBinder method"

    invoke-static {v2, v4, v3}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-object v1

    .line 88
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_27
    :goto_27
    :try_start_27
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_31} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_31} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_31} :catch_32

    return-object v3

    .line 89
    :catch_32
    move-exception v3

    goto :goto_37

    :catch_34
    move-exception v3

    goto :goto_37

    :catch_36
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/Exception;
    :goto_37
    const-string v4, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v4, v3}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    return-object v1
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 64
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_a

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_d

    .line 67
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/BundleUtil;->putBinderByReflection(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 69
    :goto_d
    return-void
.end method

.method private static putBinderByReflection(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 12
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 99
    sget-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->putIBinderMethod:Ljava/lang/reflect/Method;

    .line 100
    .local v0, "putIBinder":Ljava/lang/reflect/Method;
    const-string v1, "BundleUtil"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_2b

    .line 102
    :try_start_9
    const-class v5, Landroid/os/Bundle;

    const-string v6, "putIBinder"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/exoplayer2/util/BundleUtil;->putIBinderMethod:Ljava/lang/reflect/Method;

    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_20} :catch_24

    .line 107
    nop

    .line 108
    sget-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->putIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_2b

    .line 104
    :catch_24
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "Failed to retrieve putIBinder method"

    invoke-static {v1, v3, v2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return-void

    .line 112
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2b
    :goto_2b
    :try_start_2b
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_34} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_34} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_34} :catch_35

    .line 115
    goto :goto_3f

    .line 113
    :catch_35
    move-exception v2

    goto :goto_3a

    :catch_37
    move-exception v2

    goto :goto_3a

    :catch_39
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    :goto_3a
    const-string v3, "Failed to invoke putIBinder via reflection"

    invoke-static {v1, v3, v2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3f
    return-void
.end method
