.class Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;
.super Ljava/lang/Object;
.source "TxtParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ebook/parser/TxtParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChapterDraft"
.end annotation


# instance fields
.field final depth:I

.field final detected:Z

.field final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->title:Ljava/lang/String;

    .line 416
    iput p2, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->depth:I

    .line 417
    iput-object p3, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->lines:Ljava/util/List;

    .line 418
    iput-boolean p4, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$ChapterDraft;->detected:Z

    .line 419
    return-void
.end method
