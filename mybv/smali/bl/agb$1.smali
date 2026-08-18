.class Lbl/agb$1;
.super Ljava/lang/Object;
.source "agb.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$fi:I

.field final synthetic val$groupSelectedViews:Ljava/util/List;


# direct methods
.method constructor <init>(Lbl/agb;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 229
    iput-object p1, p0, Lbl/agb$1;->this$0:Lbl/agb;

    iput-object p2, p0, Lbl/agb$1;->val$groupSelectedViews:Ljava/util/List;

    iput p3, p0, Lbl/agb$1;->val$fi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 232
    check-cast p1, Lcom/bilibili/tv/widget/DrawTextView;

    .line 233
    if-eqz p2, :cond_9

    .line 234
    invoke-virtual {p1, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    .line 239
    :goto_8
    return-void

    .line 236
    :cond_9
    iget-object v0, p0, Lbl/agb$1;->val$groupSelectedViews:Ljava/util/List;

    iget v2, p0, Lbl/agb$1;->val$fi:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 237
    if-ne p1, v0, :cond_1a

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    goto :goto_8

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method
