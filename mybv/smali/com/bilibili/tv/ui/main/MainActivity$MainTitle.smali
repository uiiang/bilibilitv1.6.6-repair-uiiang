.class public final Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainTitle"
.end annotation


# instance fields
.field private resId:I

.field private type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    iput p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->type:I

    .line 941
    iput p2, p0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->resId:I

    .line 942
    return-void
.end method


# virtual methods
.method public final getResId()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->resId:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->type:I

    return v0
.end method

.method public final setResId(I)V
    .locals 0

    .prologue
    .line 953
    iput p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->resId:I

    .line 954
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .prologue
    .line 957
    iput p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->type:I

    .line 958
    return-void
.end method
