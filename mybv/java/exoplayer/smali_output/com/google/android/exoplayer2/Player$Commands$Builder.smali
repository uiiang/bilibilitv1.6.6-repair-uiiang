.class public final Lcom/google/android/exoplayer2/Player$Commands$Builder;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player$Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final SUPPORTED_COMMANDS:[I


# instance fields
.field private final flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 459
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->SUPPORTED_COMMANDS:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x21
        0x1a
        0x22
        0x1b
        0x1c
        0x1d
        0x1e
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 501
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 4
    .param p1, "commands"    # Lcom/google/android/exoplayer2/Player$Commands;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 505
    # getter for: Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Player$Commands;->access$000(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->addAll(Lcom/google/android/exoplayer2/util/FlagSet;)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 506
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/Player$Commands;Lcom/google/android/exoplayer2/Player$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/Player$Commands;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/Player$1;

    .line 457
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>(Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method


# virtual methods
.method public add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .registers 3
    .param p1, "command"    # I

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 518
    return-object p0
.end method

.method public addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .registers 4
    .param p1, "commands"    # Lcom/google/android/exoplayer2/Player$Commands;

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    # getter for: Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Player$Commands;->access$000(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->addAll(Lcom/google/android/exoplayer2/util/FlagSet;)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 558
    return-object p0
.end method

.method public varargs addAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .registers 3
    .param p1, "commands"    # [I

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->addAll([I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 545
    return-object p0
.end method

.method public addAllCommands()Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .registers 3

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    sget-object v1, Lcom/google/android/exoplayer2/Player$Commands$Builder;->SUPPORTED_COMMANDS:[I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->addAll([I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 570
    return-object p0
.end method

.method public addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .registers 4
    .param p1, "command"    # I
    .param p2, "condition"    # Z

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 532
    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/Player$Commands;
    .registers 4

    .line 619
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;Lcom/google/android/exoplayer2/Player$1;)V

    return-object v0
.end method

.method public remove(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .registers 3
    .param p1, "command"    # I

    .line 582
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->remove(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 583
    return-object p0
.end method

.method public varargs removeAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .registers 3
    .param p1, "commands"    # [I

    .line 609
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->removeAll([I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 610
    return-object p0
.end method

.method public removeIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .registers 4
    .param p1, "command"    # I
    .param p2, "condition"    # Z

    .line 596
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->removeIf(IZ)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 597
    return-object p0
.end method
