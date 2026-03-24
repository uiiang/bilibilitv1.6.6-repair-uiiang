.class Lbl/agb$3;
.super Ljava/lang/Object;
.source "agb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/agb;->setupFilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/agb;

.field final synthetic val$item:Lcom/bilibili/tv/widget/DrawTextView;


# direct methods
.method constructor <init>(Lbl/agb;Lcom/bilibili/tv/widget/DrawTextView;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lbl/agb$3;->this$0:Lbl/agb;

    iput-object p2, p0, Lbl/agb$3;->val$item:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lbl/agb$3;->val$item:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    .line 263
    return-void
.end method
