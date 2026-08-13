.class Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;
.super Ljava/lang/Object;
.source "LivePlayerMenuRight.java"

# interfaces
.implements Lbl/aax$a;


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

.field final synthetic val$color:I

.field final synthetic val$dimension:F

.field final synthetic val$dimension2:F

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;FIIF)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    iput p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->val$dimension2:F

    iput p3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->val$color:I

    iput p4, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->val$i:I

    iput p5, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->val$dimension:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    .line 379
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    iget v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->val$dimension2:F

    iget v2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->val$color:I

    iget v3, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->val$i:I

    iget v4, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight$3;->val$dimension:F

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;->a(FIIFLandroid/view/View;IZ)V

    .line 380
    return-void
.end method
