.class public Lcom/google/common/reflect/ClassPath$ResourceInfo;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceInfo"
.end annotation


# instance fields
.field final loader:Ljava/lang/ClassLoader;

.field private final resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    .line 173
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    .line 174
    return-void
.end method

.method static of(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;
    .registers 3
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 164
    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 165
    new-instance v0, Lcom/google/common/reflect/ClassPath$ClassInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/ClassPath$ClassInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 167
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/ClassPath$ResourceInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_d
.end method


# virtual methods
.method public final asByteSource()Lcom/google/common/io/ByteSource;
    .registers 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/Resources;->asByteSource(Ljava/net/URL;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public final asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/Resources;->asCharSource(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 227
    instance-of v2, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    if-eqz v2, :cond_19

    move-object v0, p1

    .line 228
    check-cast v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    .line 229
    .local v0, "that":Lcom/google/common/reflect/ClassPath$ResourceInfo;
    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    iget-object v3, v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    .line 231
    .end local v0    # "that":Lcom/google/common/reflect/ClassPath$ResourceInfo;
    :cond_19
    return v1
.end method

.method public final getResourceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public final url()Ljava/net/URL;
    .registers 4

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 186
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_12

    .line 187
    new-instance v1, Ljava/util/NoSuchElementException;

    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_12
    return-object v0
.end method
