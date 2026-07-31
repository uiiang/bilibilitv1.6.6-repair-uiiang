.class Lbl/afm3$1;
.super Ljava/lang/Object;
.source "afm3.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm3;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afm3;


# direct methods
.method constructor <init>(Lbl/afm3;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lbl/afm3$1;->this$0:Lbl/afm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 130
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v1, p0, Lbl/afm3$1;->this$0:Lbl/afm3;

    invoke-virtual {v1}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u6ce8\u610f\uff1a\u8be5\u6a21\u5f0f\u4e0d\u652f\u6301\u753b\u9762\u8c03\u8282"

    invoke-static {v1, v2}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    :cond_18
    sput v0, Lmybl/BiliFilter;->prefer_videoview:I

    .line 133
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    const-string v2, "prefer_videoview"

    sget v3, Lmybl/BiliFilter;->prefer_videoview:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lbl/abd;->set_personal_config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const/4 v1, 0x2

    if-eq v0, v1, :cond_4c

    .line 137
    iget-object v0, p0, Lbl/afm3$1;->this$0:Lbl/afm3;

    invoke-virtual {v0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_player_menu_config(Landroid/content/Context;)I

    move-result v0

    .line 138
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_4c

    .line 140
    and-int/lit16 v0, v0, -0x2001

    .line 141
    iget-object v1, p0, Lbl/afm3$1;->this$0:Lbl/afm3;

    invoke-virtual {v1}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lbl/abd;->set_player_menu_config(Landroid/content/Context;I)V

    .line 142
    const-string v0, "afm3"

    const-string v1, "\u6e32\u67d3\u89c6\u56fe\u5207\u6362\u5230\u975eTextureView\uff0c\u81ea\u52a8\u53d6\u6d88\u7535\u5b50\u4e66\u83dc\u5355\u9879"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_4c
    return-void
.end method
