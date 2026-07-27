.class Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;
.super Ljava/util/AbstractSet;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Attributes$Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsoup/nodes/Attributes$Dataset;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;)V
    .registers 2

    .prologue
    .line 472
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->this$0:Lorg/jsoup/nodes/Attributes$Dataset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;Lorg/jsoup/nodes/Attributes$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/jsoup/nodes/Attributes$Dataset;
    .param p2, "x1"    # Lorg/jsoup/nodes/Attributes$1;

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->this$0:Lorg/jsoup/nodes/Attributes$Dataset;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;Lorg/jsoup/nodes/Attributes$1;)V

    return-object v0
.end method

.method public size()I
    .registers 5

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "count":I
    new-instance v1, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->this$0:Lorg/jsoup/nodes/Attributes$Dataset;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;Lorg/jsoup/nodes/Attributes$1;)V

    .line 483
    .local v1, "iter":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 485
    :cond_12
    return v0
.end method
