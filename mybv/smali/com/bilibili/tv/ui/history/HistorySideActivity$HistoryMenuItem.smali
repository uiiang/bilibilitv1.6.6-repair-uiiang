.class public Lcom/bilibili/tv/ui/history/HistorySideActivity$HistoryMenuItem;
.super Ljava/lang/Object;
.source "HistorySideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistorySideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryMenuItem"
.end annotation


# instance fields
.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$HistoryMenuItem;->title:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$HistoryMenuItem;->type:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$HistoryMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistorySideActivity$HistoryMenuItem;->type:Ljava/lang/String;

    return-object v0
.end method
