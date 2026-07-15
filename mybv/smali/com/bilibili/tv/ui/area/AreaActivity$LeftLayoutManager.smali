.class Lcom/bilibili/tv/ui/area/AreaActivity$LeftLayoutManager;
.super Lcom/bilibili/tv/widget/FixLinearLayoutManager;
.source "AreaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/area/AreaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeftLayoutManager"
.end annotation


# instance fields
.field private final activity:Lcom/bilibili/tv/ui/area/AreaActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/area/AreaActivity;Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p2, p3, p4}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 388
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$LeftLayoutManager;->activity:Lcom/bilibili/tv/ui/area/AreaActivity;

    .line 389
    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 394
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1a

    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$LeftLayoutManager;->activity:Lcom/bilibili/tv/ui/area/AreaActivity;

    # getter for: Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaActivity;->access$100(Lcom/bilibili/tv/ui/area/AreaActivity;)Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 395
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$LeftLayoutManager;->activity:Lcom/bilibili/tv/ui/area/AreaActivity;

    # getter for: Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/area/AreaActivity;->access$100(Lcom/bilibili/tv/ui/area/AreaActivity;)Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->b(Z)V

    .line 397
    :cond_1a
    return-object v0
.end method
