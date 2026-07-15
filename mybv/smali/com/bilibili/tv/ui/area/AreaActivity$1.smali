.class Lcom/bilibili/tv/ui/area/AreaActivity$1;
.super Ljava/lang/Object;
.source "AreaActivity.java"

# interfaces
.implements Lbl/SortMenuDialog$OnSortSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaActivity;->showSortMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/area/AreaActivity;

.field final synthetic val$areaFragment:Lbl/adq;

.field final synthetic val$selectedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaActivity;Lbl/adq;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/area/AreaActivity$1;->val$areaFragment:Lbl/adq;

    iput-object p3, p0, Lcom/bilibili/tv/ui/area/AreaActivity$1;->val$selectedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$1;->this$0:Lcom/bilibili/tv/ui/area/AreaActivity;

    # invokes: Lcom/bilibili/tv/ui/area/AreaActivity;->getSortOrderFromString(Ljava/lang/String;)Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/area/AreaActivity;->access$000(Lcom/bilibili/tv/ui/area/AreaActivity;Ljava/lang/String;)Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity$1;->val$areaFragment:Lbl/adq;

    invoke-virtual {v1, v0}, Lbl/adq;->a(Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;)V

    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$1;->val$selectedView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity$1;->val$selectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 297
    :cond_14
    return-void
.end method
