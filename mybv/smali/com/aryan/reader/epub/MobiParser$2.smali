.class Lcom/aryan/reader/epub/MobiParser$2;
.super Ljava/lang/Object;
.source "MobiParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aryan/reader/epub/MobiParser;->splitIntoChapters(Ljava/lang/String;[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aryan/reader/epub/MobiParser;


# direct methods
.method constructor <init>(Lcom/aryan/reader/epub/MobiParser;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/aryan/reader/epub/MobiParser$2;->this$0:Lcom/aryan/reader/epub/MobiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;)I
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getFilePosition()I

    move-result v0

    invoke-virtual {p2}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getFilePosition()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getFilePosition()I

    move-result v0

    invoke-virtual {p2}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getFilePosition()I

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    goto :goto_b

    :cond_18
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 473
    check-cast p1, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    check-cast p2, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    invoke-virtual {p0, p1, p2}, Lcom/aryan/reader/epub/MobiParser$2;->compare(Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;)I

    move-result v0

    return v0
.end method
