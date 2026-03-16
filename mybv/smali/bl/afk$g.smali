.class final Lbl/afk$g;
.super Ljava/lang/Object;
.source "afk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final a:Lbl/afk;

.field final synthetic this$0:Lbl/afk;

.field final type:I


# direct methods
.method constructor <init>(Lbl/afk;Lbl/afk;I)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lbl/afk$g;->this$0:Lbl/afk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lbl/afk$g;->a:Lbl/afk;

    .line 256
    iput p3, p0, Lbl/afk$g;->type:I

    .line 257
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lbl/afk$g;->a:Lbl/afk;

    invoke-virtual {v0}, Lbl/afk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lbl/afk$g;->type:I

    invoke-static {v0, v1}, Lbl/abd;->set_cache_limit(Landroid/content/Context;I)V

    .line 261
    iget-object v0, p0, Lbl/afk$g;->a:Lbl/afk;

    iget v1, p0, Lbl/afk$g;->type:I

    # invokes: Lbl/afk;->updateCacheLimitSelection(I)V
    invoke-static {v0, v1}, Lbl/afk;->access$100(Lbl/afk;I)V

    .line 262
    return-void
.end method
