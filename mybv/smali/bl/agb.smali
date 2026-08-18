.class public Lbl/agb;
.super Landroid/app/Dialog;
.source "agb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/agb$a;,
        Lbl/agb$GroupData;,
        Lbl/agb$TagData;,
        Lbl/agb$b;,
        Lbl/agb$GroupClickListener;,
        Lbl/agb$c;
    }
.end annotation


# static fields
.field public static final TYPE_EXIT:I = 0x1


# instance fields
.field private builder:Lbl/agb$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lbl/agb$a;)V
    .locals 1

    .prologue
    .line 45
    # getter for: Lbl/agb$a;->activity:Landroid/app/Activity;
    invoke-static {p1}, Lbl/agb$a;->access$000(Lbl/agb$a;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lbl/agb;->builder:Lbl/agb$a;

    .line 47
    return-void
.end method

.method static synthetic access$700(Lbl/agb;Landroid/widget/GridLayout;Lcom/bilibili/tv/widget/DrawTextView;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lbl/agb;->updateGroupSelection(Landroid/widget/GridLayout;Lcom/bilibili/tv/widget/DrawTextView;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$800(Lbl/agb;)Lbl/agb$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    return-object v0
.end method

.method private findFirstDrawTextView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 309
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_5

    .line 321
    :goto_4
    return-object p1

    .line 312
    :cond_5
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 313
    check-cast p1, Landroid/view/ViewGroup;

    .line 314
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lbl/agb;->findFirstDrawTextView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_1e

    move-object p1, v1

    .line 317
    goto :goto_4

    .line 314
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 321
    :cond_21
    const/4 p1, 0x0

    goto :goto_4
.end method

.method private setupExitDialog()V
    .locals 6

    .prologue
    const v5, 0x7f0700e7

    const/16 v4, 0x8

    .line 62
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lbl/agb$a;->access$000(Lbl/agb$a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 63
    invoke-virtual {p0, v2}, Lbl/agb;->setContentView(Landroid/view/View;)V

    .line 65
    const v0, 0x7f080132

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    const v1, 0x7f080061

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    iget-object v3, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->title:Ljava/lang/String;
    invoke-static {v3}, Lbl/agb$a;->access$200(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 70
    iget-object v3, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->title:Ljava/lang/String;
    invoke-static {v3}, Lbl/agb$a;->access$200(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_46
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->confirmText:Ljava/lang/String;
    invoke-static {v0}, Lbl/agb$a;->access$300(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 74
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->confirmText:Ljava/lang/String;
    invoke-static {v0}, Lbl/agb$a;->access$300(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_57
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->cancelText:Ljava/lang/String;
    invoke-static {v0}, Lbl/agb$a;->access$400(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 80
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->cancelText:Ljava/lang/String;
    invoke-static {v0}, Lbl/agb$a;->access$400(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_68
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    instance-of v0, v1, Lbl/afz;

    if-eqz v0, :cond_7e

    move-object v0, v1

    .line 91
    check-cast v0, Lbl/afz;

    invoke-interface {v0, v5}, Lbl/afz;->setUpDrawable(I)V

    .line 93
    :cond_7e
    instance-of v0, v2, Lbl/afz;

    if-eqz v0, :cond_88

    move-object v0, v2

    .line 94
    check-cast v0, Lbl/afz;

    invoke-interface {v0, v5}, Lbl/afz;->setUpDrawable(I)V

    .line 97
    :cond_88
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->focusCancel:Z
    invoke-static {v0}, Lbl/agb$a;->access$500(Lbl/agb$a;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 98
    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 102
    :goto_93
    return-void

    .line 76
    :cond_94
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_57

    .line 82
    :cond_98
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_68

    .line 100
    :cond_9c
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_93
.end method

.method private setupFilterDialog()V
    .locals 35

    .prologue
    .line 105
    const v4, 0x7f06006e

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v15

    .line 106
    const v4, 0x7f060299

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v16

    .line 107
    const v4, 0x7f0600de

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v12

    .line 108
    const v4, 0x7f0500a7

    invoke-static {v4}, Lbl/adl;->d(I)I

    move-result v19

    .line 109
    const v4, 0x7f0500aa

    invoke-static {v4}, Lbl/adl;->d(I)I

    move-result v20

    .line 110
    const v4, 0x7f06018f

    invoke-static {v4}, Lbl/adl;->a(I)F

    move-result v21

    .line 111
    const v4, 0x7f0601d2

    invoke-static {v4}, Lbl/adl;->a(I)F

    move-result v22

    .line 113
    new-instance v23, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lbl/agb;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const v4, 0x7f05002b

    invoke-static {v4}, Lbl/adl;->d(I)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 120
    new-instance v24, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lbl/agb;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    const v4, 0x7f06006e

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    const v5, 0x7f06006e

    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v5

    const v6, 0x7f06006e

    .line 123
    invoke-static {v6}, Lbl/adl;->b(I)I

    move-result v6

    const v7, 0x7f06006e

    invoke-static {v7}, Lbl/adl;->b(I)I

    move-result v7

    .line 122
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 125
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    const/16 v5, 0xd

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 135
    const/4 v13, 0x0

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->groups:Ljava/util/List;
    invoke-static {v4}, Lbl/agb$a;->access$600(Lbl/agb$a;)Ljava/util/List;

    move-result-object v28

    .line 137
    if-eqz v28, :cond_1c7

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v18, v4

    .line 139
    :goto_b8
    if-lez v18, :cond_2f8

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->title:Ljava/lang/String;
    invoke-static {v4}, Lbl/agb$a;->access$200(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_100

    move-object/from16 v0, p0

    iget-object v4, v0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->title:Ljava/lang/String;
    invoke-static {v4}, Lbl/agb$a;->access$200(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_100

    .line 141
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lbl/agb;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->title:Ljava/lang/String;
    invoke-static {v5}, Lbl/agb$a;->access$200(Lbl/agb$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    :cond_100
    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_103
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2f8

    .line 155
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbl/agb$GroupData;

    .line 157
    const/4 v5, 0x1

    move/from16 v0, v18

    if-le v0, v5, :cond_158

    iget-object v5, v4, Lbl/agb$GroupData;->title:Ljava/lang/String;

    if-eqz v5, :cond_158

    iget-object v5, v4, Lbl/agb$GroupData;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_158

    .line 158
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lbl/agb;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    iget-object v6, v4, Lbl/agb$GroupData;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    const/4 v6, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 162
    const/4 v6, 0x0

    const v7, 0x7f0600de

    invoke-static {v7}, Lbl/adl;->b(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    :cond_158
    new-instance v29, Landroid/widget/GridLayout;

    invoke-virtual/range {p0 .. p0}, Lbl/agb;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 172
    const/4 v5, 0x3

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 173
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 174
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 178
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v5, v4, Lbl/agb$GroupData;->options:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_2f6

    .line 182
    const/4 v5, 0x0

    .line 183
    new-instance v7, Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual/range {p0 .. p0}, Lbl/agb;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/bilibili/tv/widget/DrawTextView;-><init>(Landroid/content/Context;)V

    .line 184
    const/4 v6, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v6, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setTextSize(IF)V

    .line 185
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v6, v4, Lbl/agb$GroupData;->options:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v5

    :goto_1ab
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1cc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 190
    invoke-virtual {v7, v5}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Lcom/bilibili/tv/widget/DrawTextView;->measure(II)V

    .line 192
    invoke-virtual {v7}, Lcom/bilibili/tv/widget/DrawTextView;->getMeasuredWidth()I

    move-result v5

    .line 193
    if-le v5, v6, :cond_317

    :goto_1c5
    move v6, v5

    .line 196
    goto :goto_1ab

    .line 137
    :cond_1c7
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_b8

    .line 197
    :cond_1cc
    const v5, 0x7f06010a

    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v5

    add-int/2addr v5, v6

    .line 198
    const v6, 0x7f0600df

    invoke-static {v6}, Lbl/adl;->b(I)I

    move-result v6

    if-ge v5, v6, :cond_314

    .line 199
    const v5, 0x7f0600df

    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v5

    move v7, v5

    .line 201
    :goto_1e5
    const v5, 0x7f06031f

    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v30

    .line 203
    const/4 v8, 0x0

    .line 204
    const/4 v9, 0x0

    .line 205
    const/4 v5, 0x0

    .line 206
    iget-object v6, v4, Lbl/agb$GroupData;->options:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    move v6, v5

    move-object v11, v8

    :goto_1fb
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c8

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 207
    add-int/lit8 v10, v6, 0x1

    .line 208
    new-instance v8, Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual/range {p0 .. p0}, Lbl/agb;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/bilibili/tv/widget/DrawTextView;-><init>(Landroid/content/Context;)V

    .line 209
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 211
    new-instance v32, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct/range {v32 .. v32}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 212
    move-object/from16 v0, v32

    iput v7, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 213
    move/from16 v0, v30

    move-object/from16 v1, v32

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 215
    add-int/lit8 v6, v10, -0x1

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_2bc

    move v14, v15

    .line 216
    :goto_22c
    const/4 v6, 0x3

    if-le v10, v6, :cond_2c0

    move v6, v12

    .line 217
    :goto_230
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v14, v6, v1, v2}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 218
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    const/16 v6, 0x11

    invoke-virtual {v8, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setGravity(I)V

    .line 221
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setTextColor(I)V

    .line 222
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusableInTouchMode(Z)V

    .line 223
    invoke-virtual {v8}, Lcom/bilibili/tv/widget/DrawTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 224
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v8, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-boolean v6, v4, Lbl/agb$GroupData;->useKeyAsTag:Z

    if-eqz v6, :cond_2c3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 226
    :goto_26a
    new-instance v14, Lbl/agb$TagData;

    move/from16 v0, v17

    invoke-direct {v14, v0, v6}, Lbl/agb$TagData;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v14}, Lcom/bilibili/tv/widget/DrawTextView;->setTag(Ljava/lang/Object;)V

    .line 229
    new-instance v6, Lbl/agb$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v6, v0, v1, v2}, Lbl/agb$1;-><init>(Lbl/agb;Ljava/util/List;I)V

    invoke-virtual {v8, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 242
    new-instance v6, Lbl/agb$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v17

    move-object/from16 v3, v27

    invoke-direct {v6, v0, v1, v2, v3}, Lbl/agb$2;-><init>(Lbl/agb;Ljava/util/List;ILjava/util/List;)V

    invoke-virtual {v8, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v6, 0x7f0700e9

    invoke-virtual {v8, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 255
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 257
    const/4 v6, 0x1

    if-ne v10, v6, :cond_2a1

    move-object v11, v8

    .line 261
    :cond_2a1
    iget-object v6, v4, Lbl/agb$GroupData;->selectedValue:Ljava/lang/Object;

    if-eqz v6, :cond_312

    .line 262
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_312

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v4, Lbl/agb$GroupData;->selectedValue:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_312

    move-object v5, v8

    :goto_2b8
    move v6, v10

    move-object v9, v5

    .line 265
    goto/16 :goto_1fb

    :cond_2bc
    move/from16 v14, v16

    .line 215
    goto/16 :goto_22c

    .line 216
    :cond_2c0
    const/4 v6, 0x0

    goto/16 :goto_230

    .line 225
    :cond_2c3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    goto :goto_26a

    .line 267
    :cond_2c8
    if-eqz v9, :cond_2ee

    .line 268
    :goto_2ca
    if-eqz v9, :cond_2f0

    .line 269
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    .line 270
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    if-nez v13, :cond_2f6

    .line 273
    invoke-virtual {v9}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    .line 274
    const/4 v4, 0x1

    .line 281
    :goto_2e0
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move v13, v4

    goto/16 :goto_103

    :cond_2ee
    move-object v9, v11

    .line 267
    goto :goto_2ca

    .line 277
    :cond_2f0
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f6
    move v4, v13

    goto :goto_2e0

    .line 285
    :cond_2f8
    if-nez v13, :cond_307

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lbl/agb;->findFirstDrawTextView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 287
    if-eqz v4, :cond_307

    .line 288
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 292
    :cond_307
    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lbl/agb;->setContentView(Landroid/view/View;)V

    .line 294
    return-void

    :cond_312
    move-object v5, v9

    goto :goto_2b8

    :cond_314
    move v7, v5

    goto/16 :goto_1e5

    :cond_317
    move v5, v6

    goto/16 :goto_1c5
.end method

.method private updateGroupSelection(Landroid/widget/GridLayout;Lcom/bilibili/tv/widget/DrawTextView;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout;",
            "Lcom/bilibili/tv/widget/DrawTextView;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/widget/DrawTextView;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    move v1, v2

    :goto_2
    invoke-virtual {p1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 299
    invoke-virtual {p1, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 300
    instance-of v3, v0, Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v3, :cond_18

    .line 301
    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 302
    if-ne v0, p2, :cond_1c

    const/4 v3, 0x1

    :goto_15
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    .line 298
    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1c
    move v3, v2

    .line 302
    goto :goto_15

    .line 305
    :cond_1e
    invoke-interface {p3, p4, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 327
    const v1, 0x7f08004b

    if-ne v0, v1, :cond_1b

    .line 328
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->cancelClickListener:Lbl/agb$b;
    invoke-static {v0}, Lbl/agb$a;->access$1000(Lbl/agb$a;)Lbl/agb$b;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 329
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->cancelClickListener:Lbl/agb$b;
    invoke-static {v0}, Lbl/agb$a;->access$1000(Lbl/agb$a;)Lbl/agb$b;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lbl/agb$b;->a(Lbl/agb;Landroid/view/View;)V

    .line 336
    :cond_1a
    :goto_1a
    return-void

    .line 331
    :cond_1b
    const v1, 0x7f080061

    if-ne v0, v1, :cond_1a

    .line 332
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->confirmClickListener:Lbl/agb$b;
    invoke-static {v0}, Lbl/agb$a;->access$1100(Lbl/agb$a;)Lbl/agb$b;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 333
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->confirmClickListener:Lbl/agb$b;
    invoke-static {v0}, Lbl/agb$a;->access$1100(Lbl/agb$a;)Lbl/agb$b;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lbl/agb$b;->a(Lbl/agb;Landroid/view/View;)V

    goto :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0, v1}, Lbl/agb;->requestWindowFeature(I)Z

    .line 54
    iget-object v0, p0, Lbl/agb;->builder:Lbl/agb$a;

    # getter for: Lbl/agb$a;->type:I
    invoke-static {v0}, Lbl/agb$a;->access$100(Lbl/agb$a;)I

    move-result v0

    if-ne v0, v1, :cond_13

    .line 55
    invoke-direct {p0}, Lbl/agb;->setupExitDialog()V

    .line 59
    :goto_12
    return-void

    .line 57
    :cond_13
    invoke-direct {p0}, Lbl/agb;->setupFilterDialog()V

    goto :goto_12
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08004b

    if-eq v0, v1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080061

    if-ne v0, v1, :cond_1b

    .line 341
    :cond_12
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_1b

    .line 342
    check-cast p1, Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    .line 345
    :cond_1b
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 350
    invoke-virtual {p0}, Lbl/agb;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 351
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/MainApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 354
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 355
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 356
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 357
    return-void
.end method
