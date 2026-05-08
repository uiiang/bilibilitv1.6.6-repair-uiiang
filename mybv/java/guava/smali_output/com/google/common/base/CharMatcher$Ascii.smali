.class final Lcom/google/common/base/CharMatcher$Ascii;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ascii"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$Ascii;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1385
    new-instance v0, Lcom/google/common/base/CharMatcher$Ascii;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Ascii;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$Ascii;->INSTANCE:Lcom/google/common/base/CharMatcher$Ascii;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 1388
    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 1389
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 1393
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
