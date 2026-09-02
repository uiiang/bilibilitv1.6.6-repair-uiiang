.class public Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$Companion;
.super Ljava/lang/Object;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$Companion;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 48
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    return-object v0
.end method
