.class public Lbl/xw;
.super Lbl/xh;
.source "xw.java"

# interfaces
.implements Lbl/bbb;
.implements Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/xh;",
        "Lbl/bbb",
        "<",
        "Landroid/os/Message;",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;"
    }
.end annotation


# instance fields
.field private c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 31
    new-instance v0, Lbl/xw$1;

    invoke-direct {v0, p0}, Lbl/xw$1;-><init>(Lbl/xw;)V

    iput-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private R()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private S()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0}, Lbl/xw;->Q()V

    .line 234
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 235
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(Ljava/util/List;I)V

    .line 236
    iget-object v1, p0, Lbl/xw;->d:Ljava/util/List;

    if-nez v1, :cond_35

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbl/xw;->d:Ljava/util/List;

    .line 238
    iget-object v1, p0, Lbl/xw;->d:Ljava/util/List;

    const v3, 0x7f0c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iput v0, p0, Lbl/xw;->e:I

    .line 241
    :cond_35
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    iget v4, p0, Lbl/xw;->e:I

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_quality(Ljava/util/List;I)V

    .line 242
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/high16 v3, 0x7f020000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_danmaku_type(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_danmaku(Ljava/util/List;I)V

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    sget-object v1, Lbl/abd;->a:[F

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    sget-object v4, Lbl/abd;->a:[F

    array-length v5, v4

    move v1, v0

    :goto_65
    if-ge v1, v5, :cond_73

    aget v6, v4, v1

    .line 245
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 247
    :cond_73
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_size(Ljava/util/List;I)V

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    sget-object v1, Lbl/abd;->b:[F

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    sget-object v4, Lbl/abd;->b:[F

    array-length v5, v4

    move v1, v0

    :goto_94
    if-ge v1, v5, :cond_b5

    aget v6, v4, v1

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 252
    :cond_b5
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v1

    .line 253
    iget-object v4, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "f"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4, v3, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_alpha(Ljava/util/List;I)V

    .line 254
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_ratio(Ljava/util/List;I)V

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lbl/abd;->speeds:[F

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    sget-object v3, Lbl/abd;->speeds:[F

    array-length v4, v3

    :goto_f9
    if-ge v0, v4, :cond_11a

    aget v5, v3, v0

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    .line 259
    :cond_11a
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_speed(Ljava/util/List;I)V

    .line 260
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v1, 0x7f020005

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_mode(Ljava/util/List;I)V

    .line 261
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    .line 264
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 265
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

    .line 266
    return-void
.end method

.method private T()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 296
    invoke-virtual {p0}, Lbl/xw;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 297
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v1, :cond_11

    :cond_f
    move v1, v2

    .line 310
    :cond_10
    :goto_10
    return v1

    .line 300
    :cond_11
    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v3, v1, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    .line 301
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v4

    .line 302
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    if-nez v4, :cond_25

    :cond_23
    move v1, v2

    .line 303
    goto :goto_10

    .line 305
    :cond_25
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 306
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v5, v4, Lcom/bilibili/lib/media/resource/PlayIndex;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lbl/adl;->a(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lbl/adl;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v5, v0, :cond_10

    .line 305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_49
    move v1, v2

    .line 310
    goto :goto_10
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->a(ILandroid/view/KeyEvent;)Z

    .line 138
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->b(ILandroid/view/KeyEvent;)Z

    .line 139
    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .prologue
    const/16 v0, 0x17

    .line 132
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 133
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 134
    return-void
.end method

.method public Q()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_13

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v2, :cond_14

    .line 229
    :cond_13
    :goto_13
    return-void

    .line 214
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v4, v2, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v5

    .line 217
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v5, :cond_13

    move v1, v0

    move v2, v0

    .line 221
    :goto_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 222
    iget-object v6, v5, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v2, v1

    .line 225
    :cond_44
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 227
    :cond_53
    iput-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    .line 228
    iput v2, p0, Lbl/xw;->e:I

    goto :goto_13
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_25

    .line 73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    .line 74
    :goto_11
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v2, :cond_25

    .line 75
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 76
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 77
    invoke-virtual {p0, v1}, Lbl/xw;->d(Z)V

    .line 81
    :cond_25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 73
    :cond_28
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lbl/xw;->a(Landroid/os/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 4

    .prologue
    .line 180
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->a(Landroid/content/Context;F)V

    .line 182
    return-void
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 67
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 68
    return-void
.end method

.method public adjust_screen(I)V
    .locals 4

    .prologue
    .line 46
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public b(F)V
    .locals 4

    .prologue
    .line 186
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->b(Landroid/content/Context;F)V

    .line 188
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 87
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_20

    invoke-direct {p0}, Lbl/xw;->T()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v1, :cond_20

    .line 88
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 89
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 93
    :cond_20
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 144
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 145
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lbl/xw;->v()V

    .line 197
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-nez v0, :cond_26

    .line 198
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lbl/xw;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    .line 199
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V

    .line 200
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 201
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 203
    :cond_26
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->isShown()Z

    move-result v0

    if-eq v0, p1, :cond_33

    .line 204
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

    .line 206
    :cond_33
    return-void
.end method

.method public e(I)V
    .locals 4

    .prologue
    .line 155
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 3

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_16

    .line 172
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_CONTENT:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 175
    :goto_5
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 176
    return-void

    .line 163
    :pswitch_c
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_16_9_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 166
    :pswitch_f
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_4_3_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 169
    :pswitch_12
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 161
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 98
    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_22

    :cond_c
    iget-boolean v0, p0, Lbl/xw;->f:Z

    if-nez v0, :cond_22

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->f:Z

    .line 100
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lbl/xw;->a(Ljava/lang/Runnable;J)V

    .line 103
    :cond_22
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    sparse-switch p1, :sswitch_data_32

    .line 122
    iget-boolean v1, p0, Lbl/xw;->f:Z

    if-eqz v1, :cond_e

    .line 123
    iget-object v1, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 125
    :cond_e
    iput-boolean v0, p0, Lbl/xw;->f:Z

    .line 126
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v1

    :goto_14
    return v1

    .line 110
    :sswitch_15
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 111
    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    goto :goto_14

    :cond_1f
    move v1, v0

    .line 114
    goto :goto_14

    .line 116
    :sswitch_21
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v2

    if-nez v2, :cond_28

    move v0, v1

    :cond_28
    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    goto :goto_14

    .line 120
    :sswitch_2c
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v1

    goto :goto_14

    .line 108
    nop

    :sswitch_data_32
    .sparse-switch
        0x4 -> :sswitch_15
        0x13 -> :sswitch_2c
        0x14 -> :sswitch_2c
        0x52 -> :sswitch_21
    .end sparse-switch
.end method

.method public jumpToChapter(I)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    if-nez v0, :cond_19

    .line 293
    :cond_18
    :goto_18
    return-void

    .line 275
    :cond_19
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 278
    if-ltz p1, :cond_18

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_18

    .line 282
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_18

    .line 284
    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 285
    mul-int/lit16 v3, v0, 0x3e8

    .line 286
    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v4

    .line 290
    if-le v3, v4, :cond_62

    move v0, v1

    .line 291
    :goto_44
    sget-object v5, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SEEK:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    int-to-long v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {p0, v5, v6}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    goto :goto_18

    :cond_62
    move v0, v2

    .line 290
    goto :goto_44
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public refresh_subtitle()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public set_danmaku_type(I)V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x5

    if-lez p1, :cond_19

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_danmaku_type(Landroid/content/Context;I)V

    .line 151
    return-void

    .line 149
    :cond_19
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public switch_speed(F)V
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method
