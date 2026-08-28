.class public Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;
.super Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;
.source "TagFilterMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;,
        Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

.field private currentTagid:J

.field private listener:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;

.field private tagItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 54
    const/16 v0, 0x12c

    invoke-direct {p0, p1, v0, v7}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;-><init>(Landroid/app/Activity;IZ)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->activity:Landroid/app/Activity;

    .line 56
    iput-wide p3, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->currentTagid:J

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;

    .line 59
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->getTagid()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;->getCount()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 62
    :cond_38
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;

    .line 63
    iget-wide v2, v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->tagid:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_3e

    .line 64
    iput-boolean v7, v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->isSelected:Z

    .line 68
    :cond_52
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->listener:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->setContent(Landroid/view/View;)V

    .line 78
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f0801ee

    .line 81
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 83
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 84
    new-instance v2, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$1;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$1;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 91
    const v1, 0x7f06014d

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 92
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 94
    new-instance v1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;-><init>(Ljava/util/List;Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    .line 104
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 105
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    .line 110
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->dismiss()V

    .line 117
    :goto_7
    return v0

    .line 113
    :cond_8
    const/16 v1, 0x52

    if-ne p1, v1, :cond_10

    .line 114
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->dismiss()V

    goto :goto_7

    .line 117
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public setOnTagSelectedListener(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->listener:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;

    .line 72
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 122
    invoke-super {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->show()V

    .line 123
    const v0, 0x7f0801ee

    .line 124
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 125
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 126
    new-instance v1, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$3;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$3;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    :cond_24
    return-void
.end method
