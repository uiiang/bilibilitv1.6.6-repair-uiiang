.class Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c$1;
.super Ljava/lang/Object;
.source "HistoryVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c$1;->this$0:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 526
    if-eqz p2, :cond_2d

    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 528
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_2d

    .line 529
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 530
    const-string v1, "history"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_1c

    .line 532
    const-string v1, "oid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentAvid:J

    .line 534
    :cond_1c
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 535
    if-eqz v0, :cond_2d

    .line 536
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->currentPos:I

    .line 540
    :cond_2d
    return-void
.end method
