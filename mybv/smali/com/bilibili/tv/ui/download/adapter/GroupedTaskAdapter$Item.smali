.class public Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$Item;
.super Ljava/lang/Object;
.source "GroupedTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public group:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

.field public task:Lcom/bilibili/tv/ui/download/model/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
