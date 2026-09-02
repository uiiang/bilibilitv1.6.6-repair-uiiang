.class Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;
.super Ljava/lang/Object;
.source "FavoriteSideActivity.java"

# interfaces
.implements Lbl/SortMenuDialog$OnSortSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showSortMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->setSortOrder(Ljava/lang/String;)V

    .line 463
    return-void
.end method
