.class public Lorg/jsoup/nodes/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Attributes$Dataset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/jsoup/nodes/Attribute;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final EmptyString:Ljava/lang/String; = ""

.field private static final GrowthFactor:I = 0x2

.field private static final InitialCapacity:I = 0x3

.field static final InternalPrefix:C = '/'

.field static final NotFound:I = -0x1

.field protected static final dataPrefix:Ljava/lang/String; = "data-"


# instance fields
.field keys:[Ljava/lang/String;

.field private size:I

.field vals:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 51
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 52
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Attributes;)I
    .registers 2
    .param p0, "x0"    # Lorg/jsoup/nodes/Attributes;

    .prologue
    .line 35
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return v0
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Attributes;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lorg/jsoup/nodes/Attributes;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/jsoup/nodes/Attributes;I)V
    .registers 2
    .param p0, "x0"    # Lorg/jsoup/nodes/Attributes;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lorg/jsoup/nodes/Attributes;->dataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkCapacity(I)V
    .registers 5
    .param p1, "minNewSize"    # I

    .prologue
    const/4 v1, 0x3

    .line 56
    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-lt p1, v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 57
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v0, v2

    .line 58
    .local v0, "curCap":I
    if-lt v0, p1, :cond_11

    .line 66
    :goto_e
    return-void

    .line 56
    .end local v0    # "curCap":I
    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 60
    .restart local v0    # "curCap":I
    :cond_11
    if-lt v0, v1, :cond_17

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v1, v2, 0x2

    .line 61
    .local v1, "newCap":I
    :cond_17
    if-le p1, v1, :cond_1a

    .line 62
    move v1, p1

    .line 64
    :cond_1a
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    goto :goto_e
.end method

.method static checkNotNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "val"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    if-nez p0, :cond_4

    const-string p0, ""

    .end local p0    # "val":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method private static dataKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexOfKeyIgnoreCase(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_16

    .line 80
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 83
    .end local v0    # "i":I
    :goto_12
    return v0

    .line 79
    .restart local v0    # "i":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 83
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method static internalKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInternalKey(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 519
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method private remove(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 180
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-lt p1, v1, :cond_35

    const/4 v1, 0x1

    :goto_6
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 181
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 182
    .local v0, "shifted":I
    if-lez v0, :cond_22

    .line 183
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_22
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 187
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    aput-object v4, v1, v2

    .line 188
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    aput-object v4, v1, v2

    .line 189
    return-void

    .line 180
    .end local v0    # "shifted":I
    :cond_35
    const/4 v1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 118
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    aput-object p1, v0, v1

    .line 119
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    aput-object p2, v0, v1

    .line 120
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 121
    return-object p0
.end method

.method public addAll(Lorg/jsoup/nodes/Attributes;)V
    .registers 5
    .param p1, "incoming"    # Lorg/jsoup/nodes/Attributes;

    .prologue
    .line 270
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 278
    :cond_6
    return-void

    .line 272
    :cond_7
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iget v2, p1, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 274
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 276
    .local v0, "attr":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_13
.end method

.method public asList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Attribute;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v3, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v1, v3, :cond_2a

    .line 317
    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 316
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 319
    :cond_19
    new-instance v0, Lorg/jsoup/nodes/Attribute;

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v0, v3, v4, p0}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 320
    .local v0, "attr":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 322
    .end local v0    # "attr":Lorg/jsoup/nodes/Attribute;
    :cond_2a
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Attributes;
    .registers 5

    .prologue
    .line 409
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attributes;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_23

    .line 413
    .local v0, "clone":Lorg/jsoup/nodes/Attributes;
    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iput v2, v0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 414
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 415
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 416
    return-object v0

    .line 410
    .end local v0    # "clone":Lorg/jsoup/nodes/Attributes;
    :catch_23
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public dataset()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Attributes$Dataset;-><init>(Lorg/jsoup/nodes/Attributes;Lorg/jsoup/nodes/Attributes$1;)V

    return-object v0
.end method

.method public deduplicate(Lorg/jsoup/parser/ParseSettings;)I
    .registers 8
    .param p1, "settings"    # Lorg/jsoup/parser/ParseSettings;

    .prologue
    .line 434
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 435
    const/4 v0, 0x0

    .line 449
    :cond_7
    return v0

    .line 436
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase()Z

    move-result v3

    .line 437
    .local v3, "preserve":Z
    const/4 v0, 0x0

    .line 438
    .local v0, "dupes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 439
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_15
    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_20

    .line 440
    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_23

    .line 438
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 442
    :cond_23
    if-eqz v3, :cond_33

    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    :cond_33
    if-nez v3, :cond_4a

    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 443
    :cond_43
    add-int/lit8 v0, v0, 0x1

    .line 444
    invoke-direct {p0, v2}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    .line 445
    add-int/lit8 v2, v2, -0x1

    .line 439
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 372
    if-ne p0, p1, :cond_5

    .line 390
    :cond_4
    :goto_4
    return v6

    .line 373
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v8, v9, :cond_13

    :cond_11
    move v6, v7

    goto :goto_4

    :cond_13
    move-object v2, p1

    .line 375
    check-cast v2, Lorg/jsoup/nodes/Attributes;

    .line 376
    .local v2, "that":Lorg/jsoup/nodes/Attributes;
    iget v8, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iget v9, v2, Lorg/jsoup/nodes/Attributes;->size:I

    if-eq v8, v9, :cond_1e

    move v6, v7

    goto :goto_4

    .line 377
    :cond_1e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget v8, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v8, :cond_4

    .line 378
    iget-object v8, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v8, v0

    .line 379
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v3

    .line 380
    .local v3, "thatI":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_30

    move v6, v7

    .line 381
    goto :goto_4

    .line 382
    :cond_30
    iget-object v8, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v5, v8, v0

    .line 383
    .local v5, "val":Ljava/lang/String;
    iget-object v8, v2, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v4, v8, v3

    .line 384
    .local v4, "thatVal":Ljava/lang/String;
    if-nez v5, :cond_3e

    .line 385
    if-eqz v4, :cond_46

    move v6, v7

    .line 386
    goto :goto_4

    .line 387
    :cond_3e
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    move v6, v7

    .line 388
    goto :goto_4

    .line 377
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const-string v1, ""

    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const-string v1, ""

    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public hasDeclaredValueForKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public hasDeclaredValueForKeyIgnoreCase(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public hasKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasKeyIgnoreCase(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 399
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 400
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 401
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 402
    return v0
.end method

.method public html()Ljava/lang/String;
    .registers 5

    .prologue
    .line 339
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    .local v1, "sb":Ljava/lang/StringBuilder;
    :try_start_4
    new-instance v2, Lorg/jsoup/nodes/Document;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_17

    .line 345
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 342
    :catch_17
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jsoup/SerializationException;

    invoke-direct {v2, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method final html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 8
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 350
    .local v2, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_2e

    .line 351
    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 350
    :cond_f
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 353
    :cond_12
    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jsoup/nodes/Attribute;->getValidKey(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 355
    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/16 v4, 0x20

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-static {v1, v3, v4, p2}, Lorg/jsoup/nodes/Attribute;->htmlNoValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_f

    .line 357
    .end local v1    # "key":Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method indexOfKey(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_16

    .line 71
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 74
    .end local v0    # "i":I
    :goto_12
    return v0

    .line 70
    .restart local v0    # "i":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 74
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lorg/jsoup/nodes/Attributes$1;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public normalize()V
    .registers 4

    .prologue
    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_14

    .line 424
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    :cond_14
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 134
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 137
    :goto_e
    return-object p0

    .line 136
    :cond_f
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    goto :goto_e
.end method

.method public put(Ljava/lang/String;Z)Lorg/jsoup/nodes/Attributes;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 158
    if-eqz p2, :cond_7

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/nodes/Attributes;->putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_6
    return-object p0

    .line 161
    :cond_7
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;
    .registers 4
    .param p1, "attribute"    # Lorg/jsoup/nodes/Attribute;

    .prologue
    .line 171
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 173
    iput-object p0, p1, Lorg/jsoup/nodes/Attribute;->parent:Lorg/jsoup/nodes/Attributes;

    .line 174
    return-object p0
.end method

.method putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 143
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 144
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 145
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 149
    :cond_19
    :goto_19
    return-void

    .line 148
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    goto :goto_19
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 198
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    .line 199
    :cond_a
    return-void
.end method

.method public removeIgnoreCase(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 208
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    .line 209
    :cond_a
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
