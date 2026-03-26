.class public Lbl/SortMenuDialog$SortMenuItem;
.super Ljava/lang/Object;
.source "SortMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/SortMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortMenuItem"
.end annotation


# instance fields
.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lbl/SortMenuDialog$SortMenuItem;->name:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lbl/SortMenuDialog$SortMenuItem;->value:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/SortMenuDialog$SortMenuItem;->isSelected:Z

    .line 41
    return-void
.end method
