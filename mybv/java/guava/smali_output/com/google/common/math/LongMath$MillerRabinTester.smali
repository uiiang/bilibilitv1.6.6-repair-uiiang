.class abstract enum Lcom/google/common/math/LongMath$MillerRabinTester;
.super Ljava/lang/Enum;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "MillerRabinTester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/math/LongMath$MillerRabinTester;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1072
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$1;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/google/common/math/LongMath$MillerRabinTester$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1092
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$2;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v3}, Lcom/google/common/math/LongMath$MillerRabinTester$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1068
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/math/LongMath$MillerRabinTester;

    sget-object v1, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

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
    .line 1068
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/math/LongMath$1;

    .prologue
    .line 1068
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private powMod(JJJ)J
    .registers 16
    .param p1, "a"    # J
    .param p3, "p"    # J
    .param p5, "m"    # J

    .prologue
    .line 1191
    const-wide/16 v2, 0x1

    .line 1192
    .local v2, "res":J
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1f

    .line 1193
    const-wide/16 v0, 0x1

    and-long/2addr v0, p3

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_18

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p5

    .line 1194
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/math/LongMath$MillerRabinTester;->mulMod(JJJ)J

    move-result-wide v2

    .line 1196
    :cond_18
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide p1

    .line 1192
    const/4 v0, 0x1

    shr-long/2addr p3, v0

    goto :goto_2

    .line 1198
    :cond_1f
    return-wide v2
.end method

.method static test(JJ)Z
    .registers 6
    .param p0, "base"    # J
    .param p2, "n"    # J

    .prologue
    .line 1174
    const-wide v0, 0xb504f333L

    cmp-long v0, p2, v0

    if-gtz v0, :cond_10

    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    :goto_b
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/math/LongMath$MillerRabinTester;->testWitness(JJ)Z

    move-result v0

    return v0

    :cond_10
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    goto :goto_b
.end method

.method private testWitness(JJ)Z
    .registers 16
    .param p1, "base"    # J
    .param p3, "n"    # J

    .prologue
    .line 1205
    const-wide/16 v2, 0x1

    sub-long v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    .line 1206
    .local v10, "r":I
    const-wide/16 v2, 0x1

    sub-long v2, p3, v2

    shr-long v4, v2, v10

    .line 1207
    .local v4, "d":J
    rem-long/2addr p1, p3

    .line 1208
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_17

    .line 1209
    const/4 v1, 0x1

    .line 1226
    :goto_16
    return v1

    :cond_17
    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    .line 1212
    invoke-direct/range {v1 .. v7}, Lcom/google/common/math/LongMath$MillerRabinTester;->powMod(JJJ)J

    move-result-wide v8

    .line 1216
    .local v8, "a":J
    const-wide/16 v2, 0x1

    cmp-long v1, v8, v2

    if-nez v1, :cond_26

    .line 1217
    const/4 v1, 0x1

    goto :goto_16

    .line 1219
    :cond_26
    const/4 v0, 0x0

    .line 1220
    .local v0, "j":I
    :goto_27
    const-wide/16 v2, 0x1

    sub-long v2, p3, v2

    cmp-long v1, v8, v2

    if-eqz v1, :cond_3a

    .line 1221
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_35

    .line 1222
    const/4 v1, 0x0

    goto :goto_16

    .line 1224
    :cond_35
    invoke-virtual {p0, v8, v9, p3, p4}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide v8

    goto :goto_27

    .line 1226
    :cond_3a
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/math/LongMath$MillerRabinTester;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1068
    const-class v0, Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object v0
.end method

.method public static values()[Lcom/google/common/math/LongMath$MillerRabinTester;
    .registers 1

    .prologue
    .line 1068
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-virtual {v0}, [Lcom/google/common/math/LongMath$MillerRabinTester;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object v0
.end method


# virtual methods
.method abstract mulMod(JJJ)J
.end method

.method abstract squareMod(JJ)J
.end method
