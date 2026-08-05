.class public final Lbl/afm5;
.super Lbl/adw;
.source "afm5.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afm5$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afm5$a;


# instance fields
.field private audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private audioQuality:I

.field private codec:Ljava/lang/String;

.field private codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private downloadPath:Ljava/lang/String;

.field private downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private downloadPathDetail:Landroid/widget/TextView;

.field private folderPickerCurrentDir:Ljava/io/File;

.field private folderPickerDialog:Landroid/app/Dialog;

.field private quality:I

.field private quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lbl/afm5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afm5$a;-><init>(Lbl/agb;)V

    sput-object v0, Lbl/afm5;->Companion:Lbl/afm5$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lbl/adw;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    .line 37
    const/16 v0, 0x50

    iput v0, p0, Lbl/afm5;->quality:I

    .line 38
    const/16 v0, 0x7648

    iput v0, p0, Lbl/afm5;->audioQuality:I

    .line 39
    const-string v0, "avc"

    iput-object v0, p0, Lbl/afm5;->codec:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    .line 43
    iput-object v1, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lbl/afm5;)Ljava/io/File;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lbl/afm5;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lbl/afm5;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lbl/afm5;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    return-void
.end method

.method static synthetic access$300(Lbl/afm5;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    return-void
.end method

.method static synthetic access$400(Lbl/afm5;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbl/afm5;->hideFolderPicker()V

    return-void
.end method

.method static synthetic access$500(Lbl/afm5;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    return-void
.end method

.method private hideFolderPicker()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 631
    iget-object v0, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 633
    :try_start_5
    iget-object v0, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1f

    .line 637
    :goto_a
    iput-object v4, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    .line 639
    :cond_c
    iput-object v4, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    .line 640
    const-string v0, "afm5"

    const-string v1, "\u6587\u4ef6\u5939\u9009\u62e9\u5bf9\u8bdd\u6846\u5df2\u5173\u95ed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_1e

    .line 644
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 646
    :cond_1e
    return-void

    .line 634
    :catch_1f
    move-exception v0

    .line 635
    const-string v1, "afm5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u95ed\u6587\u4ef6\u5939\u9009\u62e9\u5bf9\u8bdd\u6846\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 520
    if-nez v1, :cond_8

    .line 625
    :goto_7
    return-void

    .line 523
    :cond_8
    iput-object p3, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 530
    if-nez v2, :cond_3b

    .line 531
    const-string v2, "afm5"

    const-string v3, "listFiles()\u8fd4\u56denull\uff0c\u53ef\u80fd\u6ca1\u6709\u6743\u9650\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v2, "\u65e0\u6cd5\u8bbf\u95ee\u76ee\u5f55"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 537
    :cond_3b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 538
    array-length v4, v2

    :goto_41
    if-ge v0, v4, :cond_5d

    aget-object v5, v2, v0

    .line 539
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 540
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 543
    :cond_5d
    new-instance v0, Lbl/afm5$6;

    invoke-direct {v0, p0}, Lbl/afm5$6;-><init>(Lbl/afm5;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 551
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 554
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 555
    const-string v0, "\u2191 \u4e0a\u7ea7"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_7e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udcc1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 563
    :cond_ac
    const-string v0, "afm5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u52a0\u8f7d\u6587\u4ef6\u5939\u5217\u8868: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", \u5171 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u9879"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v0, Lbl/afm5$7;

    const v3, 0x1090003

    invoke-direct {v0, p0, v1, v3, v4}, Lbl/afm5$7;-><init>(Lbl/afm5;Landroid/content/Context;ILjava/util/List;)V

    .line 591
    new-instance v1, Lbl/afm5$8;

    invoke-direct {v1, p0}, Lbl/afm5$8;-><init>(Lbl/afm5;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 607
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 610
    new-instance v0, Lbl/afm5$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbl/afm5$9;-><init>(Lbl/afm5;Ljava/util/List;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_7
.end method

.method private loadSettings()V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 173
    if-nez v0, :cond_7

    .line 184
    :goto_6
    return-void

    .line 177
    :cond_7
    const-string v1, "download_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    const-string v1, "download_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    .line 179
    const-string v1, "quality"

    const/16 v2, 0x50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lbl/afm5;->quality:I

    .line 180
    const-string v1, "audio_quality"

    const/16 v2, 0x7648

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lbl/afm5;->audioQuality:I

    .line 181
    const-string v1, "codec"

    const-string v2, "avc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/afm5;->codec:Ljava/lang/String;

    .line 183
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u8bbe\u7f6e: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/afm5;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/afm5;->audioQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", codec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->codec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private saveSettings()V
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 191
    if-nez v0, :cond_7

    .line 204
    :goto_6
    return-void

    .line 195
    :cond_7
    const-string v1, "download_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    const-string v1, "download_path"

    iget-object v2, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v1, "quality"

    iget v2, p0, Lbl/afm5;->quality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    const-string v1, "audio_quality"

    iget v2, p0, Lbl/afm5;->audioQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    const-string v1, "codec"

    iget-object v2, p0, Lbl/afm5;->codec:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u8bbe\u7f6e: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/afm5;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/afm5;->audioQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", codec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->codec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private showFolderPicker()V
    .locals 14

    .prologue
    const/4 v9, 0x2

    const/4 v13, 0x0

    const/16 v12, 0x18

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 316
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 317
    if-nez v1, :cond_d

    .line 512
    :goto_c
    return-void

    .line 322
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_37

    .line 323
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    .line 325
    const-string v0, "afm5"

    const-string v2, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6c42\u6743\u9650"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-array v0, v11, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v13

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 330
    const-string v0, "\u8bf7\u6388\u4e88\u5b58\u50a8\u6743\u9650\u540e\u518d\u8bd5"

    invoke-static {v1, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 336
    :cond_37
    invoke-direct {p0}, Lbl/afm5;->hideFolderPicker()V

    .line 339
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_53

    .line 342
    :cond_48
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Download"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    :cond_53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 345
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 347
    :cond_5d
    iput-object v0, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    .line 350
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 354
    invoke-virtual {v3, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 355
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 363
    const-string v4, "#CC000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 364
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x43960000    # 300.0f

    .line 367
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 365
    invoke-static {v11, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v5, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 370
    const/4 v5, 0x5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 371
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 375
    const-string v5, "\u9009\u62e9\u4e0b\u8f7d\u6587\u4ef6\u5939"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 378
    invoke-virtual {v4, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 379
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 380
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 387
    const v5, -0x333334

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 389
    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-virtual {v4, v12, v5, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 390
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 397
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const v7, -0xbbbbbc

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 398
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 399
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 400
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 401
    const/high16 v6, 0x20000

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 402
    invoke-virtual {v5, v13}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 403
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v10, v13, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    new-instance v6, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {v6, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {v6, v11}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusable(Z)V

    .line 410
    invoke-virtual {v6, v11}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusableInTouchMode(Z)V

    .line 411
    const v7, 0x7f0700f0

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 412
    const v7, 0x7f0700e8

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 413
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 414
    const-string v8, "\u786e\u5b9a"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 417
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 418
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Lcom/bilibili/tv/widget/DrawFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    const/high16 v7, 0x42600000    # 56.0f

    .line 424
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 422
    invoke-static {v11, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 425
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 427
    const/16 v7, 0x10

    const/16 v9, 0x10

    invoke-virtual {v8, v12, v7, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 428
    invoke-virtual {v3, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 433
    invoke-virtual {v3, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 434
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 435
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x600

    const/16 v7, 0x600

    invoke-virtual {v1, v2, v7}, Landroid/view/Window;->setFlags(II)V

    .line 437
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 438
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 439
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 440
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 441
    invoke-virtual {v3, v13}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 442
    iput-object v3, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    .line 444
    const-string v1, "afm5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6587\u4ef6\u5939\u9009\u62e9\u5bf9\u8bdd\u6846\u5df2\u663e\u793a\uff0c\u9ed8\u8ba4\u76ee\u5f55: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0, v5, v4, v0}, Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    .line 450
    new-instance v0, Lbl/afm5$1;

    invoke-direct {v0, p0}, Lbl/afm5$1;-><init>(Lbl/afm5;)V

    invoke-virtual {v6, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    new-instance v0, Lbl/afm5$2;

    invoke-direct {v0, p0, v5, v6}, Lbl/afm5$2;-><init>(Lbl/afm5;Landroid/widget/ListView;Lcom/bilibili/tv/widget/DrawFrameLayout;)V

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 482
    new-instance v0, Lbl/afm5$3;

    invoke-direct {v0, p0, v5}, Lbl/afm5$3;-><init>(Lbl/afm5;Landroid/widget/ListView;)V

    invoke-virtual {v6, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 495
    new-instance v0, Lbl/afm5$4;

    invoke-direct {v0, p0, v6}, Lbl/afm5$4;-><init>(Lbl/afm5;Lcom/bilibili/tv/widget/DrawFrameLayout;)V

    invoke-virtual {v6, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 503
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 506
    new-instance v0, Lbl/afm5$5;

    invoke-direct {v0, p0, v5}, Lbl/afm5$5;-><init>(Lbl/afm5;Landroid/widget/ListView;)V

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c
.end method

.method private updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 237
    if-eqz p2, :cond_9

    .line 238
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 242
    :goto_8
    return-void

    .line 240
    :cond_9
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_8
.end method

.method private updateUI()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lbl/afm5;->downloadPathDetail:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 212
    iget-object v0, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 213
    :cond_12
    iget-object v0, p0, Lbl/afm5;->downloadPathDetail:Landroid/widget/TextView;

    const-string v3, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_19
    :goto_19
    iget-object v3, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v0, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x50

    if-ne v0, v4, :cond_77

    move v0, v1

    :goto_22
    invoke-direct {p0, v3, v0}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 221
    iget-object v3, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v0, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x40

    if-ne v0, v4, :cond_79

    move v0, v1

    :goto_2e
    invoke-direct {p0, v3, v0}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 222
    iget-object v3, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v0, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x20

    if-ne v0, v4, :cond_7b

    move v0, v1

    :goto_3a
    invoke-direct {p0, v3, v0}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 225
    iget-object v3, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v0, p0, Lbl/afm5;->audioQuality:I

    const/16 v4, 0x7648

    if-ne v0, v4, :cond_7d

    move v0, v1

    :goto_46
    invoke-direct {p0, v3, v0}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 226
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v3, p0, Lbl/afm5;->audioQuality:I

    const/16 v4, 0x7608

    if-ne v3, v4, :cond_7f

    :goto_51
    invoke-direct {p0, v0, v1}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 229
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget-object v1, p0, Lbl/afm5;->codec:Ljava/lang/String;

    const-string v2, "avc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 230
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget-object v1, p0, Lbl/afm5;->codec:Ljava/lang/String;

    const-string v2, "hevc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 231
    return-void

    .line 215
    :cond_6f
    iget-object v0, p0, Lbl/afm5;->downloadPathDetail:Landroid/widget/TextView;

    iget-object v3, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_77
    move v0, v2

    .line 220
    goto :goto_22

    :cond_79
    move v0, v2

    .line 221
    goto :goto_2e

    :cond_7b
    move v0, v2

    .line 222
    goto :goto_3a

    :cond_7d
    move v0, v2

    .line 225
    goto :goto_46

    :cond_7f
    move v1, v2

    .line 226
    goto :goto_51
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 107
    :cond_5
    :goto_5
    return v0

    .line 96
    :cond_6
    iget-object v1, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 97
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 98
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 99
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 100
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 101
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 102
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 103
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 106
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 107
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 84
    :cond_d
    :goto_d
    return v0

    .line 63
    :cond_e
    iget-object v1, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 66
    :cond_1a
    iget-object v1, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 69
    :cond_26
    iget-object v1, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 72
    :cond_32
    iget-object v1, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 75
    :cond_3e
    iget-object v1, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 78
    :cond_4a
    iget-object v1, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 81
    :cond_56
    iget-object v1, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 84
    :cond_62
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_8

    .line 247
    invoke-direct {p0}, Lbl/afm5;->showFolderPicker()V

    .line 277
    :cond_7
    :goto_7
    return-void

    .line 248
    :cond_8
    iget-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_17

    .line 249
    const/16 v0, 0x50

    iput v0, p0, Lbl/afm5;->quality:I

    .line 250
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 251
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 252
    :cond_17
    iget-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_26

    .line 253
    const/16 v0, 0x40

    iput v0, p0, Lbl/afm5;->quality:I

    .line 254
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 255
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 256
    :cond_26
    iget-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_35

    .line 257
    const/16 v0, 0x20

    iput v0, p0, Lbl/afm5;->quality:I

    .line 258
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 259
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 260
    :cond_35
    iget-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_44

    .line 261
    const/16 v0, 0x7648

    iput v0, p0, Lbl/afm5;->audioQuality:I

    .line 262
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 263
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 264
    :cond_44
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_53

    .line 265
    const/16 v0, 0x7608

    iput v0, p0, Lbl/afm5;->audioQuality:I

    .line 266
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 267
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 268
    :cond_53
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_62

    .line 269
    const-string v0, "avc"

    iput-object v0, p0, Lbl/afm5;->codec:Ljava/lang/String;

    .line 270
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 271
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 272
    :cond_62
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_7

    .line 273
    const-string v0, "hevc"

    iput-object v0, p0, Lbl/afm5;->codec:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 275
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const v2, 0x7f0700e8

    .line 112
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    const v0, 0x7f0a00b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 116
    const v0, 0x7f080244

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 117
    const v0, 0x7f08024d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afm5;->downloadPathDetail:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f080246

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 120
    const v0, 0x7f080247

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 121
    const v0, 0x7f080248

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 123
    const v0, 0x7f080249

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 124
    const v0, 0x7f08024a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 126
    const v0, 0x7f08024b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 127
    const v0, 0x7f08024c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 130
    invoke-direct {p0}, Lbl/afm5;->loadSettings()V

    .line 133
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 144
    iget-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 146
    iget-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    iget-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 150
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 153
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 154
    iget-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 155
    iget-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 156
    iget-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 157
    iget-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 158
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 159
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 160
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 163
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 165
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Lbl/adw;->onDestroyView()V

    .line 305
    invoke-direct {p0}, Lbl/afm5;->hideFolderPicker()V

    .line 306
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 281
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_1b

    move-object v0, p1

    .line 282
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 284
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 285
    if-nez p2, :cond_1b

    .line 287
    const/4 v2, 0x0

    .line 288
    iget-object v3, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_1c

    iget v3, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1c

    .line 296
    :cond_18
    :goto_18
    invoke-direct {p0, v0, v1}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 299
    :cond_1b
    return-void

    .line 289
    :cond_1c
    iget-object v3, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_26

    iget v3, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x40

    if-eq v3, v4, :cond_18

    .line 290
    :cond_26
    iget-object v3, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_30

    iget v3, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x20

    if-eq v3, v4, :cond_18

    .line 291
    :cond_30
    iget-object v3, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_3a

    iget v3, p0, Lbl/afm5;->audioQuality:I

    const/16 v4, 0x7648

    if-eq v3, v4, :cond_18

    .line 292
    :cond_3a
    iget-object v3, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_44

    iget v3, p0, Lbl/afm5;->audioQuality:I

    const/16 v4, 0x7608

    if-eq v3, v4, :cond_18

    .line 293
    :cond_44
    iget-object v3, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_52

    iget-object v3, p0, Lbl/afm5;->codec:Ljava/lang/String;

    const-string v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 294
    :cond_52
    iget-object v3, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_60

    iget-object v3, p0, Lbl/afm5;->codec:Ljava/lang/String;

    const-string v4, "hevc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_60
    move v1, v2

    goto :goto_18
.end method
