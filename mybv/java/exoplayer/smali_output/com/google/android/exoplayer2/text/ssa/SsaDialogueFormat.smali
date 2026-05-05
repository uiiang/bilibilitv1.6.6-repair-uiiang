.class final Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;
.super Ljava/lang/Object;
.source "SsaDialogueFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final endTimeIndex:I

.field public final length:I

.field public final startTimeIndex:I

.field public final styleIndex:I

.field public final textIndex:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6
    .param p1, "startTimeIndex"    # I
    .param p2, "endTimeIndex"    # I
    .param p3, "styleIndex"    # I
    .param p4, "textIndex"    # I
    .param p5, "length"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    .line 50
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    .line 51
    iput p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->styleIndex:I

    .line 52
    iput p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->textIndex:I

    .line 53
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->length:I

    .line 54
    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;
    .registers 13
    .param p0, "formatLine"    # Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    .line 64
    .local v0, "startTimeIndex":I
    const/4 v1, -0x1

    .line 65
    .local v1, "endTimeIndex":I
    const/4 v2, -0x1

    .line 66
    .local v2, "styleIndex":I
    const/4 v3, -0x1

    .line 67
    .local v3, "textIndex":I
    const-string v4, "Format:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "keys":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    array-length v6, v4

    const/4 v7, -0x1

    if-ge v5, v6, :cond_68

    .line 70
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_7c

    :cond_31
    goto :goto_59

    :sswitch_32
    const-string v8, "style"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v7, 0x2

    goto :goto_59

    :sswitch_3c
    const-string v8, "start"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v7, 0x0

    goto :goto_59

    :sswitch_46
    const-string v8, "text"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v7, 0x3

    goto :goto_59

    :sswitch_50
    const-string v8, "end"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v7, 0x1

    :goto_59
    packed-switch v7, :pswitch_data_8e

    goto :goto_65

    .line 81
    :pswitch_5d
    move v3, v5

    goto :goto_65

    .line 78
    :pswitch_5f
    move v2, v5

    .line 79
    goto :goto_65

    .line 75
    :pswitch_61
    move v1, v5

    .line 76
    goto :goto_65

    .line 72
    :pswitch_63
    move v0, v5

    .line 73
    nop

    .line 69
    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 85
    .end local v5    # "i":I
    :cond_68
    if-eq v0, v7, :cond_7a

    if-eq v1, v7, :cond_7a

    if-eq v3, v7, :cond_7a

    .line 88
    new-instance v5, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    array-length v11, v4

    move-object v6, v5

    move v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;-><init>(IIIII)V

    goto :goto_7b

    .line 89
    :cond_7a
    const/4 v5, 0x0

    .line 85
    :goto_7b
    return-object v5

    :sswitch_data_7c
    .sparse-switch
        0x188db -> :sswitch_50
        0x36452d -> :sswitch_46
        0x68ac462 -> :sswitch_3c
        0x68b1db1 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_63
        :pswitch_61
        :pswitch_5f
        :pswitch_5d
    .end packed-switch
.end method
