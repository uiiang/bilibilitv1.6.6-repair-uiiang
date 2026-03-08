.class public Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;
.super Ljava/lang/Object;
.source "AttentionDynamicSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UperItem"
.end annotation


# instance fields
.field private allDynamic:Z

.field private face:Ljava/lang/String;

.field private mid:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-wide p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->mid:J

    .line 541
    iput-object p3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->name:Ljava/lang/String;

    .line 542
    iput-object p4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->face:Ljava/lang/String;

    .line 543
    iput-boolean p5, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->allDynamic:Z

    .line 544
    return-void
.end method


# virtual methods
.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->face:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 547
    iget-wide v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->mid:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isAllDynamic()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->allDynamic:Z

    return v0
.end method
