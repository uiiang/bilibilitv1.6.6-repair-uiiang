.class public final Lcom/google/android/exoplayer2/BundleListRetriever;
.super Landroid/os/Binder;
.source "BundleListRetriever.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final REPLY_BREAK:I = 0x2

.field private static final REPLY_CONTINUE:I = 0x1

.field private static final REPLY_END_OF_LIST:I

.field private static final SUGGESTED_MAX_IPC_SIZE:I


# instance fields
.field private final list:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/exoplayer2/BundleListRetriever$$ExternalSyntheticStaticInterfaceCall0;->m()I

    move-result v0

    goto :goto_d

    :cond_b
    const/high16 v0, 0x10000

    :goto_d
    sput v0, Lcom/google/android/exoplayer2/BundleListRetriever;->SUGGESTED_MAX_IPC_SIZE:I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/BundleListRetriever;->list:Lcom/google/common/collect/ImmutableList;

    .line 73
    return-void
.end method

.method public static getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;
    .registers 8
    .param p0, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 106
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 107
    .local v1, "index":I
    const/4 v2, 0x1

    .line 109
    .local v2, "replyCode":I
    :goto_6
    if-eqz v2, :cond_47

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 111
    .local v3, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 113
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_10
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_3f

    .line 115
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_15
    invoke-interface {p0, v6, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_38
    .catchall {:try_start_15 .. :try_end_18} :catchall_3f

    .line 118
    nop

    .line 119
    :goto_19
    :try_start_19
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v2, v5

    if-ne v5, v6, :cond_30

    .line 120
    invoke-virtual {v4}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_3f

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 124
    :cond_30
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 126
    nop

    .line 127
    .end local v3    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    goto :goto_6

    .line 116
    .restart local v3    # "data":Landroid/os/Parcel;
    .restart local v4    # "reply":Landroid/os/Parcel;
    :catch_38
    move-exception v5

    .line 117
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_39
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/os/Bundle;>;"
    .end local v1    # "index":I
    .end local v2    # "replyCode":I
    .end local v3    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local p0    # "binder":Landroid/os/IBinder;
    throw v6
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3f

    .line 124
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/os/Bundle;>;"
    .restart local v1    # "index":I
    .restart local v2    # "replyCode":I
    .restart local v3    # "data":Landroid/os/Parcel;
    .restart local v4    # "reply":Landroid/os/Parcel;
    .restart local p0    # "binder":Landroid/os/IBinder;
    :catchall_3f
    move-exception v5

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 126
    throw v5

    .line 129
    .end local v3    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    :cond_47
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 82
    :cond_8
    const/4 v1, 0x0

    if-nez p3, :cond_c

    .line 83
    return v1

    .line 86
    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/BundleListRetriever;->list:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 87
    .local v2, "count":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .local v3, "index":I
    :goto_16
    if-ge v3, v2, :cond_31

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    sget v5, Lcom/google/android/exoplayer2/BundleListRetriever;->SUGGESTED_MAX_IPC_SIZE:I

    if-ge v4, v5, :cond_31

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v4, p0, Lcom/google/android/exoplayer2/BundleListRetriever;->list:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 93
    :cond_31
    if-ge v3, v2, :cond_34

    const/4 v1, 0x2

    :cond_34
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v0
.end method
