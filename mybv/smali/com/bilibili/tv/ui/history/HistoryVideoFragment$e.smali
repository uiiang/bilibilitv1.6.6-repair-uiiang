.class final Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;
.super Ljava/lang/Object;
.source "HistoryVideoFragment.java"

# interfaces
.implements Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final b:Lcom/bilibili/tv/ui/history/HistorySideActivity;

.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;Lcom/bilibili/tv/ui/history/HistorySideActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;->b:Lcom/bilibili/tv/ui/history/HistorySideActivity;

    .line 132
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;III)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;->b:Lcom/bilibili/tv/ui/history/HistorySideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->m()Lbl/agd;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 142
    :cond_a
    :goto_a
    return-void

    .line 140
    :cond_b
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$e;->b:Lcom/bilibili/tv/ui/history/HistorySideActivity;

    const v2, 0x7f0700e8

    invoke-static {v1, v2}, Lbl/aj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/agd;->setUpRectDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p4, p5, v1}, Lbl/agd;->a(Landroid/view/View;IIZ)V

    goto :goto_a
.end method
