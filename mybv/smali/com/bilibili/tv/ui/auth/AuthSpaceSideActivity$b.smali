.class final Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$b;
.super Ljava/lang/Object;
.source "AuthSpaceSideActivity.java"

# interfaces
.implements Lbl/agb$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final b:Ljava/util/LinkedHashMap;

.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Ljava/util/LinkedHashMap;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$b;->b:Ljava/util/LinkedHashMap;

    .line 545
    return-void
.end method


# virtual methods
.method public final a(Lbl/agb;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$b;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 550
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_17

    .line 551
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setOrder(Ljava/lang/String;)V

    .line 553
    :cond_17
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 554
    return-void
.end method
