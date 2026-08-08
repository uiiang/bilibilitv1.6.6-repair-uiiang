.class public final Lbl/afm5$a;
.super Ljava/lang/Object;
.source "afm5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afm5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    return-void
.end method

.method public constructor <init>(Lbl/agb;)V
    .locals 0

    .prologue
    .line 942
    invoke-direct {p0}, Lbl/afm5$a;-><init>()V

    .line 943
    return-void
.end method


# virtual methods
.method public final a()Lbl/afm5;
    .locals 1

    .prologue
    .line 949
    new-instance v0, Lbl/afm5;

    invoke-direct {v0}, Lbl/afm5;-><init>()V

    return-object v0
.end method
