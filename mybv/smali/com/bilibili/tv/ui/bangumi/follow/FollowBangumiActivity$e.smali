.class public final Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "FollowBangumiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 145
    iput p1, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;->a:I

    .line 146
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 4

    .prologue
    .line 150
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_20

    .line 154
    iget v0, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;->a:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;->a:I

    iget v3, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;->a:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    :cond_20
    iget v0, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;->a:I

    iget v1, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;->a:I

    iget v2, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;->a:I

    iget v3, p0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$e;->a:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 157
    return-void
.end method
