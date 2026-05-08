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
    .line 28
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 33
    new-instance v0, Lbl/xw$1;

    invoke-direct {v0, p0}, Lbl/xw$1;-><init>(Lbl/xw;)V

    iput-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private R()Z
    .locals 1

    .prologue
<<<<<<< HEAD
    .line 197
=======
    .line 193
>>>>>>> exoplayer
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
    .locals 11

    .prologue
    const/4 v1, 0x0

<<<<<<< HEAD
    .line 246
    invoke-virtual {p0}, Lbl/xw;->Q()V

    .line 247
=======
    .line 240
    invoke-virtual {p0}, Lbl/xw;->Q()V

    .line 241
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

<<<<<<< HEAD
    .line 249
=======
    .line 243
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v3

<<<<<<< HEAD
    .line 250
=======
    .line 244
>>>>>>> exoplayer
    const v0, 0x7f020002

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

<<<<<<< HEAD
    .line 251
=======
    .line 245
>>>>>>> exoplayer
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

<<<<<<< HEAD
    .line 252
=======
    .line 246
>>>>>>> exoplayer
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

<<<<<<< HEAD
    .line 254
=======
    .line 248
>>>>>>> exoplayer
    const/16 v0, 0xc

    new-array v7, v0, [I

<<<<<<< HEAD
    fill-array-data v7, :array_1ca

    move v0, v1

    .line 260
    :goto_2d
    array-length v8, v4
=======
    fill-array-data v7, :array_1e2

    .line 254
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->is_exo_player_selected(Landroid/content/Context;)Z

    move-result v8

    move v0, v1

    .line 256
    :goto_35
    array-length v9, v4
>>>>>>> exoplayer

    if-ge v0, v9, :cond_58

    array-length v9, v7

    if-ge v0, v9, :cond_58

<<<<<<< HEAD
    .line 261
    aget v8, v7, v0
=======
    .line 258
    aget v9, v7, v0
>>>>>>> exoplayer

    const/16 v10, 0x800

    if-ne v9, v10, :cond_46

<<<<<<< HEAD
    .line 262
    aget-object v8, v4, v0

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_44
=======
    if-nez v8, :cond_46

    .line 256
    :cond_43
    :goto_43
>>>>>>> exoplayer
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

<<<<<<< HEAD
    .line 267
    :cond_47
=======
    .line 261
    :cond_46
    aget v9, v7, v0

    and-int/2addr v9, v3

    if-eqz v9, :cond_43

    .line 262
    aget-object v9, v4, v0

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 267
    :cond_58
>>>>>>> exoplayer
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, v5, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->b(Ljava/util/List;I)V

    .line 268
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setMenuIndexMap(Ljava/util/List;)V

    .line 270
    iget-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    if-nez v0, :cond_7b

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    .line 272
    iget-object v0, p0, Lbl/xw;->d:Ljava/util/List;

    const v3, 0x7f0c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iput v1, p0, Lbl/xw;->e:I

    .line 275
<<<<<<< HEAD
    :cond_6a
=======
    :cond_7b
>>>>>>> exoplayer
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iget-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    iget v4, p0, Lbl/xw;->e:I

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_quality(Ljava/util/List;I)V

    .line 276
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

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

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_danmaku(Ljava/util/List;I)V

    .line 277
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->a:[F

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    sget-object v4, Lbl/abd;->a:[F

    array-length v5, v4

    move v0, v1

    :goto_ab
    if-ge v0, v5, :cond_b9

    aget v6, v4, v0

    .line 279
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 281
<<<<<<< HEAD
    :cond_a8
=======
    :cond_b9
>>>>>>> exoplayer
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_size(Ljava/util/List;I)V

    .line 282
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->b:[F

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    sget-object v4, Lbl/abd;->b:[F

    array-length v5, v4

    move v0, v1

    :goto_da
    if-ge v0, v5, :cond_fb

    aget v6, v4, v0

    .line 284
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

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 286
<<<<<<< HEAD
    :cond_ea
=======
    :cond_fb
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v0

    .line 287
    iget-object v4, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "f"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_alpha(Ljava/util/List;I)V

    .line 288
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_ratio(Ljava/util/List;I)V

    .line 289
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lbl/abd;->speeds:[F

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    sget-object v4, Lbl/abd;->speeds:[F

    array-length v5, v4

    move v0, v1

<<<<<<< HEAD
    :goto_12f
    if-ge v0, v5, :cond_150
=======
    :goto_140
    if-ge v0, v5, :cond_161
>>>>>>> exoplayer

    aget v6, v4, v0

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v0, v0, 0x1

<<<<<<< HEAD
    goto :goto_12f

    .line 293
    :cond_150
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_speed(Ljava/util/List;I)V

    .line 294
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
=======
    goto :goto_140

    .line 293
    :cond_161
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;
>>>>>>> exoplayer

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_speed(Ljava/util/List;I)V

    .line 294
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

<<<<<<< HEAD
    invoke-static {v3}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_mode(Ljava/util/List;I)V

    .line 295
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v2

    iget-object v2, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lbl/abd;->a:[F

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    sget-object v2, Lbl/abd;->a:[F

    array-length v3, v2

    :goto_193
    if-ge v1, v3, :cond_1a1

    aget v4, v2, v1

    .line 299
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_193

    .line 301
    :cond_1a1
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;
=======
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
>>>>>>> exoplayer

    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v4

<<<<<<< HEAD
    invoke-static {v2}, Lbl/abd;->get_subtitle_size(Landroid/content/Context;)F
=======
    invoke-static {v4}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I
>>>>>>> exoplayer

    move-result v4

<<<<<<< HEAD
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2
=======
    invoke-virtual {v0, v3, v4}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_mode(Ljava/util/List;I)V

    .line 295
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;
>>>>>>> exoplayer

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

<<<<<<< HEAD
    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle_size(Ljava/util/List;I)V

    .line 304
=======
    move-result-object v3

    iget-object v3, v3, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v3}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    .line 298
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

<<<<<<< HEAD
    .line 305
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;
=======
    .line 299
    iget-object v3, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;
>>>>>>> exoplayer

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

<<<<<<< HEAD
    .line 306
    return-void

    .line 254
    :array_1ca
=======
    .line 302
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->is_exo_player_selected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 303
    const v0, 0x7f020007

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/abd;->get_audio_balance_level(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 306
    const-string v3, "standard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 307
    const/4 v1, 0x1

    .line 311
    :cond_1ce
    :goto_1ce
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_audio_balance(Ljava/util/List;I)V

    .line 313
    :cond_1d7
    return-void

    .line 308
    :cond_1d8
    const-string v3, "high_dynamic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 309
    const/4 v1, 0x2

    goto :goto_1ce

    .line 248
    :array_1e2
>>>>>>> exoplayer
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
    .end array-data
.end method

.method private T()I
    .locals 7

    .prologue
    const/4 v2, -0x1

<<<<<<< HEAD
    .line 336
=======
    .line 343
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

<<<<<<< HEAD
    .line 337
=======
    .line 344
>>>>>>> exoplayer
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v1, :cond_11

    :cond_f
    move v1, v2

<<<<<<< HEAD
    .line 350
=======
    .line 357
>>>>>>> exoplayer
    :cond_10
    :goto_10
    return v1

<<<<<<< HEAD
    .line 340
=======
    .line 347
>>>>>>> exoplayer
    :cond_11
    iget-object v1, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v3, v1, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

<<<<<<< HEAD
    .line 341
=======
    .line 348
>>>>>>> exoplayer
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v4

<<<<<<< HEAD
    .line 342
=======
    .line 349
>>>>>>> exoplayer
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    if-nez v4, :cond_25

    :cond_23
    move v1, v2

<<<<<<< HEAD
    .line 343
    goto :goto_10

    .line 345
=======
    .line 350
    goto :goto_10

    .line 352
>>>>>>> exoplayer
    :cond_25
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

<<<<<<< HEAD
    .line 346
=======
    .line 353
>>>>>>> exoplayer
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

<<<<<<< HEAD
    .line 345
=======
    .line 352
>>>>>>> exoplayer
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_49
    move v1, v2

<<<<<<< HEAD
    .line 350
=======
    .line 357
>>>>>>> exoplayer
    goto :goto_10
.end method

.method static synthetic access$000(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lbl/xw;->getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lbl/xw;)Lbl/xj;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lbl/xw;->getSkipHelper()Lbl/xj;

    move-result-object v0

    return-object v0
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->a(ILandroid/view/KeyEvent;)Z

    .line 140
    invoke-virtual {p0}, Lbl/xw;->k()Lbl/xh;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lbl/xh;->b(ILandroid/view/KeyEvent;)Z

    .line 141
    return-void
.end method

.method private getEffectiveSkips(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

<<<<<<< HEAD
    .line 400
=======
    .line 434
>>>>>>> exoplayer
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

<<<<<<< HEAD
    .line 401
    const/4 v0, 0x0

    .line 403
=======
    .line 435
    const/4 v0, 0x0

    .line 437
>>>>>>> exoplayer
    const-string v2, "SkipSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEffectiveSkips: mAvid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mListKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

<<<<<<< HEAD
    .line 405
=======
    .line 439
>>>>>>> exoplayer
    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

<<<<<<< HEAD
    .line 406
=======
    .line 440
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip_list_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

<<<<<<< HEAD
    .line 407
=======
    .line 441
>>>>>>> exoplayer
    const-string v3, "SkipSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list skip: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_ee

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, v2, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v2, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

<<<<<<< HEAD
    .line 409
=======
    .line 443
>>>>>>> exoplayer
    :cond_8b
    if-eqz v0, :cond_99

    aget-wide v2, v0, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_dd

    aget-wide v2, v0, v9

    cmp-long v2, v2, v10

    if-nez v2, :cond_dd

<<<<<<< HEAD
    .line 410
=======
    .line 444
>>>>>>> exoplayer
    :cond_99
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    invoke-static {v2, v3}, Lbl/abd;->getVideoSkipKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbl/abd;->getSkipTime(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

<<<<<<< HEAD
    .line 411
=======
    .line 445
>>>>>>> exoplayer
    const-string v3, "SkipSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video skip: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_f1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, v2, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v2, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

<<<<<<< HEAD
    .line 414
=======
    .line 448
>>>>>>> exoplayer
    :cond_dd
    if-eqz v0, :cond_eb

    aget-wide v2, v0, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_f4

    aget-wide v2, v0, v9

    cmp-long v2, v2, v10

    if-nez v2, :cond_f4

<<<<<<< HEAD
    .line 415
    :cond_eb
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 436
    :goto_ed
    return-object v0

    .line 407
=======
    .line 449
    :cond_eb
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    .line 470
    :goto_ed
    return-object v0

    .line 441
>>>>>>> exoplayer
    :cond_ee
    const-string v0, "null"

    goto :goto_7f

<<<<<<< HEAD
    .line 411
=======
    .line 445
>>>>>>> exoplayer
    :cond_f1
    const-string v0, "null"

    goto :goto_d1

<<<<<<< HEAD
    .line 419
=======
    .line 453
>>>>>>> exoplayer
    :cond_f4
    const/4 v2, 0x0

    :try_start_f5
    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_118

<<<<<<< HEAD
    .line 420
=======
    .line 454
>>>>>>> exoplayer
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

<<<<<<< HEAD
    .line 421
=======
    .line 455
>>>>>>> exoplayer
    const-string v3, "type"

    const-string v4, "\u7247\u5934"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

<<<<<<< HEAD
    .line 422
=======
    .line 456
>>>>>>> exoplayer
    const-string v3, "start"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

<<<<<<< HEAD
    .line 423
=======
    .line 457
>>>>>>> exoplayer
    const-string v3, "end"

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

<<<<<<< HEAD
    .line 424
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 426
=======
    .line 458
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 460
>>>>>>> exoplayer
    :cond_118
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_147

    iget v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    if-lez v2, :cond_147

<<<<<<< HEAD
    .line 427
=======
    .line 461
>>>>>>> exoplayer
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

<<<<<<< HEAD
    .line 428
=======
    .line 462
>>>>>>> exoplayer
    iget v3, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

<<<<<<< HEAD
    .line 429
=======
    .line 463
>>>>>>> exoplayer
    const-string v3, "type"

    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

<<<<<<< HEAD
    .line 430
=======
    .line 464
>>>>>>> exoplayer
    const-string v3, "start"

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    sub-long v6, v4, v6

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

<<<<<<< HEAD
    .line 431
=======
    .line 465
>>>>>>> exoplayer
    const-string v0, "end"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

<<<<<<< HEAD
    .line 432
=======
    .line 466
>>>>>>> exoplayer
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_147} :catch_149

    :cond_147
    :goto_147
    move-object v0, v1

<<<<<<< HEAD
    .line 436
    goto :goto_ed

    .line 434
=======
    .line 470
    goto :goto_ed

    .line 468
>>>>>>> exoplayer
    :catch_149
    move-exception v0

    goto :goto_147
.end method

.method private getSkipHelper()Lbl/xj;
    .locals 3

    .prologue
    const/4 v1, 0x0

<<<<<<< HEAD
    .line 386
=======
    .line 420
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

<<<<<<< HEAD
    .line 387
=======
    .line 421
>>>>>>> exoplayer
    if-nez v0, :cond_9

    move-object v0, v1

<<<<<<< HEAD
    .line 396
=======
    .line 430
>>>>>>> exoplayer
    :goto_8
    return-object v0

    :cond_9
    move-object v0, p0

<<<<<<< HEAD
    .line 390
    :goto_a
    if-eqz v0, :cond_18

    .line 391
=======
    .line 424
    :goto_a
    if-eqz v0, :cond_18

    .line 425
>>>>>>> exoplayer
    instance-of v2, v0, Lbl/xj;

    if-eqz v2, :cond_13

<<<<<<< HEAD
    .line 392
=======
    .line 426
>>>>>>> exoplayer
    check-cast v0, Lbl/xj;

    goto :goto_8

<<<<<<< HEAD
    .line 394
=======
    .line 428
>>>>>>> exoplayer
    :cond_13
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_a

    :cond_18
    move-object v0, v1

<<<<<<< HEAD
    .line 396
=======
    .line 430
>>>>>>> exoplayer
    goto :goto_8
.end method


# virtual methods
.method public P()V
    .locals 1

    .prologue
    const/16 v0, 0x17

    .line 134
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 135
    invoke-direct {p0, v0}, Lbl/xw;->g(I)V

    .line 136
    return-void
.end method

.method public Q()V
    .locals 7

    .prologue
    const/4 v0, 0x0

<<<<<<< HEAD
    .line 223
=======
    .line 217
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v1

<<<<<<< HEAD
    .line 224
=======
    .line 218
>>>>>>> exoplayer
    if-eqz v1, :cond_13

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-nez v2, :cond_14

<<<<<<< HEAD
    .line 242
=======
    .line 236
>>>>>>> exoplayer
    :cond_13
    :goto_13
    return-void

<<<<<<< HEAD
    .line 227
=======
    .line 221
>>>>>>> exoplayer
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

<<<<<<< HEAD
    .line 228
=======
    .line 222
>>>>>>> exoplayer
    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v4, v2, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

<<<<<<< HEAD
    .line 229
=======
    .line 223
>>>>>>> exoplayer
    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v5

<<<<<<< HEAD
    .line 230
=======
    .line 224
>>>>>>> exoplayer
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v5, :cond_13

    move v1, v0

    move v2, v0

<<<<<<< HEAD
    .line 234
=======
    .line 228
>>>>>>> exoplayer
    :goto_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

<<<<<<< HEAD
    .line 235
=======
    .line 229
>>>>>>> exoplayer
    iget-object v6, v5, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v2, v1

<<<<<<< HEAD
    .line 238
=======
    .line 232
>>>>>>> exoplayer
    :cond_44
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/PlayIndex;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

<<<<<<< HEAD
    .line 234
=======
    .line 228
>>>>>>> exoplayer
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

<<<<<<< HEAD
    .line 240
    :cond_53
    iput-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    .line 241
=======
    .line 234
    :cond_53
    iput-object v3, p0, Lbl/xw;->d:Ljava/util/List;

    .line 235
>>>>>>> exoplayer
    iput v2, p0, Lbl/xw;->e:I

    goto :goto_13
.end method

.method public a(Landroid/os/Message;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_25

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    .line 76
    :goto_11
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v2, :cond_25

    .line 77
    iget-object v2, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 78
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 79
    invoke-virtual {p0, v1}, Lbl/xw;->d(Z)V

    .line 83
    :cond_25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 75
    :cond_28
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lbl/xw;->a(Landroid/os/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 4

    .prologue
    .line 182
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_SIZE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->a(Landroid/content/Context;F)V

    .line 184
    return-void
.end method

.method public a(Landroid/app/Activity;Lbl/xf;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lbl/xh;->a(Landroid/app/Activity;Lbl/xf;)V

    .line 69
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p0}, Lbl/xf;->a(ILbl/bbb;)V

    .line 70
    return-void
.end method

.method public adjust_screen(I)V
    .locals 4

    .prologue
    .line 48
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SCREEN_ADJUST:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public b(F)V
    .locals 4

    .prologue
    .line 188
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->DANMAKU_ALPHA:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->b(Landroid/content/Context;F)V

    .line 190
    return-void
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 89
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->QUALITY_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_20

    invoke-direct {p0}, Lbl/xw;->T()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-eqz v1, :cond_20

    .line 90
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(IIJ)V

    .line 91
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    .line 95
    :cond_20
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->c(Landroid/content/Context;Z)V

    .line 147
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
<<<<<<< HEAD
    .line 202
    invoke-virtual {p0}, Lbl/xw;->v()V

    .line 203
=======
    .line 198
    invoke-virtual {p0}, Lbl/xw;->v()V

    .line 199
>>>>>>> exoplayer
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    if-nez v0, :cond_34

<<<<<<< HEAD
    .line 204
=======
    .line 200
>>>>>>> exoplayer
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lbl/xw;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    iput-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

<<<<<<< HEAD
    .line 205
=======
    .line 201
>>>>>>> exoplayer
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->setListener(Lcom/bilibili/tv/player/widget/PlayerMenuRight$a;)V

<<<<<<< HEAD
    .line 206
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 207
=======
    .line 202
    invoke-direct {p0}, Lbl/xw;->S()V

    .line 203
>>>>>>> exoplayer
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

<<<<<<< HEAD
    .line 216
=======
    .line 210
>>>>>>> exoplayer
    :cond_26
    :goto_26
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->isShown()Z

    move-result v0

    if-eq v0, p1, :cond_33

<<<<<<< HEAD
    .line 217
=======
    .line 211
>>>>>>> exoplayer
    iget-object v0, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->a(Z)V

<<<<<<< HEAD
    .line 219
    :cond_33
    return-void

    .line 209
=======
    .line 213
    :cond_33
    return-void

    .line 205
>>>>>>> exoplayer
    :cond_34
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 210
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

<<<<<<< HEAD
    .line 211
=======
    if-eqz v0, :cond_26

    .line 206
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 207
>>>>>>> exoplayer
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_chapter(Lorg/json/JSONArray;)V

    .line 212
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->subtitle_info:Lorg/json/JSONObject;

    .line 213
    iget-object v1, p0, Lbl/xw;->c:Lcom/bilibili/tv/player/widget/PlayerMenuRight;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->init_subtitle(Lorg/json/JSONObject;)V

    goto :goto_26
.end method

.method public e(I)V
    .locals 4

    .prologue
    .line 157
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_QUALITY:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 3

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_16

    .line 174
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_CONTENT:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    .line 177
    :goto_5
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 178
    return-void

    .line 165
    :pswitch_c
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_16_9_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 168
    :pswitch_f
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_4_3_INSIDE:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 171
    :pswitch_12
    sget-object v0, Ltv/danmaku/videoplayer/core/videoview/AspectRatio;->RATIO_ADJUST_SCREEN:Ltv/danmaku/videoplayer/core/videoview/AspectRatio;

    goto :goto_5

    .line 163
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
    .line 100
    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_22

    :cond_c
    iget-boolean v0, p0, Lbl/xw;->f:Z

    if-nez v0, :cond_22

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xw;->f:Z

    .line 102
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 103
    iget-object v0, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lbl/xw;->a(Ljava/lang/Runnable;J)V

    .line 105
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

    .line 110
    sparse-switch p1, :sswitch_data_32

    .line 124
    iget-boolean v1, p0, Lbl/xw;->f:Z

    if-eqz v1, :cond_e

    .line 125
    iget-object v1, p0, Lbl/xw;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lbl/xw;->a(Ljava/lang/Runnable;)V

    .line 127
    :cond_e
    iput-boolean v0, p0, Lbl/xw;->f:Z

    .line 128
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v1

    :goto_14
    return v1

    .line 112
    :sswitch_15
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 113
    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    goto :goto_14

    :cond_1f
    move v1, v0

    .line 116
    goto :goto_14

    .line 118
    :sswitch_21
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v2

    if-nez v2, :cond_28

    move v0, v1

    :cond_28
    invoke-virtual {p0, v0}, Lbl/xw;->d(Z)V

    goto :goto_14

    .line 122
    :sswitch_2c
    invoke-direct {p0}, Lbl/xw;->R()Z

    move-result v1

    goto :goto_14

    .line 110
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

<<<<<<< HEAD
    .line 311
=======
    .line 318
>>>>>>> exoplayer
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

<<<<<<< HEAD
    .line 333
=======
    .line 340
>>>>>>> exoplayer
    :cond_18
    :goto_18
    return-void

<<<<<<< HEAD
    .line 315
=======
    .line 322
>>>>>>> exoplayer
    :cond_19
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

<<<<<<< HEAD
    .line 318
=======
    .line 325
>>>>>>> exoplayer
    if-ltz p1, :cond_18

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_18

<<<<<<< HEAD
    .line 322
=======
    .line 329
>>>>>>> exoplayer
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

<<<<<<< HEAD
    .line 323
    if-eqz v0, :cond_18

    .line 324
=======
    .line 330
    if-eqz v0, :cond_18

    .line 331
>>>>>>> exoplayer
    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

<<<<<<< HEAD
    .line 325
    mul-int/lit16 v3, v0, 0x3e8

    .line 326
=======
    .line 332
    mul-int/lit16 v3, v0, 0x3e8

    .line 333
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v4

<<<<<<< HEAD
    .line 330
=======
    .line 337
>>>>>>> exoplayer
    if-le v3, v4, :cond_62

    move v0, v1

<<<<<<< HEAD
    .line 331
=======
    .line 338
>>>>>>> exoplayer
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

<<<<<<< HEAD
    .line 330
=======
    .line 337
>>>>>>> exoplayer
    goto :goto_44
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public refresh_subtitle()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public set_audio_balance_level(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    const-string v1, "off"

    .line 395
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 396
    packed-switch p1, :pswitch_data_62

    .line 410
    :goto_8
    invoke-virtual {p0}, Lbl/xw;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->set_audio_balance_level(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 413
    invoke-virtual {p0}, Lbl/xw;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v1

    const-string v2, "SetAudioBalanceLevel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_23
    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u97f3\u9891\u5e73\u8861: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 417
    return-void

    .line 398
    :pswitch_53
    const-string v1, "off"

    .line 399
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 402
    :pswitch_58
    const-string v1, "standard"

    .line 403
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->STANDARD:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 406
    :pswitch_5d
    const-string v1, "high_dynamic"

    .line 407
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH_DYNAMIC:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    goto :goto_8

    .line 396
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
    .end packed-switch
.end method

.method public set_danmaku_type(I)V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lbl/xw;->a:Lbl/xf;

    const/4 v2, 0x5

    if-lez p1, :cond_19

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbl/xf;->a(ILjava/lang/Object;)V

    .line 152
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_danmaku_type(Landroid/content/Context;I)V

    .line 153
    return-void

    .line 151
    :cond_19
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set_subtitle_size(F)V
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbl/abd;->set_subtitle_size(Landroid/content/Context;F)V

    .line 194
    return-void
.end method

.method public showSkipSettingDialog()V
    .locals 6

    .prologue
<<<<<<< HEAD
    .line 355
=======
    .line 362
>>>>>>> exoplayer
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_11

<<<<<<< HEAD
    .line 383
=======
    .line 390
>>>>>>> exoplayer
    :cond_10
    :goto_10
    return-void

<<<<<<< HEAD
    .line 358
=======
    .line 365
>>>>>>> exoplayer
    :cond_11
    invoke-virtual {p0}, Lbl/xw;->c()Lbl/yh;

    move-result-object v0

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

<<<<<<< HEAD
    .line 359
=======
    .line 366
>>>>>>> exoplayer
    const-string v1, "SkipSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSkipSettingDialog: mAuthor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mMid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

<<<<<<< HEAD
    .line 360
=======
    .line 367
>>>>>>> exoplayer
    new-instance v1, Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-virtual {p0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lbl/xw;->x()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;-><init>(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;J)V

<<<<<<< HEAD
    .line 362
=======
    .line 369
>>>>>>> exoplayer
    new-instance v2, Lbl/xw$2;

    invoke-direct {v2, p0}, Lbl/xw$2;-><init>(Lbl/xw;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOnPositionProvider(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;)V

<<<<<<< HEAD
    .line 369
=======
    .line 376
>>>>>>> exoplayer
    new-instance v2, Lbl/xw$3;

    invoke-direct {v2, p0, v0}, Lbl/xw$3;-><init>(Lbl/xw;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOnSaveListener(Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnSaveListener;)V

<<<<<<< HEAD
    .line 382
=======
    .line 389
>>>>>>> exoplayer
    invoke-virtual {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->show()V

    goto :goto_10
.end method

.method public switch_speed(F)V
    .locals 4

    .prologue
    .line 53
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_SPEED:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbl/xw;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method
