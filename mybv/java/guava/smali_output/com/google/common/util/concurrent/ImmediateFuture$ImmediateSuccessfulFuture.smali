.class Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;
.super Lcom/google/common/util/concurrent/ImmediateFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateSuccessfulFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ImmediateFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final NULL:Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->NULL:Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ImmediateFuture;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    .line 83
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    return-object v0
.end method
