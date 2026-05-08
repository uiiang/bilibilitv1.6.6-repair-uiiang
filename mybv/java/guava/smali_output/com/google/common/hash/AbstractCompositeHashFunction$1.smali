.class Lcom/google/common/hash/AbstractCompositeHashFunction$1;
.super Ljava/lang/Object;
.source "AbstractCompositeHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/AbstractCompositeHashFunction;->newHasher()Lcom/google/common/hash/Hasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

.field final synthetic val$hashers:[Lcom/google/common/hash/Hasher;


# direct methods
.method constructor <init>(Lcom/google/common/hash/AbstractCompositeHashFunction;[Lcom/google/common/hash/Hasher;)V
    .registers 3

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

    iput-object p2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

    iget-object v1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractCompositeHashFunction;->makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Z)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "b"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 120
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1}, Lcom/google/common/hash/Hasher;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 122
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # Z

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "b"    # B

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 56
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1}, Lcom/google/common/hash/Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 58
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # B

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "bytes"    # [B

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 64
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1}, Lcom/google/common/hash/Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 66
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .registers 8
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 72
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 74
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # [B

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .registers 5
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "c"    # C

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 128
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1}, Lcom/google/common/hash/Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 130
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # C

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(D)Lcom/google/common/hash/Hasher;
    .registers 8
    .param p1, "d"    # D

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 112
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1, p2}, Lcom/google/common/hash/Hasher;->putDouble(D)Lcom/google/common/hash/Hasher;

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 114
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lcom/google/common/hash/PrimitiveSink;
    .registers 4
    .param p1, "x0"    # D

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putDouble(D)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "f"    # F

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 104
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1}, Lcom/google/common/hash/Hasher;->putFloat(F)Lcom/google/common/hash/Hasher;

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 106
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # F

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putFloat(F)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 88
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1}, Lcom/google/common/hash/Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 90
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .registers 8
    .param p1, "l"    # J

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 96
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1, p2}, Lcom/google/common/hash/Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 98
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .registers 4
    .param p1, "x0"    # J

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 152
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 154
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "s"    # S

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 80
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1}, Lcom/google/common/hash/Hasher;->putShort(S)Lcom/google/common/hash/Hasher;

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 82
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # S

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .registers 7
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 144
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1, p2}, Lcom/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 146
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .registers 4
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/nio/charset/Charset;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 136
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1, p1}, Lcom/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 138
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_e
    return-object p0
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
