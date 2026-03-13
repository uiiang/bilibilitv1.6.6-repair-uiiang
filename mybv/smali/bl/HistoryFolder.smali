.class public Lbl/HistoryFolder;
.super Ljava/lang/Object;
.source "HistoryFolder.java"

# interfaces
.implements Lbl/FavoriteFolder;


# instance fields
.field private final count:I

.field private final title:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbl/HistoryFolder;->title:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lbl/HistoryFolder;->type:Ljava/lang/String;

    .line 15
    iput p3, p0, Lbl/HistoryFolder;->count:I

    .line 16
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lbl/HistoryFolder;->count:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHistoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbl/HistoryFolder;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbl/HistoryFolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lbl/HistoryFolder;->type:Ljava/lang/String;

    const-string v1, "archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x2

    goto :goto_b
.end method
