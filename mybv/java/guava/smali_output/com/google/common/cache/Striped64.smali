.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 127
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    .line 132
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    .line 135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 300
    :try_start_18
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 301
    const-class v1, Lcom/google/common/cache/Striped64;

    .line 302
    .local v1, "sk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "base"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    .line 304
    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "busy"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_3d

    .line 309
    return-void

    .line 306
    :catch_3d
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .registers 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .registers 4

    .prologue
    .line 320
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 323
    :goto_4
    return-object v1

    .line 321
    :catch_5
    move-exception v1

    .line 323
    :try_start_6
    new-instance v1, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v1}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_11
    .catch Ljava/security/PrivilegedActionException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_4

    .line 335
    :catch_12
    move-exception v0

    .line 336
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .registers 14
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .prologue
    .line 163
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .registers 7

    .prologue
    .line 170
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .registers 8
    .param p1, "initialValue"    # J

    .prologue
    .line 282
    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 283
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 284
    if-eqz v1, :cond_13

    .line 285
    array-length v3, v1

    .line 286
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v3, :cond_13

    .line 287
    aget-object v0, v1, v2

    .line 288
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_10

    .line 289
    iput-wide p1, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 286
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 292
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_13
    return-void
.end method

.method final retryUpdate(J[IZ)V
    .registers 28
    .param p1, "x"    # J
    .param p3, "hc"    # [I
    .param p4, "wasUncontended"    # Z

    .prologue
    .line 197
    if-nez p3, :cond_78

    .line 198
    sget-object v20, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 p3, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 199
    sget-object v20, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Random;->nextInt()I

    move-result v16

    .line 200
    .local v16, "r":I
    const/16 v20, 0x0

    if-nez v16, :cond_75

    const/4 v10, 0x1

    :goto_1e
    aput v10, p3, v20

    .line 204
    .end local v16    # "r":I
    .local v10, "h":I
    :goto_20
    const/4 v8, 0x0

    .line 207
    .local v8, "collide":Z
    :cond_21
    :goto_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .local v7, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v7, :cond_111

    array-length v15, v7

    .local v15, "n":I
    if-lez v15, :cond_111

    .line 208
    add-int/lit8 v20, v15, -0x1

    and-int v20, v20, v10

    aget-object v6, v7, v20

    .local v6, "a":Lcom/google/common/cache/Striped64$Cell;
    if-nez v6, :cond_99

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_87

    .line 210
    new-instance v16, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 211
    .local v16, "r":Lcom/google/common/cache/Striped64$Cell;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_87

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_87

    .line 212
    const/4 v9, 0x0

    .line 215
    .local v9, "created":Z
    :try_start_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .local v17, "rs":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v17, :cond_6a

    move-object/from16 v0, v17

    array-length v14, v0

    .local v14, "m":I
    if-lez v14, :cond_6a

    add-int/lit8 v20, v14, -0x1

    and-int v13, v20, v10

    .local v13, "j":I
    aget-object v20, v17, v13

    if-nez v20, :cond_6a

    .line 218
    aput-object v16, v17, v13
    :try_end_69
    .catchall {:try_start_52 .. :try_end_69} :catchall_7d

    .line 219
    const/4 v9, 0x1

    .line 222
    .end local v13    # "j":I
    .end local v14    # "m":I
    :cond_6a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 224
    if-eqz v9, :cond_21

    .line 276
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v9    # "created":Z
    .end local v15    # "n":I
    .end local v16    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_74
    :goto_74
    return-void

    .end local v7    # "as":[Lcom/google/common/cache/Striped64$Cell;
    .end local v8    # "collide":Z
    .end local v10    # "h":I
    .local v16, "r":I
    :cond_75
    move/from16 v10, v16

    .line 200
    goto :goto_1e

    .line 203
    .end local v16    # "r":I
    :cond_78
    const/16 v20, 0x0

    aget v10, p3, v20

    .restart local v10    # "h":I
    goto :goto_20

    .line 222
    .restart local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v7    # "as":[Lcom/google/common/cache/Striped64$Cell;
    .restart local v8    # "collide":Z
    .restart local v9    # "created":Z
    .restart local v15    # "n":I
    .local v16, "r":Lcom/google/common/cache/Striped64$Cell;
    :catchall_7d
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 229
    .end local v9    # "created":Z
    .end local v16    # "r":Lcom/google/common/cache/Striped64$Cell;
    :cond_87
    const/4 v8, 0x0

    .line 253
    :cond_88
    :goto_88
    shl-int/lit8 v20, v10, 0xd

    xor-int v10, v10, v20

    .line 254
    ushr-int/lit8 v20, v10, 0x11

    xor-int v10, v10, v20

    .line 255
    shl-int/lit8 v20, v10, 0x5

    xor-int v10, v10, v20

    .line 256
    const/16 v20, 0x0

    aput v10, p3, v20

    goto :goto_21

    .line 231
    :cond_99
    if-nez p4, :cond_9e

    .line 232
    const/16 p4, 0x1

    goto :goto_88

    .line 233
    :cond_9e
    iget-wide v0, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide/from16 v18, v0

    .local v18, "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v20

    if-nez v20, :cond_74

    .line 235
    sget v20, Lcom/google/common/cache/Striped64;->NCPU:I

    move/from16 v0, v20

    if-ge v15, v0, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v0, v7, :cond_c8

    .line 236
    :cond_c6
    const/4 v8, 0x0

    goto :goto_88

    .line 237
    :cond_c8
    if-nez v8, :cond_cc

    .line 238
    const/4 v8, 0x1

    goto :goto_88

    .line 239
    :cond_cc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_88

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_88

    .line 241
    :try_start_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_fc

    .line 242
    shl-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .line 243
    .restart local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_ed
    if-ge v11, v15, :cond_f6

    .line 244
    aget-object v20, v7, v11

    aput-object v20, v17, v11

    .line 243
    add-int/lit8 v11, v11, 0x1

    goto :goto_ed

    .line 245
    :cond_f6
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_fc
    .catchall {:try_start_da .. :try_end_fc} :catchall_107

    .line 248
    .end local v11    # "i":I
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_fc
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 250
    const/4 v8, 0x0

    .line 251
    goto/16 :goto_21

    .line 248
    :catchall_107
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 258
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v15    # "n":I
    .end local v18    # "v":J
    :cond_111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_166

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_166

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_166

    .line 259
    const/4 v12, 0x0

    .line 261
    .local v12, "init":Z
    :try_start_12a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_150

    .line 262
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .line 263
    .restart local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    and-int/lit8 v20, v10, 0x1

    new-instance v21, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v21, v17, v20

    .line 264
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_14f
    .catchall {:try_start_12a .. :try_end_14f} :catchall_15c

    .line 265
    const/4 v12, 0x1

    .line 268
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_150
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 270
    if-eqz v12, :cond_21

    goto/16 :goto_74

    .line 268
    :catchall_15c
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 273
    .end local v12    # "init":Z
    :cond_166
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/Striped64;->base:J

    move-wide/from16 v18, v0

    .restart local v18    # "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v20

    if-eqz v20, :cond_21

    goto/16 :goto_74
.end method
