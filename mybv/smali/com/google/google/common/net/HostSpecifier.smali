.class public final Lcom/google/common/net/HostSpecifier;
.super Ljava/lang/Object;
.source "HostSpecifier.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private final canonicalForm:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "canonicalForm"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .registers 5
    .param p0, "specifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    .line 114
    :catch_5
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid host specifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 120
    .local v1, "parseException":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 121
    throw v1
.end method

.method public static fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .registers 8
    .param p0, "specifier"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v3

    .line 73
    .local v3, "parsedHost":Lcom/google/common/net/HostAndPort;
    invoke-virtual {v3}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    :goto_b
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 74
    invoke-virtual {v3}, Lcom/google/common/net/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "host":Ljava/lang/String;
    const/4 v0, 0x0

    .line 82
    .local v0, "addr":Ljava/net/InetAddress;
    :try_start_13
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_16} :catch_52

    move-result-object v0

    .line 87
    :goto_17
    if-eqz v0, :cond_25

    .line 88
    new-instance v4, Lcom/google/common/net/HostSpecifier;

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->toUriString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    .line 97
    :goto_22
    return-object v4

    .line 73
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "host":Ljava/lang/String;
    :cond_23
    const/4 v4, 0x0

    goto :goto_b

    .line 94
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "host":Ljava/lang/String;
    :cond_25
    invoke-static {v2}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v1

    .line 96
    .local v1, "domain":Lcom/google/common/net/InternetDomainName;
    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 97
    new-instance v4, Lcom/google/common/net/HostSpecifier;

    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    goto :goto_22

    .line 100
    :cond_39
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Domain name does not have a recognized public suffix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    .end local v1    # "domain":Lcom/google/common/net/InternetDomainName;
    :catch_52
    move-exception v4

    goto :goto_17
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 3
    .param p0, "specifier"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    .line 132
    const/4 v1, 0x1

    .line 134
    :goto_4
    return v1

    .line 133
    :catch_5
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    if-ne p0, p1, :cond_4

    .line 141
    const/4 v1, 0x1

    .line 149
    :goto_3
    return v1

    .line 144
    :cond_4
    instance-of v1, p1, Lcom/google/common/net/HostSpecifier;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 145
    check-cast v0, Lcom/google/common/net/HostSpecifier;

    .line 146
    .local v0, "that":Lcom/google/common/net/HostSpecifier;
    iget-object v1, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 149
    .end local v0    # "that":Lcom/google/common/net/HostSpecifier;
    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    return-object v0
.end method
