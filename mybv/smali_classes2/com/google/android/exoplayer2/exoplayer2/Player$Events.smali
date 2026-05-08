.class public final Lcom/google/android/exoplayer2/Player$Events;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field private final flags:Lcom/google/android/exoplayer2/util/FlagSet;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/FlagSet;)V
    .registers 2
    .param p1, "flags"    # Lcom/google/android/exoplayer2/util/FlagSet;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 193
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 3
    .param p1, "event"    # I

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public varargs containsAny([I)Z
    .registers 3
    .param p1, "events"    # [I

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->containsAny([I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 241
    if-ne p0, p1, :cond_4

    .line 242
    const/4 v0, 0x1

    return v0

    .line 244
    :cond_4
    instance-of v0, p1, Lcom/google/android/exoplayer2/Player$Events;

    if-nez v0, :cond_a

    .line 245
    const/4 v0, 0x0

    return v0

    .line 247
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/Player$Events;

    .line 248
    .local v0, "other":Lcom/google/android/exoplayer2/Player$Events;
    iget-object v1, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    iget-object v2, v0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)I
    .registers 3
    .param p1, "index"    # I

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlagSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v0

    return v0
.end method
