.class Lbl/xw$8;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lbl/xw;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lbl/xw$8;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$8;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Lbl/xw$8;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 943
    const-string v0, "EbookReader"

    const-string v1, "\u6587\u4ef6\u5217\u8868\u5df2\u8bf7\u6c42\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return-void
.end method
