.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 1726
    if-nez p1, :cond_3

    .line 1736
    :cond_2
    :goto_2
    return-void

    .line 1729
    :cond_3
    instance-of v0, p1, Lbl/afz;

    if-eqz v0, :cond_d

    .line 1730
    check-cast p1, Lbl/afz;

    invoke-interface {p1, p2}, Lbl/afz;->setUpEnabled(Z)V

    goto :goto_2

    .line 1731
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-ne v0, v1, :cond_2

    const v0, 0x7f080127

    .line 1732
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_2

    .line 1734
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    goto :goto_2
.end method
