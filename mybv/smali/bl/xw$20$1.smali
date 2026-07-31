.class Lbl/xw$20$1;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$20;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$20;

.field final synthetic val$parent:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lbl/xw$20;Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 2223
    iput-object p1, p0, Lbl/xw$20$1;->this$1:Lbl/xw$20;

    iput-object p2, p0, Lbl/xw$20$1;->val$parent:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Lbl/xw$20$1;->val$parent:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 2227
    return-void
.end method
