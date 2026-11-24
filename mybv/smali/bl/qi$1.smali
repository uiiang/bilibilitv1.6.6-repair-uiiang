.class Lbl/qi$1;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 234
    iput-object p1, p0, Lbl/qi$1;->this$0:Lbl/qi;

    iput p2, p0, Lbl/qi$1;->val$targetType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 234
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lbl/qi$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-static {v5}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v0

    .line 240
    invoke-static {v6}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v4

    .line 241
    iget v7, p0, Lbl/qi$1;->val$targetType:I

    if-ne v0, v7, :cond_2a

    move v0, v1

    .line 242
    :goto_20
    iget v7, p0, Lbl/qi$1;->val$targetType:I

    if-ne v4, v7, :cond_2c

    move v4, v1

    .line 243
    :goto_25
    if-eqz v0, :cond_2e

    if-nez v4, :cond_2e

    .line 247
    :goto_29
    return v3

    :cond_2a
    move v0, v2

    .line 241
    goto :goto_20

    :cond_2c
    move v4, v2

    .line 242
    goto :goto_25

    .line 244
    :cond_2e
    if-nez v0, :cond_34

    if-eqz v4, :cond_34

    move v3, v1

    goto :goto_29

    .line 245
    :cond_34
    invoke-static {v5}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v0

    .line 246
    invoke-static {v6}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v4

    .line 247
    if-ge v4, v0, :cond_41

    move v2, v3

    :cond_3f
    :goto_3f
    move v3, v2

    goto :goto_29

    :cond_41
    if-eq v4, v0, :cond_3f

    move v2, v1

    goto :goto_3f
.end method
