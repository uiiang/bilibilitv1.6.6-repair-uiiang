.class Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;
.super Ljava/lang/Object;
.source "LivePlayerMenuRight.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$4;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Z)V

    .line 456
    return-void
.end method
