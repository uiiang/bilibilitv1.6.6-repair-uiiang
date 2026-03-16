.class Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;
.super Ljava/lang/Object;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->initHeader()V
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
    .line 161
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 165
    if-nez v1, :cond_d

    .line 189
    :goto_c
    return-void

    .line 166
    :cond_d
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 167
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mid:J
    invoke-static {v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    iget-object v4, v4, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 168
    invoke-virtual {v4}, Lcom/bilibili/tv/widget/DrawTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "\u5df2\u5173\u6ce8"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v4, 0x2

    :goto_30
    const/16 v5, 0xb

    .line 166
    invoke-interface/range {v0 .. v5}, Lmybl/MyBiliApiService;->modifyRelation(Ljava/lang/String;JII)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$2;)V

    .line 170
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_c

    .line 168
    :cond_3f
    const/4 v4, 0x1

    goto :goto_30
.end method
