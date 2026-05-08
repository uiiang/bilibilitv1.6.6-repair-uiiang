.class final Lbl/afn$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afn;


# direct methods
.method constructor <init>(Lbl/afn;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lbl/afn$b;->this$0:Lbl/afn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0700ef

    .line 159
    iget-object v0, p0, Lbl/afn$b;->this$0:Lbl/afn;

    invoke-virtual {v0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lbl/abd;->a(Landroid/content/Context;I)V

    .line 160
    iget-object v0, p0, Lbl/afn$b;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->b:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$200(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 161
    if-nez v0, :cond_19

    .line 162
    invoke-static {}, Lbl/bbi;->a()V

    .line 164
    :cond_19
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 165
    iget-object v0, p0, Lbl/afn$b;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->c:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$300(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 166
    if-nez v0, :cond_2a

    .line 167
    invoke-static {}, Lbl/bbi;->a()V

    .line 169
    :cond_2a
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 170
    iget-object v0, p0, Lbl/afn$b;->this$0:Lbl/afn;

    # getter for: Lbl/afn;->d:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afn;->access$400(Lbl/afn;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    .line 171
    if-nez v0, :cond_38

    .line 172
    invoke-static {}, Lbl/bbi;->a()V

    .line 174
    :cond_38
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 175
    iget-object v0, p0, Lbl/afn$b;->this$0:Lbl/afn;

    iget-object v0, v0, Lbl/afn;->e:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 176
    if-nez v0, :cond_44

    .line 177
    invoke-static {}, Lbl/bbi;->a()V

    .line 179
    :cond_44
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 180
    return-void
.end method
