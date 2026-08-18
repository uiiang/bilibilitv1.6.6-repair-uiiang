.class public final enum Lorg/java_websocket/enums/HandshakeState;
.super Ljava/lang/Enum;
.source "HandshakeState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/java_websocket/enums/HandshakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/java_websocket/enums/HandshakeState;

.field public static final enum MATCHED:Lorg/java_websocket/enums/HandshakeState;

.field public static final enum NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;


# direct methods
.method private static synthetic $values()[Lorg/java_websocket/enums/HandshakeState;
    .locals 3

    .prologue
    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/java_websocket/enums/HandshakeState;

    const/4 v1, 0x0

    sget-object v2, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lorg/java_websocket/enums/HandshakeState;

    const-string v1, "MATCHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/enums/HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 14
    new-instance v0, Lorg/java_websocket/enums/HandshakeState;

    const-string v1, "NOT_MATCHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/enums/HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 6
    invoke-static {}, Lorg/java_websocket/enums/HandshakeState;->$values()[Lorg/java_websocket/enums/HandshakeState;

    move-result-object v0

    sput-object v0, Lorg/java_websocket/enums/HandshakeState;->$VALUES:[Lorg/java_websocket/enums/HandshakeState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/java_websocket/enums/HandshakeState;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lorg/java_websocket/enums/HandshakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/enums/HandshakeState;

    return-object v0
.end method

.method public static values()[Lorg/java_websocket/enums/HandshakeState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/java_websocket/enums/HandshakeState;->$VALUES:[Lorg/java_websocket/enums/HandshakeState;

    invoke-virtual {v0}, [Lorg/java_websocket/enums/HandshakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/java_websocket/enums/HandshakeState;

    return-object v0
.end method
