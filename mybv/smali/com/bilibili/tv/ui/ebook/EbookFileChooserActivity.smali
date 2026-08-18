.class public Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "EbookFileChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;,
        Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_SELECTED_FILE:Ljava/lang/String; = "selected_file"

.field private static final REQUEST_CODE_SELECT_EBOOK:I = 0x3e9

.field private static final SUPPORTED_EXTENSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EbookFileChooser"


# instance fields
.field private btnUp:Landroid/widget/TextView;

.field private currentDir:Ljava/io/File;

.field private currentPathText:Landroid/widget/TextView;

.field private emptyHint:Landroid/widget/TextView;

.field private fileAdapter:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;

.field private fileItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private fileListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".azw3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".epub"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->SUPPORTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->navigateUp()V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->handleItemClick(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private createLayout()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/16 v5, 0x1e

    const/4 v4, -0x1

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 97
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 103
    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 106
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentPathText:Landroid/widget/TextView;

    .line 107
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentPathText:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentPathText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentPathText:Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentPathText:Landroid/widget/TextView;

    const-string v3, "/sdcard/Download"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentPathText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    const-string v3, "#CCCCCC"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    const-string v3, "\u2191 \u4e0a\u7ea7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 125
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 126
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    const-string v3, "#1A1A1A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 127
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    .line 133
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 138
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    .line 142
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    const-string v2, "#808080"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    const-string v2, "\u6ca1\u6709\u627e\u5230\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->setContentView(Landroid/view/View;)V

    .line 156
    new-instance v0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;-><init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$1;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileAdapter:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;

    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileAdapter:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    new-instance v1, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$1;-><init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->btnUp:Landroid/widget/TextView;

    new-instance v1, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$2;-><init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$3;-><init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    return-void
.end method

.method public static getSelectedFile(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    if-eqz p0, :cond_9

    .line 322
    const-string v0, "selected_file"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private handleItemClick(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;)V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p1, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;->isDirectory:Z

    if-eqz v0, :cond_a

    .line 300
    iget-object v0, p1, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->loadDirectory(Ljava/io/File;)V

    .line 305
    :goto_9
    return-void

    .line 303
    :cond_a
    iget-object v0, p1, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->selectFile(Ljava/io/File;)V

    goto :goto_9
.end method

.method private isEbookFile(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 262
    sget-object v3, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->SUPPORTED_EXTENSIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_d
    if-ge v1, v4, :cond_18

    aget-object v5, v3, v1

    .line 263
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 264
    const/4 v0, 0x1

    .line 267
    :cond_18
    return v0

    .line 262
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private loadDirectory(Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_34

    .line 197
    :cond_e
    const-string v0, "EbookFileChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u76ee\u5f55\u4e0d\u5b58\u5728\u6216\u4e0d\u662f\u76ee\u5f55: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, "\u65e0\u6cd5\u8bbf\u95ee\u76ee\u5f55"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    :cond_33
    :goto_33
    return-void

    .line 202
    :cond_34
    iput-object p1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentDir:Ljava/io/File;

    .line 203
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentPathText:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_4d

    array-length v1, v0

    if-nez v1, :cond_56

    .line 211
    :cond_4d
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->showEmptyHint(Z)V

    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileAdapter:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;->notifyDataSetChanged()V

    goto :goto_33

    .line 217
    :cond_56
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    new-instance v0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$4;-><init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6b
    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 235
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;

    invoke-direct {v3, v0, v5}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;-><init>(Ljava/io/File;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 236
    :cond_88
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->isEbookFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 238
    iget-object v2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;

    invoke-direct {v3, v0, v4}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;-><init>(Ljava/io/File;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 242
    :cond_99
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->showEmptyHint(Z)V

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileAdapter:Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileAdapter;->notifyDataSetChanged()V

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 247
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$5;-><init>(Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_33
.end method

.method private navigateUp()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentDir:Ljava/io/File;

    if-nez v0, :cond_5

    .line 284
    :goto_4
    return-void

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->currentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 280
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->loadDirectory(Ljava/io/File;)V

    goto :goto_4

    .line 282
    :cond_17
    const-string v0, "\u65e0\u6cd5\u8bbf\u95ee\u4e0a\u7ea7\u76ee\u5f55"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method private selectFile(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 312
    const-string v1, "selected_file"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 314
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->finish()V

    .line 315
    return-void
.end method

.method private showEmptyHint(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 290
    iget-object v3, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->emptyHint:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    if-eqz p1, :cond_15

    :goto_f
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 292
    return-void

    :cond_13
    move v0, v2

    .line 290
    goto :goto_8

    :cond_15
    move v2, v1

    .line 291
    goto :goto_f
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->createLayout()V

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    .line 64
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 68
    :cond_18
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->loadDirectory(Ljava/io/File;)V

    .line 69
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x1090014

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 75
    iget-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    iget-object v1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;->fileListView:Landroid/widget/ListView;

    .line 81
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 82
    return-void
.end method
