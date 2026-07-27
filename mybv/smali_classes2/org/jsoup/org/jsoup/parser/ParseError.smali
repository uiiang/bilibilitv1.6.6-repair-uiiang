.class public Lorg/jsoup/parser/ParseError;
.super Ljava/lang/Object;
.source "ParseError.java"


# instance fields
.field private cursorPos:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "pos"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lorg/jsoup/parser/ParseError;->pos:I

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 27
    return-void
.end method

.method varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "pos"    # I
    .param p2, "errorFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/jsoup/parser/ParseError;->pos:I

    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    .line 32
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 33
    return-void
.end method

.method constructor <init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;)V
    .registers 4
    .param p1, "reader"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/ParseError;->pos:I

    .line 13
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->cursorPos()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 15
    return-void
.end method

.method varargs constructor <init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "reader"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "errorFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/ParseError;->pos:I

    .line 19
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->cursorPos()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    .line 20
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCursorPos()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lorg/jsoup/parser/ParseError;->pos:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
