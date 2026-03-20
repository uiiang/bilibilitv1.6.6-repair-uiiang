.class public Lcom/bilibili/tv/player/widget/PlayerSeekBar;
.super Landroid/widget/LinearLayout;
.source "PlayerSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerSeekBar_java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/SeekBar;

.field private c:Z

.field private d:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 23
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 29
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 35
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 42
    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 44
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 62
    :cond_4
    :goto_4
    return-void

    .line 50
    :cond_5
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/bilibili/tv/player/widget/PlayerSeekBar$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar$1;-><init>(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 61
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_4
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_e
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/player/widget/PlayerSeekBar;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/player/widget/PlayerSeekBar;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(I)V

    return-void
.end method

.method private b(I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x2

    .line 71
    iget-boolean v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    if-nez v1, :cond_e

    .line 72
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_d
    return-void

    .line 75
    :cond_e
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 77
    int-to-float v2, p1

    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 78
    iget-object v3, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 79
    iget-object v4, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 80
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 81
    float-to-int v2, v2

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    .line 83
    if-gez v2, :cond_77

    move v1, v0

    .line 88
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    if-nez v0, :cond_6f

    .line 90
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    :cond_6f
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 93
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 85
    :cond_77
    if-gt v2, v1, :cond_60

    move v1, v2

    goto :goto_60
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 143
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 144
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a()V

    .line 99
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 102
    if-eqz p3, :cond_5

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    .line 105
    :cond_5
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(I)V

    .line 106
    invoke-direct {p0, p2}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b(I)V

    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_14

    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 110
    :cond_14
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 116
    :cond_9
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 122
    :cond_9
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->c:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 127
    return-void

    .line 125
    :cond_e
    const/16 v0, 0x8

    goto :goto_7
.end method

.method public setMax(I)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 137
    :cond_9
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 131
    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .prologue
    .line 147
    const-string v0, "PlayerSeekBar_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress called with progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->a(IZ)V

    .line 149
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 3

    .prologue
    .line 152
    const-string v0, "PlayerSeekBar_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecondaryProgress called with secondaryProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_21

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 156
    :cond_21
    return-void
.end method
