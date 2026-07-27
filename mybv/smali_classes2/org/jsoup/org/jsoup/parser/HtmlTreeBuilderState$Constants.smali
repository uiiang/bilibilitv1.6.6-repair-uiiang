.class final Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Constants"
.end annotation


# static fields
.field static final AfterHeadBody:[Ljava/lang/String;

.field static final BeforeHtmlToHead:[Ljava/lang/String;

.field static final DdDt:[Ljava/lang/String;

.field static final Formatters:[Ljava/lang/String;

.field static final Headings:[Ljava/lang/String;

.field static final InBodyEndAdoptionFormatters:[Ljava/lang/String;

.field static final InBodyEndClosers:[Ljava/lang/String;

.field static final InBodyEndTableFosters:[Ljava/lang/String;

.field static final InBodyStartApplets:[Ljava/lang/String;

.field static final InBodyStartDrop:[Ljava/lang/String;

.field static final InBodyStartEmptyFormatters:[Ljava/lang/String;

.field static final InBodyStartInputAttribs:[Ljava/lang/String;

.field static final InBodyStartLiBreakers:[Ljava/lang/String;

.field static final InBodyStartMedia:[Ljava/lang/String;

.field static final InBodyStartPClosers:[Ljava/lang/String;

.field static final InBodyStartToHead:[Ljava/lang/String;

.field static final InCaptionIgnore:[Ljava/lang/String;

.field static final InCellBody:[Ljava/lang/String;

.field static final InCellCol:[Ljava/lang/String;

.field static final InCellNames:[Ljava/lang/String;

.field static final InCellTable:[Ljava/lang/String;

.field static final InHeadEmpty:[Ljava/lang/String;

.field static final InHeadEnd:[Ljava/lang/String;

.field static final InHeadNoScriptHead:[Ljava/lang/String;

.field static final InHeadNoscriptIgnore:[Ljava/lang/String;

.field static final InHeadRaw:[Ljava/lang/String;

.field static final InRowIgnore:[Ljava/lang/String;

.field static final InRowMissing:[Ljava/lang/String;

.field static final InSelectEnd:[Ljava/lang/String;

.field static final InSelectTableEnd:[Ljava/lang/String;

.field static final InTableAddBody:[Ljava/lang/String;

.field static final InTableBodyEndIgnore:[Ljava/lang/String;

.field static final InTableBodyExit:[Ljava/lang/String;

.field static final InTableEndErr:[Ljava/lang/String;

.field static final InTableEndIgnore:[Ljava/lang/String;

.field static final InTableFoster:[Ljava/lang/String;

.field static final InTableToBody:[Ljava/lang/String;

.field static final InTableToHead:[Ljava/lang/String;

.field static final InTemplateToHead:[Ljava/lang/String;

.field static final InTemplateToTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1747
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "base"

    aput-object v1, v0, v3

    const-string v1, "basefont"

    aput-object v1, v0, v4

    const-string v1, "bgsound"

    aput-object v1, v0, v5

    const-string v1, "command"

    aput-object v1, v0, v6

    const-string v1, "link"

    aput-object v1, v0, v7

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEmpty:[Ljava/lang/String;

    .line 1748
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "noframes"

    aput-object v1, v0, v3

    const-string v1, "style"

    aput-object v1, v0, v4

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadRaw:[Ljava/lang/String;

    .line 1749
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "br"

    aput-object v1, v0, v4

    const-string v1, "html"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEnd:[Ljava/lang/String;

    .line 1750
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "br"

    aput-object v1, v0, v4

    const-string v1, "html"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->AfterHeadBody:[Ljava/lang/String;

    .line 1751
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "br"

    aput-object v1, v0, v4

    const-string v1, "head"

    aput-object v1, v0, v5

    const-string v1, "html"

    aput-object v1, v0, v6

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->BeforeHtmlToHead:[Ljava/lang/String;

    .line 1752
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "basefont"

    aput-object v1, v0, v3

    const-string v1, "bgsound"

    aput-object v1, v0, v4

    const-string v1, "link"

    aput-object v1, v0, v5

    const-string v1, "meta"

    aput-object v1, v0, v6

    const-string v1, "noframes"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "style"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoScriptHead:[Ljava/lang/String;

    .line 1753
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "base"

    aput-object v1, v0, v3

    const-string v1, "basefont"

    aput-object v1, v0, v4

    const-string v1, "bgsound"

    aput-object v1, v0, v5

    const-string v1, "command"

    aput-object v1, v0, v6

    const-string v1, "link"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "meta"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "noframes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "script"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "style"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "template"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    .line 1754
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "article"

    aput-object v1, v0, v4

    const-string v1, "aside"

    aput-object v1, v0, v5

    const-string v1, "blockquote"

    aput-object v1, v0, v6

    const-string v1, "center"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "details"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dir"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "div"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fieldset"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "figcaption"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "figure"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "footer"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "header"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hgroup"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "menu"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nav"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ol"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ul"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 1757
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "h1"

    aput-object v1, v0, v3

    const-string v1, "h2"

    aput-object v1, v0, v4

    const-string v1, "h3"

    aput-object v1, v0, v5

    const-string v1, "h4"

    aput-object v1, v0, v6

    const-string v1, "h5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "h6"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 1758
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "div"

    aput-object v1, v0, v4

    const-string v1, "p"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 1759
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dd"

    aput-object v1, v0, v3

    const-string v1, "dt"

    aput-object v1, v0, v4

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 1760
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "b"

    aput-object v1, v0, v3

    const-string v1, "big"

    aput-object v1, v0, v4

    const-string v1, "code"

    aput-object v1, v0, v5

    const-string v1, "em"

    aput-object v1, v0, v6

    const-string v1, "font"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "small"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "strike"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "strong"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "u"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Formatters:[Ljava/lang/String;

    .line 1761
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "applet"

    aput-object v1, v0, v3

    const-string v1, "marquee"

    aput-object v1, v0, v4

    const-string v1, "object"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 1762
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "area"

    aput-object v1, v0, v3

    const-string v1, "br"

    aput-object v1, v0, v4

    const-string v1, "embed"

    aput-object v1, v0, v5

    const-string v1, "img"

    aput-object v1, v0, v6

    const-string v1, "keygen"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wbr"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartEmptyFormatters:[Ljava/lang/String;

    .line 1763
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "param"

    aput-object v1, v0, v3

    const-string v1, "source"

    aput-object v1, v0, v4

    const-string v1, "track"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 1764
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "action"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "prompt"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    .line 1765
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "caption"

    aput-object v1, v0, v3

    const-string v1, "col"

    aput-object v1, v0, v4

    const-string v1, "colgroup"

    aput-object v1, v0, v5

    const-string v1, "frame"

    aput-object v1, v0, v6

    const-string v1, "head"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    .line 1766
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "article"

    aput-object v1, v0, v4

    const-string v1, "aside"

    aput-object v1, v0, v5

    const-string v1, "blockquote"

    aput-object v1, v0, v6

    const-string v1, "button"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "details"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dir"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "div"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fieldset"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "figcaption"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "figure"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "footer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "header"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hgroup"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "listing"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "menu"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "nav"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pre"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ul"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    .line 1769
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v3

    const-string v1, "b"

    aput-object v1, v0, v4

    const-string v1, "big"

    aput-object v1, v0, v5

    const-string v1, "code"

    aput-object v1, v0, v6

    const-string v1, "em"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "font"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nobr"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "small"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "strike"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "strong"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "u"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 1770
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "table"

    aput-object v1, v0, v3

    const-string v1, "tbody"

    aput-object v1, v0, v4

    const-string v1, "tfoot"

    aput-object v1, v0, v5

    const-string v1, "thead"

    aput-object v1, v0, v6

    const-string v1, "tr"

    aput-object v1, v0, v7

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    .line 1771
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "tbody"

    aput-object v1, v0, v3

    const-string v1, "tfoot"

    aput-object v1, v0, v4

    const-string v1, "thead"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToBody:[Ljava/lang/String;

    .line 1772
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "td"

    aput-object v1, v0, v3

    const-string v1, "th"

    aput-object v1, v0, v4

    const-string v1, "tr"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableAddBody:[Ljava/lang/String;

    .line 1773
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "script"

    aput-object v1, v0, v3

    const-string v1, "style"

    aput-object v1, v0, v4

    const-string v1, "template"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToHead:[Ljava/lang/String;

    .line 1774
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "td"

    aput-object v1, v0, v3

    const-string v1, "th"

    aput-object v1, v0, v4

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellNames:[Ljava/lang/String;

    .line 1775
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "caption"

    aput-object v1, v0, v4

    const-string v1, "col"

    aput-object v1, v0, v5

    const-string v1, "colgroup"

    aput-object v1, v0, v6

    const-string v1, "html"

    aput-object v1, v0, v7

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellBody:[Ljava/lang/String;

    .line 1776
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "table"

    aput-object v1, v0, v3

    const-string v1, "tbody"

    aput-object v1, v0, v4

    const-string v1, "tfoot"

    aput-object v1, v0, v5

    const-string v1, "thead"

    aput-object v1, v0, v6

    const-string v1, "tr"

    aput-object v1, v0, v7

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellTable:[Ljava/lang/String;

    .line 1777
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "caption"

    aput-object v1, v0, v3

    const-string v1, "col"

    aput-object v1, v0, v4

    const-string v1, "colgroup"

    aput-object v1, v0, v5

    const-string v1, "tbody"

    aput-object v1, v0, v6

    const-string v1, "td"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    .line 1778
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "caption"

    aput-object v1, v0, v4

    const-string v1, "col"

    aput-object v1, v0, v5

    const-string v1, "colgroup"

    aput-object v1, v0, v6

    const-string v1, "html"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndErr:[Ljava/lang/String;

    .line 1779
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "table"

    aput-object v1, v0, v3

    const-string v1, "tbody"

    aput-object v1, v0, v4

    const-string v1, "tfoot"

    aput-object v1, v0, v5

    const-string v1, "thead"

    aput-object v1, v0, v6

    const-string v1, "tr"

    aput-object v1, v0, v7

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    .line 1780
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "caption"

    aput-object v1, v0, v3

    const-string v1, "col"

    aput-object v1, v0, v4

    const-string v1, "colgroup"

    aput-object v1, v0, v5

    const-string v1, "tbody"

    aput-object v1, v0, v6

    const-string v1, "tfoot"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "thead"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyExit:[Ljava/lang/String;

    .line 1781
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "caption"

    aput-object v1, v0, v4

    const-string v1, "col"

    aput-object v1, v0, v5

    const-string v1, "colgroup"

    aput-object v1, v0, v6

    const-string v1, "html"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyEndIgnore:[Ljava/lang/String;

    .line 1782
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "caption"

    aput-object v1, v0, v3

    const-string v1, "col"

    aput-object v1, v0, v4

    const-string v1, "colgroup"

    aput-object v1, v0, v5

    const-string v1, "tbody"

    aput-object v1, v0, v6

    const-string v1, "tfoot"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowMissing:[Ljava/lang/String;

    .line 1783
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "caption"

    aput-object v1, v0, v4

    const-string v1, "col"

    aput-object v1, v0, v5

    const-string v1, "colgroup"

    aput-object v1, v0, v6

    const-string v1, "html"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "th"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowIgnore:[Ljava/lang/String;

    .line 1784
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "input"

    aput-object v1, v0, v3

    const-string v1, "keygen"

    aput-object v1, v0, v4

    const-string v1, "textarea"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    .line 1785
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "caption"

    aput-object v1, v0, v3

    const-string v1, "table"

    aput-object v1, v0, v4

    const-string v1, "tbody"

    aput-object v1, v0, v5

    const-string v1, "td"

    aput-object v1, v0, v6

    const-string v1, "tfoot"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectTableEnd:[Ljava/lang/String;

    .line 1786
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "tbody"

    aput-object v1, v0, v3

    const-string v1, "tfoot"

    aput-object v1, v0, v4

    const-string v1, "thead"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndIgnore:[Ljava/lang/String;

    .line 1787
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "head"

    aput-object v1, v0, v3

    const-string v1, "noscript"

    aput-object v1, v0, v4

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoscriptIgnore:[Ljava/lang/String;

    .line 1788
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "col"

    aput-object v1, v0, v4

    const-string v1, "colgroup"

    aput-object v1, v0, v5

    const-string v1, "html"

    aput-object v1, v0, v6

    const-string v1, "tbody"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    .line 1789
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "base"

    aput-object v1, v0, v3

    const-string v1, "basefont"

    aput-object v1, v0, v4

    const-string v1, "bgsound"

    aput-object v1, v0, v5

    const-string v1, "link"

    aput-object v1, v0, v6

    const-string v1, "meta"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "noframes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "script"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "style"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "template"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToHead:[Ljava/lang/String;

    .line 1790
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "caption"

    aput-object v1, v0, v3

    const-string v1, "colgroup"

    aput-object v1, v0, v4

    const-string v1, "tbody"

    aput-object v1, v0, v5

    const-string v1, "tfoot"

    aput-object v1, v0, v6

    const-string v1, "thead"

    aput-object v1, v0, v7

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToTable:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 1746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
