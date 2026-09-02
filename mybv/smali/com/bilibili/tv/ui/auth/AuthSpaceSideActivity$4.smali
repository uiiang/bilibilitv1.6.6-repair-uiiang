.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Lbl/SortMenuDialog$OnSortSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showSortMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->setSortOrder(Ljava/lang/String;)V

    .line 588
    return-void
.end method
