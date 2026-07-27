.class final enum Lorg/jsoup/nodes/Entities$CoreCharset;
.super Ljava/lang/Enum;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CoreCharset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jsoup/nodes/Entities$CoreCharset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/nodes/Entities$CoreCharset;

.field public static final enum ascii:Lorg/jsoup/nodes/Entities$CoreCharset;

.field public static final enum fallback:Lorg/jsoup/nodes/Entities$CoreCharset;

.field public static final enum utf:Lorg/jsoup/nodes/Entities$CoreCharset;


# direct methods
.method private static synthetic $values()[Lorg/jsoup/nodes/Entities$CoreCharset;
    .registers 3

    .prologue
    .line 299
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jsoup/nodes/Entities$CoreCharset;

    const/4 v1, 0x0

    sget-object v2, Lorg/jsoup/nodes/Entities$CoreCharset;->ascii:Lorg/jsoup/nodes/Entities$CoreCharset;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/jsoup/nodes/Entities$CoreCharset;->utf:Lorg/jsoup/nodes/Entities$CoreCharset;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/jsoup/nodes/Entities$CoreCharset;->fallback:Lorg/jsoup/nodes/Entities$CoreCharset;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 300
    new-instance v0, Lorg/jsoup/nodes/Entities$CoreCharset;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Entities$CoreCharset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$CoreCharset;->ascii:Lorg/jsoup/nodes/Entities$CoreCharset;

    new-instance v0, Lorg/jsoup/nodes/Entities$CoreCharset;

    const-string v1, "utf"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Entities$CoreCharset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$CoreCharset;->utf:Lorg/jsoup/nodes/Entities$CoreCharset;

    new-instance v0, Lorg/jsoup/nodes/Entities$CoreCharset;

    const-string v1, "fallback"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Entities$CoreCharset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$CoreCharset;->fallback:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 299
    invoke-static {}, Lorg/jsoup/nodes/Entities$CoreCharset;->$values()[Lorg/jsoup/nodes/Entities$CoreCharset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities$CoreCharset;->$VALUES:[Lorg/jsoup/nodes/Entities$CoreCharset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byName(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$CoreCharset;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 304
    sget-object v0, Lorg/jsoup/nodes/Entities$CoreCharset;->ascii:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 307
    :goto_a
    return-object v0

    .line 305
    :cond_b
    const-string v0, "UTF-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 306
    sget-object v0, Lorg/jsoup/nodes/Entities$CoreCharset;->utf:Lorg/jsoup/nodes/Entities$CoreCharset;

    goto :goto_a

    .line 307
    :cond_16
    sget-object v0, Lorg/jsoup/nodes/Entities$CoreCharset;->fallback:Lorg/jsoup/nodes/Entities$CoreCharset;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$CoreCharset;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    const-class v0, Lorg/jsoup/nodes/Entities$CoreCharset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/nodes/Entities$CoreCharset;
    .registers 1

    .prologue
    .line 299
    sget-object v0, Lorg/jsoup/nodes/Entities$CoreCharset;->$VALUES:[Lorg/jsoup/nodes/Entities$CoreCharset;

    invoke-virtual {v0}, [Lorg/jsoup/nodes/Entities$CoreCharset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method
