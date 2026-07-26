.class Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "EbookFileChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;


# direct methods
.method private constructor <init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$1;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;-><init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # getter for: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$200(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # getter for: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$200(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 357
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v7, -0x1

    const/16 v6, 0x1e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 364
    if-nez p2, :cond_a8

    .line 366
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 368
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 372
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 373
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 374
    const-string v0, "#1A1A1A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 377
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 378
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 380
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 382
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 386
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 390
    invoke-virtual {v2, v6, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 394
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 395
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    invoke-virtual {p2, v4, v0}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 399
    invoke-virtual {p2, v5, v1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 404
    :goto_7d
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;->this$0:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;

    # getter for: Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->access$200(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;

    .line 405
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 406
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 408
    iget-object v3, v0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-boolean v0, v0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;->isDirectory:Z

    if-eqz v0, :cond_ab

    .line 412
    const-string v0, "\ud83d\udcc1"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :goto_a7
    return-object p2

    .line 401
    :cond_a8
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_7d

    .line 414
    :cond_ab
    const-string v0, "\ud83d\udcc4"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a7
.end method
