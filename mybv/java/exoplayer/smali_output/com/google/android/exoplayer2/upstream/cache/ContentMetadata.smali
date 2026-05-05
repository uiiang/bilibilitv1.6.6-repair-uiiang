.class public interface abstract Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;
.super Ljava/lang/Object;
.source "ContentMetadata.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY_CONTENT_LENGTH:Ljava/lang/String; = "exo_len"

.field public static final KEY_CUSTOM_PREFIX:Ljava/lang/String; = "custom_"

.field public static final KEY_REDIRECTED_URI:Ljava/lang/String; = "exo_redir"


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;J)J
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract get(Ljava/lang/String;[B)[B
.end method
