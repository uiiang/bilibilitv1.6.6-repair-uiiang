.class public Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;
.super Ljava/lang/Object;
.source "AttentionDynamicSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagItem"
.end annotation


# instance fields
.field private count:I

.field private name:Ljava/lang/String;

.field private tagid:J


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-wide p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->tagid:J

    .line 759
    iput-object p3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->name:Ljava/lang/String;

    .line 760
    iput p4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->count:I

    .line 761
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagid()J
    .locals 2

    .prologue
    .line 764
    iget-wide v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->tagid:J

    return-wide v0
.end method
