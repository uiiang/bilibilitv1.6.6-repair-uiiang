.class final Lcom/google/common/base/CharMatcher$BreakingWhitespace;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakingWhitespace"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1351
    new-instance v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$BreakingWhitespace;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;->INSTANCE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1349
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 5
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1355
    sparse-switch p1, :sswitch_data_12

    .line 1372
    const/16 v2, 0x2000

    if-lt p1, v2, :cond_10

    const/16 v2, 0x200a

    if-gt p1, v2, :cond_10

    :goto_d
    :sswitch_d
    return v0

    :sswitch_e
    move v0, v1

    .line 1370
    goto :goto_d

    :cond_10
    move v0, v1

    .line 1372
    goto :goto_d

    .line 1355
    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_d
        0xa -> :sswitch_d
        0xb -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0x20 -> :sswitch_d
        0x85 -> :sswitch_d
        0x1680 -> :sswitch_d
        0x2007 -> :sswitch_e
        0x2028 -> :sswitch_d
        0x2029 -> :sswitch_d
        0x205f -> :sswitch_d
        0x3000 -> :sswitch_d
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1378
    const-string v0, "CharMatcher.breakingWhitespace()"

    return-object v0
.end method
