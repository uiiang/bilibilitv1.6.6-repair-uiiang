.class final Lcom/google/common/reflect/TypeToken$SimpleTypeToken;
.super Lcom/google/common/reflect/TypeToken;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleTypeToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeToken",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1179
    .local p0, "this":Lcom/google/common/reflect/TypeToken$SimpleTypeToken;, "Lcom/google/common/reflect/TypeToken$SimpleTypeToken<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;Lcom/google/common/reflect/TypeToken$1;)V

    .line 1180
    return-void
.end method
