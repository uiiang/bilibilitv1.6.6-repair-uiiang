.class final Lbl/afn$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afn;


# direct methods
.method constructor <init>(Lbl/afn;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lbl/afn$d;->this$0:Lbl/afn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0700ef

    .line 223
    iget-object v0, p0, Lbl/afn$d;->this$0:Lbl/afn;

    invoke-virtual {v0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 224
    iget-object v0, p0, Lbl/afn$d;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$200(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 225
    if-nez v0, :cond_19

    .line 226
    invoke-static {}, Lbl/bbi;->a()V

    .line 228
    :cond_19
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 229
    iget-object v0, p0, Lbl/afn$d;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$300(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 230
    if-nez v0, :cond_27

    .line 231
    invoke-static {}, Lbl/bbi;->a()V

    .line 233
    :cond_27
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 234
    iget-object v0, p0, Lbl/afn$d;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$400(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 235
    if-nez v0, :cond_35

    .line 236
    invoke-static {}, Lbl/bbi;->a()V

    .line 238
    :cond_35
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 239
    iget-object v0, p0, Lbl/afn$d;->this$0:Lbl/afn;

    iget-object v0, v0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 240
    if-nez v0, :cond_44

    .line 241
    invoke-static {}, Lbl/bbi;->a()V

    .line 243
    :cond_44
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 244
    return-void
.end method
