.class public Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;
.super Ljava/lang/Object;
.source "DanmakuMergeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;
    }
.end annotation


# static fields
.field private static final MERGE_KEY:Ljava/lang/String; = "danmaku_merge_duplicate"

.field private static final MERGE_WINDOW_MS:J = 0x7d0L

.field private static final PREFS_NAME:Ljava/lang/String; = "danmaku_settings"

.field private static final TAG:Ljava/lang/String; = "DanmakuMergeHelper"

.field private static volatile sMergeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->sMergeEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMergeEnabled()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->sMergeEnabled:Z

    return v0
.end method

.method public static loadFromPrefs(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 45
    if-nez p0, :cond_3

    .line 53
    :goto_2
    return-void

    .line 48
    :cond_3
    :try_start_3
    const-string v0, "danmaku_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    const-string v1, "danmaku_merge_duplicate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->setMergeEnabled(Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_2

    .line 50
    :catch_15
    move-exception v0

    .line 51
    const-string v1, "DanmakuMergeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromPrefs fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static merge(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 80
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    .line 136
    :cond_a
    :goto_a
    return-object p0

    .line 87
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    new-instance v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$1;

    invoke-direct {v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    .line 97
    if-eqz v0, :cond_40

    iget-object v1, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 98
    :cond_40
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 101
    :cond_44
    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getCommentType()I

    move-result v1

    .line 102
    if-lt v1, v10, :cond_4d

    const/4 v5, 0x6

    if-le v1, v5, :cond_51

    .line 104
    :cond_4d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 107
    :cond_51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getViewTextColor()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;

    .line 111
    if-eqz v1, :cond_e5

    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    iget-wide v8, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->lastTimeMs:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_e5

    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    iget-wide v8, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->lastTimeMs:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_e5

    .line 113
    iget v5, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->count:I

    .line 114
    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    iput-wide v6, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->lastTimeMs:J

    .line 115
    iget-object v5, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->rep:Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    iput-wide v6, v5, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    .line 119
    iget-object v5, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->rep:Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    iget-object v0, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mRemoteDmId:Ljava/lang/String;

    iput-object v0, v5, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mRemoteDmId:Ljava/lang/String;

    .line 122
    iget-object v0, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->rep:Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->rawText:Ljava/lang/String;

    invoke-static {v6}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->stripTrailingNewlines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mText:Ljava/lang/String;

    .line 123
    iget-object v0, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->rep:Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    const/4 v5, 0x0

    iput-boolean v5, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mAppendLineFeedChar:Z

    .line 124
    iget-object v0, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->rep:Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    iput v10, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mLineCount:I

    goto/16 :goto_2a

    .line 126
    :cond_e5
    new-instance v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$1;)V

    .line 127
    iput-object v0, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->rep:Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    .line 128
    iget-object v6, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mText:Ljava/lang/String;

    iput-object v6, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->rawText:Ljava/lang/String;

    .line 129
    iput v10, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->count:I

    .line 130
    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    iput-wide v6, v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper$MergeGroup;->lastTimeMs:J

    .line 131
    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    .line 135
    :cond_ff
    const-string v0, "DanmakuMergeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    .line 136
    goto/16 :goto_a
.end method

.method public static saveToPrefs(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 58
    if-nez p0, :cond_3

    .line 65
    :goto_2
    return-void

    .line 61
    :cond_3
    :try_start_3
    const-string v0, "danmaku_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "danmaku_merge_duplicate"

    sget-boolean v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->sMergeEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_2

    .line 62
    :catch_1a
    move-exception v0

    .line 63
    const-string v1, "DanmakuMergeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveToPrefs fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static setMergeEnabled(Z)V
    .locals 3

    .prologue
    .line 34
    sput-boolean p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->sMergeEnabled:Z

    .line 35
    const-string v0, "DanmakuMergeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method private static stripTrailingNewlines(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 152
    :cond_8
    :goto_8
    return-object p0

    .line 144
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 145
    :goto_d
    if-lez v0, :cond_21

    .line 146
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 147
    const/16 v2, 0xa

    if-eq v1, v2, :cond_27

    const/16 v2, 0xd

    if-eq v1, v2, :cond_27

    const/16 v2, 0x20

    if-eq v1, v2, :cond_27

    .line 152
    :cond_21
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 150
    :cond_27
    add-int/lit8 v0, v0, -0x1

    .line 151
    goto :goto_d
.end method
