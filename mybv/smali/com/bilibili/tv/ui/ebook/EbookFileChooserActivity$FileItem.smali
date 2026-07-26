.class Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;
.super Ljava/lang/Object;
.source "EbookFileChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileItem"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field isDirectory:Z


# direct methods
.method constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;->file:Ljava/io/File;

    .line 336
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/ebook/EbookFileChooserActivity$FileItem;->isDirectory:Z

    .line 337
    return-void
.end method
