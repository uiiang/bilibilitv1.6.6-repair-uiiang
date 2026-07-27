.class public Lorg/jsoup/parser/ParseSettings;
.super Ljava/lang/Object;
.source "ParseSettings.java"


# static fields
.field public static final htmlDefault:Lorg/jsoup/parser/ParseSettings;

.field public static final preserveCase:Lorg/jsoup/parser/ParseSettings;


# instance fields
.field private final preserveAttributeCase:Z

.field private final preserveTagCase:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    .line 22
    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    invoke-direct {v0, v2, v2}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 23
    return-void
.end method

.method constructor <init>(Lorg/jsoup/parser/ParseSettings;)V
    .registers 4
    .param p1, "copy"    # Lorg/jsoup/parser/ParseSettings;

    .prologue
    .line 53
    iget-boolean v0, p1, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    iget-boolean v1, p1, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3
    .param p1, "tag"    # Z
    .param p2, "attribute"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 49
    iput-boolean p2, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    .line 50
    return-void
.end method

.method static normalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public normalizeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    if-nez v0, :cond_c

    .line 72
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_c
    return-object p1
.end method

.method normalizeAttributes(Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/nodes/Attributes;
    .registers 3
    .param p1, "attributes"    # Lorg/jsoup/nodes/Attributes;

    .prologue
    .line 77
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    if-nez v0, :cond_9

    .line 78
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->normalize()V

    .line 80
    :cond_9
    return-object p1
.end method

.method public normalizeTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    if-nez v0, :cond_c

    .line 62
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_c
    return-object p1
.end method

.method public preserveAttributeCase()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    return v0
.end method

.method public preserveTagCase()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    return v0
.end method
