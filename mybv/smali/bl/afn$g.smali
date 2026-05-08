.class final Lbl/afn$g;
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
    name = "g"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afn;


# direct methods
.method constructor <init>(Lbl/afn;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lbl/afn$g;->this$0:Lbl/afn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lbl/afn$g;->this$0:Lbl/afn;

    invoke-virtual {v0}, Lbl/afn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 297
    iget-object v0, p0, Lbl/afn$g;->this$0:Lbl/afn;

    # invokes: Lbl/afn;->updatePlayerSelection()V
    invoke-static {v0}, Lbl/afn;->access$500(Lbl/afn;)V

    .line 298
    return-void
.end method
