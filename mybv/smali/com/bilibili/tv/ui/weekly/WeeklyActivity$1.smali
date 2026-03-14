.class Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;
.super Lbl/vn;
.source "WeeklyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->loadWeeklyList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->weeklyItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$000(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    if-eqz p1, :cond_4e

    .line 156
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v1

    .line 158
    :goto_1b
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4e

    .line 159
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 160
    new-instance v4, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;

    invoke-direct {v4}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;-><init>()V

    .line 161
    const-string v5, "number"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->number:I

    .line 162
    const-string v5, "subject"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->subject:Ljava/lang/String;

    .line 163
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->name:Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->weeklyItems:Ljava/util/List;
    invoke-static {v3}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$000(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 168
    :cond_4e
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$100(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 169
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$100(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->d()V

    .line 171
    :cond_5f
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->weeklyItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$000(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 172
    iget-object v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->weeklyItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$000(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;

    # invokes: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->showVideoList(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$200(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V

    .line 174
    :cond_7c
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 184
    return-void
.end method
