.class public Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/SortMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortItem"
.end annotation


# instance fields
.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->name:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->value:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->isSelected:Z

    .line 45
    return-void
.end method
