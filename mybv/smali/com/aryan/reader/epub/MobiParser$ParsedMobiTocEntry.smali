.class public Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;
.super Ljava/lang/Object;
.source "MobiParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aryan/reader/epub/MobiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedMobiTocEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;",
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->title:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->filePosition:I

    .line 68
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;)I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->filePosition:I

    iget v1, p1, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->filePosition:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    check-cast p1, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    invoke-virtual {p0, p1}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->compareTo(Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;)I

    move-result v0

    return v0
.end method

.method public getFilePosition()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->filePosition:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->title:Ljava/lang/String;

    return-object v0
.end method
