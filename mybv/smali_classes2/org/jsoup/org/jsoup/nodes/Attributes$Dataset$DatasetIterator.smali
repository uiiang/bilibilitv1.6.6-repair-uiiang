.class Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Attributes$Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatasetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private attr:Lorg/jsoup/nodes/Attribute;

.field private attrIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jsoup/nodes/Attributes$Dataset;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;)V
    .registers 3

    .prologue
    .line 489
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->this$0:Lorg/jsoup/nodes/Attributes$Dataset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->this$0:Lorg/jsoup/nodes/Attributes$Dataset;

    # getter for: Lorg/jsoup/nodes/Attributes$Dataset;->attributes:Lorg/jsoup/nodes/Attributes;
    invoke-static {v0}, Lorg/jsoup/nodes/Attributes$Dataset;->access$700(Lorg/jsoup/nodes/Attributes$Dataset;)Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->attrIter:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;Lorg/jsoup/nodes/Attributes$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/jsoup/nodes/Attributes$Dataset;
    .param p2, "x1"    # Lorg/jsoup/nodes/Attributes$1;

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 493
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->attrIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 494
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->attrIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->attr:Lorg/jsoup/nodes/Attribute;

    .line 495
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->attr:Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->isDataAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 497
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 489
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lorg/jsoup/nodes/Attribute;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->attr:Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->attr:Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->this$0:Lorg/jsoup/nodes/Attributes$Dataset;

    # getter for: Lorg/jsoup/nodes/Attributes$Dataset;->attributes:Lorg/jsoup/nodes/Attributes;
    invoke-static {v0}, Lorg/jsoup/nodes/Attributes$Dataset;->access$700(Lorg/jsoup/nodes/Attributes$Dataset;)Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->attr:Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    .line 506
    return-void
.end method
