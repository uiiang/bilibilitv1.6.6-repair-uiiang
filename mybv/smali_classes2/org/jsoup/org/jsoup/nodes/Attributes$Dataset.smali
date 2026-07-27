.class Lorg/jsoup/nodes/Attributes$Dataset;
.super Ljava/util/AbstractMap;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dataset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;,
        Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final attributes:Lorg/jsoup/nodes/Attributes;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/Attributes;)V
    .registers 2
    .param p1, "attributes"    # Lorg/jsoup/nodes/Attributes;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 456
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/Attributes;Lorg/jsoup/nodes/Attributes$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/jsoup/nodes/Attributes;
    .param p2, "x1"    # Lorg/jsoup/nodes/Attributes$1;

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes$Dataset;-><init>(Lorg/jsoup/nodes/Attributes;)V

    return-void
.end method

.method static synthetic access$700(Lorg/jsoup/nodes/Attributes$Dataset;)Lorg/jsoup/nodes/Attributes;
    .registers 2
    .param p0, "x0"    # Lorg/jsoup/nodes/Attributes$Dataset;

    .prologue
    .line 452
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset;->attributes:Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;Lorg/jsoup/nodes/Attributes$1;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 452
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes$Dataset;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 466
    # invokes: Lorg/jsoup/nodes/Attributes;->dataKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "dataKey":Ljava/lang/String;
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$Dataset;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$Dataset;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "oldValue":Ljava/lang/String;
    :goto_12
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$Dataset;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v0, p2}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 469
    return-object v1

    .line 467
    .end local v1    # "oldValue":Ljava/lang/String;
    :cond_18
    const/4 v1, 0x0

    goto :goto_12
.end method
