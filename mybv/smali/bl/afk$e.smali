.class final Lbl/afk$e;
.super Ljava/lang/Object;
.source "afk.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final a:Lbl/afk;

.field final synthetic this$0:Lbl/afk;


# direct methods
.method constructor <init>(Lbl/afk;Lbl/afk;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lbl/afk$e;->this$0:Lbl/afk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lbl/afk$e;->a:Lbl/afk;

    .line 224
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 227
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_9

    .line 228
    check-cast p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 230
    :cond_9
    return-void
.end method
