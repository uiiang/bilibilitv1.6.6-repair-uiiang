.class Lbl/xw$27;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->showChapterList()V
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
    .line 2619
    iput-object p1, p0, Lbl/xw$27;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2622
    iget-object v0, p0, Lbl/xw$27;->this$0:Lbl/xw;

    iget-object v1, p0, Lbl/xw$27;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterList:Ljava/util/List;
    invoke-static {v1}, Lbl/xw;->access$2400(Lbl/xw;)Ljava/util/List;

    move-result-object v1

    # invokes: Lbl/xw;->createChapterListView(Ljava/util/List;)V
    invoke-static {v0, v1}, Lbl/xw;->access$2500(Lbl/xw;Ljava/util/List;)V

    .line 2623
    return-void
.end method
