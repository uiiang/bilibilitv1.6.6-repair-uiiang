.class Lbl/qi$3;
.super Ljava/lang/Object;
.source "qi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/qi;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILandroid/util/SparseArray;[I)Lcom/bilibili/lib/media/resource/MediaResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/qi;

.field final synthetic val$targetType:I


# direct methods
.method constructor <init>(Lbl/qi;I)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lbl/qi$3;->this$0:Lbl/qi;

    iput p2, p0, Lbl/qi$3;->val$targetType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 420
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lbl/qi$3;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 423
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-static {v3}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v0

    .line 426
    invoke-static {v4}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v5

    .line 427
    iget v6, p0, Lbl/qi$3;->val$targetType:I

    if-ne v0, v6, :cond_2a

    move v0, v1

    .line 428
    :goto_1f
    iget v6, p0, Lbl/qi$3;->val$targetType:I

    if-ne v5, v6, :cond_24

    move v2, v1

    .line 429
    :cond_24
    if-eqz v0, :cond_2c

    if-nez v2, :cond_2c

    const/4 v1, -0x1

    .line 433
    :cond_29
    :goto_29
    return v1

    :cond_2a
    move v0, v2

    .line 427
    goto :goto_1f

    .line 430
    :cond_2c
    if-nez v0, :cond_30

    if-nez v2, :cond_29

    .line 431
    :cond_30
    invoke-static {v3}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v0

    .line 432
    invoke-static {v4}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v1

    .line 433
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    goto :goto_29
.end method
