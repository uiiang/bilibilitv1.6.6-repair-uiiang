.class public Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;
.super Lbl/aay;
.source "AuthSpaceMenuRight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$FocusHandler;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$KeyEventHandler;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/aay",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Z

.field private d:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$a;

.field private main_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Ljava/lang/String;

.field private order_id:I

.field private order_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Lbl/aay;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->c:Z

    .line 44
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_id:I

    .line 45
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->q:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->c:Z

    .line 51
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_id:I

    .line 52
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->q:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lbl/aay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->c:Z

    .line 58
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_id:I

    .line 59
    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->q:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e()V

    return-void
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->c:Z

    return p1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 179
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$2;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$2;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->r:Ljava/lang/Runnable;

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->main_list:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_list:Ljava/util/List;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(I)Lbl/aaw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lbl/aaw",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 90
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 91
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 92
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->b(I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;Landroid/content/Context;II)V

    .line 98
    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$KeyEventHandler;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$KeyEventHandler;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V

    invoke-virtual {v0, v1}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 99
    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$FocusHandler;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$FocusHandler;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V

    invoke-virtual {v0, v1}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 100
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_d

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 267
    :cond_d
    invoke-super {p0}, Lbl/aay;->a()V

    .line 268
    return-void
.end method

.method public final a(FIIFLandroid/view/View;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    move-object v0, p5

    check-cast v0, Landroid/widget/TextView;

    .line 152
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 153
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 154
    const/4 v1, 0x2

    if-ne p3, v1, :cond_19

    .line 155
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    :cond_19
    :goto_19
    return-void

    .line 161
    :cond_1a
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e()V

    move v3, v4

    .line 162
    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_34

    .line 163
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1e

    .line 167
    :cond_34
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4b

    .line 168
    invoke-virtual {v0, v4, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->q:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 170
    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 173
    :cond_4b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 174
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public bridge synthetic a(IILbl/aaz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(IILbl/aaz;Ljava/lang/String;)V

    return-void
.end method

.method public a(IILbl/aaz;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->f()Z

    move-result v0

    if-nez v0, :cond_11

    const v0, 0x7f080127

    invoke-virtual {p3, v0}, Lbl/aaz;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_12

    .line 84
    :cond_11
    :goto_11
    return-void

    .line 83
    :cond_12
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 321
    :goto_6
    return-void

    .line 274
    :cond_7
    if-eqz p1, :cond_34

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_24

    .line 276
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a:Landroid/view/animation/Animation;

    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$3;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 293
    :cond_24
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->c()V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->c:Z

    goto :goto_6

    .line 299
    :cond_34
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_4f

    .line 300
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->b:Landroid/view/animation/Animation;

    .line 301
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$4;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 318
    :cond_4f
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 319
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    invoke-static {p0}, Lbl/aap;->b(Landroid/view/View;)V

    goto :goto_6
.end method

.method public a(II)Z
    .locals 3

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Lbl/aay;->a(II)Z

    move-result v0

    .line 241
    if-nez p2, :cond_e

    .line 242
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_id:I

    invoke-virtual {p0, v1, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e(II)V

    .line 246
    :goto_d
    return v0

    .line 244
    :cond_e
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e(II)V

    goto :goto_d
.end method

.method public bridge synthetic a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 23
    move-object v5, p5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 193
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e()V

    .line 194
    invoke-super/range {p0 .. p5}, Lbl/aay;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 195
    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->q:I

    .line 196
    invoke-virtual {p0, v1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->d(II)Landroid/view/View;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_16

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_16
    move v0, v1

    .line 230
    :goto_17
    return v0

    .line 202
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->d:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$a;

    if-nez v0, :cond_1e

    move v0, v2

    .line 203
    goto :goto_17

    .line 205
    :cond_1e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->f()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v2

    .line 206
    goto :goto_17

    .line 209
    :cond_26
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_list:Ljava/util/List;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_62

    .line 210
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_id:I

    if-eq p2, v0, :cond_4f

    .line 212
    const-string v0, "all"

    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->mode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 213
    packed-switch p2, :pswitch_data_64

    .line 217
    const-string v0, "pubdate"

    .line 223
    :goto_45
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->d:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$a;

    invoke-interface {v3, p2, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$a;->onOrderChanged(ILjava/lang/String;)V

    .line 224
    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_id:I

    .line 225
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(Z)V

    :cond_4f
    move v0, v1

    .line 227
    goto :goto_17

    .line 214
    :pswitch_51
    const-string v0, "pubdate"

    goto :goto_45

    .line 215
    :pswitch_54
    const-string v0, "click"

    goto :goto_45

    .line 216
    :pswitch_57
    const-string v0, "stow"

    goto :goto_45

    .line 220
    :cond_5a
    if-ne p2, v1, :cond_5f

    const-string v0, "true"

    goto :goto_45

    :cond_5f
    const-string v0, "false"

    goto :goto_45

    :cond_62
    move v0, v1

    .line 230
    goto :goto_17

    .line 213
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_51
        :pswitch_54
        :pswitch_57
    .end packed-switch
.end method

.method public final a(Lbl/aax;Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 129
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2b

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 130
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e()V

    .line 131
    const/16 v1, 0x15

    if-ne p5, v1, :cond_2c

    .line 132
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(Landroid/view/View;)I

    move-result v1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lbl/aax;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v2, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move v0, v6

    .line 147
    :cond_2b
    :goto_2b
    return v0

    .line 134
    :cond_2c
    const/16 v1, 0x16

    if-ne p5, v1, :cond_47

    .line 135
    invoke-virtual {p0, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(Landroid/view/View;)I

    move-result v1

    .line 136
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 137
    iget v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->q:I

    invoke-virtual {p0, v6, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->e(II)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->removeViewAt(I)V

    :cond_3f
    :goto_3f
    move v0, v6

    .line 142
    goto :goto_2b

    .line 139
    :cond_41
    if-ne v1, v6, :cond_3f

    .line 140
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->a(Z)V

    goto :goto_3f

    .line 143
    :cond_47
    if-nez p4, :cond_4d

    const/16 v1, 0x13

    if-eq p5, v1, :cond_5b

    :cond_4d
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p4, v1, :cond_2b

    const/16 v1, 0x14

    if-ne p5, v1, :cond_2b

    :cond_5b
    move v0, v6

    .line 144
    goto :goto_2b
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const v0, 0x7f0a008e

    :goto_6
    return v0

    :cond_7
    const v0, 0x7f0a008f

    goto :goto_6
.end method

.method public b(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 252
    if-le p1, v0, :cond_5

    .line 253
    const/4 v0, 0x0

    .line 258
    :goto_4
    return-object v0

    .line 255
    :cond_5
    if-ge p1, v0, :cond_a

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->main_list:Ljava/util/List;

    goto :goto_4

    .line 258
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_list:Ljava/util/List;

    goto :goto_4
.end method

.method public b(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 329
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->main_list:Ljava/util/List;

    .line 330
    return-void
.end method

.method public init_order(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 333
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_list:Ljava/util/List;

    .line 334
    iput p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->order_id:I

    .line 335
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->c:Z

    return v0
.end method

.method public setListener(Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->d:Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight$a;

    .line 64
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceMenuRight;->mode:Ljava/lang/String;

    .line 68
    return-void
.end method
