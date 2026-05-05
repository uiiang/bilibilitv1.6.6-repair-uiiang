.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartTag"
.end annotation


# instance fields
.field public final classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final position:I

.field public final voice:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "voice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 938
    .local p4, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 940
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    .line 941
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    .line 942
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    .line 943
    return-void
.end method

.method public static buildStartTag(Ljava/lang/String;I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .registers 9
    .param p0, "fullTagExpression"    # Ljava/lang/String;
    .param p1, "position"    # I

    .line 946
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 947
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 948
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 950
    .local v0, "voiceStartIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    .line 951
    const-string v1, ""

    .local v1, "voice":Ljava/lang/String;
    goto :goto_26

    .line 953
    .end local v1    # "voice":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 954
    .restart local v1    # "voice":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 956
    :goto_26
    const-string v3, "\\."

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, "nameAndClasses":[Ljava/lang/String;
    aget-object v2, v3, v2

    .line 958
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 959
    .local v4, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_34
    array-length v6, v3

    if-ge v5, v6, :cond_3f

    .line 960
    aget-object v6, v3, v5

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 962
    .end local v5    # "i":I
    :cond_3f
    new-instance v5, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    invoke-direct {v5, v2, p1, v1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    return-object v5
.end method

.method public static buildWholeCueVirtualTag()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .registers 4

    .line 966
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    .line 970
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v2, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 966
    return-object v0
.end method
