.class Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;
.super Ljava/lang/Object;
.source "HistorySideActivity.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistorySideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DismissListener"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;->INSTANCE:Lcom/bilibili/tv/ui/history/HistorySideActivity$DismissListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/agb;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 203
    return-void
.end method
