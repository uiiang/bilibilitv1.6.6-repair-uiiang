.class abstract Lorg/jsoup/safety/Safelist$TypedValue;
.super Ljava/lang/Object;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Safelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TypedValue"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 627
    iput-object p1, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    .line 628
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    if-ne p0, p1, :cond_5

    .line 646
    :cond_4
    :goto_4
    return v1

    .line 641
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 642
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 643
    check-cast v0, Lorg/jsoup/safety/Safelist$TypedValue;

    .line 644
    .local v0, "other":Lorg/jsoup/safety/Safelist$TypedValue;
    iget-object v3, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 645
    iget-object v3, v0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .line 646
    :cond_22
    iget-object v1, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    iget-object v2, v0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 632
    const/16 v0, 0x1f

    .line 633
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 634
    .local v1, "result":I
    iget-object v2, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 635
    return v1

    .line 634
    :cond_b
    iget-object v2, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    return-object v0
.end method
