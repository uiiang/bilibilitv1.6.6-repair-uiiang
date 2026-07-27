.class public abstract Lorg/jsoup/helper/ChangeNotifyingArrayList;
.super Ljava/util/ArrayList;
.source "ChangeNotifyingArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 11
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 31
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 25
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 61
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 55
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 48
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 49
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 50
    return-void
.end method

.method public abstract onContentsChanged()V
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 37
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 43
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 73
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected removeRange(II)V
    .registers 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 66
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 67
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 68
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 79
    invoke-super {p0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lorg/jsoup/helper/ChangeNotifyingArrayList;, "Lorg/jsoup/helper/ChangeNotifyingArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 19
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
