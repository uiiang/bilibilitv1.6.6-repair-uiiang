.class final Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transition"
.end annotation


# instance fields
.field private final spansAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final spansRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/List;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/List;

    .line 387
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/List;

    return-object v0
.end method
