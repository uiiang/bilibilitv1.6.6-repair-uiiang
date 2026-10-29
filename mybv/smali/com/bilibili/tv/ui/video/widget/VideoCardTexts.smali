.class public final Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;
.super Ljava/lang/Object;
.source "VideoCardTexts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static bindDanmaku(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    if-nez p0, :cond_4

    .line 75
    :cond_3
    :goto_3
    return-void

    .line 66
    :cond_4
    if-eqz p1, :cond_17

    :goto_6
    :try_start_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_1a

    move-result v0

    .line 69
    :goto_a
    if-lez v0, :cond_1d

    .line 70
    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 66
    :cond_17
    :try_start_17
    const-string p1, "0"
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_19} :catch_1a

    goto :goto_6

    .line 67
    :catch_1a
    move-exception v0

    move v0, v1

    goto :goto_a

    .line 72
    :cond_1d
    if-eqz p2, :cond_3

    .line 73
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public static bindDuration(Landroid/widget/TextView;IZ)V
    .locals 1

    .prologue
    .line 31
    if-nez p0, :cond_3

    .line 42
    :cond_2
    :goto_2
    return-void

    .line 34
    :cond_3
    if-gtz p1, :cond_d

    if-eqz p2, :cond_d

    .line 35
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 38
    :cond_d
    invoke-static {p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    if-eqz p2, :cond_2

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static bindPlayCount(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 46
    if-nez p0, :cond_3

    .line 57
    :cond_2
    :goto_2
    return-void

    .line 49
    :cond_3
    if-eqz p1, :cond_1b

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 50
    invoke-static {p1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    if-eqz p2, :cond_2

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 54
    :cond_1b
    if-eqz p2, :cond_2

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    if-nez p0, :cond_4

    .line 91
    :cond_3
    :goto_3
    return-void

    .line 82
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 83
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 85
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    .line 86
    invoke-static {p1, p2}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 88
    :cond_22
    if-eqz p4, :cond_3

    .line 89
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public static formatDuration(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/16 v0, 0xe10

    if-lt p0, v0, :cond_2b

    .line 23
    const-string v0, "%d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit16 v2, p0, 0xe10

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    rem-int/lit8 v2, p0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 23
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_2a
    return-object v0

    :cond_2b
    const-string v0, "%02d:%02d"

    new-array v1, v5, [Ljava/lang/Object;

    div-int/lit8 v2, p0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    rem-int/lit8 v2, p0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method
