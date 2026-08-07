.class Lbl/afm5$13;
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
.method constructor <init>(Lbl/afm5;Ljava/util/List;Ljava/io/File;Landroid/widget/ListView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lbl/afm5$13;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$13;->val$allFiles:Ljava/util/List;

    iput-object p3, p0, Lbl/afm5$13;->val$currentDir:Ljava/io/File;

    iput-object p4, p0, Lbl/afm5$13;->val$listView:Landroid/widget/ListView;

    iput-object p5, p0, Lbl/afm5$13;->val$pathView:Landroid/widget/TextView;

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
    .line 890
    iget-object v0, p0, Lbl/afm5$13;->val$allFiles:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 891
    if-nez v0, :cond_2c

    .line 893
    iget-object v0, p0, Lbl/afm5$13;->val$currentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_22

    const-string v1, "/storage/emulated"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 895
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 897
    :cond_22
    iget-object v1, p0, Lbl/afm5$13;->this$0:Lbl/afm5;

    iget-object v2, p0, Lbl/afm5$13;->val$listView:Landroid/widget/ListView;

    iget-object v3, p0, Lbl/afm5$13;->val$pathView:Landroid/widget/TextView;

    # invokes: Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    invoke-static {v1, v2, v3, v0}, Lbl/afm5;->access$700(Lbl/afm5;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    .line 902
    :goto_2b
    return-void

    .line 900
    :cond_2c
    iget-object v1, p0, Lbl/afm5$13;->this$0:Lbl/afm5;

    iget-object v2, p0, Lbl/afm5$13;->val$listView:Landroid/widget/ListView;

    iget-object v3, p0, Lbl/afm5$13;->val$pathView:Landroid/widget/TextView;

    # invokes: Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    invoke-static {v1, v2, v3, v0}, Lbl/afm5;->access$700(Lbl/afm5;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    goto :goto_2b
.end method
