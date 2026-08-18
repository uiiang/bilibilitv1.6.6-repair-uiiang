.class public final enum Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
.super Ljava/lang/Enum;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

.field public static final enum PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

.field public static final enum UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;


# direct methods
.method private static synthetic $values()[Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    const/4 v1, 0x0

    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    const-string v1, "UGC_BY_AVID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 123
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    const-string v1, "PGC_BY_SEASON_ID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 121
    invoke-static {}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->$values()[Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    move-result-object v0

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->$VALUES:[Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->$VALUES:[Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v0}, [Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    return-object v0
.end method
