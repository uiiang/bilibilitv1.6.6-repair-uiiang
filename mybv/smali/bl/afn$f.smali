.class final Lbl/afn$f;
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
    name = "f"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afn;


# direct methods
.method constructor <init>(Lbl/afn;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lbl/afn$f;->this$0:Lbl/afn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lbl/afn$f;->this$0:Lbl/afn;

    invoke-virtual {v0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 285
    iget-object v0, p0, Lbl/afn$f;->this$0:Lbl/afn;

    # invokes: Lbl/afn;->updatePlayerSelection()V
    invoke-static {v0}, Lbl/afn;->access$500(Lbl/afn;)V

    .line 286
    return-void
.end method
