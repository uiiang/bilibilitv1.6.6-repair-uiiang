.class Lcom/bilibili/tv/ebook/util/BookshelfManager$1;
.super Ljava/lang/Object;
.source "BookshelfManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/util/BookshelfManager;->addToBookshelf(Lcom/bilibili/tv/ebook/model/Book;Lcom/bilibili/tv/ebook/model/ReadingProgress;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bilibili/tv/ebook/model/BookshelfItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/util/BookshelfManager;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/util/BookshelfManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bilibili/tv/ebook/util/BookshelfManager$1;->this$0:Lcom/bilibili/tv/ebook/util/BookshelfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/bilibili/tv/ebook/model/BookshelfItem;Lcom/bilibili/tv/ebook/model/BookshelfItem;)I
    .locals 5

    .prologue
    .line 73
    invoke-virtual {p2}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getLastReadTime()J

    move-result-wide v0

    .line 74
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getLastReadTime()J

    move-result-wide v2

    .line 75
    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_d

    :cond_14
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    check-cast p2, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ebook/util/BookshelfManager$1;->compare(Lcom/bilibili/tv/ebook/model/BookshelfItem;Lcom/bilibili/tv/ebook/model/BookshelfItem;)I

    move-result v0

    return v0
.end method
