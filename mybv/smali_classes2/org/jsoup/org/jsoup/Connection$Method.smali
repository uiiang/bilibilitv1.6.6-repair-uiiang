.class public final enum Lorg/jsoup/Connection$Method;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jsoup/Connection$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/Connection$Method;

.field public static final enum DELETE:Lorg/jsoup/Connection$Method;

.field public static final enum GET:Lorg/jsoup/Connection$Method;

.field public static final enum HEAD:Lorg/jsoup/Connection$Method;

.field public static final enum OPTIONS:Lorg/jsoup/Connection$Method;

.field public static final enum PATCH:Lorg/jsoup/Connection$Method;

.field public static final enum POST:Lorg/jsoup/Connection$Method;

.field public static final enum PUT:Lorg/jsoup/Connection$Method;

.field public static final enum TRACE:Lorg/jsoup/Connection$Method;


# instance fields
.field private final hasBody:Z


# direct methods
.method private static synthetic $values()[Lorg/jsoup/Connection$Method;
    .registers 3

    .prologue
    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jsoup/Connection$Method;

    const/4 v1, 0x0

    sget-object v2, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/jsoup/Connection$Method;->PUT:Lorg/jsoup/Connection$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/jsoup/Connection$Method;->DELETE:Lorg/jsoup/Connection$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/jsoup/Connection$Method;->PATCH:Lorg/jsoup/Connection$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jsoup/Connection$Method;->OPTIONS:Lorg/jsoup/Connection$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jsoup/Connection$Method;->TRACE:Lorg/jsoup/Connection$Method;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3, v3}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "PUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->PUT:Lorg/jsoup/Connection$Method;

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->DELETE:Lorg/jsoup/Connection$Method;

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "PATCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->PATCH:Lorg/jsoup/Connection$Method;

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "HEAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->OPTIONS:Lorg/jsoup/Connection$Method;

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "TRACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->TRACE:Lorg/jsoup/Connection$Method;

    .line 45
    invoke-static {}, Lorg/jsoup/Connection$Method;->$values()[Lorg/jsoup/Connection$Method;

    move-result-object v0

    sput-object v0, Lorg/jsoup/Connection$Method;->$VALUES:[Lorg/jsoup/Connection$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p3, "hasBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-boolean p3, p0, Lorg/jsoup/Connection$Method;->hasBody:Z

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lorg/jsoup/Connection$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/Connection$Method;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lorg/jsoup/Connection$Method;->$VALUES:[Lorg/jsoup/Connection$Method;

    invoke-virtual {v0}, [Lorg/jsoup/Connection$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/Connection$Method;

    return-object v0
.end method


# virtual methods
.method public final hasBody()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/jsoup/Connection$Method;->hasBody:Z

    return v0
.end method
