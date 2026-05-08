.class final Lcom/google/common/base/Converter$IdentityConverter;
.super Lcom/google/common/base/Converter;
.source "Converter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IdentityConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter",
        "<TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 488
    new-instance v0, Lcom/google/common/base/Converter$IdentityConverter;

    invoke-direct {v0}, Lcom/google/common/base/Converter$IdentityConverter;-><init>()V

    sput-object v0, Lcom/google/common/base/Converter$IdentityConverter;->INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 487
    .local p0, "this":Lcom/google/common/base/Converter$IdentityConverter;, "Lcom/google/common/base/Converter$IdentityConverter<TT;>;"
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 521
    .local p0, "this":Lcom/google/common/base/Converter$IdentityConverter;, "Lcom/google/common/base/Converter$IdentityConverter<TT;>;"
    sget-object v0, Lcom/google/common/base/Converter$IdentityConverter;->INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

    return-object v0
.end method


# virtual methods
.method doAndThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter",
            "<TT;TS;>;)",
            "Lcom/google/common/base/Converter",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "this":Lcom/google/common/base/Converter$IdentityConverter;, "Lcom/google/common/base/Converter$IdentityConverter<TT;>;"
    .local p1, "otherConverter":Lcom/google/common/base/Converter;, "Lcom/google/common/base/Converter<TT;TS;>;"
    const-string v0, "otherConverter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Converter;

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/google/common/base/Converter$IdentityConverter;, "Lcom/google/common/base/Converter$IdentityConverter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/google/common/base/Converter$IdentityConverter;, "Lcom/google/common/base/Converter$IdentityConverter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method public reverse()Lcom/google/common/base/Converter$IdentityConverter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter$IdentityConverter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lcom/google/common/base/Converter$IdentityConverter;, "Lcom/google/common/base/Converter$IdentityConverter<TT;>;"
    return-object p0
.end method

.method public bridge synthetic reverse()Lcom/google/common/base/Converter;
    .registers 2

    .prologue
    .line 487
    .local p0, "this":Lcom/google/common/base/Converter$IdentityConverter;, "Lcom/google/common/base/Converter$IdentityConverter<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Converter$IdentityConverter;->reverse()Lcom/google/common/base/Converter$IdentityConverter;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    .local p0, "this":Lcom/google/common/base/Converter$IdentityConverter;, "Lcom/google/common/base/Converter$IdentityConverter<TT;>;"
    const-string v0, "Converter.identity()"

    return-object v0
.end method
