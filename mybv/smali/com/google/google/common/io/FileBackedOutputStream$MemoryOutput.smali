.class Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;
.super Ljava/io/ByteArrayOutputStream;
.source "FileBackedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/FileBackedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryOutput"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/io/FileBackedOutputStream$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/io/FileBackedOutputStream$1;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;-><init>()V

    return-void
.end method


# virtual methods
.method getBuffer()[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->buf:[B

    return-object v0
.end method

.method getCount()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->count:I

    return v0
.end method
