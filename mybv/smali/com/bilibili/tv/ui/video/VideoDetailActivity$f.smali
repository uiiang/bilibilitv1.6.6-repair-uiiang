.class public final Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;
.super Lbl/adc$a;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;


# instance fields
.field private badge:Landroid/widget/TextView;

.field private danmakuInImage:Landroid/widget/TextView;

.field private duration:Landroid/widget/TextView;

.field private indexBadge:Landroid/widget/TextView;

.field private n:Lcom/bilibili/tv/widget/ScalableImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/bilibili/tv/widget/DrawRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5101
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f060120

    const v2, 0x7f0500a1

    .line 5118
    invoke-direct {p0, p1}, Lbl/adc$a;-><init>(Landroid/view/View;)V

    .line 5119
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5120
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 5121
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->o:Landroid/widget/TextView;

    .line 5122
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    .line 5123
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->q:Landroid/widget/TextView;

    .line 5124
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    .line 5125
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->duration:Landroid/widget/TextView;

    .line 5126
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    .line 5127
    const v0, 0x7f0801d8

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    .line 5128
    const v0, 0x7f0801ea

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->indexBadge:Landroid/widget/TextView;

    .line 5129
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    .line 5130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->q:Landroid/widget/TextView;

    invoke-static {v0, v1, v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setPlay(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 5132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    invoke-static {v0, v1, v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setDanmaku(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 5134
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 5135
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 5136
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5157
    return-void
.end method

.method public final getBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 5147
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 5183
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public getDanmakuInImageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDurationView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 5188
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getIndexBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 5151
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->indexBadge:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPlayCountView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 5186
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPubdateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 5187
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRootLayout()Lcom/bilibili/tv/widget/DrawRelativeLayout;
    .locals 1

    .prologue
    .line 5190
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 5184
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 5161
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5162
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 5163
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5164
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5165
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 5166
    instance-of v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_4a

    if-eqz v2, :cond_4a

    .line 5167
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 5168
    instance-of v1, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    if-eqz v1, :cond_34

    move-object v1, v2

    .line 5169
    check-cast v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 5170
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v1

    .line 5171
    if-eqz v1, :cond_34

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_34

    .line 5181
    :goto_33
    return-void

    .line 5175
    :cond_34
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5180
    :cond_41
    :goto_41
    const-string v0, "tv_video_view_click_relate"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_33

    .line 5176
    :cond_4a
    instance-of v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v1, :cond_41

    if-eqz v2, :cond_41

    .line 5177
    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 5178
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_41
.end method

.method public final z()Lcom/bilibili/tv/widget/DrawRelativeLayout;
    .locals 1

    .prologue
    .line 5143
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    return-object v0
.end method
