.class public Lbl/SortMenuDialog$SortGroup;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/SortMenuDialog;
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
            "Lbl/SortMenuDialog$SortItem;",
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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    .line 36
    iput-object p1, p0, Lbl/SortMenuDialog$SortGroup;->title:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    new-instance v1, Lbl/SortMenuDialog$SortItem;

    invoke-direct {v1, p1, p2}, Lbl/SortMenuDialog$SortItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public getSelectedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    if-ltz v0, :cond_1b

    iget v0, p0, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    iget-object v1, p0, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 52
    iget-object v0, p0, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    iget v1, p0, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuDialog$SortItem;

    iget-object v0, v0, Lbl/SortMenuDialog$SortItem;->name:Ljava/lang/String;

    .line 54
    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, ""

    goto :goto_1a
.end method

.method public getSelectedValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    if-ltz v0, :cond_1b

    iget v0, p0, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    iget-object v1, p0, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 45
    iget-object v0, p0, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    iget v1, p0, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuDialog$SortItem;

    iget-object v0, v0, Lbl/SortMenuDialog$SortItem;->value:Ljava/lang/String;

    .line 47
    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, ""

    goto :goto_1a
.end method
