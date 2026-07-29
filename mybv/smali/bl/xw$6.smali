.class Lbl/xw$6;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->openEbookReader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lbl/xw$6;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lbl/xw$6;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->showEbookPanel()V
    invoke-static {v0}, Lbl/xw;->access$400(Lbl/xw;)V

    .line 995
    return-void
.end method
