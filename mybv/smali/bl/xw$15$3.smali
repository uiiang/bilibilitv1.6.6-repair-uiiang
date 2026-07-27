.class Lbl/xw$15$3;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$15;


# direct methods
.method constructor <init>(Lbl/xw$15;)V
    .locals 0

    .prologue
    .line 1463
    iput-object p1, p0, Lbl/xw$15$3;->this$1:Lbl/xw$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lbl/xw$15$3;->this$1:Lbl/xw$15;

    iget-object v0, v0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1100(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1467
    const-string v0, "EbookReader"

    const-string v1, "\u7ae0\u8282\u5217\u8868\u5df2\u8bf7\u6c42\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return-void
.end method
