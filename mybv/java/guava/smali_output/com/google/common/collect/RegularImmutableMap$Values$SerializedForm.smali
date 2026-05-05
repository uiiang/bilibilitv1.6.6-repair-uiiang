.class Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm;
.super Ljava/lang/Object;
.source "RegularImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap$Values;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm;, "Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm<TV;>;"
    .local p1, "map":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<*TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm;->map:Lcom/google/common/collect/ImmutableMap;

    .line 250
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 253
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm;, "Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
