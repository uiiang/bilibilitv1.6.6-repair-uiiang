.class Lbl/afm5$8$1;
.super Ljava/lang/Object;
.source "afm5.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm5$8;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/afm5$8;

.field final synthetic val$parent:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lbl/afm5$8;Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lbl/afm5$8$1;->this$1:Lbl/afm5$8;

    iput-object p2, p0, Lbl/afm5$8$1;->val$parent:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lbl/afm5$8$1;->val$parent:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 598
    return-void
.end method
