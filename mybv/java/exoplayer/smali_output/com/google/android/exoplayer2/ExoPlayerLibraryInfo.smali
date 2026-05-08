.class public final Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;
.super Ljava/lang/Object;
.source "ExoPlayerLibraryInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ASSERTIONS_ENABLED:Z = true

.field public static final TAG:Ljava/lang/String; = "ExoPlayerLib"

.field public static final TRACE_ENABLED:Z = true

.field public static final VERSION:Ljava/lang/String; = "2.19.1"

.field public static final VERSION_INT:I = 0x1eceb9

.field public static final VERSION_SLASHY:Ljava/lang/String; = "ExoPlayerLib/2.19.1"

.field private static final registeredModules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredModulesString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    .line 61
    const-string v0, "goog.exo.core"

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized registerModule(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;

    monitor-enter v0

    .line 76
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 79
    :cond_26
    monitor-exit v0

    return-void

    .line 75
    .end local p0    # "name":Ljava/lang/String;
    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registeredModules()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 67
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
