.class public Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SideLeftSelectLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const v8, 0x3f8a3d71    # 1.08f

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->getChildCount()I

    move-result v4

    move v2, v3

    .line 33
    :goto_9
    if-ge v2, v4, :cond_46

    .line 34
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 35
    instance-of v0, v1, Lcom/bilibili/tv/widget/ShadowTextView;

    if-eqz v0, :cond_39

    move-object v0, v1

    .line 36
    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    .line 37
    const v5, 0x7f0500a1

    invoke-static {v5}, Lbl/adl;->d(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/ShadowTextView;->setTextColor(I)V

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 33
    :cond_35
    :goto_35
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 39
    :cond_39
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f080126

    if-ne v0, v5, :cond_35

    .line 40
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    .line 43
    :cond_46
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    const v0, 0x7f0700da

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->setBackgroundResource(I)V

    .line 45
    return-void
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 48
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->getChildCount()I

    move-result v4

    move v2, v3

    .line 49
    :goto_8
    if-ge v2, v4, :cond_46

    .line 50
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 51
    instance-of v0, v1, Lcom/bilibili/tv/widget/ShadowTextView;

    if-eqz v0, :cond_38

    move-object v0, v1

    .line 52
    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    .line 53
    const v5, 0x7f0500a7

    invoke-static {v5}, Lbl/adl;->d(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/ShadowTextView;->setTextColor(I)V

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 49
    :cond_34
    :goto_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 55
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f080126

    if-ne v0, v5, :cond_34

    .line 56
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34

    .line 59
    :cond_46
    invoke-virtual {p0, v3}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->setBackgroundResource(I)V

    .line 60
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->getChildCount()I

    move-result v1

    .line 64
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_1b

    .line 65
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080126

    if-ne v3, v4, :cond_18

    .line 67
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 70
    :cond_1b
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    const v0, 0x7f0700d9

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->setBackgroundResource(I)V

    .line 72
    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 76
    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_29

    .line 77
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 78
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 79
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2e

    .line 80
    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v1, v2

    .line 82
    :goto_1b
    if-ge v1, v3, :cond_2e

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 84
    if-eq v4, p0, :cond_26

    .line 85
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 82
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 89
    :cond_29
    if-nez p1, :cond_2e

    .line 90
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->b()V

    .line 92
    :cond_2e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 93
    return-void
.end method
