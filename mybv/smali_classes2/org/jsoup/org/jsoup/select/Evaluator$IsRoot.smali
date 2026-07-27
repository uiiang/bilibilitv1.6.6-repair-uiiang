.class public final Lorg/jsoup/select/Evaluator$IsRoot;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsRoot"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 592
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 6
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    const/4 v1, 0x0

    .line 595
    instance-of v2, p1, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 596
    .local v0, "r":Lorg/jsoup/nodes/Element;
    :goto_9
    if-ne p2, v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .end local v0    # "r":Lorg/jsoup/nodes/Element;
    :cond_d
    move-object v0, p1

    .line 595
    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 600
    const-string v0, ":root"

    return-object v0
.end method
