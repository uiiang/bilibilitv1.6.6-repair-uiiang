.class Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;
.super Ljava/lang/Object;
.source "MainMyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$fMid:Ljava/lang/String;

.field final synthetic val$fPassportFile:Ljava/io/File;

.field final synthetic val$fUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/content/Context;Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 565
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$act:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$fPassportFile:Ljava/io/File;

    iput-object p5, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$fMid:Ljava/lang/String;

    iput-object p6, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$fUsername:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lmybl/LoginCookieHelper;->refreshCookiesAndReadAccountStorageSync(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;->val$act:Landroid/app/Activity;

    new-instance v2, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method
