.class Lcom/aryan/reader/epub/MobiParser$1;
.super Ljava/lang/Object;
.source "MobiParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aryan/reader/epub/MobiParser;->buildImageMap([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)Ljava/util/Map;
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
        "Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aryan/reader/epub/MobiParser;


# direct methods
.method constructor <init>(Lcom/aryan/reader/epub/MobiParser;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/aryan/reader/epub/MobiParser$1;->this$0:Lcom/aryan/reader/epub/MobiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)I
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getUid()I

    move-result v0

    invoke-virtual {p2}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getUid()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 271
    check-cast p1, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    check-cast p2, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    invoke-virtual {p0, p1, p2}, Lcom/aryan/reader/epub/MobiParser$1;->compare(Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)I

    move-result v0

    return v0
.end method
