.class final Lbl/afn$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afn;


# direct methods
.method constructor <init>(Lbl/afn;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lbl/afn$c;->this$0:Lbl/afn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0700ef

    .line 191
    iget-object v0, p0, Lbl/afn$c;->this$0:Lbl/afn;

    invoke-virtual {v0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 192
    iget-object v0, p0, Lbl/afn$c;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$200(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 193
    if-nez v0, :cond_19

    .line 194
    invoke-static {}, Lbl/bbi;->a()V

    .line 196
    :cond_19
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 197
    iget-object v0, p0, Lbl/afn$c;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$300(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 198
    if-nez v0, :cond_27

    .line 199
    invoke-static {}, Lbl/bbi;->a()V

    .line 201
    :cond_27
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lbl/afn$c;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$400(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 203
    if-nez v0, :cond_38

    .line 204
    invoke-static {}, Lbl/bbi;->a()V

    .line 206
    :cond_38
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 207
    iget-object v0, p0, Lbl/afn$c;->this$0:Lbl/afn;

    iget-object v0, v0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 208
    if-nez v0, :cond_44

    .line 209
    invoke-static {}, Lbl/bbi;->a()V

    .line 211
    :cond_44
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 212
    return-void
.end method
