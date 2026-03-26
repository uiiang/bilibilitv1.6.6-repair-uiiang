.class public Lbl/SortMenuMultiDialog$SortGroup;
.super Ljava/lang/Object;
.source "SortMenuMultiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/SortMenuMultiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortGroup"
.end annotation


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuMultiDialog$SortItem;",
            ">;"
        }
    .end annotation
.end field

.field public selectedIndex:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    .line 41
    iput-object p1, p0, Lbl/SortMenuMultiDialog$SortGroup;->title:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    new-instance v1, Lbl/SortMenuMultiDialog$SortItem;

    invoke-direct {v1, p1, p2}, Lbl/SortMenuMultiDialog$SortItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getSelectedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    if-ltz v0, :cond_1b

    iget v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    iget-object v1, p0, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 57
    iget-object v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    iget v1, p0, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuMultiDialog$SortItem;

    iget-object v0, v0, Lbl/SortMenuMultiDialog$SortItem;->name:Ljava/lang/String;

    .line 59
    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, ""

    goto :goto_1a
.end method

.method public getSelectedValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    if-ltz v0, :cond_1b

    iget v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    iget-object v1, p0, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 50
    iget-object v0, p0, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    iget v1, p0, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuMultiDialog$SortItem;

    iget-object v0, v0, Lbl/SortMenuMultiDialog$SortItem;->value:Ljava/lang/String;

    .line 52
    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, ""

    goto :goto_1a
.end method
