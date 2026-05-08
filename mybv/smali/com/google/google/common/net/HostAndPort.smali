.class public final Lcom/google/common/net/HostAndPort;
.super Ljava/lang/Object;
.source "HostAndPort.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final NO_PORT:I = -0x1

.field private static final serialVersionUID:J


# instance fields
.field private final hasBracketlessColons:Z

.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "hasBracketlessColons"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/google/common/net/HostAndPort;->port:I

    .line 80
    iput-boolean p3, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    .line 81
    return-void
.end method

.method public static fromHost(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 162
    .local v0, "parsedHost":Lcom/google/common/net/HostAndPort;
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_b
    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 163
    return-object v0

    .line 162
    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static fromParts(Ljava/lang/String;I)Lcom/google/common/net/HostAndPort;
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 143
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v1

    const-string v2, "Port out of range: %s"

    invoke-static {v1, v2, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 144
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 145
    .local v0, "parsedHost":Lcom/google/common/net/HostAndPort;
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    :goto_14
    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance v1, Lcom/google/common/net/HostAndPort;

    iget-object v2, v0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v1

    .line 145
    :cond_23
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .registers 12
    .param p0, "hostPortString"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3a

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 177
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/4 v6, 0x0

    .line 180
    .local v6, "portString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 182
    .local v2, "hasBracketlessColons":Z
    const-string v9, "["

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 183
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->getHostAndPortFromBracketedHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "hostAndPort":[Ljava/lang/String;
    aget-object v3, v4, v8

    .line 185
    .local v3, "host":Ljava/lang/String;
    aget-object v6, v4, v7

    .line 199
    .end local v4    # "hostAndPort":[Ljava/lang/String;
    :goto_19
    const/4 v5, -0x1

    .line 200
    .local v5, "port":I
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 203
    const-string v9, "+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_61

    :goto_28
    const-string v8, "Unparseable port number: %s"

    invoke-static {v7, v8, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 205
    :try_start_2d
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_30} :catch_63

    move-result v5

    .line 209
    invoke-static {v5}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v7

    const-string v8, "Port number out of range: %s"

    invoke-static {v7, v8, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 212
    :cond_3a
    new-instance v7, Lcom/google/common/net/HostAndPort;

    invoke-direct {v7, v3, v5, v2}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v7

    .line 187
    .end local v3    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    :cond_40
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 188
    .local v0, "colonPos":I
    if-ltz v0, :cond_5a

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5a

    .line 190
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "host":Ljava/lang/String;
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 194
    .end local v3    # "host":Ljava/lang/String;
    :cond_5a
    move-object v3, p0

    .line 195
    .restart local v3    # "host":Ljava/lang/String;
    if-ltz v0, :cond_5f

    move v2, v7

    :goto_5e
    goto :goto_19

    :cond_5f
    move v2, v8

    goto :goto_5e

    .end local v0    # "colonPos":I
    .restart local v5    # "port":I
    :cond_61
    move v7, v8

    .line 203
    goto :goto_28

    .line 206
    :catch_63
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unparseable port number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static getHostAndPortFromBracketedHost(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p0, "hostPortString"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3a

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "colonIndex":I
    const/4 v0, 0x0

    .line 225
    .local v0, "closeBracketIndex":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x5b

    if-ne v4, v7, :cond_3f

    move v4, v5

    :goto_10
    const-string v7, "Bracketed host-port string must start with a bracket: %s"

    invoke-static {v4, v7, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 230
    const/16 v4, 0x5d

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 231
    const/4 v4, -0x1

    if-le v1, v4, :cond_41

    if-le v0, v1, :cond_41

    move v4, v5

    :goto_25
    const-string v7, "Invalid bracketed host/port: %s"

    invoke-static {v4, v7, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "host":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_43

    .line 238
    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v6

    const-string v6, ""

    aput-object v6, v4, v5

    .line 250
    :goto_3e
    return-object v4

    .end local v2    # "host":Ljava/lang/String;
    :cond_3f
    move v4, v6

    .line 225
    goto :goto_10

    :cond_41
    move v4, v6

    .line 231
    goto :goto_25

    .line 240
    .restart local v2    # "host":Ljava/lang/String;
    :cond_43
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_69

    move v4, v5

    :goto_4c
    const-string v7, "Only a colon may follow a close bracket: %s"

    invoke-static {v4, v7, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v3, v0, 0x2

    .local v3, "i":I
    :goto_53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6b

    .line 245
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    const-string v7, "Port must be numeric: %s"

    invoke-static {v4, v7, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .end local v3    # "i":I
    :cond_69
    move v4, v6

    .line 240
    goto :goto_4c

    .line 250
    .restart local v3    # "i":I
    :cond_6b
    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v6

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_3e
.end method

.method private static isValidPort(I)Z
    .registers 2
    .param p0, "port"    # I

    .prologue
    .line 327
    if-ltz p0, :cond_9

    const v0, 0xffff

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    if-ne p0, p1, :cond_5

    .line 301
    :cond_4
    :goto_4
    return v1

    .line 295
    :cond_5
    instance-of v3, p1, Lcom/google/common/net/HostAndPort;

    if-eqz v3, :cond_24

    move-object v0, p1

    .line 296
    check-cast v0, Lcom/google/common/net/HostAndPort;

    .line 297
    .local v0, "that":Lcom/google/common/net/HostAndPort;
    iget-object v3, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, p0, Lcom/google/common/net/HostAndPort;->port:I

    iget v4, v0, Lcom/google/common/net/HostAndPort;->port:I

    if-ne v3, v4, :cond_22

    iget-boolean v3, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    iget-boolean v4, v0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    if-eq v3, v4, :cond_4

    :cond_22
    move v1, v2

    goto :goto_4

    .end local v0    # "that":Lcom/google/common/net/HostAndPort;
    :cond_24
    move v1, v2

    .line 301
    goto :goto_4
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostText()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 120
    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    return v0
.end method

.method public getPortOrDefault(I)I
    .registers 3
    .param p1, "defaultPort"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p0, Lcom/google/common/net/HostAndPort;->port:I

    .end local p1    # "defaultPort":I
    :cond_8
    return p1
.end method

.method public hasPort()Z
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 306
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/net/HostAndPort;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public requireBracketsForIPv6()Lcom/google/common/net/HostAndPort;
    .registers 4

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Possible bracketless IPv6 literal: %s"

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 287
    return-object p0

    .line 286
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x3a

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 314
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3c

    .line 315
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :goto_28
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/common/net/HostAndPort;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 317
    :cond_3c
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28
.end method

.method public withDefaultPort(I)Lcom/google/common/net/HostAndPort;
    .registers 5
    .param p1, "defaultPort"    # I

    .prologue
    .line 264
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    if-ne v0, p1, :cond_12

    .line 268
    .end local p0    # "this":Lcom/google/common/net/HostAndPort;
    :cond_11
    :goto_11
    return-object p0

    .restart local p0    # "this":Lcom/google/common/net/HostAndPort;
    :cond_12
    new-instance v0, Lcom/google/common/net/HostAndPort;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    move-object p0, v0

    goto :goto_11
.end method
