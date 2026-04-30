.class public Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$ChapterItem;
.super Ljava/lang/Object;
.source "ChapterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChapterItem"
.end annotation


# instance fields
.field public endTime:I

.field public isCurrent:Z

.field public isPlayed:Z

.field public startTime:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
