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
    .line 4177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const v6, 0x7f0801a1

    const v5, 0x7f080195

    const v4, 0x7f08016a

    const v3, 0x7f080167

    const v2, 0x7f08014d

    .line 4181
    if-nez p1, :cond_12

    .line 4231
    :cond_11
    :goto_11
    return-void

    .line 4184
    :cond_12
    instance-of v0, p1, Lbl/afz;

    if-eqz v0, :cond_56

    move-object v0, p1

    .line 4185
    check-cast v0, Lbl/afz;

    invoke-interface {v0, p2}, Lbl/afz;->setUpEnabled(Z)V

    .line 4191
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 4192
    if-eq v1, v3, :cond_34

    if-eq v1, v4, :cond_34

    if-eq v1, v2, :cond_34

    const v0, 0x7f080241

    if-eq v1, v0, :cond_34

    if-eq v1, v6, :cond_34

    if-eq v1, v5, :cond_34

    const v0, 0x7f0801dc

    if-ne v1, v0, :cond_11

    .line 4197
    :cond_34
    const/4 v0, 0x0

    .line 4198
    if-ne v1, v3, :cond_6e

    .line 4199
    const v0, 0x7f080169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 4213
    :goto_41
    if-eqz v1, :cond_49

    .line 4214
    if-eqz p2, :cond_c2

    const/4 v0, 0x0

    :goto_46
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4216
    :cond_49
    if-nez p2, :cond_11

    .line 4217
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 4186
    :cond_56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-ne v0, v1, :cond_1c

    const v0, 0x7f080127

    .line 4187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_1c

    .line 4189
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    goto :goto_1c

    .line 4200
    :cond_6e
    if-ne v1, v4, :cond_7b

    .line 4201
    const v0, 0x7f08016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_41

    .line 4202
    :cond_7b
    if-ne v1, v2, :cond_88

    .line 4203
    const v0, 0x7f08014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_41

    .line 4204
    :cond_88
    const v2, 0x7f080241

    if-ne v1, v2, :cond_98

    .line 4205
    const v0, 0x7f080243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_41

    .line 4206
    :cond_98
    if-ne v1, v6, :cond_a5

    .line 4207
    const v0, 0x7f0801c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_41

    .line 4208
    :cond_a5
    if-ne v1, v5, :cond_b2

    .line 4209
    const v0, 0x7f080194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_41

    .line 4210
    :cond_b2
    const v2, 0x7f0801dc

    if-ne v1, v2, :cond_c5

    .line 4211
    const v0, 0x7f0801de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_41

    .line 4214
    :cond_c2
    const/16 v0, 0x8

    goto :goto_46

    :cond_c5
    move-object v1, v0

    goto/16 :goto_41
.end method
