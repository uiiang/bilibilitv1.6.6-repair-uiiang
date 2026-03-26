.class Lbl/SortMenuMultiAdapter$FlatItem;
.super Ljava/lang/Object;
.source "SortMenuMultiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/SortMenuMultiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlatItem"
.end annotation


# instance fields
.field groupIndex:I

.field isSelected:Z

.field itemIndex:I

.field itemName:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lbl/SortMenuMultiAdapter$FlatItem;->type:I

    .line 39
    iput p2, p0, Lbl/SortMenuMultiAdapter$FlatItem;->groupIndex:I

    .line 40
    iput p3, p0, Lbl/SortMenuMultiAdapter$FlatItem;->itemIndex:I

    .line 41
    iput-object p4, p0, Lbl/SortMenuMultiAdapter$FlatItem;->title:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lbl/SortMenuMultiAdapter$FlatItem;->itemName:Ljava/lang/String;

    .line 43
    iput-boolean p6, p0, Lbl/SortMenuMultiAdapter$FlatItem;->isSelected:Z

    .line 44
    return-void
.end method
