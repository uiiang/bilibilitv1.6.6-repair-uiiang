.class Lbl/xw$24$2;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$24;

.field final synthetic val$finalBook:Lcom/bilibili/tv/ebook/model/Book;

.field final synthetic val$finalFragment:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw$24;Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 2430
    iput-object p1, p0, Lbl/xw$24$2;->this$1:Lbl/xw$24;

    iput-object p2, p0, Lbl/xw$24$2;->val$finalFragment:Lbl/xw;

    iput-object p3, p0, Lbl/xw$24$2;->val$finalBook:Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2433
    iget-object v0, p0, Lbl/xw$24$2;->val$finalFragment:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2434
    iget-object v0, p0, Lbl/xw$24$2;->val$finalFragment:Lbl/xw;

    iget-object v1, p0, Lbl/xw$24$2;->val$finalBook:Lcom/bilibili/tv/ebook/model/Book;

    # invokes: Lbl/xw;->restoreReadingProgress(Lcom/bilibili/tv/ebook/model/Book;)V
    invoke-static {v0, v1}, Lbl/xw;->access$2100(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;)V

    .line 2436
    :cond_f
    return-void
.end method
