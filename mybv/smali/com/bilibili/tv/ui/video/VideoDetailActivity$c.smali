.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;
.super Lbl/adc$a;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;


# instance fields
.field private final n:Lcom/bilibili/tv/widget/DrawTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1954
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1962
    invoke-direct {p0, p1}, Lbl/adc$a;-><init>(Landroid/view/View;)V

    .line 1963
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1964
    const v0, 0x7f08014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1965
    if-nez v0, :cond_19

    .line 1966
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.widget.DrawTextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1968
    :cond_19
    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->n:Lcom/bilibili/tv/widget/DrawTextView;

    .line 1969
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->n:Lcom/bilibili/tv/widget/DrawTextView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 1970
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1997
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v0, :cond_34

    move-object v0, p1

    .line 1998
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 1999
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v0, "\u70b9\u51fb\u64ad\u653e"

    .line 2000
    :goto_11
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->n:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2001
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->n:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/widget/DrawTextView;->setTag(Ljava/lang/Object;)V

    .line 2002
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2003
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;->a:Landroid/view/View;

    .line 2004
    const-string v1, "itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2006
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    .line 2007
    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;

    invoke-direct {v2, p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$c$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2031
    :cond_34
    return-void

    .line 1999
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1974
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1975
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1976
    if-nez v2, :cond_13

    .line 1977
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.api.video.BiliVideoDetail.Page"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1980
    :cond_13
    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 1981
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1982
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1983
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 1984
    instance-of v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    if-nez v1, :cond_27

    .line 1985
    const/4 v0, 0x0

    .line 1987
    :cond_27
    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 1988
    if-eqz v0, :cond_3a

    .line 1990
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x2754

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;II)V

    .line 1992
    :cond_3a
    const-string v0, "tv_video_view_click_part"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1993
    return-void
.end method
