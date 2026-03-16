.class public final Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "VideoTagSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    .line 194
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->i:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->j:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$100(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->a:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$200(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 232
    :cond_1b
    :goto_1b
    return-void

    .line 202
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->d:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$300(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    .line 203
    if-nez v0, :cond_27

    .line 204
    invoke-static {}, Lbl/bbi;->a()V

    .line 206
    :cond_27
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->p()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->d:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$300(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v1

    .line 208
    if-nez v1, :cond_36

    .line 209
    invoke-static {}, Lbl/bbi;->a()V

    .line 211
    :cond_36
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v2

    if-lez v2, :cond_1b

    .line 212
    add-int/lit8 v0, v0, 0x1

    .line 213
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->d:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$300(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v2

    if-nez v2, :cond_49

    .line 214
    invoke-static {}, Lbl/bbi;->a()V

    .line 216
    :cond_49
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1b

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->d:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$300(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    .line 218
    if-nez v0, :cond_5c

    .line 219
    invoke-static {}, Lbl/bbi;->a()V

    .line 221
    :cond_5c
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->H()I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->d:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$300(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v1

    .line 223
    if-nez v1, :cond_6b

    .line 224
    invoke-static {}, Lbl/bbi;->a()V

    .line 226
    :cond_6b
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->x()I

    move-result v1

    if-le v0, v1, :cond_1b

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    # operator++ for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->h:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->access$408(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;)I

    .line 228
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$g;->this$0:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;->k()V

    goto :goto_1b
.end method
