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

.field private downloadUri:Ljava/lang/String;

.field private folderPickerCurrentDir:Ljava/io/File;

.field private folderPickerDialog:Landroid/app/Dialog;

.field private quality:I

.field private quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private safAvailable:Z


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
    const-string v0, ""

    iput-object v0, p0, Lbl/afm5;->downloadUri:Ljava/lang/String;

    .line 38
    const/16 v0, 0x50

    iput v0, p0, Lbl/afm5;->quality:I

    .line 39
    const/16 v0, 0x7648

    iput v0, p0, Lbl/afm5;->audioQuality:I

    .line 40
    const-string v0, "avc"

    iput-object v0, p0, Lbl/afm5;->codec:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    .line 44
    iput-object v1, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/afm5;->safAvailable:Z

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

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lbl/afm5;->isExternalVolume(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lbl/afm5;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lbl/afm5;->safAvailable:Z

    return v0
.end method

.method static synthetic access$400(Lbl/afm5;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    return-void
.end method

.method static synthetic access$500(Lbl/afm5;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    return-void
.end method

.method static synthetic access$600(Lbl/afm5;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbl/afm5;->hideFolderPicker()V

    return-void
.end method

.method static synthetic access$700(Lbl/afm5;Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
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

    .line 921
    iget-object v0, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 923
    :try_start_5
    iget-object v0, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1f

    .line 927
    :goto_a
    iput-object v4, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    .line 929
    :cond_c
    iput-object v4, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    .line 930
    const-string v0, "afm5"

    const-string v1, "\u6587\u4ef6\u5939\u9009\u62e9\u5bf9\u8bdd\u6846\u5df2\u5173\u95ed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_1e

    .line 934
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 936
    :cond_1e
    return-void

    .line 924
    :catch_1f
    move-exception v0

    .line 925
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

.method private static isExternalVolume(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 717
    if-nez p0, :cond_4

    .line 720
    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "/storage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "/storage/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_14
    const-string v1, "/storage/emulated"

    .line 721
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 729
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 730
    if-nez v5, :cond_8

    .line 915
    :goto_7
    return-void

    .line 733
    :cond_8
    iput-object p3, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 740
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 742
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 743
    const-string v1, "/storage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 749
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 750
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 751
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 752
    const-string v1, "\ud83d\udcc1 \u5185\u90e8\u5b58\u50a8"

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_5a
    :try_start_5a
    invoke-static {v5}, Lcom/bilibili/tv/ui/download/StorageManagerHelper;->getAllMountedVolumes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 759
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_62
    :goto_62
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;

    .line 760
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 763
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 765
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    const-string v1, "/storage/emulated"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 768
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 772
    :cond_99
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 773
    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_ad

    const-string v10, "\u5916\u63a5\u5b58\u50a8"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 774
    :cond_ad
    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 775
    if-ltz v1, :cond_179

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_179

    add-int/lit8 v1, v1, 0x1

    .line 776
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 778
    :cond_c3
    :goto_c3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\ud83d\udcc1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 781
    const-string v9, "afm5"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u679a\u4e3e\u5230\u5b58\u50a8\u5377: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " -> "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u53ef\u79fb\u9664="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/StorageManagerHelper$StorageDevice;->isRemovable()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_10f} :catch_111

    goto/16 :goto_62

    .line 783
    :catch_111
    move-exception v0

    .line 784
    const-string v1, "afm5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u679a\u4e3e\u5b58\u50a8\u5377\u5931\u8d25\uff0c\u56de\u9000\u5230 listFiles: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_12e
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_17c

    .line 789
    array-length v1, v0

    :goto_135
    if-ge v4, v1, :cond_17c

    aget-object v3, v0, v4

    .line 790
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 791
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_176

    const-string v9, "emulated"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_176

    const-string v9, "self"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_176

    .line 792
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_176

    .line 793
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\ud83d\udcc1 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_176
    add-int/lit8 v4, v4, 0x1

    goto :goto_135

    :cond_179
    move-object v1, v3

    .line 776
    goto/16 :goto_c3

    .line 798
    :cond_17c
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_187

    .line 799
    const-string v0, "\uff08\u65e0\u53ef\u8bbf\u95ee\u7684\u5b58\u50a8\u8bbe\u5907\uff09"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_187
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u6587\u4ef6\u5939\u5217\u8868: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u5171 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u9879"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v0, Lbl/afm5$10;

    const v1, 0x1090003

    invoke-direct {v0, p0, v5, v1, v6}, Lbl/afm5$10;-><init>(Lbl/afm5;Landroid/content/Context;ILjava/util/List;)V

    .line 869
    new-instance v1, Lbl/afm5$11;

    invoke-direct {v1, p0}, Lbl/afm5$11;-><init>(Lbl/afm5;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 885
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 888
    new-instance v0, Lbl/afm5$12;

    invoke-direct {v0, p0}, Lbl/afm5$12;-><init>(Lbl/afm5;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 896
    new-instance v0, Lbl/afm5$13;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbl/afm5$13;-><init>(Lbl/afm5;Ljava/util/List;Ljava/io/File;Landroid/widget/ListView;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_7

    .line 804
    :cond_1e0
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 805
    if-nez v1, :cond_209

    .line 806
    const-string v1, "afm5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listFiles()\u8fd4\u56denull\uff0c\u53ef\u80fd\u6ca1\u6709\u6743\u9650\u6216\u76ee\u5f55\u4e0d\u5b58\u5728: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string v0, "\u65e0\u6cd5\u8bbf\u95ee\u8be5\u76ee\u5f55\uff0c\u8bf7\u68c0\u67e5\u5b58\u50a8\u6743\u9650"

    invoke-static {v5, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 812
    :cond_209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 813
    array-length v7, v1

    move v0, v4

    :goto_210
    if-ge v0, v7, :cond_22c

    aget-object v4, v1, v0

    .line 814
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_229

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_229

    .line 815
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_229
    add-int/lit8 v0, v0, 0x1

    goto :goto_210

    .line 818
    :cond_22c
    new-instance v0, Lbl/afm5$9;

    invoke-direct {v0, p0}, Lbl/afm5$9;-><init>(Lbl/afm5;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 826
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_24a

    const-string v1, "/storage/emulated"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24a

    .line 828
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 830
    :cond_24a
    if-eqz v0, :cond_255

    .line 831
    const-string v0, "\u2191 \u4e0a\u7ea7"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    :cond_255
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_259
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_187

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udcc1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_259
.end method

.method private loadSettings()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 175
    if-nez v0, :cond_7

    .line 187
    :goto_6
    return-void

    .line 179
    :cond_7
    const-string v1, "download_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    const-string v1, "download_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    .line 181
    const-string v1, "download_uri"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbl/afm5;->downloadUri:Ljava/lang/String;

    .line 182
    const-string v1, "quality"

    const/16 v2, 0x50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lbl/afm5;->quality:I

    .line 183
    const-string v1, "audio_quality"

    const/16 v2, 0x7648

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lbl/afm5;->audioQuality:I

    .line 184
    const-string v1, "codec"

    const-string v2, "avc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/afm5;->codec:Ljava/lang/String;

    .line 186
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u8bbe\u7f6e: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->downloadUri:Ljava/lang/String;

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

    goto/16 :goto_6
.end method

.method private saveSettings()V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 194
    if-nez v0, :cond_7

    .line 208
    :goto_6
    return-void

    .line 198
    :cond_7
    const-string v1, "download_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    const-string v1, "download_path"

    iget-object v2, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v1, "download_uri"

    iget-object v2, p0, Lbl/afm5;->downloadUri:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    const-string v1, "quality"

    iget v2, p0, Lbl/afm5;->quality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    const-string v1, "audio_quality"

    iget v2, p0, Lbl/afm5;->audioQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    const-string v1, "codec"

    iget-object v2, p0, Lbl/afm5;->codec:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u8bbe\u7f6e: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->downloadUri:Ljava/lang/String;

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
    .locals 15

    .prologue
    .line 320
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 321
    if-nez v3, :cond_7

    .line 641
    :goto_6
    return-void

    .line 327
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_41

    .line 328
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 330
    invoke-virtual {v3, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_41

    .line 332
    :cond_1d
    const-string v0, "afm5"

    const-string v1, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6c42\u8bfb\u5199\u6743\u9650"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3ea

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 338
    const-string v0, "\u8bf7\u6388\u4e88\u5b58\u50a8\u6743\u9650\u540e\u518d\u8bd5"

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 344
    :cond_41
    invoke-direct {p0}, Lbl/afm5;->hideFolderPicker()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/afm5;->safAvailable:Z

    .line 351
    :try_start_47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_2d7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d7

    const/4 v0, 0x1

    :goto_60
    iput-boolean v0, p0, Lbl/afm5;->safAvailable:Z
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_62} :catch_2da

    .line 359
    :goto_62
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7cfb\u7edf\u6587\u4ef6\u7ba1\u7406\u5668\u53ef\u7528: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbl/afm5;->safAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_95

    .line 365
    :cond_8a
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    :cond_95
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 368
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 370
    :cond_9f
    iput-object v0, p0, Lbl/afm5;->folderPickerCurrentDir:Ljava/io/File;

    .line 373
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 376
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 377
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 378
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 385
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 386
    const-string v1, "#CC000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 387
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    const/high16 v6, 0x43960000    # 300.0f

    .line 390
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 388
    invoke-static {v2, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v6, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 393
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 394
    invoke-virtual {v4, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 398
    const-string v2, "\u9009\u62e9\u4e0b\u8f7d\u6587\u4ef6\u5939"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    const/4 v2, 0x2

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 401
    const/16 v2, 0x18

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x18

    invoke-virtual {v1, v2, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 402
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 403
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 410
    const v1, -0x333334

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v6, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    const/16 v1, 0x18

    const/16 v2, 0x8

    const/16 v7, 0x18

    const/16 v8, 0x8

    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 413
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 420
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 421
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 422
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 423
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 424
    const/high16 v1, 0x20000

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 425
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 426
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    new-instance v8, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {v8, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;-><init>(Landroid/content/Context;)V

    .line 432
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusable(Z)V

    .line 433
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusableInTouchMode(Z)V

    .line 434
    const v1, 0x7f0700f0

    invoke-virtual {v8, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 435
    const v1, 0x7f0700e8

    invoke-virtual {v8, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 436
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 437
    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v9, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 440
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 441
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v10, -0x1

    invoke-direct {v1, v2, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    const/4 v1, 0x1

    const/high16 v2, 0x42600000    # 56.0f

    .line 447
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 445
    invoke-static {v1, v2, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 448
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v2, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 450
    const/16 v1, 0x18

    const/16 v10, 0x10

    const/16 v11, 0x18

    const/16 v12, 0x10

    invoke-virtual {v2, v1, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 451
    invoke-virtual {v5, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-boolean v1, p0, Lbl/afm5;->safAvailable:Z

    if-eqz v1, :cond_2fc

    .line 459
    new-instance v2, Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {v2, v3}, Lcom/bilibili/tv/widget/DrawFrameLayout;-><init>(Landroid/content/Context;)V

    .line 460
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusable(Z)V

    .line 461
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setFocusableInTouchMode(Z)V

    .line 462
    const v1, 0x7f0700f0

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 463
    const v1, 0x7f0700e8

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 464
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 465
    const-string v10, "\u4f7f\u7528\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668\uff08U\u76d8/\u79fb\u52a8\u786c\u76d8\uff09"

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const/4 v10, -0x1

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    const/4 v10, 0x2

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v1, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 468
    const/16 v10, 0x11

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 469
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v10}, Lcom/bilibili/tv/widget/DrawFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    const/4 v10, 0x1

    const/high16 v11, 0x42400000    # 48.0f

    .line 475
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 473
    invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 476
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 478
    const/16 v10, 0x18

    const/16 v12, 0x8

    const/16 v13, 0x18

    const/16 v14, 0x10

    invoke-virtual {v11, v10, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    invoke-virtual {v5, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance v5, Lbl/afm5$1;

    invoke-direct {v5, p0, v3}, Lbl/afm5$1;-><init>(Lbl/afm5;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    :goto_238
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 503
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 504
    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 505
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v10, 0x600

    const/16 v11, 0x600

    invoke-virtual {v4, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 507
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 508
    const/4 v10, -0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 509
    const/4 v10, -0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 510
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 511
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 512
    iput-object v5, p0, Lbl/afm5;->folderPickerDialog:Landroid/app/Dialog;

    .line 514
    const-string v4, "afm5"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6587\u4ef6\u5939\u9009\u62e9\u5bf9\u8bdd\u6846\u5df2\u663e\u793a\uff0c\u9ed8\u8ba4\u76ee\u5f55: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0, v7, v6, v0}, Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V

    .line 520
    new-instance v0, Lbl/afm5$2;

    invoke-direct {v0, p0, v3}, Lbl/afm5$2;-><init>(Lbl/afm5;Landroid/app/Activity;)V

    invoke-virtual {v8, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    new-instance v0, Lbl/afm5$3;

    invoke-direct {v0, p0, v7, v8}, Lbl/afm5$3;-><init>(Lbl/afm5;Landroid/widget/ListView;Lcom/bilibili/tv/widget/DrawFrameLayout;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 570
    new-instance v0, Lbl/afm5$4;

    invoke-direct {v0, p0, v7, v2}, Lbl/afm5$4;-><init>(Lbl/afm5;Landroid/widget/ListView;Lcom/bilibili/tv/widget/DrawFrameLayout;)V

    invoke-virtual {v8, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 588
    iget-boolean v0, p0, Lbl/afm5;->safAvailable:Z

    if-eqz v0, :cond_2c2

    .line 589
    new-instance v0, Lbl/afm5$5;

    invoke-direct {v0, p0, v8}, Lbl/afm5$5;-><init>(Lbl/afm5;Lcom/bilibili/tv/widget/DrawFrameLayout;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 601
    new-instance v0, Lbl/afm5$6;

    invoke-direct {v0, p0, v2, v1}, Lbl/afm5$6;-><init>(Lbl/afm5;Lcom/bilibili/tv/widget/DrawFrameLayout;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 617
    :cond_2c2
    new-instance v0, Lbl/afm5$7;

    invoke-direct {v0, p0, v8, v9}, Lbl/afm5$7;-><init>(Lbl/afm5;Lcom/bilibili/tv/widget/DrawFrameLayout;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 632
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 635
    new-instance v0, Lbl/afm5$8;

    invoke-direct {v0, p0, v7}, Lbl/afm5$8;-><init>(Lbl/afm5;Landroid/widget/ListView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 354
    :cond_2d7
    const/4 v0, 0x0

    goto/16 :goto_60

    .line 355
    :catch_2da
    move-exception v0

    .line 356
    const-string v1, "afm5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u68c0\u6d4bSAF\u53ef\u7528\u6027\u5f02\u5e38: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/afm5;->safAvailable:Z

    goto/16 :goto_62

    .line 495
    :cond_2fc
    const/4 v2, 0x0

    .line 496
    const/4 v1, 0x0

    .line 497
    const-string v5, "afm5"

    const-string v10, "\u7cfb\u7edf\u6587\u4ef6\u7ba1\u7406\u5668\u4e0d\u53ef\u7528\uff0c\u9690\u85cf\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668\u6309\u94ae"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_238
.end method

.method private updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V
    .locals 1

    .prologue
    .line 241
    if-eqz p2, :cond_9

    .line 242
    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 246
    :goto_8
    return-void

    .line 244
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

    .line 215
    iget-object v0, p0, Lbl/afm5;->downloadPathDetail:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 216
    iget-object v0, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 217
    :cond_12
    iget-object v0, p0, Lbl/afm5;->downloadPathDetail:Landroid/widget/TextView;

    const-string v3, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_19
    :goto_19
    iget-object v3, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v0, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x50

    if-ne v0, v4, :cond_77

    move v0, v1

    :goto_22
    invoke-direct {p0, v3, v0}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 225
    iget-object v3, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v0, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x40

    if-ne v0, v4, :cond_79

    move v0, v1

    :goto_2e
    invoke-direct {p0, v3, v0}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 226
    iget-object v3, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v0, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x20

    if-ne v0, v4, :cond_7b

    move v0, v1

    :goto_3a
    invoke-direct {p0, v3, v0}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 229
    iget-object v3, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v0, p0, Lbl/afm5;->audioQuality:I

    const/16 v4, 0x7648

    if-ne v0, v4, :cond_7d

    move v0, v1

    :goto_46
    invoke-direct {p0, v3, v0}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 230
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget v3, p0, Lbl/afm5;->audioQuality:I

    const/16 v4, 0x7608

    if-ne v3, v4, :cond_7f

    :goto_51
    invoke-direct {p0, v0, v1}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 233
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget-object v1, p0, Lbl/afm5;->codec:Ljava/lang/String;

    const-string v2, "avc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 234
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    iget-object v1, p0, Lbl/afm5;->codec:Ljava/lang/String;

    const-string v2, "hevc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 235
    return-void

    .line 219
    :cond_6f
    iget-object v0, p0, Lbl/afm5;->downloadPathDetail:Landroid/widget/TextView;

    iget-object v3, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_77
    move v0, v2

    .line 224
    goto :goto_22

    :cond_79
    move v0, v2

    .line 225
    goto :goto_2e

    :cond_7b
    move v0, v2

    .line 226
    goto :goto_3a

    :cond_7d
    move v0, v2

    .line 229
    goto :goto_46

    :cond_7f
    move v1, v2

    .line 230
    goto :goto_51
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-nez v1, :cond_6

    .line 109
    :cond_5
    :goto_5
    return v0

    .line 98
    :cond_6
    iget-object v1, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 99
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 100
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 101
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 102
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 103
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 104
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 105
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 108
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 109
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 86
    :cond_d
    :goto_d
    return v0

    .line 65
    :cond_e
    iget-object v1, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 68
    :cond_1a
    iget-object v1, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 71
    :cond_26
    iget-object v1, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 74
    :cond_32
    iget-object v1, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 77
    :cond_3e
    iget-object v1, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 80
    :cond_4a
    iget-object v1, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 83
    :cond_56
    iget-object v1, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 86
    :cond_62
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 673
    invoke-super {p0, p1, p2, p3}, Lbl/adw;->onActivityResult(IILandroid/content/Intent;)V

    .line 674
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_8

    .line 711
    :goto_7
    return-void

    .line 677
    :cond_8
    const/4 v0, -0x1

    if-ne p2, v0, :cond_13

    if-eqz p3, :cond_13

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 678
    :cond_13
    const-string v0, "afm5"

    const-string v1, "\u7528\u6237\u53d6\u6d88SAF\u76ee\u5f55\u9009\u62e9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 681
    :cond_1b
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 682
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAF\u9009\u62e9\u76ee\u5f55: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v0, 0x3

    .line 688
    :try_start_3c
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 689
    const-string v0, "afm5"

    const-string v1, "\u6301\u4e45\u5316SAF\u6388\u6743\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4e} :catch_b4

    .line 695
    :goto_4e
    const-string v1, ""

    .line 697
    :try_start_50
    invoke-virtual {p0}, Lbl/afm5;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5b} :catch_d3

    move-result-object v0

    .line 701
    :goto_5c
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 702
    :cond_64
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 705
    :cond_68
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbl/afm5;->downloadUri:Ljava/lang/String;

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5916\u63a5\u5b58\u50a8/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    .line 707
    const-string v0, "afm5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u76ee\u5f55\u5df2\u66f4\u65b0: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/afm5;->downloadUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 709
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    .line 710
    invoke-direct {p0}, Lbl/afm5;->hideFolderPicker()V

    goto/16 :goto_7

    .line 690
    :catch_b4
    move-exception v0

    .line 691
    const-string v1, "afm5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6301\u4e45\u5316SAF\u6388\u6743\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 698
    :catch_d3
    move-exception v0

    .line 699
    const-string v3, "afm5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u83b7\u53d6\u76ee\u5f55\u540d\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_5c
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_8

    .line 251
    invoke-direct {p0}, Lbl/afm5;->showFolderPicker()V

    .line 281
    :cond_7
    :goto_7
    return-void

    .line 252
    :cond_8
    iget-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_17

    .line 253
    const/16 v0, 0x50

    iput v0, p0, Lbl/afm5;->quality:I

    .line 254
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 255
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 256
    :cond_17
    iget-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_26

    .line 257
    const/16 v0, 0x40

    iput v0, p0, Lbl/afm5;->quality:I

    .line 258
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 259
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 260
    :cond_26
    iget-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_35

    .line 261
    const/16 v0, 0x20

    iput v0, p0, Lbl/afm5;->quality:I

    .line 262
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 263
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 264
    :cond_35
    iget-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_44

    .line 265
    const/16 v0, 0x7648

    iput v0, p0, Lbl/afm5;->audioQuality:I

    .line 266
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 267
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 268
    :cond_44
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_53

    .line 269
    const/16 v0, 0x7608

    iput v0, p0, Lbl/afm5;->audioQuality:I

    .line 270
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 271
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 272
    :cond_53
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_62

    .line 273
    const-string v0, "avc"

    iput-object v0, p0, Lbl/afm5;->codec:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 275
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7

    .line 276
    :cond_62
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v0, :cond_7

    .line 277
    const-string v0, "hevc"

    iput-object v0, p0, Lbl/afm5;->codec:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 279
    invoke-direct {p0}, Lbl/afm5;->saveSettings()V

    goto :goto_7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const v2, 0x7f0700e8

    .line 114
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    const v0, 0x7f0a00b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    const v0, 0x7f080244

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 119
    const v0, 0x7f08024d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afm5;->downloadPathDetail:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f080246

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 122
    const v0, 0x7f080247

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 123
    const v0, 0x7f080248

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 125
    const v0, 0x7f080249

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 126
    const v0, 0x7f08024a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 128
    const v0, 0x7f08024b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 129
    const v0, 0x7f08024c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 132
    invoke-direct {p0}, Lbl/afm5;->loadSettings()V

    .line 135
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 146
    iget-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    iget-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    iget-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 150
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    iget-object v0, p0, Lbl/afm5;->downloadPathButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 156
    iget-object v0, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 157
    iget-object v0, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 158
    iget-object v0, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 159
    iget-object v0, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 160
    iget-object v0, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 161
    iget-object v0, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 162
    iget-object v0, p0, Lbl/afm5;->codecHevcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 165
    invoke-direct {p0}, Lbl/afm5;->updateUI()V

    .line 167
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lbl/adw;->onDestroyView()V

    .line 309
    invoke-direct {p0}, Lbl/afm5;->hideFolderPicker()V

    .line 310
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 285
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-eqz v0, :cond_1b

    move-object v0, p1

    .line 286
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 288
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 289
    if-nez p2, :cond_1b

    .line 291
    const/4 v2, 0x0

    .line 292
    iget-object v3, p0, Lbl/afm5;->quality1080pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_1c

    iget v3, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1c

    .line 300
    :cond_18
    :goto_18
    invoke-direct {p0, v0, v1}, Lbl/afm5;->updateButtonState(Lcom/bilibili/tv/widget/DrawFrameLayout;Z)V

    .line 303
    :cond_1b
    return-void

    .line 293
    :cond_1c
    iget-object v3, p0, Lbl/afm5;->quality720pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_26

    iget v3, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x40

    if-eq v3, v4, :cond_18

    .line 294
    :cond_26
    iget-object v3, p0, Lbl/afm5;->quality480pButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_30

    iget v3, p0, Lbl/afm5;->quality:I

    const/16 v4, 0x20

    if-eq v3, v4, :cond_18

    .line 295
    :cond_30
    iget-object v3, p0, Lbl/afm5;->audioHighButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_3a

    iget v3, p0, Lbl/afm5;->audioQuality:I

    const/16 v4, 0x7648

    if-eq v3, v4, :cond_18

    .line 296
    :cond_3a
    iget-object v3, p0, Lbl/afm5;->audioNormalButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_44

    iget v3, p0, Lbl/afm5;->audioQuality:I

    const/16 v4, 0x7608

    if-eq v3, v4, :cond_18

    .line 297
    :cond_44
    iget-object v3, p0, Lbl/afm5;->codecAvcButton:Lcom/bilibili/tv/widget/DrawFrameLayout;

    if-ne p1, v3, :cond_52

    iget-object v3, p0, Lbl/afm5;->codec:Ljava/lang/String;

    const-string v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 298
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

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 648
    invoke-super {p0, p1, p2, p3}, Lbl/adw;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 649
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_1f

    .line 650
    const/4 v1, 0x1

    .line 651
    if-eqz p3, :cond_13

    .line 652
    array-length v3, p3

    move v2, v0

    :goto_d
    if-ge v2, v3, :cond_23

    aget v4, p3, v2

    .line 653
    if-eqz v4, :cond_20

    .line 661
    :cond_13
    :goto_13
    if-eqz v0, :cond_1f

    .line 662
    const-string v0, "afm5"

    const-string v1, "\u5b58\u50a8\u6743\u9650\u5df2\u6388\u4e88\uff0c\u91cd\u65b0\u6253\u5f00\u6587\u4ef6\u5939\u9009\u62e9\u5668"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-direct {p0}, Lbl/afm5;->showFolderPicker()V

    .line 666
    :cond_1f
    return-void

    .line 652
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    move v0, v1

    goto :goto_13
.end method
