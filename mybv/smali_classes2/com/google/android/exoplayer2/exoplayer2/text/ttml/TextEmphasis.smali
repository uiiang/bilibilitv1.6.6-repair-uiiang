.class final Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
.super Ljava/lang/Object;
.source "TextEmphasis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TextEmphasis$Position;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MARK_FILL_VALUES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MARK_SHAPE_AUTO:I = -0x1

.field private static final MARK_SHAPE_VALUES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_OUTSIDE:I = -0x2

.field private static final POSITION_VALUES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SINGLE_STYLE_VALUES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final markFill:I

.field public final markShape:I

.field public final position:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 85
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 87
    nop

    .line 88
    const-string v0, "auto"

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lcom/google/common/collect/ImmutableSet;

    .line 90
    nop

    .line 91
    const-string v0, "dot"

    const-string v1, "sesame"

    const-string v2, "circle"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lcom/google/common/collect/ImmutableSet;

    .line 96
    nop

    .line 97
    const-string v0, "filled"

    const-string v1, "open"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lcom/google/common/collect/ImmutableSet;

    .line 99
    nop

    .line 100
    const-string v0, "after"

    const-string v1, "before"

    const-string v2, "outside"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->POSITION_VALUES:Lcom/google/common/collect/ImmutableSet;

    .line 99
    return-void
.end method

.method private constructor <init>(III)V
    .registers 4
    .param p1, "markShape"    # I
    .param p2, "markFill"    # I
    .param p3, "position"    # I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markShape:I

    .line 119
    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markFill:I

    .line 120
    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->position:I

    .line 121
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 142
    return-object v0

    .line 145
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "parsingValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 147
    return-object v0

    .line 150
    :cond_13
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->parseWords(Lcom/google/common/collect/ImmutableSet;)Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object v0

    return-object v0
.end method

.method private static parseWords(Lcom/google/common/collect/ImmutableSet;)Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;"
        }
    .end annotation

    .line 154
    .local p0, "nodes":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->POSITION_VALUES:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v0, p0}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    .line 159
    .local v0, "matchingPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "outside"

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_102

    :cond_19
    goto :goto_36

    :sswitch_1a
    const-string v1, "after"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    goto :goto_37

    :sswitch_24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2c
    const-string v1, "before"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x2

    goto :goto_37

    :goto_36
    const/4 v1, -0x1

    :goto_37
    packed-switch v1, :pswitch_data_110

    .line 171
    const/4 v1, 0x1

    .local v1, "position":I
    goto :goto_40

    .line 164
    .end local v1    # "position":I
    :pswitch_3c
    const/4 v1, -0x2

    .line 165
    .restart local v1    # "position":I
    goto :goto_40

    .line 161
    .end local v1    # "position":I
    :pswitch_3e
    const/4 v1, 0x2

    .line 162
    .restart local v1    # "position":I
    nop

    .line 174
    :goto_40
    sget-object v2, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v2, p0}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v2

    .line 175
    .local v2, "matchingSingleStyles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 179
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_118

    :cond_5d
    goto :goto_71

    :sswitch_5e
    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    const/4 v5, 0x0

    goto :goto_72

    :sswitch_68
    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_72

    :goto_71
    const/4 v5, -0x1

    :goto_72
    packed-switch v5, :pswitch_data_122

    .line 185
    const/4 v3, -0x1

    .local v3, "markShape":I
    goto :goto_79

    .line 181
    .end local v3    # "markShape":I
    :pswitch_77
    const/4 v3, 0x0

    .line 182
    .restart local v3    # "markShape":I
    nop

    .line 188
    :goto_79
    new-instance v4, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {v4, v3, v6, v1}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object v4

    .line 191
    .end local v3    # "markShape":I
    :cond_7f
    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v3, p0}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v3

    .line 192
    .local v3, "matchingFills":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v8, p0}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v8

    .line 193
    .local v8, "matchingShapes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9d

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 200
    new-instance v4, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {v4, v7, v6, v1}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object v4

    .line 204
    :cond_9d
    const-string v9, "filled"

    invoke-static {v3, v9}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_128

    :cond_ac
    goto :goto_bf

    :sswitch_ad
    const-string v9, "open"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    const/4 v9, 0x0

    goto :goto_c0

    :sswitch_b7
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    const/4 v9, 0x1

    goto :goto_c0

    :goto_bf
    const/4 v9, -0x1

    :goto_c0
    packed-switch v9, :pswitch_data_132

    .line 210
    const/4 v9, 0x1

    .local v9, "markFill":I
    goto :goto_c7

    .line 206
    .end local v9    # "markFill":I
    :pswitch_c5
    const/4 v9, 0x2

    .line 207
    .restart local v9    # "markFill":I
    nop

    .line 214
    :goto_c7
    const-string v10, "circle"

    invoke-static {v8, v10}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_138

    :cond_d6
    goto :goto_f2

    :sswitch_d7
    const-string v4, "dot"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    const/4 v4, 0x0

    goto :goto_f3

    :sswitch_e1
    const-string v4, "sesame"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    const/4 v4, 0x1

    goto :goto_f3

    :sswitch_eb
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    goto :goto_f3

    :goto_f2
    const/4 v4, -0x1

    :goto_f3
    packed-switch v4, :pswitch_data_146

    .line 223
    const/4 v4, 0x1

    .local v4, "markShape":I
    goto :goto_fc

    .line 219
    .end local v4    # "markShape":I
    :pswitch_f8
    const/4 v4, 0x3

    .line 220
    .restart local v4    # "markShape":I
    goto :goto_fc

    .line 216
    .end local v4    # "markShape":I
    :pswitch_fa
    const/4 v4, 0x2

    .line 217
    .restart local v4    # "markShape":I
    nop

    .line 226
    :goto_fc
    new-instance v5, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {v5, v4, v9, v1}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object v5

    :sswitch_data_102
    .sparse-switch
        -0x5305c081 -> :sswitch_2c
        -0x41ecca5b -> :sswitch_24
        0x58705dc -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3c
    .end packed-switch

    :sswitch_data_118
    .sparse-switch
        0x2dddaf -> :sswitch_68
        0x33af38 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_77
    .end packed-switch

    :sswitch_data_128
    .sparse-switch
        -0x4bf7529e -> :sswitch_b7
        0x34264a -> :sswitch_ad
    .end sparse-switch

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_c5
    .end packed-switch

    :sswitch_data_138
    .sparse-switch
        -0x51134330 -> :sswitch_eb
        -0x35fdaa48 -> :sswitch_e1
        0x18549 -> :sswitch_d7
    .end sparse-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_fa
        :pswitch_f8
    .end packed-switch
.end method
