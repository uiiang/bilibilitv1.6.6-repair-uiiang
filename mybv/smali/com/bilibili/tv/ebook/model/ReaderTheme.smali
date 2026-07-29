.class public Lcom/bilibili/tv/ebook/model/ReaderTheme;
.super Ljava/lang/Object;
.source "ReaderTheme.java"


# instance fields
.field private backgroundColor:I

.field private id:Ljava/lang/String;

.field private isDark:Z

.field private isSystem:Z

.field private name:Ljava/lang/String;

.field private textColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->name:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->backgroundColor:I

    .line 21
    iput p4, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->textColor:I

    .line 22
    iput-boolean p5, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->isDark:Z

    .line 23
    iput-boolean p6, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->isSystem:Z

    .line 24
    return-void
.end method

.method public static findById(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/ReaderTheme;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-static {}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_7
    if-ge v1, v4, :cond_1a

    aget-object v0, v3, v1

    .line 80
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 84
    :goto_15
    return-object v0

    .line 79
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 84
    :cond_1a
    invoke-static {}, Lcom/bilibili/tv/ebook/model/ReaderTheme;->getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_15
.end method

.method public static getBuiltInThemes()[Lcom/bilibili/tv/ebook/model/ReaderTheme;
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    const/4 v0, 0x6

    new-array v14, v0, [Lcom/bilibili/tv/ebook/model/ReaderTheme;

    new-instance v0, Lcom/bilibili/tv/ebook/model/ReaderTheme;

    const-string v1, "system"

    const-string v2, "System"

    const/4 v3, -0x1

    const/high16 v4, -0x1000000

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ebook/model/ReaderTheme;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    aput-object v0, v14, v5

    new-instance v7, Lcom/bilibili/tv/ebook/model/ReaderTheme;

    const-string v8, "light"

    const-string v9, "Light"

    const-string v0, "#FFFFFF"

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move v12, v5

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/bilibili/tv/ebook/model/ReaderTheme;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    aput-object v7, v14, v6

    const/4 v0, 0x2

    new-instance v7, Lcom/bilibili/tv/ebook/model/ReaderTheme;

    const-string v8, "dark"

    const-string v9, "Dark"

    const-string v1, "#121212"

    .line 62
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v1, "#E0E0E0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move v12, v6

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/bilibili/tv/ebook/model/ReaderTheme;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    aput-object v7, v14, v0

    const/4 v0, 0x3

    new-instance v7, Lcom/bilibili/tv/ebook/model/ReaderTheme;

    const-string v8, "sepia"

    const-string v9, "Sepia"

    const-string v1, "#FBF0D9"

    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v1, "#5F4B32"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move v12, v5

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/bilibili/tv/ebook/model/ReaderTheme;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    aput-object v7, v14, v0

    const/4 v0, 0x4

    new-instance v7, Lcom/bilibili/tv/ebook/model/ReaderTheme;

    const-string v8, "slate"

    const-string v9, "Slate"

    const-string v1, "#2E3440"

    .line 68
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v1, "#ECEFF4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move v12, v6

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/bilibili/tv/ebook/model/ReaderTheme;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    aput-object v7, v14, v0

    const/4 v0, 0x5

    new-instance v7, Lcom/bilibili/tv/ebook/model/ReaderTheme;

    const-string v8, "oled"

    const-string v9, "OLED"

    const-string v1, "#000000"

    .line 71
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v1, "#B0B0B0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move v12, v6

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/bilibili/tv/ebook/model/ReaderTheme;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    aput-object v7, v14, v0

    .line 54
    return-object v14
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->backgroundColor:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->textColor:I

    return v0
.end method

.method public isDark()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->isDark:Z

    return v0
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/model/ReaderTheme;->isSystem:Z

    return v0
.end method
