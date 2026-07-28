.class Lbl/xw$20$1;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xw$20;


# direct methods
.method constructor <init>(Lbl/xw$20;)V
    .locals 0

    .prologue
    .line 1565
    iput-object p1, p0, Lbl/xw$20$1;->this$1:Lbl/xw$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1568
    iget-object v0, p0, Lbl/xw$20$1;->this$1:Lbl/xw$20;

    iget-object v0, v0, Lbl/xw$20;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7535\u5b50\u4e66\u89e3\u6790\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u6587\u4ef6\u683c\u5f0f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1570
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1571
    return-void
.end method
