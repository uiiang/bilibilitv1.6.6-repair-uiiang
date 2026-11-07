.class Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;
.super Ljava/lang/Object;
.source "TxtParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ebook/parser/TxtParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeadingMatch"
.end annotation


# instance fields
.field final isVolume:Z

.field final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;->title:Ljava/lang/String;

    .line 1010
    iput-boolean p2, p0, Lcom/bilibili/tv/ebook/parser/TxtParser$HeadingMatch;->isVolume:Z

    .line 1011
    return-void
.end method
