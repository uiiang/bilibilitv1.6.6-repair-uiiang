.class abstract Lorg/jsoup/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/Token$TokenType;,
        Lorg/jsoup/parser/Token$Doctype;,
        Lorg/jsoup/parser/Token$StartTag;,
        Lorg/jsoup/parser/Token$EndTag;,
        Lorg/jsoup/parser/Token$Comment;,
        Lorg/jsoup/parser/Token$CData;,
        Lorg/jsoup/parser/Token$Character;,
        Lorg/jsoup/parser/Token$EOF;,
        Lorg/jsoup/parser/Token$Tag;
    }
.end annotation


# instance fields
.field type:Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/parser/Token$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/jsoup/parser/Token$1;

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/jsoup/parser/Token;-><init>()V

    return-void
.end method

.method static reset(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 30
    if-eqz p0, :cond_a

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 33
    :cond_a
    return-void
.end method


# virtual methods
.method final asCharacter()Lorg/jsoup/parser/Token$Character;
    .registers 1

    .prologue
    .line 461
    check-cast p0, Lorg/jsoup/parser/Token$Character;

    .end local p0    # "this":Lorg/jsoup/parser/Token;
    return-object p0
.end method

.method final asComment()Lorg/jsoup/parser/Token$Comment;
    .registers 1

    .prologue
    .line 449
    check-cast p0, Lorg/jsoup/parser/Token$Comment;

    .end local p0    # "this":Lorg/jsoup/parser/Token;
    return-object p0
.end method

.method final asDoctype()Lorg/jsoup/parser/Token$Doctype;
    .registers 1

    .prologue
    .line 425
    check-cast p0, Lorg/jsoup/parser/Token$Doctype;

    .end local p0    # "this":Lorg/jsoup/parser/Token;
    return-object p0
.end method

.method final asEndTag()Lorg/jsoup/parser/Token$EndTag;
    .registers 1

    .prologue
    .line 441
    check-cast p0, Lorg/jsoup/parser/Token$EndTag;

    .end local p0    # "this":Lorg/jsoup/parser/Token;
    return-object p0
.end method

.method final asStartTag()Lorg/jsoup/parser/Token$StartTag;
    .registers 1

    .prologue
    .line 433
    check-cast p0, Lorg/jsoup/parser/Token$StartTag;

    .end local p0    # "this":Lorg/jsoup/parser/Token;
    return-object p0
.end method

.method final isCData()Z
    .registers 2

    .prologue
    .line 457
    instance-of v0, p0, Lorg/jsoup/parser/Token$CData;

    return v0
.end method

.method final isCharacter()Z
    .registers 3

    .prologue
    .line 453
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isComment()Z
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isDoctype()Z
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isEOF()Z
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isEndTag()Z
    .registers 3

    .prologue
    .line 437
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isStartTag()Z
    .registers 3

    .prologue
    .line 429
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method abstract reset()Lorg/jsoup/parser/Token;
.end method

.method tokenType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
