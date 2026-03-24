.class final Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BorderListener;
.super Ljava/lang/Object;
.source "SearchResultContentFragment.java"

# interfaces
.implements Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BorderListener"
.end annotation


# instance fields
.field final activity:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

.field final synthetic this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BorderListener;->this$0:Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BorderListener;->activity:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    .line 139
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;III)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BorderListener;->activity:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->m()Lbl/agd;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 149
    :cond_a
    :goto_a
    return-void

    .line 147
    :cond_b
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BorderListener;->activity:Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    const v2, 0x7f0700e8

    invoke-static {v1, v2}, Lbl/aj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/agd;->setUpRectDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p4, p5, v1}, Lbl/agd;->a(Landroid/view/View;IIZ)V

    goto :goto_a
.end method
