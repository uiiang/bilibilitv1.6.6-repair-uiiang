.class Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;
.super Ljava/lang/Object;
.source "MainMyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->showAccountSwitchDialog(Landroid/content/Context;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

.field final synthetic val$container:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 673
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->this$0:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 677
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$2;->val$container:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 679
    :cond_12
    return-void
.end method
