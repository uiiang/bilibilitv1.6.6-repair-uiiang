.class final Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;
.super Ljava/lang/Object;
.source "WeeklyVideoFragment.java"

# interfaces
.implements Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final b:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

.field final synthetic this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;->b:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    .line 117
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;III)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;->b:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->m()Lbl/agd;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 128
    :cond_a
    :goto_a
    return-void

    .line 125
    :cond_b
    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;->b:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    const v2, 0x7f0700e8

    invoke-static {v1, v2}, Lbl/aj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/agd;->setUpRectDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->e:Z
    invoke-static {v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$000(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z

    move-result v1

    invoke-virtual {v0, p1, p4, p5, v1}, Lbl/agd;->a(Landroid/view/View;IIZ)V

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$e;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->e:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$002(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z

    goto :goto_a
.end method
