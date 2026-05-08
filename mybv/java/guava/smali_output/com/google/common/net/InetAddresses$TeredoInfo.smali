.class public final Lcom/google/common/net/InetAddresses$TeredoInfo;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/InetAddresses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TeredoInfo"
.end annotation


# instance fields
.field private final client:Ljava/net/Inet4Address;

.field private final flags:I

.field private final port:I

.field private final server:Ljava/net/Inet4Address;


# direct methods
.method public constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V
    .registers 10
    .param p1, "server"    # Ljava/net/Inet4Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "client"    # Ljava/net/Inet4Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "port"    # I
    .param p4, "flags"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    if-ltz p3, :cond_38

    if-gt p3, v4, :cond_38

    move v0, v1

    :goto_d
    const-string v3, "port \'%s\' is out of range (0 <= port <= 0xffff)"

    invoke-static {v0, v3, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 617
    if-ltz p4, :cond_3a

    if-gt p4, v4, :cond_3a

    :goto_16
    const-string v0, "flags \'%s\' is out of range (0 <= flags <= 0xffff)"

    invoke-static {v1, v0, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 622
    # getter for: Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;
    invoke-static {}, Lcom/google/common/net/InetAddresses;->access$000()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->server:Ljava/net/Inet4Address;

    .line 623
    # getter for: Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;
    invoke-static {}, Lcom/google/common/net/InetAddresses;->access$000()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->client:Ljava/net/Inet4Address;

    .line 624
    iput p3, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->port:I

    .line 625
    iput p4, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->flags:I

    .line 626
    return-void

    :cond_38
    move v0, v2

    .line 615
    goto :goto_d

    :cond_3a
    move v1, v2

    .line 617
    goto :goto_16
.end method


# virtual methods
.method public getClient()Ljava/net/Inet4Address;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->client:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 641
    iget v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->flags:I

    return v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->port:I

    return v0
.end method

.method public getServer()Ljava/net/Inet4Address;
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->server:Ljava/net/Inet4Address;

    return-object v0
.end method
