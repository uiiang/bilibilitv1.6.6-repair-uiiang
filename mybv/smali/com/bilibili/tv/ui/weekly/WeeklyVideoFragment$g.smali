.class public final Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "WeeklyVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field final b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

.field final synthetic this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;->b:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 161
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 166
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->h:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$100(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$200(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->c:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$300(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$c;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 170
    :cond_1b
    :goto_1b
    return-void

    .line 169
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$g;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->g:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->access$202(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;Z)Z

    goto :goto_1b
.end method
