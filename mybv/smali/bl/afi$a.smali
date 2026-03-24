.class public final Lbl/afi$a;
.super Lbl/adc$a;
.source "afi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afi$a$C0010a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afi$a$C0010a;


# instance fields
.field private n:Lcom/bilibili/tv/widget/ScalableImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/bilibili/tv/widget/DrawRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2149
    new-instance v0, Lbl/afi$a$C0010a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afi$a$C0010a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afi$a;->Companion:Lbl/afi$a$C0010a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2159
    invoke-direct {p0, p1}, Lbl/adc$a;-><init>(Landroid/view/View;)V

    .line 2160
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2161
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lbl/afi$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lbl/afi$a;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 2162
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lbl/afi$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afi$a;->o:Landroid/widget/TextView;

    .line 2163
    const v0, 0x7f08013d

    invoke-virtual {p0, p1, v0}, Lbl/afi$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afi$a;->p:Landroid/widget/TextView;

    .line 2164
    const v0, 0x7f0800cc

    invoke-virtual {p0, p1, v0}, Lbl/afi$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afi$a;->q:Landroid/widget/TextView;

    .line 2165
    const v0, 0x7f080068

    invoke-virtual {p0, p1, v0}, Lbl/afi$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afi$a;->r:Landroid/widget/TextView;

    move-object v0, p1

    .line 2166
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lbl/afi$a;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 2167
    iget-object v0, p0, Lbl/afi$a;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 2168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2169
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_59

    .line 2170
    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2172
    :cond_59
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2173
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2174
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2178
    instance-of v0, p1, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    if-eqz v0, :cond_a1

    move-object v0, p1

    .line 2179
    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    .line 2180
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->title:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 2181
    iget-object v1, p0, Lbl/afi$a;->o:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2183
    :cond_12
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->indexShow:Ljava/lang/String;

    if-eqz v1, :cond_a2

    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->indexShow:Ljava/lang/String;

    .line 2184
    :goto_18
    iget-object v2, p0, Lbl/afi$a;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2185
    const-string v1, "SearchFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bangumi indexShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->indexShow:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", seasonTypeName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->seasonTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", areas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->areas:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->seasonTypeName:Ljava/lang/String;

    if-eqz v1, :cond_c3

    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->seasonTypeName:Ljava/lang/String;

    .line 2187
    :goto_55
    iget-object v2, p0, Lbl/afi$a;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2188
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->areas:Ljava/lang/String;

    if-eqz v1, :cond_c6

    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->areas:Ljava/lang/String;

    .line 2189
    :goto_60
    iget-object v2, p0, Lbl/afi$a;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2190
    iget-object v1, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->cover:Ljava/lang/String;

    if-eqz v1, :cond_97

    .line 2191
    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->cover:Ljava/lang/String;

    .line 2192
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 2193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2195
    :cond_86
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbl/afi$a;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 2197
    :cond_97
    iget-object v0, p0, Lbl/afi$a;->a:Landroid/view/View;

    .line 2198
    const-string v1, "itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2199
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2201
    :cond_a1
    return-void

    .line 2183
    :cond_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->seasonType:I

    invoke-static {v2}, Lbl/ads;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->area:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_18

    .line 2186
    :cond_c3
    const-string v1, ""

    goto :goto_55

    .line 2188
    :cond_c6
    const-string v1, ""

    goto :goto_60
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2205
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2207
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2208
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2209
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 2210
    instance-of v2, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    if-eqz v2, :cond_1c

    if-nez v1, :cond_1d

    .line 2214
    :cond_1c
    :goto_1c
    return-void

    .line 2213
    :cond_1d
    sget-object v2, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    iget-object v0, v0, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2219
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2220
    instance-of v0, p1, Lbl/afz;

    if-eqz v0, :cond_e

    .line 2221
    check-cast p1, Lbl/afz;

    invoke-interface {p1, p2}, Lbl/afz;->setUpEnabled(Z)V

    .line 2223
    :cond_e
    return-void
.end method
