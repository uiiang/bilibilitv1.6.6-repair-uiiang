.class public final Lcom/bilibili/tv/ui/search/SearchActivity$a;
.super Ljava/lang/Object;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "SearchActivity"

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/search/SearchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    if-eqz p1, :cond_13

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    :cond_13
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "com.bilibili.tv.ui.search.SearchActivity.EXTRA_TID"

    return-object v0
.end method
