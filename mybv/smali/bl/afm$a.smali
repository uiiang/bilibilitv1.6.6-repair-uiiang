.class public final Lbl/afm$a;
.super Ljava/lang/Object;
.source "afm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lbl/afm$a;-><init>()V

    .line 197
    return-void
.end method


# virtual methods
.method public final a()Lbl/afm;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lbl/afm;

    invoke-direct {v0}, Lbl/afm;-><init>()V

    return-object v0
.end method
