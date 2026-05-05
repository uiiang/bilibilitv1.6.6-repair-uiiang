.class abstract Lcom/google/common/base/CommonMatcher;
.super Ljava/lang/Object;
.source "CommonMatcher.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract end()I
.end method

.method abstract find()Z
.end method

.method abstract find(I)Z
.end method

.method abstract matches()Z
.end method

.method abstract replaceAll(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract start()I
.end method
