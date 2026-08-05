.class Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$3;
.super Ljava/lang/Object;
.source "EpisodeSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$3;->this$0:Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity$3;->this$0:Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;

    # invokes: Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->toggleSelectAll()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->access$100(Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;)V

    .line 120
    return-void
.end method
