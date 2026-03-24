.class public Lbl/SearchFolder;
.super Ljava/lang/Object;
.source "SearchFolder.java"

# interfaces
.implements Lbl/FavoriteFolder;


# instance fields
.field private final tid:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lbl/SearchFolder;->title:Ljava/lang/String;

    .line 9
    iput p2, p0, Lbl/SearchFolder;->tid:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lbl/SearchFolder;->tid:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lbl/SearchFolder;->tid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lbl/SearchFolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lbl/SearchFolder;->tid:I

    return v0
.end method
