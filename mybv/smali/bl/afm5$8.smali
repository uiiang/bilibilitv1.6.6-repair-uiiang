.class Lbl/afm5$8;
.super Ljava/lang/Object;
.source "afm5.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm5;->showFolderPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afm5;

.field final synthetic val$folderListView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lbl/afm5;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 635
    iput-object p1, p0, Lbl/afm5$8;->this$0:Lbl/afm5;

    iput-object p2, p0, Lbl/afm5$8;->val$folderListView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lbl/afm5$8;->val$folderListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 639
    return-void
.end method
