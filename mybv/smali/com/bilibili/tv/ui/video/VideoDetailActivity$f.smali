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
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$b;
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
    .line 4124
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4141
    invoke-direct {p0, p1}, Lbl/adc$a;-><init>(Landroid/view/View;)V

    .line 4142
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4143
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 4144
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->o:Landroid/widget/TextView;

    .line 4145
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    .line 4146
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->q:Landroid/widget/TextView;

    .line 4147
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    .line 4148
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->duration:Landroid/widget/TextView;

    .line 4149
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    .line 4150
    const v0, 0x7f0801d8

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    .line 4151
    const v0, 0x7f0801ea

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->indexBadge:Landroid/widget/TextView;

    .line 4152
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4153
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4154
    const v2, 0x7f060120

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 4155
    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4156
    invoke-virtual {v1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4157
    const v2, 0x7f0500a1

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    .line 4158
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4159
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4160
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4161
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4162
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4163
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 4164
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 4165
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/high16 v10, -0x67000000

    const/high16 v9, 0x40800000    # 4.0f

    const/16 v8, 0x8

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 4185
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_1ac

    move-object v0, p1

    .line 4186
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4187
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 4188
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->o:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4190
    :cond_1a
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    .line 4191
    if-eqz v1, :cond_152

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_152

    .line 4192
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4193
    iget-boolean v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    if-nez v1, :cond_14b

    .line 4194
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b2

    invoke-virtual {v1, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4195
    const v3, 0x7f060120

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 4196
    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4197
    const v3, 0x7f0500a1

    invoke-static {v3}, Lbl/adl;->d(I)I

    move-result v3

    .line 4198
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4199
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4206
    :goto_53
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 4207
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4211
    :cond_66
    :try_start_66
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6d} :catch_159

    move-result v1

    .line 4213
    :goto_6e
    if-lez v1, :cond_15d

    .line 4214
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4215
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4219
    :goto_7e
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 4220
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_164

    .line 4221
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4222
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4226
    :goto_94
    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 4227
    const/16 v3, 0xe10

    if-lt v1, v3, :cond_16b

    .line 4228
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->duration:Landroid/widget/TextView;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit16 v6, v1, 0xe10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    rem-int/lit16 v7, v1, 0xe10

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4232
    :goto_c4
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    if-eqz v1, :cond_1a5

    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a5

    .line 4233
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4234
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v9

    .line 4236
    :try_start_e8
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 4237
    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v3, v10

    .line 4238
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4239
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 4240
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4241
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 4242
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_107} :catch_18c

    .line 4250
    :goto_107
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4254
    :goto_10c
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v1, :cond_12c

    .line 4255
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    .line 4256
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    .line 4257
    const-string v3, "MainApplication.getInstance()"

    invoke-static {v2, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4258
    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4260
    :cond_12c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 4261
    const-string v1, "itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4262
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$b;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$b;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4263
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 4264
    const-string v1, "itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4265
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4266
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4334
    :cond_14a
    :goto_14a
    return-void

    .line 4201
    :cond_14b
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_53

    .line 4204
    :cond_152
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_53

    .line 4212
    :catch_159
    move-exception v1

    move v1, v2

    goto/16 :goto_6e

    .line 4217
    :cond_15d
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7e

    .line 4224
    :cond_164
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_94

    .line 4230
    :cond_16b
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->duration:Landroid/widget/TextView;

    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit8 v6, v1, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c4

    .line 4243
    :catch_18c
    move-exception v3

    .line 4244
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4245
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 4246
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4247
    const v1, -0x66048d67    # -2.5999077E-23f

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 4248
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_107

    .line 4252
    :cond_1a5
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10c

    .line 4267
    :cond_1ac
    instance-of v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v0, :cond_14a

    move-object v0, p1

    .line 4268
    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 4269
    const-string v1, ""

    .line 4270
    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    if-eqz v3, :cond_2d9

    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d9

    .line 4271
    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    .line 4272
    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v3, :cond_1e8

    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 4273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4278
    :cond_1e8
    :goto_1e8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f3

    .line 4279
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4281
    :cond_1f3
    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    if-eqz v1, :cond_2e1

    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    if-eqz v1, :cond_2e1

    .line 4282
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4283
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4288
    :goto_20b
    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    if-eqz v1, :cond_2ef

    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    if-eqz v1, :cond_2ef

    .line 4289
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v4, v4, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u64ad\u653e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4290
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4294
    :goto_236
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4295
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4296
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4297
    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    if-eqz v1, :cond_30e

    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    if-eqz v1, :cond_30e

    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30e

    .line 4298
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4299
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v9

    .line 4301
    :try_start_273
    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 4302
    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v3, v10

    .line 4303
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4304
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 4305
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4306
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 4307
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_294} :catch_2f6

    .line 4315
    :goto_294
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4319
    :goto_299
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v0

    .line 4320
    if-eqz v0, :cond_2b9

    .line 4321
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    .line 4322
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    .line 4323
    const-string v3, "MainApplication.getInstance()"

    invoke-static {v2, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4324
    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4326
    :cond_2b9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 4327
    const-string v1, "itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4328
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$b;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f$b;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4329
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    .line 4330
    const-string v1, "itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4331
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4332
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14a

    .line 4275
    :cond_2d9
    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v3, :cond_1e8

    .line 4276
    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    goto/16 :goto_1e8

    .line 4285
    :cond_2e1
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4286
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_20b

    .line 4292
    :cond_2ef
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_236

    .line 4308
    :catch_2f6
    move-exception v3

    .line 4309
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4310
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 4311
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4312
    const v1, -0x66048d67    # -2.5999077E-23f

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 4313
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_294

    .line 4317
    :cond_30e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_299
.end method

.method public final getBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 4176
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->badge:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 4376
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public getDanmakuInImageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDurationView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 4381
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getIndexBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->indexBadge:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPlayCountView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 4379
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPubdateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 4380
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRootLayout()Lcom/bilibili/tv/widget/DrawRelativeLayout;
    .locals 1

    .prologue
    .line 4383
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 4378
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 4354
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4355
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4356
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4357
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4358
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 4359
    instance-of v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_4a

    if-eqz v2, :cond_4a

    .line 4360
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4361
    instance-of v1, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    if-eqz v1, :cond_34

    move-object v1, v2

    .line 4362
    check-cast v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 4363
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v1

    .line 4364
    if-eqz v1, :cond_34

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_34

    .line 4374
    :goto_33
    return-void

    .line 4368
    :cond_34
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4373
    :cond_41
    :goto_41
    const-string v0, "tv_video_view_click_relate"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_33

    .line 4369
    :cond_4a
    instance-of v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v1, :cond_41

    if-eqz v2, :cond_41

    .line 4370
    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 4371
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
    .line 4172
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    return-object v0
.end method
