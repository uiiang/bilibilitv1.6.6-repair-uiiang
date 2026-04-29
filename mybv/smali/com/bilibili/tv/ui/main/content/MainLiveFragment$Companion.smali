.class public Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;
.super Ljava/lang/Object;
.source "MainLiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainLiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lcom/bilibili/tv/ui/main/content/MainLiveFragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    .line 40
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;

    return-object v0
.end method
