.class final Lbl/afk$b;
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
    name = "b"
.end annotation


# instance fields
.field final a:Lbl/afk;

.field final synthetic this$0:Lbl/afk;


# direct methods
.method constructor <init>(Lbl/afk;Lbl/afk;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lbl/afk$b;->this$0:Lbl/afk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p2, p0, Lbl/afk$b;->a:Lbl/afk;

    .line 193
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lbl/afk$b;->a:Lbl/afk;

    invoke-static {v0}, Lbl/afk;->a(Lbl/afk;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 197
    return-void
.end method
