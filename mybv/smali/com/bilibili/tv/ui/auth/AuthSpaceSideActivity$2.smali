.class Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Lbl/MoreActionKeyHandler$Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
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
    .line 145
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    # invokes: Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showSortMenu()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    .line 149
    return-void
.end method
