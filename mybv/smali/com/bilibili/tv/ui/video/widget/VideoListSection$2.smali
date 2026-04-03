.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 89
    const-string v1, "ListSection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick | sectionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | dataClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_e1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | currentVideoId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 92
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_93

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v1

    if-eqz v1, :cond_93

    if-eqz p1, :cond_93

    .line 96
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v0

    .line 97
    const-string v1, "ListSection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick | isCurrentVideo(by avid)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_93
    if-nez v0, :cond_d7

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    if-lez v1, :cond_d7

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v1

    if-eqz v1, :cond_d7

    if-eqz p1, :cond_d7

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v0

    .line 102
    const-string v1, "ListSection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick | isCurrentVideo(by seasonId)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_d7
    if-eqz v0, :cond_e5

    .line 106
    const-string v0, "ListSection"

    const-string v1, "onItemClick | \u70b9\u51fb\u7684\u662f\u5f53\u524d\u6b63\u5728\u64ad\u653e\u7684\u89c6\u9891\uff0c\u5ffd\u7565\u8df3\u8f6c"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_e0
    return-void

    .line 91
    :cond_e1
    const-string v0, "null"

    goto/16 :goto_31

    .line 110
    :cond_e5
    const-string v0, "ListSection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick | \u4fdd\u5b58\u7126\u70b9\u4f4d\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveFocusPositionByIndex(I)V
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;

    move-result-object v0

    if-eqz v0, :cond_114

    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;->onVideoClicked(Ljava/lang/Object;I)V

    goto :goto_e0

    .line 115
    :cond_114
    const-string v0, "ListSection"

    const-string v1, "onItemClick | videoClickListener\u4e3anull! \u70b9\u51fb\u4e8b\u4ef6\u672a\u4f20\u9012"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0
.end method
