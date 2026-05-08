.class final Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;
.super Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonTerminalImmutableBiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p4, "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 105
    iput-object p4, p0, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    .line 106
    return-void
.end method


# virtual methods
.method getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method
