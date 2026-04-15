.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setupAttentionButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 209
    if-nez v0, :cond_d

    .line 235
    :goto_c
    return-void

    .line 210
    :cond_d
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v7

    .line 211
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 212
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 213
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 214
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v4, 0x2

    :goto_34
    const/16 v5, 0xb

    .line 212
    invoke-interface/range {v1 .. v7}, Lmybl/MyBiliApiService;->modifyRelation(JIILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;)V

    .line 216
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_c

    .line 214
    :cond_43
    const/4 v4, 0x1

    goto :goto_34
.end method
