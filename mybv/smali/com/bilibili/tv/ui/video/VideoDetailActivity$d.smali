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
    .line 3909
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

    .line 3913
    if-nez p1, :cond_12

    .line 3960
    :cond_11
    :goto_11
    return-void

    .line 3916
    :cond_12
    instance-of v0, p1, Lbl/afz;

    if-eqz v0, :cond_51

    move-object v0, p1

    .line 3917
    check-cast v0, Lbl/afz;

    invoke-interface {v0, p2}, Lbl/afz;->setUpEnabled(Z)V

    .line 3923
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3924
    if-eq v1, v3, :cond_2f

    if-eq v1, v4, :cond_2f

    if-eq v1, v2, :cond_2f

    if-eq v1, v6, :cond_2f

    if-eq v1, v5, :cond_2f

    const v0, 0x7f0801dc

    if-ne v1, v0, :cond_11

    .line 3928
    :cond_2f
    const/4 v0, 0x0

    .line 3929
    if-ne v1, v3, :cond_69

    .line 3930
    const v0, 0x7f080169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 3942
    :goto_3c
    if-eqz v1, :cond_44

    .line 3943
    if-eqz p2, :cond_ad

    const/4 v0, 0x0

    :goto_41
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3945
    :cond_44
    if-nez p2, :cond_11

    .line 3946
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 3918
    :cond_51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-ne v0, v1, :cond_1c

    const v0, 0x7f080127

    .line 3919
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_1c

    .line 3921
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    goto :goto_1c

    .line 3931
    :cond_69
    if-ne v1, v4, :cond_76

    .line 3932
    const v0, 0x7f08016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_3c

    .line 3933
    :cond_76
    if-ne v1, v2, :cond_83

    .line 3934
    const v0, 0x7f08014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_3c

    .line 3935
    :cond_83
    if-ne v1, v6, :cond_90

    .line 3936
    const v0, 0x7f0801c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_3c

    .line 3937
    :cond_90
    if-ne v1, v5, :cond_9d

    .line 3938
    const v0, 0x7f080194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_3c

    .line 3939
    :cond_9d
    const v2, 0x7f0801dc

    if-ne v1, v2, :cond_b0

    .line 3940
    const v0, 0x7f0801de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_3c

    .line 3943
    :cond_ad
    const/16 v0, 0x8

    goto :goto_41

    :cond_b0
    move-object v1, v0

    goto :goto_3c
.end method
