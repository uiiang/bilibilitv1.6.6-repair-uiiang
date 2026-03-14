.class Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$2;
.super Ljava/lang/Object;
.source "WeeklyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->a(Landroid/support/v7/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$2;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a$2;->this$0:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    # getter for: Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->access$300(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    .line 288
    if-eqz v0, :cond_17

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;

    .line 290
    # invokes: Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->showVideoList(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->access$200(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V

    .line 292
    :cond_17
    return-void
.end method
