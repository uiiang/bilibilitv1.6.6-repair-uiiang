.class final Lcom/google/common/escape/Escapers$2;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers;->wrap(Lcom/google/common/escape/CharEscaper;)Lcom/google/common/escape/UnicodeEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$escaper:Lcom/google/common/escape/CharEscaper;


# direct methods
.method constructor <init>(Lcom/google/common/escape/CharEscaper;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected escape(I)[C
    .registers 13
    .param p1, "cp"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 228
    const/high16 v8, 0x10000

    if-ge p1, v8, :cond_e

    .line 229
    iget-object v7, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    int-to-char v8, p1

    invoke-virtual {v7, v8}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v5

    .line 267
    :cond_d
    :goto_d
    return-object v5

    .line 235
    :cond_e
    const/4 v8, 0x2

    new-array v6, v8, [C

    .line 236
    .local v6, "surrogateChars":[C
    invoke-static {p1, v6, v10}, Ljava/lang/Character;->toChars(I[CI)I

    .line 237
    iget-object v8, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v9, v6, v10

    invoke-virtual {v8, v9}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 238
    .local v0, "hiChars":[C
    iget-object v8, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v9, v6, v7

    invoke-virtual {v8, v9}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    .line 244
    .local v2, "loChars":[C
    if-nez v0, :cond_2a

    if-nez v2, :cond_2a

    .line 246
    const/4 v5, 0x0

    goto :goto_d

    .line 249
    :cond_2a
    if-eqz v0, :cond_41

    array-length v1, v0

    .line 250
    .local v1, "hiCount":I
    :goto_2d
    if-eqz v2, :cond_43

    array-length v3, v2

    .line 251
    .local v3, "loCount":I
    :goto_30
    add-int v8, v1, v3

    new-array v5, v8, [C

    .line 252
    .local v5, "output":[C
    if-eqz v0, :cond_45

    .line 254
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_37
    array-length v8, v0

    if-ge v4, v8, :cond_49

    .line 255
    aget-char v8, v0, v4

    aput-char v8, v5, v4

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .end local v1    # "hiCount":I
    .end local v3    # "loCount":I
    .end local v4    # "n":I
    .end local v5    # "output":[C
    :cond_41
    move v1, v7

    .line 249
    goto :goto_2d

    .restart local v1    # "hiCount":I
    :cond_43
    move v3, v7

    .line 250
    goto :goto_30

    .line 258
    .restart local v3    # "loCount":I
    .restart local v5    # "output":[C
    :cond_45
    aget-char v8, v6, v10

    aput-char v8, v5, v10

    .line 260
    :cond_49
    if-eqz v2, :cond_58

    .line 261
    const/4 v4, 0x0

    .restart local v4    # "n":I
    :goto_4c
    array-length v7, v2

    if-ge v4, v7, :cond_d

    .line 262
    add-int v7, v1, v4

    aget-char v8, v2, v4

    aput-char v8, v5, v7

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 265
    .end local v4    # "n":I
    :cond_58
    aget-char v7, v6, v7

    aput-char v7, v5, v1

    goto :goto_d
.end method
