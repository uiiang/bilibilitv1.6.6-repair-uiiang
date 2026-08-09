.class Lbl/xw$9;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->openEbookFileChooser()V
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
    .line 1566
    iput-object p1, p0, Lbl/xw$9;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lbl/xw$9;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->showFileChooserInPanel()V
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)V

    .line 1570
    return-void
.end method
