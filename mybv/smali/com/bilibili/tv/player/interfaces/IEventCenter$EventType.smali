.class public final enum Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;
.super Ljava/lang/Enum;
.source "IEventCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/player/interfaces/IEventCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum AUDIO_BALANCE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum CODEC_CONFIG_CHANGED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum DANMAKU_TOGGLE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum MENU_QUICK_SHOW:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum OPEN_EBOOK_READER:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum POST_DANMAKU:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_QUALITY_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

.field public static final enum SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;


# direct methods
.method private static synthetic $values()[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;
    .locals 3

    .prologue
    .line 9
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x0

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->CODEC_CONFIG_CHANGED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->MENU_QUICK_SHOW:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->POST_DANMAKU:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_TOGGLE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->AUDIO_BALANCE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->OPEN_EBOOK_READER:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "NEW_RESOLVE_TASK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->NEW_RESOLVE_TASK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 11
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "RESOLVE_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 12
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_QUALITY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 13
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "QUALITY_SWITCH_SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 14
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_EPISODE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 15
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "EPISODE_SWITCH_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 16
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "CODEC_CONFIG_CHANGED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->CODEC_CONFIG_CHANGED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 17
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SEEK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 18
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "MENU_QUICK_SHOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->MENU_QUICK_SHOW:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 19
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "DANMAKU_SIZE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 20
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "DANMAKU_ALPHA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 21
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "POST_DANMAKU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->POST_DANMAKU:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 22
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_EPISODE_REMOTE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 23
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_QUALITY_REMOTE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 24
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "DANMAKU_TOGGLE_REMOTE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_TOGGLE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 25
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SWITCH_SPEED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 26
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "SCREEN_ADJUST"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 27
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "AUDIO_BALANCE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->AUDIO_BALANCE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 28
    new-instance v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const-string v1, "OPEN_EBOOK_READER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->OPEN_EBOOK_READER:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    .line 9
    invoke-static {}, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->$values()[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->$VALUES:[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->$VALUES:[Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    invoke-virtual {v0}, [Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    return-object v0
.end method
