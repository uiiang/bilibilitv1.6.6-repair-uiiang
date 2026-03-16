.class public final Lbl/afk$a;
.super Ljava/lang/Object;
.source "afk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lbl/afk$a;-><init>()V

    .line 180
    return-void
.end method


# virtual methods
.method public final a()Lbl/afk;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lbl/afk;

    invoke-direct {v0}, Lbl/afk;-><init>()V

    return-object v0
.end method
