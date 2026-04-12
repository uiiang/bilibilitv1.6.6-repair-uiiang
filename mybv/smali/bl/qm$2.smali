.class Lbl/qm$2;
.super Ljava/lang/Object;
.source "qm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/qm;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILandroid/util/SparseArray;[I)Lcom/bilibili/lib/media/resource/MediaResource;
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
        "Lmybl/CdnSelector$CdnUrlInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/qm;


# direct methods
.method constructor <init>(Lbl/qm;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lbl/qm$2;->this$0:Lbl/qm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 264
    check-cast p1, Lmybl/CdnSelector$CdnUrlInfo;

    check-cast p2, Lmybl/CdnSelector$CdnUrlInfo;

    invoke-virtual {p0, p1, p2}, Lbl/qm$2;->compare(Lmybl/CdnSelector$CdnUrlInfo;Lmybl/CdnSelector$CdnUrlInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lmybl/CdnSelector$CdnUrlInfo;Lmybl/CdnSelector$CdnUrlInfo;)I
    .locals 2

    .prologue
    .line 267
    iget v0, p2, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    iget v1, p1, Lmybl/CdnSelector$CdnUrlInfo;->score:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
