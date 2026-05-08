.class final Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Overrides"
.end annotation


# static fields
.field private static final ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

.field private static final BRACES_PATTERN:Ljava/util/regex/Pattern;

.field private static final MOVE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PADDED_DECIMAL_PATTERN:Ljava/lang/String; = "\\s*\\d+(?:\\.\\d+)?\\s*"

.field private static final POSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SsaStyle.Overrides"


# instance fields
.field public final alignment:I

.field public final position:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 445
    const-string v0, "\\{([^}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    .line 450
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "\\s*\\d+(?:\\.\\d+)?\\s*"

    aput-object v3, v1, v2

    .line 451
    const-string v4, "\\\\pos\\((%1$s),(%1$s)\\)"

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->POSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 453
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    .line 455
    const-string v1, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->MOVE_PATTERN:Ljava/util/regex/Pattern;

    .line 459
    const-string v0, "\\\\an(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(ILandroid/graphics/PointF;)V
    .registers 3
    .param p1, "alignment"    # I
    .param p2, "position"    # Landroid/graphics/PointF;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->alignment:I

    .line 466
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    .line 467
    return-void
.end method

.method private static parseAlignmentOverride(Ljava/lang/String;)I
    .registers 3
    .param p0, "braceContents"    # Ljava/lang/String;

    .line 540
    sget-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 541
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 542
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->access$000(Ljava/lang/String;)I

    move-result v1

    goto :goto_1d

    .line 543
    :cond_1c
    const/4 v1, -0x1

    .line 541
    :goto_1d
    return v1
.end method

.method public static parseFromDialogue(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;
    .registers 7
    .param p0, "text"    # Ljava/lang/String;

    .line 470
    const/4 v0, -0x1

    .line 471
    .local v0, "alignment":I
    const/4 v1, 0x0

    .line 472
    .local v1, "position":Landroid/graphics/PointF;
    sget-object v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 473
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_8
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 474
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    .local v3, "braceContents":Ljava/lang/String;
    :try_start_19
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v4
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1d} :catch_21

    .line 477
    .local v4, "parsedPosition":Landroid/graphics/PointF;
    if-eqz v4, :cond_20

    .line 478
    move-object v1, v4

    .line 482
    .end local v4    # "parsedPosition":Landroid/graphics/PointF;
    :cond_20
    goto :goto_22

    .line 480
    :catch_21
    move-exception v4

    .line 484
    :goto_22
    :try_start_22
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->parseAlignmentOverride(Ljava/lang/String;)I

    move-result v4
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_26} :catch_2b

    .line 485
    .local v4, "parsedAlignment":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2a

    .line 486
    move v0, v4

    .line 490
    .end local v4    # "parsedAlignment":I
    :cond_2a
    goto :goto_2c

    .line 488
    :catch_2b
    move-exception v4

    .line 491
    .end local v3    # "braceContents":Ljava/lang/String;
    :goto_2c
    goto :goto_8

    .line 492
    :cond_2d
    new-instance v3, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;-><init>(ILandroid/graphics/PointF;)V

    return-object v3
.end method

.method private static parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;
    .registers 10
    .param p0, "styleOverride"    # Ljava/lang/String;

    .line 511
    sget-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->POSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 512
    .local v0, "positionMatcher":Ljava/util/regex/Matcher;
    sget-object v1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->MOVE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 513
    .local v1, "moveMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 514
    .local v2, "hasPosition":Z
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 518
    .local v3, "hasMove":Z
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_41

    .line 519
    if-eqz v3, :cond_38

    .line 520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SsaStyle.Overrides"

    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_38
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "x":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "y":Ljava/lang/String;
    goto :goto_4b

    .line 528
    .end local v4    # "y":Ljava/lang/String;
    .end local v5    # "x":Ljava/lang/String;
    :cond_41
    if-eqz v3, :cond_6d

    .line 529
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 530
    .restart local v5    # "x":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 534
    .restart local v4    # "y":Ljava/lang/String;
    :goto_4b
    new-instance v6, Landroid/graphics/PointF;

    .line 535
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 536
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 534
    return-object v6

    .line 532
    .end local v4    # "y":Ljava/lang/String;
    .end local v5    # "x":Ljava/lang/String;
    :cond_6d
    const/4 v4, 0x0

    return-object v4
.end method

.method public static stripStyleOverrides(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "dialogueLine"    # Ljava/lang/String;

    .line 496
    sget-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
