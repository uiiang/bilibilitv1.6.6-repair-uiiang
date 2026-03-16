.class public final Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$a;
.super Ljava/lang/Object;
.source "FollowBangumiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$a;-><init>()V

    .line 89
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    const-string v0, "context"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v0}, Lbl/adl;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/bangumi/follow/NewFollowBangumiActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    :goto_14
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void

    .line 97
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_14
.end method
