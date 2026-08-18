.class public Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;
.super Landroid/app/Dialog;
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
    .locals 7
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
    .line 60
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->activity:Landroid/app/Activity;

    .line 62
    iput-wide p3, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->currentTagid:J

    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$TagItem;

    .line 65
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

    goto :goto_12

    .line 68
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;

    .line 69
    iget-wide v2, v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->tagid:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_3b

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->isSelected:Z

    .line 74
    :cond_50
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->listener:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x600

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 92
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 93
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 97
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    const v0, 0x7f0801c4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 101
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 102
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 104
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$1;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0801ee

    .line 113
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 115
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 116
    new-instance v2, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$2;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 123
    const v1, 0x7f06014d

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 124
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 126
    new-instance v1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->tagItems:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$3;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$3;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;-><init>(Ljava/util/List;Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    .line 136
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 137
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 141
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    .line 142
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->dismiss()V

    .line 149
    :goto_7
    return v0

    .line 145
    :cond_8
    const/16 v1, 0x52

    if-ne p1, v1, :cond_10

    .line 146
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->dismiss()V

    goto :goto_7

    .line 149
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public setOnTagSelectedListener(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->listener:Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$OnTagSelectedListener;

    .line 78
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 155
    const v0, 0x7f0801ee

    .line 156
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 157
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;->adapter:Lcom/bilibili/tv/ui/attention/TagFilterAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 158
    new-instance v1, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$4;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_24
    return-void
.end method
