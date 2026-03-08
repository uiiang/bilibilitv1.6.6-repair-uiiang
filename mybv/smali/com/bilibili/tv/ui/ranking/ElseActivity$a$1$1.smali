.class Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1$1;
.super Ljava/lang/Object;
.source "ElseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;->this$0:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    # getter for: Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->access$000(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/ranking/ElseActivity;

    .line 189
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1c

    # getter for: Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->access$200(Lcom/bilibili/tv/ui/ranking/ElseActivity;)Lbl/aeg2;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 191
    :cond_1c
    :goto_1c
    return-void

    .line 190
    :cond_1d
    # getter for: Lcom/bilibili/tv/ui/ranking/ElseActivity;->b:Lbl/aeg2;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->access$200(Lcom/bilibili/tv/ui/ranking/ElseActivity;)Lbl/aeg2;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1$1;->this$1:Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/ranking/ElseActivity$a$1;->this$0:Lcom/bilibili/tv/ui/ranking/ElseActivity$a;

    # getter for: Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->c:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/ranking/ElseActivity$a;->access$400(Lcom/bilibili/tv/ui/ranking/ElseActivity$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lbl/aeg2;->c(I)V

    goto :goto_1c
.end method
