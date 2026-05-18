.class public Lmybl/RelationTagItem;
.super Ljava/lang/Object;
.source "RelationTagItem.java"


# instance fields
.field private count:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "count"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private selected:Z

.field private tagid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lmybl/RelationTagItem;->count:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    iget-wide v0, p0, Lmybl/RelationTagItem;->tagid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 46
    iget-object v0, p0, Lmybl/RelationTagItem;->name:Ljava/lang/String;

    .line 48
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmybl/RelationTagItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmybl/RelationTagItem;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lmybl/RelationTagItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagid()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lmybl/RelationTagItem;->tagid:J

    return-wide v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lmybl/RelationTagItem;->selected:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lmybl/RelationTagItem;->count:I

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lmybl/RelationTagItem;->name:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lmybl/RelationTagItem;->selected:Z

    .line 42
    return-void
.end method

.method public setTagid(J)V
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lmybl/RelationTagItem;->tagid:J

    .line 18
    return-void
.end method
