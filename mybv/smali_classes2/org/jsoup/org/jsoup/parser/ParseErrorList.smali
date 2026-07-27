.class public Lorg/jsoup/parser/ParseErrorList;
.super Ljava/util/ArrayList;
.source "ParseErrorList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/jsoup/parser/ParseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private final initialCapacity:I

.field private final maxSize:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "initialCapacity"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    iput p1, p0, Lorg/jsoup/parser/ParseErrorList;->initialCapacity:I

    .line 18
    iput p2, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    .line 19
    return-void
.end method

.method constructor <init>(Lorg/jsoup/parser/ParseErrorList;)V
    .registers 4
    .param p1, "copy"    # Lorg/jsoup/parser/ParseErrorList;

    .prologue
    .line 26
    iget v0, p1, Lorg/jsoup/parser/ParseErrorList;->initialCapacity:I

    iget v1, p1, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    .line 27
    return-void
.end method

.method public static noTracking()Lorg/jsoup/parser/ParseErrorList;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method

.method public static tracking(I)Lorg/jsoup/parser/ParseErrorList;
    .registers 3
    .param p0, "maxSize"    # I

    .prologue
    .line 42
    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method canAddError()Z
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/jsoup/parser/ParseErrorList;->size()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method getMaxSize()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    return v0
.end method
