.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$hasSeasons:Z

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;ZLcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3705
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-boolean p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;->val$hasSeasons:Z

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildSection(I)V
    .locals 3

    .prologue
    .line 3708
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;->val$hasSeasons:Z

    if-eqz v0, :cond_16

    .line 3709
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Section;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V
    invoke-static {v1, v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V

    .line 3713
    :goto_15
    return-void

    .line 3711
    :cond_16
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Section;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V
    invoke-static {v1, v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V

    goto :goto_15
.end method
