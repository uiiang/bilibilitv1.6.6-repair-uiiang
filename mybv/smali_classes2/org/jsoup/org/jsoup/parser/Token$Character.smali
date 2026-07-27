.class Lorg/jsoup/parser/Token$Character;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Character"
.end annotation


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    .line 367
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 368
    return-void
.end method


# virtual methods
.method data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .registers 2

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
