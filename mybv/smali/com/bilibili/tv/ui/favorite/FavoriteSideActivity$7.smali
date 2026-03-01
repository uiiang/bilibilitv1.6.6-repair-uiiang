.class Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$7;
.super Ljava/lang/Object;
.source "FavoriteSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCourseFolders(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;I)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$7;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    iput p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$7;->val$retryCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$7;->this$0:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    iget v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$7;->val$retryCount:I

    add-int/lit8 v1, v1, 0x1

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCourseFolders(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$600(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;I)V

    .line 332
    return-void
.end method
