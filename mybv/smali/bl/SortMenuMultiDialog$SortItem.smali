.class public Lbl/SortMenuMultiDialog$SortItem;
.super Ljava/lang/Object;
.source "SortMenuMultiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/SortMenuMultiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortItem"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lbl/SortMenuMultiDialog$SortItem;->name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lbl/SortMenuMultiDialog$SortItem;->value:Ljava/lang/String;

    .line 70
    return-void
.end method
