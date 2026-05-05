.class public final Lcom/google/android/exoplayer2/text/span/SpanUtil;
.super Ljava/lang/Object;
.source "SpanUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .registers 10
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanFlags"    # I

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "existingSpans":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 51
    .local v3, "existingSpan":Ljava/lang/Object;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_23

    .line 52
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p3, :cond_23

    .line 53
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p4, :cond_23

    .line 54
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 50
    .end local v3    # "existingSpan":Ljava/lang/Object;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 57
    :cond_26
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 58
    return-void
.end method
