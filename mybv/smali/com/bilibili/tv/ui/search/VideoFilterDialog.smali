.class public Lcom/bilibili/tv/ui/search/VideoFilterDialog;
.super Landroid/app/Dialog;
.source "VideoFilterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/VideoFilterDialog$Builder;,
        Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;,
        Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;,
        Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFilterDialog"


# instance fields
.field private firstFocusView:Landroid/view/View;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private groupsContainer:Landroid/widget/LinearLayout;

.field private onApplyListener:Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->init()V

    .line 40
    return-void
.end method

.method private addGroupView(Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;)V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    const v1, 0x7f0a009a

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groupsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    if-eqz v1, :cond_24

    .line 67
    iget-object v2, p1, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_24
    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    .line 71
    if-eqz v1, :cond_32

    .line 72
    invoke-direct {p0, v1, p1}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->createOptionViews(Landroid/widget/GridLayout;Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;)V

    .line 75
    :cond_32
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groupsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method private createOptionViews(Landroid/widget/GridLayout;Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 81
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 83
    iget-object v1, p2, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->options:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    new-instance v6, Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/bilibili/tv/widget/DrawTextView;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v7, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;

    iget-object v8, p2, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->paramKey:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v8, v1}, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/widget/DrawTextView;->setTag(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v6, v9}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 88
    invoke-virtual {v6, v9}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusableInTouchMode(Z)V

    .line 89
    const/16 v1, 0x11

    invoke-virtual {v6, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setGravity(I)V

    .line 91
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f06016f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 92
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06043f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 93
    new-instance v8, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v8}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 94
    iput v1, v8, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 95
    iput v7, v8, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 96
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f06006e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 97
    invoke-virtual {v8, v1, v1, v1, v1}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 98
    invoke-virtual {v6, v8}, Lcom/bilibili/tv/widget/DrawTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-virtual {v6, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setTextColor(I)V

    .line 101
    invoke-virtual {v6}, Lcom/bilibili/tv/widget/DrawTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 103
    const v1, 0x7f0700e9

    invoke-virtual {v6, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 105
    invoke-virtual {v6, p0}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v6, p0}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->selectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 109
    invoke-virtual {v6, v9}, Lcom/bilibili/tv/widget/DrawTextView;->setSelected(Z)V

    .line 112
    :cond_c7
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->firstFocusView:Landroid/view/View;

    if-nez v0, :cond_cd

    .line 113
    iput-object v6, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->firstFocusView:Landroid/view/View;

    .line 116
    :cond_cd
    invoke-virtual {p1, v6}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 117
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 118
    goto/16 :goto_2b

    .line 119
    :cond_d5
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->requestWindowFeature(I)Z

    .line 44
    const v0, 0x7f0a0099

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->setContentView(I)V

    .line 46
    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groupsContainer:Landroid/widget/LinearLayout;

    .line 47
    const v0, 0x7f0801bd

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    if-eqz v0, :cond_25

    .line 49
    const-string v1, "\u7b5b\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groups:Ljava/util/List;

    .line 53
    return-void
.end method

.method private updateGroupViewSelection(Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 162
    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groupsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_4f

    .line 163
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groupsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    .line 165
    if-eqz v0, :cond_4b

    move v4, v3

    .line 166
    :goto_1e
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_4b

    .line 167
    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 169
    instance-of v6, v1, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;

    if-eqz v6, :cond_47

    .line 170
    check-cast v1, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;

    .line 171
    iget-object v6, v1, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;->paramKey:Ljava/lang/String;

    iget-object v7, p1, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->paramKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 172
    iget-object v1, v1, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;->value:Ljava/lang/String;

    iget-object v6, p1, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->selectedValue:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    .line 166
    :cond_47
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1e

    .line 162
    :cond_4b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 178
    :cond_4f
    return-void
.end method

.method private updateSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;

    .line 153
    iget-object v2, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->paramKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 154
    iput-object p2, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;->selectedValue:Ljava/lang/String;

    .line 155
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->updateGroupViewSelection(Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;)V

    .line 159
    :cond_1f
    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->addGroupView(Lcom/bilibili/tv/ui/search/VideoFilterDialog$FilterGroup;)V

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 132
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;

    if-eqz v1, :cond_1f

    .line 133
    check-cast v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;

    .line 134
    iget-object v1, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;->paramKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OptionTag;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->onApplyListener:Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;

    if-eqz v0, :cond_1c

    .line 137
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->onApplyListener:Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;->onApply(Ljava/util/List;)V

    .line 140
    :cond_1c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->dismiss()V

    .line 142
    :cond_1f
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 146
    if-eqz p2, :cond_5

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 149
    :cond_5
    return-void
.end method

.method public setOnApplyListener(Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->onApplyListener:Lcom/bilibili/tv/ui/search/VideoFilterDialog$OnApplyListener;

    .line 182
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->firstFocusView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/VideoFilterDialog;->firstFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 127
    :cond_c
    return-void
.end method
