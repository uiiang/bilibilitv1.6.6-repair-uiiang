.class final Lbl/afn$e;
.super Ljava/lang/Object;
.source "afn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afn;


# direct methods
.method constructor <init>(Lbl/afn;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lbl/afn$e;->this$0:Lbl/afn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0700ef

    .line 253
    iget-object v0, p0, Lbl/afn$e;->this$0:Lbl/afn;

    invoke-virtual {v0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 254
    iget-object v0, p0, Lbl/afn$e;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$200(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 255
    if-nez v0, :cond_19

    .line 256
    invoke-static {}, Lbl/bbi;->a()V

    .line 258
    :cond_19
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 259
    iget-object v0, p0, Lbl/afn$e;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$300(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 260
    if-nez v0, :cond_27

    .line 261
    invoke-static {}, Lbl/bbi;->a()V

    .line 263
    :cond_27
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 264
    iget-object v0, p0, Lbl/afn$e;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$400(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 265
    if-nez v0, :cond_35

    .line 266
    invoke-static {}, Lbl/bbi;->a()V

    .line 268
    :cond_35
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 269
    iget-object v0, p0, Lbl/afn$e;->this$0:Lbl/afn;

    iget-object v0, v0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 270
    if-nez v0, :cond_41

    .line 271
    invoke-static {}, Lbl/bbi;->a()V

    .line 273
    :cond_41
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 274
    return-void
.end method
