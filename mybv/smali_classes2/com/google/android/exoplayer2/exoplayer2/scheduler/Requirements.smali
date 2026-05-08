.class public final Lcom/google/android/exoplayer2/scheduler/Requirements;
.super Ljava/lang/Object;
.source "Requirements.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/scheduler/Requirements$RequirementFlags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/scheduler/Requirements;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_CHARGING:I = 0x8

.field public static final DEVICE_IDLE:I = 0x4

.field public static final DEVICE_STORAGE_NOT_LOW:I = 0x10

.field public static final NETWORK:I = 0x1

.field public static final NETWORK_UNMETERED:I = 0x2


# instance fields
.field private final requirements:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 271
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/scheduler/Requirements$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/scheduler/Requirements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "requirements"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    .line 91
    or-int/lit8 p1, p1, 0x1

    .line 93
    :cond_9
    iput p1, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    .line 94
    return-void
.end method

.method private getNotMetNetworkRequirements(Landroid/content/Context;)I
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isNetworkRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 170
    return v1

    .line 173
    :cond_8
    nop

    .line 175
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 176
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 177
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_37

    .line 178
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 179
    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isInternetConnectivityValidated(Landroid/net/ConnectivityManager;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_37

    .line 183
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isUnmeteredNetworkRequired()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 184
    const/4 v1, 0x2

    return v1

    .line 187
    :cond_36
    return v1

    .line 180
    :cond_37
    :goto_37
    iget v1, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v1, v1, 0x3

    return v1
.end method

.method private isDeviceCharging(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    .local v0, "batteryStatus":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 196
    return v1

    .line 198
    :cond_10
    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 199
    .local v2, "status":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method private isDeviceIdle(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 204
    nop

    .line 205
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 206
    .local v0, "powerManager":Landroid/os/PowerManager;
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_18

    .line 207
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    goto :goto_30

    .line 208
    :cond_18
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_27

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_2d

    :cond_27
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2f

    :goto_2d
    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 206
    :goto_30
    return v1
.end method

.method private static isInternetConnectivityValidated(Landroid/net/ConnectivityManager;)Z
    .registers 6
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 222
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    .line 223
    return v2

    .line 226
    :cond_8
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 227
    .local v0, "activeNetwork":Landroid/net/Network;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 228
    return v1

    .line 233
    :cond_10
    nop

    .line 234
    :try_start_11
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 235
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_20

    .line 236
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1d} :catch_22

    if-eqz v4, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 235
    :goto_21
    return v2

    .line 237
    .end local v3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :catch_22
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/SecurityException;
    return v2
.end method

.method private isStorageNotLow(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public checkRequirements(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public describeContents()I
    .registers 2

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 245
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 246
    return v0

    .line 248
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 251
    :cond_12
    iget v2, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    move-object v3, p1

    check-cast v3, Lcom/google/android/exoplayer2/scheduler/Requirements;

    iget v3, v3, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    if-ne v2, v3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    .line 249
    :cond_1e
    :goto_1e
    return v1
.end method

.method public filterRequirements(I)Lcom/google/android/exoplayer2/scheduler/Requirements;
    .registers 4
    .param p1, "requirementsFilter"    # I

    .line 109
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int v1, v0, p1

    .line 110
    .local v1, "filteredRequirements":I
    if-ne v1, v0, :cond_8

    move-object v0, p0

    goto :goto_d

    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    :goto_d
    return-object v0
.end method

.method public getNotMetRequirements(Landroid/content/Context;)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->getNotMetNetworkRequirements(Landroid/content/Context;)I

    move-result v0

    .line 156
    .local v0, "notMetRequirements":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isChargingRequired()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isDeviceCharging(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 157
    or-int/lit8 v0, v0, 0x8

    .line 159
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isIdleRequired()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isDeviceIdle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 160
    or-int/lit8 v0, v0, 0x4

    .line 162
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isStorageNotLowRequired()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isStorageNotLow(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 163
    or-int/lit8 v0, v0, 0x10

    .line 165
    :cond_2e
    return v0
.end method

.method public getRequirements()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 256
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    return v0
.end method

.method public isChargingRequired()Z
    .registers 2

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isIdleRequired()Z
    .registers 2

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNetworkRequired()Z
    .registers 3

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isStorageNotLowRequired()Z
    .registers 2

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUnmeteredNetworkRequired()Z
    .registers 2

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 268
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    return-void
.end method
