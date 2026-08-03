.class Lbl/xw$4;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->showSkipSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;


# direct methods
.method constructor <init>(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lbl/xw$4;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$4;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSave(JJ)V
    .locals 5

    .prologue
    .line 975
    const-string v0, "SkipSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSave: intro="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outro="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    iget-object v1, p0, Lbl/xw$4;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    # invokes: Lbl/xw;->getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    invoke-static {v0, v1}, Lbl/xw;->access$300(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v0

    .line 978
    iget-object v1, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getSkipHelper()Lbl/xj;
    invoke-static {v1}, Lbl/xw;->access$400(Lbl/xw;)Lbl/xj;

    move-result-object v1

    .line 979
    if-eqz v1, :cond_3f

    .line 980
    invoke-virtual {v1, v0}, Lbl/xj;->updateSkips(Lorg/json/JSONArray;)V

    .line 981
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->x()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lbl/xj;->checkSkip(J)V

    .line 983
    :cond_3f
    return-void
.end method
