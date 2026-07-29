.class Lbl/xw$11$1;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$11;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$11;


# direct methods
.method constructor <init>(Lbl/xw$11;)V
    .locals 0

    .prologue
    .line 1543
    iput-object p1, p0, Lbl/xw$11$1;->this$1:Lbl/xw$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lbl/xw$11$1;->this$1:Lbl/xw$11;

    iget-object v0, v0, Lbl/xw$11;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$500(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1547
    return-void
.end method
