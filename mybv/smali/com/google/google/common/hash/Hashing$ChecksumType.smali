.class abstract enum Lcom/google/common/hash/Hashing$ChecksumType;
.super Ljava/lang/Enum;
.source "Hashing.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ChecksumType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/hash/Hashing$ChecksumType;",
        ">;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/Hashing$ChecksumType;

.field public static final enum ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

.field public static final enum CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    new-instance v0, Lcom/google/common/hash/Hashing$ChecksumType$1;

    const-string v1, "CRC_32"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/common/hash/Hashing$ChecksumType$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    .line 419
    new-instance v0, Lcom/google/common/hash/Hashing$ChecksumType$2;

    const-string v1, "ADLER_32"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/common/hash/Hashing$ChecksumType$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/hash/Hashing$ChecksumType;

    sget-object v1, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->$VALUES:[Lcom/google/common/hash/Hashing$ChecksumType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 428
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 429
    iput p3, p0, Lcom/google/common/hash/Hashing$ChecksumType;->bits:I

    .line 430
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/google/common/hash/Hashing$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/hash/Hashing$1;

    .prologue
    .line 412
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/hash/Hashing$ChecksumType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/hash/Hashing$ChecksumType;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/hash/Hashing$ChecksumType;

    .prologue
    .line 412
    iget v0, p0, Lcom/google/common/hash/Hashing$ChecksumType;->bits:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Hashing$ChecksumType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    const-class v0, Lcom/google/common/hash/Hashing$ChecksumType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Hashing$ChecksumType;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Hashing$ChecksumType;
    .registers 1

    .prologue
    .line 412
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->$VALUES:[Lcom/google/common/hash/Hashing$ChecksumType;

    invoke-virtual {v0}, [Lcom/google/common/hash/Hashing$ChecksumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Hashing$ChecksumType;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/google/common/hash/Hashing$ChecksumType;->get()Ljava/util/zip/Checksum;

    move-result-object v0

    return-object v0
.end method

.method public abstract get()Ljava/util/zip/Checksum;
.end method
