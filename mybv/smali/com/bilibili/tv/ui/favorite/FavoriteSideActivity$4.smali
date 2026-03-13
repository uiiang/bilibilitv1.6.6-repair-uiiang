.class Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;
.super Ljava/lang/Object;
.source "FavoriteSideActivity.java"

# interfaces
.implements Lbl/agb$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

.field final synthetic val$sortOptions:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/LinkedHashMap;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;->val$sortOptions:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;->val$sortOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->setSortOrder(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 446
    return-void
.end method
