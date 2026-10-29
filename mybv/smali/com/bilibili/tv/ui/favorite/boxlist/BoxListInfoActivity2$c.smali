.class public final Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity2$c;
.super Ljava/lang/Object;
.source "BoxListInfoActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity2$c;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/favorite/boxlist/BoxListInfoActivity2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string v1, "season_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    const-string v1, "box_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    const-string v1, "box_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    if-eqz p1, :cond_1b

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    :cond_1b
    return-void
.end method
