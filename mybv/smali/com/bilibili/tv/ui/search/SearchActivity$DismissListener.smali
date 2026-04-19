.class public final Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lbl/agb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DismissListener"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;->INSTANCE:Lcom/bilibili/tv/ui/search/SearchActivity$DismissListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    return-void
.end method


# virtual methods
.method public final a(Lbl/agb;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 469
    invoke-virtual {p1}, Lbl/agb;->dismiss()V

    .line 470
    return-void
.end method
