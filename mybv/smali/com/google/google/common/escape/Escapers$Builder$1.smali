.class Lcom/google/common/escape/Escapers$Builder$1;
.super Lcom/google/common/escape/ArrayBasedCharEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final replacementChars:[C

.field final synthetic this$0:Lcom/google/common/escape/Escapers$Builder;


# direct methods
.method constructor <init>(Lcom/google/common/escape/Escapers$Builder;Ljava/util/Map;CC)V
    .registers 6
    .param p3, "x1"    # C
    .param p4, "x2"    # C

    .prologue
    .line 153
    .local p2, "x0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$0:Lcom/google/common/escape/Escapers$Builder;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/common/escape/ArrayBasedCharEscaper;-><init>(Ljava/util/Map;CC)V

    .line 154
    iget-object v0, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$0:Lcom/google/common/escape/Escapers$Builder;

    # getter for: Lcom/google/common/escape/Escapers$Builder;->unsafeReplacement:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/escape/Escapers$Builder;->access$100(Lcom/google/common/escape/Escapers$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$0:Lcom/google/common/escape/Escapers$Builder;

    # getter for: Lcom/google/common/escape/Escapers$Builder;->unsafeReplacement:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/escape/Escapers$Builder;->access$100(Lcom/google/common/escape/Escapers$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lcom/google/common/escape/Escapers$Builder$1;->replacementChars:[C

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method protected escapeUnsafe(C)[C
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/escape/Escapers$Builder$1;->replacementChars:[C

    return-object v0
.end method
