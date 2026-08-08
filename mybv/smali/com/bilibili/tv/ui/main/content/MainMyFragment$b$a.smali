.class final Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;
.super Ljava/lang/Object;
.source "MainMyFragment.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final b:Landroid/app/Activity;

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;->b:Landroid/app/Activity;

    .line 493
    return-void
.end method


# virtual methods
.method public final a(Lbl/agb;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 497
    sget-object v1, Lbl/abn;->a:Lbl/abn;

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;->b:Landroid/app/Activity;

    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 499
    const-string v2, "BiliAccount.get(activity.applicationContext)"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v1, v0}, Lbl/abn;->a(Lbl/mg;)Lbl/jb;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;Lbl/mg;Lbl/agb;)V

    sget-object v0, Lbl/jb;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lbl/jb;->a(Lbl/ja;Ljava/util/concurrent/Executor;)Lbl/jb;

    .line 511
    return-void
.end method
