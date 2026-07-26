.class public Lcom/bilibili/tv/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.java"


# static fields
.field public static final ENABLE_EBOOK_READER:Z = true

.field public static final FEATURE_VERSION:Ljava/lang/String; = "plus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEbookReaderEnabled()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
