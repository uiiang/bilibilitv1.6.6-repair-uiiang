.class public Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;
.super Ljava/lang/Object;
.source "WeeklyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeeklyItem"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public number:I

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->number:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->name:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u671f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
