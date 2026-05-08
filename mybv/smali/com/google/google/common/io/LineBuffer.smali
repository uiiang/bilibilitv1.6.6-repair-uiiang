.class abstract Lcom/google/common/io/LineBuffer;
.super Ljava/lang/Object;
.source "LineBuffer.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private line:Ljava/lang/StringBuilder;

.field private sawReturn:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method private finishLine(Z)Z
    .registers 4
    .param p1, "sawNewline"    # Z
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-boolean v1, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v1, :cond_1f

    if-eqz p1, :cond_1c

    const-string v0, "\r\n"

    .line 91
    .local v0, "separator":Ljava/lang/String;
    :goto_8
    iget-object v1, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/common/io/LineBuffer;->handleLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    .line 94
    return p1

    .line 88
    .end local v0    # "separator":Ljava/lang/String;
    :cond_1c
    const-string v0, "\r"

    goto :goto_8

    :cond_1f
    if-eqz p1, :cond_24

    const-string v0, "\n"

    goto :goto_8

    :cond_24
    const-string v0, ""

    goto :goto_8
.end method


# virtual methods
.method protected add([CII)V
    .registers 12
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    move v1, p2

    .line 51
    .local v1, "pos":I
    iget-boolean v3, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v3, :cond_18

    if-lez p3, :cond_18

    .line 53
    aget-char v3, p1, v1

    if-ne v3, v7, :cond_25

    move v3, v4

    :goto_10
    invoke-direct {p0, v3}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 58
    :cond_18
    move v2, v1

    .line 59
    .local v2, "start":I
    add-int v0, p2, p3

    .local v0, "end":I
    :goto_1b
    if-ge v1, v0, :cond_55

    .line 60
    aget-char v3, p1, v1

    packed-switch v3, :pswitch_data_5e

    .line 59
    :goto_22
    :pswitch_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_25
    move v3, v5

    .line 53
    goto :goto_10

    .line 62
    .restart local v0    # "end":I
    .restart local v2    # "start":I
    :pswitch_27
    iget-object v3, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v6, v1, v2

    invoke-virtual {v3, p1, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 63
    iput-boolean v4, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    .line 64
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_43

    .line 65
    add-int/lit8 v3, v1, 0x1

    aget-char v3, p1, v3

    if-ne v3, v7, :cond_46

    move v3, v4

    :goto_3b
    invoke-direct {p0, v3}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 69
    :cond_43
    add-int/lit8 v2, v1, 0x1

    .line 70
    goto :goto_22

    :cond_46
    move v3, v5

    .line 65
    goto :goto_3b

    .line 73
    :pswitch_48
    iget-object v3, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v6, v1, v2

    invoke-virtual {v3, p1, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p0, v4}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    .line 75
    add-int/lit8 v2, v1, 0x1

    .line 76
    goto :goto_22

    .line 82
    :cond_55
    iget-object v3, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    add-int v4, p2, p3

    sub-int/2addr v4, v2

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 83
    return-void

    .line 60
    :pswitch_data_5e
    .packed-switch 0xa
        :pswitch_48
        :pswitch_22
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method protected finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 105
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    .line 107
    :cond_10
    return-void
.end method

.method protected abstract handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
