.class Lbl/afm3$2;
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
    .line 158
    iput-object p1, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 161
    .line 162
    const v4, 0x7f0801e5

    if-ne p2, v4, :cond_23

    .line 167
    :cond_9
    :goto_9
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-static {v4, v0}, Lbl/abd;->set_cdn_preference(Landroid/content/Context;I)V

    .line 168
    iget-object v4, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    # invokes: Lbl/afm3;->updateCdnCustomLayoutVisibility(I)V
    invoke-static {v4, v0}, Lbl/afm3;->access$000(Lbl/afm3;I)V

    .line 170
    if-ne v0, v1, :cond_38

    .line 171
    iget-object v0, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    invoke-virtual {v0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "CDN\u504f\u597d\uff1abilivideo\u7ebf\u8def\u4f18\u5148"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    :goto_22
    return-void

    .line 163
    :cond_23
    const v4, 0x7f0801e6

    if-ne p2, v4, :cond_2a

    move v0, v1

    goto :goto_9

    .line 164
    :cond_2a
    const v4, 0x7f0801e7

    if-ne p2, v4, :cond_31

    move v0, v2

    goto :goto_9

    .line 165
    :cond_31
    const v4, 0x7f0801e8

    if-ne p2, v4, :cond_9

    move v0, v3

    goto :goto_9

    .line 172
    :cond_38
    if-ne v0, v2, :cond_46

    .line 173
    iget-object v0, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    invoke-virtual {v0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "CDN\u504f\u597d\uff1amcdn\u7ebf\u8def\u4f18\u5148"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_22

    .line 174
    :cond_46
    if-ne v0, v3, :cond_54

    .line 175
    iget-object v0, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    invoke-virtual {v0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "CDN\u504f\u597d\uff1a\u624b\u52a8\u6307\u5b9a"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_22

    .line 177
    :cond_54
    iget-object v0, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    invoke-virtual {v0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "CDN\u504f\u597d\uff1a\u81ea\u52a8\u7ade\u901f"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_22
.end method
