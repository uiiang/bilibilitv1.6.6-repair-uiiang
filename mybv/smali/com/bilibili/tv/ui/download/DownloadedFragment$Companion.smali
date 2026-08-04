.class public final Lcom/bilibili/tv/ui/download/DownloadedFragment$Companion;
.super Ljava/lang/Object;
.source "DownloadedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/DownloadedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadedFragment$Companion;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Lcom/bilibili/tv/ui/download/DownloadedFragment;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadedFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/download/DownloadedFragment;-><init>()V

    return-object v0
.end method
