.class public Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;
.super Ljava/lang/Object;
.source "TagFilterMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagItem"
.end annotation


# instance fields
.field public count:I

.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public tagid:J


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->tagid:J

    .line 46
    iput-object p3, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->name:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->count:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->isSelected:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->tagid:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 53
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->name:Ljava/lang/String;

    .line 55
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
