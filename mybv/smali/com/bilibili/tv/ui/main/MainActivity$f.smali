.class public final Lcom/bilibili/tv/ui/main/MainActivity$f;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/MainActivity;IIII)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->this$0:Lcom/bilibili/tv/ui/main/MainActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 244
    iput p2, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->b:I

    .line 245
    iput p3, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->c:I

    .line 246
    iput p4, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->d:I

    .line 247
    iput p5, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->e:I

    .line 248
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    const-string v0, "view"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    const-string v0, "parent"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->this$0:Lcom/bilibili/tv/ui/main/MainActivity;

    # getter for: Lcom/bilibili/tv/ui/main/MainActivity;->d:Lcom/bilibili/tv/ui/main/MainActivity$d;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->access$000(Lcom/bilibili/tv/ui/main/MainActivity;)Lcom/bilibili/tv/ui/main/MainActivity$d;

    move-result-object v0

    if-nez v0, :cond_19

    .line 264
    :goto_18
    return-void

    .line 258
    :cond_19
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v0

    .line 259
    if-nez v0, :cond_23

    .line 260
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18

    .line 262
    :cond_23
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$f;->b:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18
.end method
