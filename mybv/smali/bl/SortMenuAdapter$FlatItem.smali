.class Lbl/SortMenuAdapter$FlatItem;
.super Ljava/lang/Object;
.source "SortMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/SortMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlatItem"
.end annotation


# instance fields
.field groupIndex:I

.field isGroupTitle:Z

.field isSelected:Z

.field itemIndex:I

.field name:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lbl/SortMenuAdapter$FlatItem;->groupIndex:I

    .line 38
    iput p2, p0, Lbl/SortMenuAdapter$FlatItem;->itemIndex:I

    .line 39
    iput-object p3, p0, Lbl/SortMenuAdapter$FlatItem;->title:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lbl/SortMenuAdapter$FlatItem;->name:Ljava/lang/String;

    .line 41
    iput-boolean p5, p0, Lbl/SortMenuAdapter$FlatItem;->isSelected:Z

    .line 42
    iput-boolean p6, p0, Lbl/SortMenuAdapter$FlatItem;->isGroupTitle:Z

    .line 43
    return-void
.end method
