.class Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation


# static fields
.field private static final BY_START_POSITION_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final endPosition:I

.field private final startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 976
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;I)V
    .registers 3
    .param p1, "startTag"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .param p2, "endPosition"    # I

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    .line 988
    iput p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->endPosition:I

    .line 989
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;ILcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$1;

    .line 975
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;-><init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .registers 1

    .line 975
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    .line 975
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->endPosition:I

    return v0
.end method

.method static synthetic lambda$static$0(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)I
    .registers 4
    .param p0, "e1"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;
    .param p1, "e2"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    iget v0, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    iget v1, v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
