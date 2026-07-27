.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Tag"
.end annotation


# static fields
.field private static final MaxAttributes:I = 0x200


# instance fields
.field private final attrName:Ljava/lang/StringBuilder;

.field private attrNameS:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final attrValue:Ljava/lang/StringBuilder;

.field private attrValueS:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field attributes:Lorg/jsoup/nodes/Attributes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hasAttrName:Z

.field private hasAttrValue:Z

.field private hasEmptyAttrValue:Z

.field protected normalName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    .line 88
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    .line 92
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 93
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 95
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private ensureAttrName()V
    .registers 3

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 251
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 252
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    .line 255
    :cond_11
    return-void
.end method

.method private ensureAttrValue()V
    .registers 3

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 260
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 261
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    .line 264
    :cond_11
    return-void
.end method


# virtual methods
.method final appendAttributeName(C)V
    .registers 3
    .param p1, "append"    # C

    .prologue
    .line 214
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName()V

    .line 215
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;)V
    .registers 4
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName()V

    .line 206
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 207
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    .line 211
    :goto_15
    return-void

    .line 209
    :cond_16
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method

.method final appendAttributeValue(C)V
    .registers 3
    .param p1, "append"    # C

    .prologue
    .line 228
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    .line 229
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    .line 220
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 221
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    .line 225
    :goto_d
    return-void

    .line 223
    :cond_e
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method final appendAttributeValue([C)V
    .registers 3
    .param p1, "append"    # [C

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    .line 234
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 235
    return-void
.end method

.method final appendAttributeValue([I)V
    .registers 6
    .param p1, "appendCodepoints"    # [I

    .prologue
    .line 238
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    .line 239
    array-length v2, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_11

    aget v0, p1, v1

    .line 240
    .local v0, "codepoint":I
    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 242
    .end local v0    # "codepoint":I
    :cond_11
    return-void
.end method

.method final appendTagName(C)V
    .registers 3
    .param p1, "append"    # C

    .prologue
    .line 198
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .registers 4
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_17

    .end local p1    # "append":Ljava/lang/String;
    :goto_c
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 195
    return-void

    .line 193
    .restart local p1    # "append":Ljava/lang/String;
    :cond_17
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c
.end method

.method final finaliseTag()V
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    .line 162
    :cond_7
    return-void
.end method

.method final hasAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final hasAttributes()Z
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final isSelfClosing()Z
    .registers 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 167
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0

    .line 166
    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method final newAttribute()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 120
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v2, :cond_d

    .line 121
    new-instance v2, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v2}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 123
    :cond_d
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_4a

    .line 125
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5f

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "name":Ljava/lang/String;
    :goto_29
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    .line 129
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    if-eqz v2, :cond_65

    .line 130
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_62

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "value":Ljava/lang/String;
    :goto_45
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v0, v1}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 139
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_4a
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 140
    iput-object v5, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    .line 141
    iput-boolean v4, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 143
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 144
    iput-object v5, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    .line 145
    iput-boolean v4, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 146
    iput-boolean v4, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 147
    return-void

    .line 125
    :cond_5f
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    goto :goto_29

    .line 130
    .restart local v0    # "name":Ljava/lang/String;
    :cond_62
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    goto :goto_45

    .line 131
    :cond_65
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    if-eqz v2, :cond_6c

    .line 132
    const-string v1, ""

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_45

    .line 134
    .end local v1    # "value":Ljava/lang/String;
    :cond_6c
    const/4 v1, 0x0

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_45
.end method

.method final normalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token$Tag;
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 103
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    .line 104
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 105
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 106
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    .line 107
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 108
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 109
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 110
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 111
    return-object p0
.end method

.method bridge synthetic reset()Lorg/jsoup/parser/Token;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method final setEmptyAttributeValue()V
    .registers 2

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 246
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method final toStringName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "[unset]"

    goto :goto_6
.end method
