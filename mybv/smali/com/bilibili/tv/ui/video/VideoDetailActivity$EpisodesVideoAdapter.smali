.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EpisodesVideoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 1

    .prologue
    .line 1976
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 1974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    .line 1977
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    .line 2015
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2016
    :cond_a
    const/4 v0, 0x0

    .line 2018
    :goto_b
    return v0

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_b
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 1981
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1982
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 1987
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1988
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    if-nez v0, :cond_48

    move-object v0, v1

    .line 1991
    :goto_c
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;

    .line 1992
    if-eqz v0, :cond_3d

    .line 1993
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    .line 1994
    if-eqz v2, :cond_18

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_18
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->b(Ljava/lang/Object;)V

    .line 1995
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 1996
    if-eqz v1, :cond_3d

    .line 1997
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1998
    :goto_29
    if-nez p2, :cond_40

    .line 1999
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 2003
    :goto_32
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_44

    .line 2004
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 2010
    :cond_3d
    :goto_3d
    return-void

    .line 1997
    :cond_3e
    const/4 v0, 0x0

    goto :goto_29

    .line 2001
    :cond_40
    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_32

    .line 2006
    :cond_44
    invoke-virtual {v1, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_3d

    :cond_48
    move-object v0, p1

    goto :goto_c
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2022
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2023
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->data:Ljava/util/List;

    .line 2024
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->d()V

    .line 2025
    return-void
.end method
