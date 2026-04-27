.class public Lcom/bilibili/tv/ui/main/content/MainHotFragment$Companion;
.super Ljava/lang/Object;
.source "MainHotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$Companion;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lcom/bilibili/tv/ui/main/content/MainHotFragment;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    .line 37
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    return-object v0
.end method
