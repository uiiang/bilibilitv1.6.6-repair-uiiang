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
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    const-string v1, "UGC_BY_AVID"

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 120
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    const-string v1, "PGC_BY_SEASON_ID"

    invoke-direct {v0, v1, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    aput-object v1, v0, v3

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->$VALUES:[Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v0}, [Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    return-object v0
.end method
