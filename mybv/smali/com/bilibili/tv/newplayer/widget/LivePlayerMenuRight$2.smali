.class Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;
.super Ljava/lang/Object;
.source "LivePlayerMenuRight.java"

# interfaces
.implements Lbl/aax$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(I)Lbl/aaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

.field final synthetic val$aaxVar:Lbl/aax;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;Lbl/aax;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    iput-object p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;->val$aaxVar:Lbl/aax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$2;->val$aaxVar:Lbl/aax;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(Lbl/aax;Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
