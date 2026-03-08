.class Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$2;
.super Ljava/lang/Object;
.source "AuthSpaceMenuRight.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(Z)V

    .line 183
    return-void
.end method
