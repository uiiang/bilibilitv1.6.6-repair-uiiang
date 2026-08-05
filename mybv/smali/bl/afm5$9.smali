.class Lbl/afm5$9;
.super Ljava/lang/Object;
.source "afm5.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afm5;

.field final synthetic val$allFiles:Ljava/util/List;

.field final synthetic val$currentDir:Ljava/io/File;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$pathView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lbl/afm5;Ljava/util/List;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lbl/afm5$9;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$9;->val$allFiles:Ljava/util/List;

    iput-object p3, p0, Lbl/afm5$9;->val$listView:Landroid/widget/ListView;

    iput-object p4, p0, Lbl/afm5$9;->val$pathView:Landroid/widget/TextView;

    iput-object p5, p0, Lbl/afm5$9;->val$currentDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lbl/afm5$9;->val$allFiles:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 614
    if-nez v0, :cond_1a

    .line 616
    iget-object v0, p0, Lbl/afm5$9;->this$0:Lbl/afm5;

    iget-object v1, p0, Lbl/afm5$9;->val$listView:Landroid/widget/ListView;

    iget-object v2, p0, Lbl/afm5$9;->val$pathView:Landroid/widget/TextView;

    iget-object v3, p0, Lbl/afm5$9;->val$currentDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    # invokes: Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    invoke-static {v0, v1, v2, v3}, Lbl/afm5;->access$500(Lbl/afm5;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    .line 621
    :goto_19
    return-void

    .line 619
    :cond_1a
    iget-object v1, p0, Lbl/afm5$9;->this$0:Lbl/afm5;

    iget-object v2, p0, Lbl/afm5$9;->val$listView:Landroid/widget/ListView;

    iget-object v3, p0, Lbl/afm5$9;->val$pathView:Landroid/widget/TextView;

    # invokes: Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    invoke-static {v1, v2, v3, v0}, Lbl/afm5;->access$500(Lbl/afm5;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    goto :goto_19
.end method
