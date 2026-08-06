.class public final Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;-><init>()V

    .line 348
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 351
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    const-string v1, "fromType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method
