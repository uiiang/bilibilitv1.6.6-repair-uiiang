.class public abstract Lbl/wx;
.super Landroid/widget/FrameLayout;
.source "wx.java"

# interfaces
.implements Lbl/ws;


# static fields
.field protected static a:J


# instance fields
.field protected A:Lbl/wv;

.field private B:Z

.field private C:Landroid/os/Handler;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:I

.field protected h:I

.field protected i:F

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Landroid/content/Context;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:[Ljava/lang/Object;

.field protected t:Ljava/io/File;

.field protected u:Landroid/view/ViewGroup;

.field protected v:Lbl/wt;

.field protected w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected x:Landroid/view/View;

.field protected y:Landroid/widget/ImageView;

.field protected z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v1, p0, Lbl/wx;->b:Z

    .line 64
    iput-boolean v1, p0, Lbl/wx;->c:Z

    .line 65
    iput-boolean v2, p0, Lbl/wx;->d:Z

    .line 66
    iput-boolean v1, p0, Lbl/wx;->e:Z

    .line 67
    iput-boolean v2, p0, Lbl/wx;->B:Z

    .line 68
    iput-boolean v2, p0, Lbl/wx;->f:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lbl/wx;->g:I

    .line 70
    iput v1, p0, Lbl/wx;->h:I

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbl/wx;->i:F

    .line 72
    iput-boolean v2, p0, Lbl/wx;->j:Z

    .line 73
    iput-boolean v1, p0, Lbl/wx;->k:Z

    .line 74
    iput-boolean v1, p0, Lbl/wx;->l:Z

    .line 75
    iput-boolean v1, p0, Lbl/wx;->m:Z

    .line 76
    iput-boolean v1, p0, Lbl/wx;->n:Z

    .line 77
    iput-boolean v1, p0, Lbl/wx;->o:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbl/wx;->w:Ljava/util/Map;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wx;->z:Landroid/graphics/Bitmap;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wx;->C:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    iput-boolean v1, p0, Lbl/wx;->b:Z

    .line 109
    iput-boolean v1, p0, Lbl/wx;->c:Z

    .line 110
    iput-boolean v2, p0, Lbl/wx;->d:Z

    .line 111
    iput-boolean v1, p0, Lbl/wx;->e:Z

    .line 112
    iput-boolean v2, p0, Lbl/wx;->B:Z

    .line 113
    iput-boolean v2, p0, Lbl/wx;->f:Z

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lbl/wx;->g:I

    .line 115
    iput v1, p0, Lbl/wx;->h:I

    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbl/wx;->i:F

    .line 117
    iput-boolean v2, p0, Lbl/wx;->j:Z

    .line 118
    iput-boolean v1, p0, Lbl/wx;->k:Z

    .line 119
    iput-boolean v1, p0, Lbl/wx;->l:Z

    .line 120
    iput-boolean v1, p0, Lbl/wx;->m:Z

    .line 121
    iput-boolean v1, p0, Lbl/wx;->n:Z

    .line 122
    iput-boolean v1, p0, Lbl/wx;->o:Z

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbl/wx;->w:Ljava/util/Map;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wx;->z:Landroid/graphics/Bitmap;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wx;->C:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    iput-boolean v1, p0, Lbl/wx;->b:Z

    .line 131
    iput-boolean v1, p0, Lbl/wx;->c:Z

    .line 132
    iput-boolean v2, p0, Lbl/wx;->d:Z

    .line 133
    iput-boolean v1, p0, Lbl/wx;->e:Z

    .line 134
    iput-boolean v2, p0, Lbl/wx;->B:Z

    .line 135
    iput-boolean v2, p0, Lbl/wx;->f:Z

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lbl/wx;->g:I

    .line 137
    iput v1, p0, Lbl/wx;->h:I

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbl/wx;->i:F

    .line 139
    iput-boolean v2, p0, Lbl/wx;->j:Z

    .line 140
    iput-boolean v1, p0, Lbl/wx;->k:Z

    .line 141
    iput-boolean v1, p0, Lbl/wx;->l:Z

    .line 142
    iput-boolean v1, p0, Lbl/wx;->m:Z

    .line 143
    iput-boolean v1, p0, Lbl/wx;->n:Z

    .line 144
    iput-boolean v1, p0, Lbl/wx;->o:Z

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbl/wx;->w:Ljava/util/Map;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wx;->z:Landroid/graphics/Bitmap;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wx;->C:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    iput-boolean v1, p0, Lbl/wx;->b:Z

    .line 86
    iput-boolean v1, p0, Lbl/wx;->c:Z

    .line 87
    iput-boolean v2, p0, Lbl/wx;->d:Z

    .line 88
    iput-boolean v1, p0, Lbl/wx;->e:Z

    .line 89
    iput-boolean v2, p0, Lbl/wx;->B:Z

    .line 90
    iput-boolean v2, p0, Lbl/wx;->f:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lbl/wx;->g:I

    .line 92
    iput v1, p0, Lbl/wx;->h:I

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbl/wx;->i:F

    .line 94
    iput-boolean v2, p0, Lbl/wx;->j:Z

    .line 95
    iput-boolean v1, p0, Lbl/wx;->k:Z

    .line 96
    iput-boolean v1, p0, Lbl/wx;->l:Z

    .line 97
    iput-boolean v1, p0, Lbl/wx;->m:Z

    .line 98
    iput-boolean v1, p0, Lbl/wx;->n:Z

    .line 99
    iput-boolean v1, p0, Lbl/wx;->o:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbl/wx;->w:Ljava/util/Map;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/wx;->z:Landroid/graphics/Bitmap;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/wx;->C:Landroid/os/Handler;

    .line 103
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lbl/wx;->k:Z

    .line 104
    return-void
.end method

.method private getViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lbl/wx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public varargs a(Ljava/lang/String;ZLjava/io/File;[Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 163
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lbl/wx;->a(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs a(Ljava/lang/String;Z[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, v0, p3}, Lbl/wx;->a(Ljava/lang/String;ZLjava/io/File;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lbl/wx;->a(Ljava/lang/String;Z[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lbl/wx;->i:F

    return v0
.end method

.method protected abstract h()V
.end method

.method public setFullscreen(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lbl/wx;->k:Z

    .line 168
    return-void
.end method

.method public setHideKey(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lbl/wx;->d:Z

    .line 203
    return-void
.end method

.method public setLockLand(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lbl/wx;->l:Z

    .line 191
    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lbl/wx;->m:Z

    .line 176
    return-void
.end method

.method public setNeedShowWifiTip(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lbl/wx;->f:Z

    .line 207
    return-void
.end method

.method public setRotateViewAuto(Z)V
    .locals 1

    .prologue
    .line 183
    iput-boolean p1, p0, Lbl/wx;->j:Z

    .line 184
    iget-object v0, p0, Lbl/wx;->A:Lbl/wv;

    if-eqz v0, :cond_b

    .line 185
    iget-object v0, p0, Lbl/wx;->A:Lbl/wv;

    invoke-virtual {v0, p1}, Lbl/wv;->a(Z)V

    .line 187
    :cond_b
    return-void
.end method

.method public setShowFullAnimation(Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lbl/wx;->B:Z

    .line 172
    return-void
.end method

.method protected abstract setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
.end method

.method public setSpeed(F)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Lbl/wx;->i:F

    .line 199
    return-void
.end method

.method protected abstract setStateAndUi(I)V
.end method

.method public setVideoPlayCallBack(Lbl/wt;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lbl/wx;->v:Lbl/wt;

    .line 180
    return-void
.end method
