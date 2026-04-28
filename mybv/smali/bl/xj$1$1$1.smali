.class Lbl/xj$1$1$1;
.super Ljava/lang/Object;
.source "xj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xj$1$1;->onPlayInfoReady(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lbl/xj$1$1;

.field final synthetic val$view_points:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lbl/xj$1$1;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lbl/xj$1$1$1;->this$2:Lbl/xj$1$1;

    iput-object p2, p0, Lbl/xj$1$1$1;->val$view_points:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lbl/xj$1$1$1;->this$2:Lbl/xj$1$1;

    iget-object v0, v0, Lbl/xj$1$1;->this$1:Lbl/xj$1;

    iget-object v0, v0, Lbl/xj$1;->this$0:Lbl/xj;

    iget-object v1, p0, Lbl/xj$1$1$1;->val$view_points:Lorg/json/JSONArray;

    # invokes: Lbl/xj;->showChapterTip(Lorg/json/JSONArray;)V
    invoke-static {v0, v1}, Lbl/xj;->access$000(Lbl/xj;Lorg/json/JSONArray;)V

    .line 100
    return-void
.end method
