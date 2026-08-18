.class public final enum Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;
.super Ljava/lang/Enum;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/model/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PauseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

.field public static final enum APP_EXIT:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

.field public static final enum MANUAL:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

.field public static final enum NETWORK_ERROR:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

.field public static final enum NONE:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

.field public static final enum STORAGE_ERROR:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    const/4 v1, 0x0

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NONE:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->MANUAL:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NETWORK_ERROR:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->STORAGE_ERROR:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->APP_EXIT:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    const-string v1, "NONE"

    const-string v2, "\u65e0"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NONE:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 98
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    const-string v1, "MANUAL"

    const-string v2, "\u624b\u52a8\u6682\u505c"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->MANUAL:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 99
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    const-string v1, "NETWORK_ERROR"

    const-string v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NETWORK_ERROR:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 100
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    const-string v1, "STORAGE_ERROR"

    const-string v2, "\u5b58\u50a8\u9519\u8bef"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->STORAGE_ERROR:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 101
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    const-string v1, "APP_EXIT"

    const-string v2, "\u5e94\u7528\u9000\u51fa"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->APP_EXIT:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 96
    invoke-static {}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->$values()[Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->$VALUES:[Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->value:I

    .line 108
    iput-object p4, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->name:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static fromValue(I)Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;
    .locals 5

    .prologue
    .line 120
    invoke-static {}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->values()[Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 121
    iget v4, v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->value:I

    if-ne v4, p0, :cond_10

    .line 125
    :goto_f
    return-object v0

    .line 120
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 125
    :cond_14
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NONE:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->$VALUES:[Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v0}, [Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->value:I

    return v0
.end method
