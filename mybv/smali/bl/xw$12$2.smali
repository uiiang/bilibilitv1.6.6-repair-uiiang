.class Lbl/xw$12$2;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$12;

.field final synthetic val$book:Lcom/bilibili/tv/ebook/model/Book;


# direct methods
.method constructor <init>(Lbl/xw$12;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lbl/xw$12$2;->this$1:Lbl/xw$12;

    iput-object p2, p0, Lbl/xw$12$2;->val$book:Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lbl/xw$12$2;->this$1:Lbl/xw$12;

    iget-object v0, v0, Lbl/xw$12;->this$0:Lbl/xw;

    iget-object v1, p0, Lbl/xw$12$2;->val$book:Lcom/bilibili/tv/ebook/model/Book;

    # invokes: Lbl/xw;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;)V
    invoke-static {v0, v1}, Lbl/xw;->access$700(Lbl/xw;Lcom/bilibili/tv/ebook/model/Book;)V

    .line 1172
    return-void
.end method
