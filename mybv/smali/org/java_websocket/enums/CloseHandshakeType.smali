.class public final enum Lorg/java_websocket/enums/CloseHandshakeType;
.super Ljava/lang/Enum;
.source "CloseHandshakeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/java_websocket/enums/CloseHandshakeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/java_websocket/enums/CloseHandshakeType;

.field public static final enum NONE:Lorg/java_websocket/enums/CloseHandshakeType;

.field public static final enum ONEWAY:Lorg/java_websocket/enums/CloseHandshakeType;

.field public static final enum TWOWAY:Lorg/java_websocket/enums/CloseHandshakeType;


# direct methods
.method private static synthetic $values()[Lorg/java_websocket/enums/CloseHandshakeType;
    .locals 3

    .prologue
    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/java_websocket/enums/CloseHandshakeType;

    const/4 v1, 0x0

    sget-object v2, Lorg/java_websocket/enums/CloseHandshakeType;->NONE:Lorg/java_websocket/enums/CloseHandshakeType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/java_websocket/enums/CloseHandshakeType;->ONEWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/java_websocket/enums/CloseHandshakeType;->TWOWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lorg/java_websocket/enums/CloseHandshakeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/enums/CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/CloseHandshakeType;->NONE:Lorg/java_websocket/enums/CloseHandshakeType;

    new-instance v0, Lorg/java_websocket/enums/CloseHandshakeType;

    const-string v1, "ONEWAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/enums/CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/CloseHandshakeType;->ONEWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    new-instance v0, Lorg/java_websocket/enums/CloseHandshakeType;

    const-string v1, "TWOWAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/enums/CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/CloseHandshakeType;->TWOWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    .line 6
    invoke-static {}, Lorg/java_websocket/enums/CloseHandshakeType;->$values()[Lorg/java_websocket/enums/CloseHandshakeType;

    move-result-object v0

    sput-object v0, Lorg/java_websocket/enums/CloseHandshakeType;->$VALUES:[Lorg/java_websocket/enums/CloseHandshakeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/java_websocket/enums/CloseHandshakeType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lorg/java_websocket/enums/CloseHandshakeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/enums/CloseHandshakeType;

    return-object v0
.end method

.method public static values()[Lorg/java_websocket/enums/CloseHandshakeType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/java_websocket/enums/CloseHandshakeType;->$VALUES:[Lorg/java_websocket/enums/CloseHandshakeType;

    invoke-virtual {v0}, [Lorg/java_websocket/enums/CloseHandshakeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/java_websocket/enums/CloseHandshakeType;

    return-object v0
.end method
