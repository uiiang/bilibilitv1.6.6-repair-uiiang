.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$ForPredicate;,
        Lcom/google/common/base/CharMatcher$InRange;,
        Lcom/google/common/base/CharMatcher$AnyOf;,
        Lcom/google/common/base/CharMatcher$IsEither;,
        Lcom/google/common/base/CharMatcher$IsNot;,
        Lcom/google/common/base/CharMatcher$Is;,
        Lcom/google/common/base/CharMatcher$Or;,
        Lcom/google/common/base/CharMatcher$And;,
        Lcom/google/common/base/CharMatcher$Negated;,
        Lcom/google/common/base/CharMatcher$SingleWidth;,
        Lcom/google/common/base/CharMatcher$Invisible;,
        Lcom/google/common/base/CharMatcher$JavaIsoControl;,
        Lcom/google/common/base/CharMatcher$JavaLowerCase;,
        Lcom/google/common/base/CharMatcher$JavaUpperCase;,
        Lcom/google/common/base/CharMatcher$JavaLetterOrDigit;,
        Lcom/google/common/base/CharMatcher$JavaLetter;,
        Lcom/google/common/base/CharMatcher$JavaDigit;,
        Lcom/google/common/base/CharMatcher$Digit;,
        Lcom/google/common/base/CharMatcher$RangesMatcher;,
        Lcom/google/common/base/CharMatcher$Ascii;,
        Lcom/google/common/base/CharMatcher$BreakingWhitespace;,
        Lcom/google/common/base/CharMatcher$Whitespace;,
        Lcom/google/common/base/CharMatcher$None;,
        Lcom/google/common/base/CharMatcher$Any;,
        Lcom/google/common/base/CharMatcher$BitSetMatcher;,
        Lcom/google/common/base/CharMatcher$NegatedFastMatcher;,
        Lcom/google/common/base/CharMatcher$NamedFastMatcher;,
        Lcom/google/common/base/CharMatcher$FastMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ASCII:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIGIT:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DISTINCT_CHARS:I = 0x10000

.field public static final INVISIBLE:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_DIGIT:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_LETTER:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NONE:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITESPACE:Lcom/google/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 272
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 284
    invoke-static {}, Lcom/google/common/base/CharMatcher;->breakingWhitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 294
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    .line 306
    invoke-static {}, Lcom/google/common/base/CharMatcher;->digit()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    .line 317
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaDigit()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 329
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaLetter()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/common/base/CharMatcher;

    .line 339
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaLetterOrDigit()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 349
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaUpperCase()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

    .line 359
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaLowerCase()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

    .line 369
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaIsoControl()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

    .line 380
    invoke-static {}, Lcom/google/common/base/CharMatcher;->invisible()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/common/base/CharMatcher;

    .line 394
    invoke-static {}, Lcom/google/common/base/CharMatcher;->singleWidth()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

    .line 403
    invoke-static {}, Lcom/google/common/base/CharMatcher;->any()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->ANY:Lcom/google/common/base/CharMatcher;

    .line 412
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(C)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # C

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static any()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/common/base/CharMatcher$Any;->INSTANCE:Lcom/google/common/base/CharMatcher$Any;

    return-object v0
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 3
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 447
    new-instance v0, Lcom/google/common/base/CharMatcher$AnyOf;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$AnyOf;-><init>(Ljava/lang/CharSequence;)V

    :goto_d
    return-object v0

    .line 439
    :pswitch_e
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_d

    .line 441
    :pswitch_13
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_d

    .line 443
    :pswitch_1c
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/base/CharMatcher;->isEither(CC)Lcom/google/common/base/CharMatcher$IsEither;

    move-result-object v0

    goto :goto_d

    .line 437
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_13
        :pswitch_1c
    .end packed-switch
.end method

.method public static ascii()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 154
    sget-object v0, Lcom/google/common/base/CharMatcher$Ascii;->INSTANCE:Lcom/google/common/base/CharMatcher$Ascii;

    return-object v0
.end method

.method public static breakingWhitespace()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;->INSTANCE:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public static digit()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 165
    sget-object v0, Lcom/google/common/base/CharMatcher$Digit;->INSTANCE:Lcom/google/common/base/CharMatcher$Digit;

    return-object v0
.end method

.method private finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;
    .registers 10
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "replacement"    # C
    .param p5, "builder"    # Ljava/lang/StringBuilder;
    .param p6, "inMatchingGroup"    # Z

    .prologue
    .line 996
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_1b

    .line 997
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 998
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 999
    if-nez p6, :cond_13

    .line 1000
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    const/4 p6, 0x1

    .line 996
    :cond_13
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1004
    :cond_16
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1005
    const/4 p6, 0x0

    goto :goto_13

    .line 1008
    .end local v0    # "c":C
    :cond_1b
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static forPredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/common/base/CharMatcher;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    instance-of v0, p0, Lcom/google/common/base/CharMatcher;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/base/CharMatcher;

    .end local p0    # "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    :goto_6
    return-object p0

    .restart local p0    # "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    :cond_7
    new-instance v0, Lcom/google/common/base/CharMatcher$ForPredicate;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$ForPredicate;-><init>(Lcom/google/common/base/Predicate;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .registers 3
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C

    .prologue
    .line 467
    new-instance v0, Lcom/google/common/base/CharMatcher$InRange;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$InRange;-><init>(CC)V

    return-object v0
.end method

.method public static invisible()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 238
    sget-object v0, Lcom/google/common/base/CharMatcher$Invisible;->INSTANCE:Lcom/google/common/base/CharMatcher$Invisible;

    return-object v0
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .registers 2
    .param p0, "match"    # C

    .prologue
    .line 420
    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    return-object v0
.end method

.method private static isEither(CC)Lcom/google/common/base/CharMatcher$IsEither;
    .registers 3
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .prologue
    .line 1791
    new-instance v0, Lcom/google/common/base/CharMatcher$IsEither;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$IsEither;-><init>(CC)V

    return-object v0
.end method

.method public static isNot(C)Lcom/google/common/base/CharMatcher;
    .registers 2
    .param p0, "match"    # C

    .prologue
    .line 429
    new-instance v0, Lcom/google/common/base/CharMatcher$IsNot;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$IsNot;-><init>(C)V

    return-object v0
.end method

.method private static isSmall(II)Z
    .registers 3
    .param p0, "totalCharacters"    # I
    .param p1, "tableLength"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 590
    const/16 v0, 0x3ff

    if-gt p0, v0, :cond_c

    mul-int/lit8 v0, p0, 0x4

    mul-int/lit8 v0, v0, 0x10

    if-le p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static javaDigit()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 176
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaDigit;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaDigit;

    return-object v0
.end method

.method public static javaIsoControl()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 227
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaIsoControl;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaIsoControl;

    return-object v0
.end method

.method public static javaLetter()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaLetter;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaLetter;

    return-object v0
.end method

.method public static javaLetterOrDigit()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaLetterOrDigit;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaLetterOrDigit;

    return-object v0
.end method

.method public static javaLowerCase()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 217
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaLowerCase;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaLowerCase;

    return-object v0
.end method

.method public static javaUpperCase()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 207
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaUpperCase;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaUpperCase;

    return-object v0
.end method

.method public static none()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 456
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method private static precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 7
    .param p0, "totalCharacters"    # I
    .param p1, "table"    # Ljava/util/BitSet;
    .param p2, "description"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 572
    packed-switch p0, :pswitch_data_3a

    .line 582
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v2

    invoke-static {p0, v2}, Lcom/google/common/base/CharMatcher;->isSmall(II)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {p1, p2}, Lcom/google/common/base/SmallCharMatcher;->from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    :goto_12
    return-object v2

    .line 574
    :pswitch_13
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v2

    goto :goto_12

    .line 576
    :pswitch_18
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    goto :goto_12

    .line 578
    :pswitch_22
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    int-to-char v0, v2

    .line 579
    .local v0, "c1":C
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    int-to-char v1, v2

    .line 580
    .local v1, "c2":C
    invoke-static {v0, v1}, Lcom/google/common/base/CharMatcher;->isEither(CC)Lcom/google/common/base/CharMatcher$IsEither;

    move-result-object v2

    goto :goto_12

    .line 582
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_33
    new-instance v2, Lcom/google/common/base/CharMatcher$BitSetMatcher;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/common/base/CharMatcher$BitSetMatcher;-><init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/common/base/CharMatcher$1;)V

    goto :goto_12

    .line 572
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .registers 6
    .param p0, "c"    # C

    .prologue
    .line 1035
    const-string v0, "0123456789ABCDEF"

    .line 1036
    .local v0, "hex":Ljava/lang/String;
    const/4 v3, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_22

    .line 1037
    .local v2, "tmp":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1c

    .line 1038
    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 1039
    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1041
    :cond_1c
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1036
    nop

    :array_22
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public static singleWidth()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 252
    sget-object v0, Lcom/google/common/base/CharMatcher$SingleWidth;->INSTANCE:Lcom/google/common/base/CharMatcher$SingleWidth;

    return-object v0
.end method

.method public static whitespace()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 134
    sget-object v0, Lcom/google/common/base/CharMatcher$Whitespace;->INSTANCE:Lcom/google/common/base/CharMatcher$Whitespace;

    return-object v0
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 504
    new-instance v0, Lcom/google/common/base/CharMatcher$And;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$And;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public apply(Ljava/lang/Character;)Z
    .registers 3
    .param p1, "character"    # Ljava/lang/Character;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1018
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 12
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .prologue
    .line 947
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 948
    .local v3, "len":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v3, :cond_41

    .line 949
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 950
    .local v7, "c":C
    invoke-virtual {p0, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 951
    if-ne v7, p2, :cond_28

    add-int/lit8 v0, v3, -0x1

    if-eq v8, v0, :cond_23

    add-int/lit8 v0, v8, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_28

    .line 953
    :cond_23
    add-int/lit8 v8, v8, 0x1

    .line 948
    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 955
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 956
    .local v5, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v8, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    .line 961
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "c":C
    :goto_40
    return-object v0

    :cond_41
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 723
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 724
    add-int/lit8 v0, v0, 0x1

    .line 722
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 727
    :cond_17
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 688
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 689
    .local v1, "length":I
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 690
    move v0, p2

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 691
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 695
    .end local v0    # "i":I
    :goto_14
    return v0

    .line 690
    .restart local v0    # "i":I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 695
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 709
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 710
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 714
    .end local v0    # "i":I
    :goto_12
    return v0

    .line 709
    .restart local v0    # "i":I
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 714
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 635
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_17

    .line 636
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_14

    .line 637
    const/4 v1, 0x0

    .line 640
    :goto_13
    return v1

    .line 635
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 640
    :cond_17
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 497
    new-instance v0, Lcom/google/common/base/CharMatcher$Negated;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$Negated;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 511
    new-instance v0, Lcom/google/common/base/CharMatcher$Or;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 524
    invoke-static {p0}, Lcom/google/common/base/Platform;->precomputeCharMatcher(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/google/common/base/CharMatcher;
    .registers 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x10000

    .line 541
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 542
    .local v4, "table":Ljava/util/BitSet;
    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 543
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    .line 544
    .local v5, "totalCharacters":I
    mul-int/lit8 v6, v5, 0x2

    if-gt v6, v7, :cond_1c

    .line 545
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/google/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    .line 556
    :goto_1b
    return-object v6

    .line 548
    :cond_1c
    invoke-virtual {v4, v8, v7}, Ljava/util/BitSet;->flip(II)V

    .line 549
    sub-int v1, v7, v5

    .line 550
    .local v1, "negatedCharacters":I
    const-string v3, ".negate()"

    .line 551
    .local v3, "suffix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "negatedDescription":Ljava/lang/String;
    :goto_3a
    new-instance v6, Lcom/google/common/base/CharMatcher$1;

    invoke-static {v1, v4, v2}, Lcom/google/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-direct {v6, p0, v7, v0}, Lcom/google/common/base/CharMatcher$1;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    goto :goto_1b

    .line 552
    .end local v2    # "negatedDescription":Ljava/lang/String;
    :cond_44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 739
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 741
    .local v1, "pos":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    .line 764
    .end local v3    # "string":Ljava/lang/String;
    :goto_b
    return-object v3

    .line 745
    .restart local v3    # "string":Ljava/lang/String;
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 746
    .local v0, "chars":[C
    const/4 v2, 0x1

    .line 751
    .local v2, "spread":I
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 753
    :goto_13
    array-length v4, v0

    if-ne v1, v4, :cond_1f

    .line 764
    new-instance v3, Ljava/lang/String;

    .end local v3    # "string":Ljava/lang/String;
    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_b

    .line 756
    .restart local v3    # "string":Ljava/lang/String;
    :cond_1f
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 759
    :cond_2a
    sub-int v4, v1, v2

    aget-char v5, v0, v1

    aput-char v5, v0, v4

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 8
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .prologue
    .line 797
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 799
    .local v2, "pos":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    .line 809
    .end local v3    # "string":Ljava/lang/String;
    :goto_b
    return-object v3

    .line 802
    .restart local v3    # "string":Ljava/lang/String;
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 803
    .local v0, "chars":[C
    aput-char p2, v0, v2

    .line 804
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_14
    array-length v4, v0

    if-ge v1, v4, :cond_24

    .line 805
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 806
    aput-char p2, v0, v1

    .line 804
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 809
    :cond_24
    new-instance v3, Ljava/lang/String;

    .end local v3    # "string":Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_b
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, -0x1

    .line 829
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 830
    .local v4, "replacementLen":I
    if-nez v4, :cond_c

    .line 831
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 855
    :cond_b
    :goto_b
    return-object v5

    .line 833
    :cond_c
    const/4 v6, 0x1

    if-ne v4, v6, :cond_19

    .line 834
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 837
    :cond_19
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v3

    .line 839
    .local v3, "pos":I
    if-eq v3, v7, :cond_b

    .line 843
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 844
    .local v1, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v1, 0x3

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 846
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 848
    .local v2, "oldpos":I
    :cond_33
    invoke-virtual {v0, v5, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 850
    add-int/lit8 v2, v3, 0x1

    .line 851
    invoke-virtual {p0, v5, v2}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 852
    if-ne v3, v7, :cond_33

    .line 854
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 4
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 600
    const v0, 0xffff

    .local v0, "c":I
    :goto_3
    if-ltz v0, :cond_12

    .line 601
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 602
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 600
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 605
    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1027
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 12
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .prologue
    .line 971
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 972
    .local v8, "len":I
    const/4 v2, 0x0

    .line 973
    .local v2, "first":I
    add-int/lit8 v7, v8, -0x1

    .line 975
    .local v7, "last":I
    :goto_7
    if-ge v2, v8, :cond_16

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 979
    :cond_16
    :goto_16
    if-le v7, v2, :cond_25

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 980
    add-int/lit8 v7, v7, -0x1

    goto :goto_16

    .line 983
    :cond_25
    if-nez v2, :cond_30

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_30

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    add-int/lit8 v3, v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v7, 0x1

    sub-int/2addr v0, v2

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 873
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 877
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "first":I
    :goto_5
    if-ge v0, v2, :cond_11

    .line 878
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 882
    :cond_11
    add-int/lit8 v1, v2, -0x1

    .local v1, "last":I
    :goto_13
    if-le v1, v0, :cond_1f

    .line 883
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 888
    :cond_1f
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 877
    .end local v1    # "last":I
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 882
    .restart local v1    # "last":I
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_13
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 900
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 901
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "first":I
    :goto_5
    if-ge v0, v1, :cond_1d

    .line 902
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 903
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 906
    :goto_19
    return-object v2

    .line 901
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 906
    :cond_1d
    const-string v2, ""

    goto :goto_19
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 918
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 919
    .local v1, "len":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "last":I
    :goto_6
    if-ltz v0, :cond_21

    .line 920
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 921
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    :goto_1d
    return-object v2

    .line 919
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 924
    :cond_21
    const-string v2, ""

    goto :goto_1d
.end method
