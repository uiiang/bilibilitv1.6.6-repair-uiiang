.class public final Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;
.super Ljava/lang/Object;
.source "VideoCardCoverLoader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    :cond_8
    :goto_8
    return-void

    .line 25
    :cond_9
    if-nez p0, :cond_13

    .line 26
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 28
    :cond_13
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {p0, p2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_8
.end method

.method public static loadWithSize(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 35
    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    :cond_8
    :goto_8
    return-void

    .line 38
    :cond_9
    if-nez p0, :cond_13

    .line 39
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 41
    :cond_13
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {p0, p2, p3, p4}, Lbl/abd;->get_thumb_url_with_size(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_8
.end method
