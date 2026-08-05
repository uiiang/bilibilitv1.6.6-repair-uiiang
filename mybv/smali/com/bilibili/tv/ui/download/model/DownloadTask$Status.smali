.class public final enum Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;
.super Ljava/lang/Enum;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/model/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

.field public static final enum COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

.field public static final enum DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

.field public static final enum FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

.field public static final enum PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

.field public static final enum WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    const-string v1, "WAITING"

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 61
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    const-string v1, "DOWNLOADING"

    const-string v2, "\u4e0b\u8f7d\u4e2d"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 62
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    const-string v1, "PAUSED"

    const-string v2, "\u5df2\u6682\u505c"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 63
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    const-string v1, "COMPLETED"

    const-string v2, "\u5df2\u5b8c\u6210"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 64
    new-instance v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    const-string v1, "FAILED"

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    aput-object v1, v0, v7

    sput-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->$VALUES:[Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->value:I

    .line 71
    iput-object p4, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static fromValue(I)Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;
    .locals 5

    .prologue
    .line 83
    invoke-static {}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->values()[Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 84
    iget v4, v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->value:I

    if-ne v4, p0, :cond_10

    .line 88
    :goto_f
    return-object v0

    .line 83
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 88
    :cond_14
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->$VALUES:[Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v0}, [Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->value:I

    return v0
.end method
