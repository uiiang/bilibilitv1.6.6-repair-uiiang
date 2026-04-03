.class public Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;
.super Ljava/lang/Object;
.source "PgcSeasonBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "PgcBinder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 17
    const-string v1, "PgcBinder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind | position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | dataClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4a

    const-string v0, "null"

    :goto_1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    instance-of v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-nez v0, :cond_5c

    .line 19
    const-string v1, "PgcBinder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind | \u6570\u636e\u7c7b\u578b\u4e0d\u5339\u914d\uff0c\u671f\u671bPgcInfo.Season\uff0c\u5b9e\u9645="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_53

    const-string v0, "null"

    :goto_3e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_49
    return-void

    .line 17
    :cond_4a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 19
    :cond_53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 22
    :cond_5c
    check-cast p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 24
    const-string v1, "PgcBinder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind | seasonId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | title="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | seasonTitle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | indexShow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    if-eqz v0, :cond_1d2

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    :goto_97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | iconFontText="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    if-eqz v0, :cond_1d6

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    :goto_a9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | cover="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v0, ""

    .line 31
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    if-eqz v1, :cond_1da

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1da

    .line 32
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    .line 33
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_f7

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f7

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_f7
    :goto_f7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e2

    .line 40
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const-string v1, "PgcBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind | position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | \u8bbe\u7f6e\u6807\u9898: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_126
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    if-eqz v0, :cond_208

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    if-eqz v0, :cond_208

    .line 47
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    :goto_142
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    if-eqz v0, :cond_238

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    if-eqz v0, :cond_238

    .line 56
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u64ad\u653e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_172
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_241

    .line 68
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 70
    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    const-string v3, "PgcBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind | position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | \u52a0\u8f7d\u5c01\u9762 | originalUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | thumbUrl="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_49

    .line 24
    :cond_1d2
    const-string v0, "null"

    goto/16 :goto_97

    :cond_1d6
    const-string v0, "null"

    goto/16 :goto_a9

    .line 36
    :cond_1da
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_f7

    .line 37
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    goto/16 :goto_f7

    .line 43
    :cond_1e2
    const-string v0, "PgcBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | \u6807\u9898\u4e3a\u7a7a! seasonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_126

    .line 50
    :cond_208
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 52
    const-string v0, "PgcBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | indexShow\u4e3a\u7a7a\uff0cUP\u4e3b\u533a\u57df\u6e05\u7a7a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_142

    .line 59
    :cond_238
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_172

    .line 74
    :cond_241
    const-string v0, "PgcBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | \u5c01\u9762URL\u4e3a\u7a7a | seasonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    instance-of v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_c
    const-string v2, "PgcBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCoverUrl | dataClass="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_33

    const-string v1, "null"

    :goto_1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | return="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v0

    .line 95
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 5

    .prologue
    .line 80
    const-wide/16 v0, -0x1

    .line 81
    instance-of v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v2, :cond_c

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    int-to-long v0, v0

    .line 84
    :cond_c
    const-string v3, "PgcBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoId | dataClass="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_33

    const-string v2, "null"

    :goto_1d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | return(seasonId)="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-wide v0

    .line 84
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    .line 109
    instance-of v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v0, :cond_4b

    move-object v0, p1

    .line 110
    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    if-ne v0, p2, :cond_46

    const/4 v0, 0x1

    .line 112
    :goto_d
    const-string v2, "PgcBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCurrentSeason | currentSeasonId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | dataSeasonId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    instance-of v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v1, :cond_48

    check-cast p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    iget v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | return="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v0

    :cond_46
    move v0, v1

    .line 110
    goto :goto_d

    .line 113
    :cond_48
    const-string v1, "N/A"

    goto :goto_30

    :cond_4b
    move v0, v1

    goto :goto_d
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 4

    .prologue
    .line 101
    const-string v0, "PgcBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrentVideo | currentVideoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | PgcSeason\u4f7f\u7528avid\u6bd4\u8f83\uff0c\u5bf9\u4e8ePGC\u591a\u5b63\u5217\u8868\u5e94\u4f7f\u7528seasonId\u6bd4\u8f83"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    return v0
.end method
