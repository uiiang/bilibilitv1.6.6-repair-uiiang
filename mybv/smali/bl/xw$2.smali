.class Lbl/xw$2;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lbl/xw;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lbl/xw$2;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    iget-object v1, p0, Lbl/xw$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 172
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 174
    iget-object v2, p0, Lbl/xw$2;->this$0:Lbl/xw;

    iget-object v3, p0, Lbl/xw$2;->val$activity:Landroid/app/Activity;

    # invokes: Lbl/xw;->shrinkVideoView(Landroid/app/Activity;II)V
    invoke-static {v2, v3, v1, v0}, Lbl/xw;->access$000(Lbl/xw;Landroid/app/Activity;II)V

    .line 175
    iget-object v2, p0, Lbl/xw$2;->this$0:Lbl/xw;

    iget-object v3, p0, Lbl/xw$2;->val$activity:Landroid/app/Activity;

    # invokes: Lbl/xw;->shrinkDanmakuView(Landroid/app/Activity;II)V
    invoke-static {v2, v3, v1, v0}, Lbl/xw;->access$100(Lbl/xw;Landroid/app/Activity;II)V

    .line 176
    return-void
.end method
