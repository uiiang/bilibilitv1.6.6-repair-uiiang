.class public final Lcom/google/common/collect/MutableClassToInstanceMap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedMap;
.source "MutableClassToInstanceMap.java"

# interfaces
.implements Lcom/google/common/collect/ClassToInstanceMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MutableClassToInstanceMap$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapConstraints$ConstrainedMap",
        "<",
        "Ljava/lang/Class",
        "<+TB;>;TB;>;",
        "Lcom/google/common/collect/ClassToInstanceMap",
        "<TB;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final VALUE_CAN_BE_CAST_TO_KEY:Lcom/google/common/collect/MapConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapConstraint",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/MutableClassToInstanceMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MutableClassToInstanceMap;->VALUE_CAN_BE_CAST_TO_KEY:Lcom/google/common/collect/MapConstraint;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap;, "Lcom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+TB;>;TB;>;"
    sget-object v0, Lcom/google/common/collect/MutableClassToInstanceMap;->VALUE_CAN_BE_CAST_TO_KEY:Lcom/google/common/collect/MapConstraint;

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;TB;)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TB;"
    invoke-static {p0}, Lcom/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/MutableClassToInstanceMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MutableClassToInstanceMap",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/MutableClassToInstanceMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/MutableClassToInstanceMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;)",
            "Lcom/google/common/collect/MutableClassToInstanceMap",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "backingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+TB;>;TB;>;"
    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MutableClassToInstanceMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 89
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap;, "Lcom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/MutableClassToInstanceMap$SerializedForm;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap;, "Lcom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    invoke-super {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap;, "Lcom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap;, "Lcom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap;, "Lcom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
