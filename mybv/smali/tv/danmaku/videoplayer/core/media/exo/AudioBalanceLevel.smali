.class public final enum Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;
.super Ljava/lang/Enum;
.source "AudioBalanceLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

.field public static final enum HIGH:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

.field public static final enum LOW:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

.field public static final enum MEDIUM:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

.field public static final enum OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

.field public static final ORDERED:[Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;


# instance fields
.field private final label:Ljava/lang/String;

.field private final prefValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    const-string v1, "OFF"

    const-string v2, "off"

    const-string v3, "\u5173\u95ed"

    invoke-direct {v0, v1, v4, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 5
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    const-string v1, "LOW"

    const-string v2, "low"

    const-string v3, "\u4f4e"

    invoke-direct {v0, v1, v5, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->LOW:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 6
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    const-string v1, "MEDIUM"

    const-string v2, "medium"

    const-string v3, "\u4e2d"

    invoke-direct {v0, v1, v6, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->MEDIUM:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 7
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    const-string v1, "HIGH"

    const-string v2, "high"

    const-string v3, "\u9ad8"

    invoke-direct {v0, v1, v7, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 3
    new-array v0, v8, [Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    aput-object v1, v0, v4

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->LOW:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    aput-object v1, v0, v5

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->MEDIUM:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    aput-object v1, v0, v6

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    aput-object v1, v0, v7

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->$VALUES:[Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 65
    new-array v0, v8, [Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    aput-object v1, v0, v4

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->LOW:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    aput-object v1, v0, v5

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->MEDIUM:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    aput-object v1, v0, v6

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    aput-object v1, v0, v7

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->ORDERED:[Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->prefValue:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->label:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static fromIndex(I)Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;
    .locals 1

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_12

    .line 46
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    :goto_5
    return-object v0

    .line 38
    :pswitch_6
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_5

    .line 40
    :pswitch_9
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->LOW:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_5

    .line 42
    :pswitch_c
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->MEDIUM:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_5

    .line 44
    :pswitch_f
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_5

    .line 36
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static fromPrefValue(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;
    .locals 5

    .prologue
    .line 26
    if-nez p0, :cond_5

    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 32
    :cond_4
    :goto_4
    return-object v0

    .line 27
    :cond_5
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->values()[Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 28
    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->prefValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 32
    :cond_1c
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;
    .locals 1

    .prologue
    .line 3
    const-class v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    return-object v0
.end method

.method public static values()[Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->$VALUES:[Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-virtual {v0}, [Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel$1;->$SwitchMap$tv$danmaku$videoplayer$core$media$exo$AudioBalanceLevel:[I

    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_14

    .line 61
    :goto_c
    :pswitch_c
    return v0

    .line 55
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 57
    :pswitch_f
    const/4 v0, 0x2

    goto :goto_c

    .line 59
    :pswitch_11
    const/4 v0, 0x3

    goto :goto_c

    .line 51
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->prefValue:Ljava/lang/String;

    return-object v0
.end method
