.class public Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;
.super Ljava/lang/Object;
.source "MobiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aryan/reader/epub/MobiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedMobiData"
.end annotation


# instance fields
.field private author:Ljava/lang/String;

.field private coverImageResourceUid:I

.field private publisher:Ljava/lang/String;

.field private rawHtmlContent:Ljava/lang/String;

.field private resources:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

.field private title:Ljava/lang/String;

.field private toc:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;I)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->title:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->author:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->publisher:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->rawHtmlContent:Ljava/lang/String;

    .line 147
    iput-object p5, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->resources:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    .line 148
    iput-object p6, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->toc:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    .line 149
    iput p7, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->coverImageResourceUid:I

    .line 150
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImageResourceUid()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->coverImageResourceUid:I

    return v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getRawHtmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->rawHtmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->resources:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->resources:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getResources()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->resources:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToc()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->toc:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    return-object v0
.end method

.method public hasToc()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->toc:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->toc:[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
