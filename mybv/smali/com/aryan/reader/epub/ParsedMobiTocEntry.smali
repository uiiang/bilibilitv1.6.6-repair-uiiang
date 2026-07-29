.class public Lcom/aryan/reader/epub/ParsedMobiTocEntry;
.super Ljava/lang/Object;
.source "ParsedMobiTocEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/aryan/reader/epub/ParsedMobiTocEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private filePosition:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->title:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->filePosition:I

    .line 23
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/aryan/reader/epub/ParsedMobiTocEntry;)I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->filePosition:I

    iget v1, p1, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->filePosition:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/aryan/reader/epub/ParsedMobiTocEntry;

    invoke-virtual {p0, p1}, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->compareTo(Lcom/aryan/reader/epub/ParsedMobiTocEntry;)I

    move-result v0

    return v0
.end method

.method public getFilePosition()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->filePosition:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParsedMobiTocEntry{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aryan/reader/epub/ParsedMobiTocEntry;->filePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
