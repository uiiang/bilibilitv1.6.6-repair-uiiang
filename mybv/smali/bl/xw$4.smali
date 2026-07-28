.class Lbl/xw$4;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->onMenuClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lbl/xw$4;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 858
    const-string v0, "EbookReader"

    const-string v1, "onMenuClosed: \u6062\u590d\u7126\u70b9\u5230\u4e66\u67b6\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method
