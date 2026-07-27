.class public Lorg/jsoup/safety/Safelist;
.super Ljava/lang/Object;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/Safelist$TagName;,
        Lorg/jsoup/safety/Safelist$AttributeKey;,
        Lorg/jsoup/safety/Safelist$AttributeValue;,
        Lorg/jsoup/safety/Safelist$Protocol;,
        Lorg/jsoup/safety/Safelist$TypedValue;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Set",
            "<",
            "Lorg/jsoup/safety/Safelist$AttributeKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private enforcedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/safety/Safelist$AttributeKey;",
            "Lorg/jsoup/safety/Safelist$AttributeValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private preserveRelativeLinks:Z

.field private protocols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Map",
            "<",
            "Lorg/jsoup/safety/Safelist$AttributeKey;",
            "Ljava/util/Set",
            "<",
            "Lorg/jsoup/safety/Safelist$Protocol;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private tagNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jsoup/safety/Safelist$TagName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    .line 197
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/Safelist;)V
    .registers 4
    .param p1, "copy"    # Lorg/jsoup/safety/Safelist;

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/jsoup/safety/Safelist;-><init>()V

    .line 205
    iget-object v0, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    iget-object v1, p1, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v0, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    iget-object v1, p1, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 207
    iget-object v0, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    iget-object v1, p1, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    iget-object v0, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    iget-object v1, p1, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 209
    iget-boolean v0, p1, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    iput-boolean v0, p0, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    .line 210
    return-void
.end method

.method public static basic()Lorg/jsoup/safety/Safelist;
    .registers 9

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    new-instance v0, Lorg/jsoup/safety/Safelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Safelist;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v5

    const-string v2, "b"

    aput-object v2, v1, v6

    const-string v2, "blockquote"

    aput-object v2, v1, v7

    const-string v2, "br"

    aput-object v2, v1, v8

    const-string v2, "cite"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "em"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "li"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ol"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "p"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "pre"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "q"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "small"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "span"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "strike"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "sub"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "sup"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "ul"

    aput-object v3, v1, v2

    .line 110
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "a"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "href"

    aput-object v3, v2, v5

    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "blockquote"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cite"

    aput-object v3, v2, v5

    .line 116
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "q"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cite"

    aput-object v3, v2, v5

    .line 117
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "a"

    const-string v2, "href"

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "ftp"

    aput-object v4, v3, v5

    const-string v4, "http"

    aput-object v4, v3, v6

    const-string v4, "https"

    aput-object v4, v3, v7

    const-string v4, "mailto"

    aput-object v4, v3, v8

    .line 119
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "blockquote"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "cite"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "a"

    const-string v2, "rel"

    const-string v3, "nofollow"

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public static basicWithImages()Lorg/jsoup/safety/Safelist;
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-static {}, Lorg/jsoup/safety/Safelist;->basic()Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "img"

    aput-object v2, v1, v5

    .line 136
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "img"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "align"

    aput-object v3, v2, v5

    const-string v3, "alt"

    aput-object v3, v2, v6

    const-string v3, "height"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string v4, "src"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "width"

    aput-object v4, v2, v3

    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "img"

    const-string v2, "src"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method private isValidAnchor(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 565
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, ".*\\s.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static none()Lorg/jsoup/safety/Safelist;
    .registers 1

    .prologue
    .line 78
    new-instance v0, Lorg/jsoup/safety/Safelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Safelist;-><init>()V

    return-object v0
.end method

.method public static relaxed()Lorg/jsoup/safety/Safelist;
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    new-instance v0, Lorg/jsoup/safety/Safelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Safelist;-><init>()V

    const/16 v1, 0x2a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v5

    const-string v2, "b"

    aput-object v2, v1, v6

    const-string v2, "blockquote"

    aput-object v2, v1, v7

    const-string v2, "br"

    aput-object v2, v1, v8

    const-string v2, "caption"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "cite"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "col"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "colgroup"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "div"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "dl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "em"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "h1"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "h2"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "h3"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "h4"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "h5"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "h6"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "i"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "img"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "li"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "ol"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "p"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "pre"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "q"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "small"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "span"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "strike"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "sub"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "sup"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "table"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "tbody"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "td"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "tfoot"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "th"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "thead"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "tr"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "u"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "ul"

    aput-object v3, v1, v2

    .line 154
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "a"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "href"

    aput-object v3, v2, v5

    const-string v3, "title"

    aput-object v3, v2, v6

    .line 161
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "blockquote"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cite"

    aput-object v3, v2, v5

    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "col"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "span"

    aput-object v3, v2, v5

    const-string v3, "width"

    aput-object v3, v2, v6

    .line 163
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "colgroup"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "span"

    aput-object v3, v2, v5

    const-string v3, "width"

    aput-object v3, v2, v6

    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "img"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "align"

    aput-object v3, v2, v5

    const-string v3, "alt"

    aput-object v3, v2, v6

    const-string v3, "height"

    aput-object v3, v2, v7

    const-string v3, "src"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "width"

    aput-object v4, v2, v3

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "ol"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "start"

    aput-object v3, v2, v5

    const-string v3, "type"

    aput-object v3, v2, v6

    .line 166
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "q"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cite"

    aput-object v3, v2, v5

    .line 167
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "table"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "summary"

    aput-object v3, v2, v5

    const-string v3, "width"

    aput-object v3, v2, v6

    .line 168
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "td"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "abbr"

    aput-object v3, v2, v5

    const-string v3, "axis"

    aput-object v3, v2, v6

    const-string v3, "colspan"

    aput-object v3, v2, v7

    const-string v3, "rowspan"

    aput-object v3, v2, v8

    const-string v3, "width"

    aput-object v3, v2, v9

    .line 169
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "th"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "abbr"

    aput-object v3, v2, v5

    const-string v3, "axis"

    aput-object v3, v2, v6

    const-string v3, "colspan"

    aput-object v3, v2, v7

    const-string v3, "rowspan"

    aput-object v3, v2, v8

    const-string v3, "scope"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "width"

    aput-object v4, v2, v3

    .line 170
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "ul"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v5

    .line 173
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "a"

    const-string v2, "href"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "ftp"

    aput-object v4, v3, v5

    const-string v4, "http"

    aput-object v4, v3, v6

    const-string v4, "https"

    aput-object v4, v3, v7

    const-string v4, "mailto"

    aput-object v4, v3, v8

    .line 175
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "blockquote"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "cite"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "img"

    const-string v2, "src"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    .line 178
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "q"

    const-string v2, "cite"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v5

    const-string v4, "https"

    aput-object v4, v3, v6

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public static simpleText()Lorg/jsoup/safety/Safelist;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Lorg/jsoup/safety/Safelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Safelist;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "b"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "em"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "i"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "u"

    aput-object v3, v1, v2

    .line 89
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method private testValidProtocol(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;Ljava/util/Set;)Z
    .registers 11
    .param p1, "el"    # Lorg/jsoup/nodes/Element;
    .param p2, "attr"    # Lorg/jsoup/nodes/Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "Lorg/jsoup/nodes/Attribute;",
            "Ljava/util/Set",
            "<",
            "Lorg/jsoup/safety/Safelist$Protocol;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "protocols":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    const/4 v3, 0x1

    .line 538
    invoke-virtual {p2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    .line 540
    invoke-virtual {p2}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 541
    :cond_13
    iget-boolean v4, p0, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    if-nez v4, :cond_1a

    .line 542
    invoke-virtual {p2, v2}, Lorg/jsoup/nodes/Attribute;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    :cond_1a
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/safety/Safelist$Protocol;

    .line 545
    .local v1, "protocol":Lorg/jsoup/safety/Safelist$Protocol;
    invoke-virtual {v1}, Lorg/jsoup/safety/Safelist$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "prot":Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 548
    invoke-direct {p0, v2}, Lorg/jsoup/safety/Safelist;->isValidAnchor(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 561
    .end local v0    # "prot":Ljava/lang/String;
    .end local v1    # "protocol":Lorg/jsoup/safety/Safelist$Protocol;
    :goto_3c
    return v3

    .line 555
    .restart local v0    # "prot":Ljava/lang/String;
    .restart local v1    # "protocol":Lorg/jsoup/safety/Safelist$Protocol;
    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_3c

    .line 561
    .end local v0    # "prot":Ljava/lang/String;
    .end local v1    # "protocol":Lorg/jsoup/safety/Safelist$Protocol;
    :cond_5b
    const/4 v3, 0x0

    goto :goto_3c
.end method


# virtual methods
.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 266
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 267
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 268
    array-length v4, p2

    if-lez v4, :cond_30

    const/4 v4, 0x1

    :goto_b
    const-string v6, "No attribute names supplied."

    invoke-static {v4, v6}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 270
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v3

    .line 271
    .local v3, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 273
    .local v0, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    array-length v4, p2

    :goto_1f
    if-ge v5, v4, :cond_32

    aget-object v2, p2, v5

    .line 274
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 275
    invoke-static {v2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .end local v0    # "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "tagName":Lorg/jsoup/safety/Safelist$TagName;
    :cond_30
    move v4, v5

    .line 268
    goto :goto_b

    .line 277
    .restart local v0    # "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    .restart local v3    # "tagName":Lorg/jsoup/safety/Safelist$TagName;
    :cond_32
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 278
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 279
    .local v1, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 283
    .end local v1    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    :goto_45
    return-object p0

    .line 281
    :cond_46
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 345
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 346
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 348
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v3

    .line 349
    .local v3, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-static {p2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v0

    .line 351
    .local v0, "attrKey":Lorg/jsoup/safety/Safelist$AttributeKey;
    invoke-static {p3}, Lorg/jsoup/safety/Safelist$AttributeValue;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeValue;

    move-result-object v2

    .line 353
    .local v2, "attrVal":Lorg/jsoup/safety/Safelist$AttributeValue;
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 354
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :goto_2d
    return-object p0

    .line 356
    :cond_2e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v1, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 423
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 424
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 425
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 427
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v5

    .line 428
    .local v5, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    invoke-static {p2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v0

    .line 432
    .local v0, "attrKey":Lorg/jsoup/safety/Safelist$AttributeKey;
    iget-object v6, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 433
    iget-object v6, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 438
    .local v1, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    :goto_21
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 439
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 444
    .local v3, "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    :goto_2d
    array-length v7, p3

    const/4 v6, 0x0

    :goto_2f
    if-ge v6, v7, :cond_54

    aget-object v4, p3, v6

    .line 445
    .local v4, "protocol":Ljava/lang/String;
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 446
    invoke-static {v4}, Lorg/jsoup/safety/Safelist$Protocol;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$Protocol;

    move-result-object v2

    .line 447
    .local v2, "prot":Lorg/jsoup/safety/Safelist$Protocol;
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 435
    .end local v1    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    .end local v2    # "prot":Lorg/jsoup/safety/Safelist$Protocol;
    .end local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    .end local v4    # "protocol":Ljava/lang/String;
    :cond_40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 436
    .restart local v1    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    iget-object v6, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 441
    :cond_4b
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 442
    .restart local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 449
    :cond_54
    return-object p0
.end method

.method public varargs addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 7
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 221
    array-length v2, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_18

    aget-object v0, p1, v1

    .line 222
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-static {v0}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 225
    .end local v0    # "tagName":Ljava/lang/String;
    :cond_18
    return-object p0
.end method

.method getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .registers 9
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 569
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 570
    .local v0, "attrs":Lorg/jsoup/nodes/Attributes;
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v3

    .line 571
    .local v3, "tag":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 572
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 573
    .local v2, "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 574
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/safety/Safelist$AttributeKey;

    invoke-virtual {v4}, Lorg/jsoup/safety/Safelist$AttributeKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/safety/Safelist$AttributeValue;

    invoke-virtual {v4}, Lorg/jsoup/safety/Safelist$AttributeValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    goto :goto_21

    .line 577
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    .end local v2    # "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    :cond_45
    return-object v0
.end method

.method protected isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z
    .registers 14
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "el"    # Lorg/jsoup/nodes/Element;
    .param p3, "attr"    # Lorg/jsoup/nodes/Attribute;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 509
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v6

    .line 510
    .local v6, "tag":Lorg/jsoup/safety/Safelist$TagName;
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v4

    .line 512
    .local v4, "key":Lorg/jsoup/safety/Safelist$AttributeKey;
    iget-object v7, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 513
    .local v5, "okSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    if-eqz v5, :cond_45

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 514
    iget-object v7, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 515
    iget-object v7, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 517
    .local v1, "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-direct {p0, p2, p3, v7}, Lorg/jsoup/safety/Safelist;->testValidProtocol(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_43

    :cond_40
    move v7, v9

    :goto_41
    move v9, v7

    .line 532
    .end local v1    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    :cond_42
    :goto_42
    return v9

    .restart local v1    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    :cond_43
    move v7, v8

    .line 517
    goto :goto_41

    .line 523
    .end local v1    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    :cond_45
    iget-object v7, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 524
    .local v2, "enforcedSet":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    if-eqz v2, :cond_6a

    .line 525
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    move-result-object v3

    .line 526
    .local v3, "expect":Lorg/jsoup/nodes/Attributes;
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "attrKey":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 528
    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_42

    .line 532
    .end local v0    # "attrKey":Ljava/lang/String;
    .end local v3    # "expect":Lorg/jsoup/nodes/Attributes;
    :cond_6a
    const-string v7, ":all"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7a

    const-string v7, ":all"

    invoke-virtual {p0, v7, p2, p3}, Lorg/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result v7

    if-nez v7, :cond_42

    :cond_7a
    move v9, v8

    goto :goto_42
.end method

.method protected isSafeTag(Ljava/lang/String;)Z
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public preserveRelativeLinks(Z)Lorg/jsoup/safety/Safelist;
    .registers 2
    .param p1, "preserve"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    .line 403
    return-object p0
.end method

.method public varargs removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 302
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 303
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 304
    array-length v5, p2

    if-lez v5, :cond_2b

    const/4 v5, 0x1

    :goto_b
    const-string v7, "No attribute names supplied."

    invoke-static {v5, v7}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 306
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v4

    .line 307
    .local v4, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 308
    .local v0, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    array-length v5, p2

    :goto_1a
    if-ge v6, v5, :cond_2d

    aget-object v2, p2, v6

    .line 309
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 310
    invoke-static {v2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .end local v0    # "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "tagName":Lorg/jsoup/safety/Safelist$TagName;
    :cond_2b
    move v5, v6

    .line 304
    goto :goto_b

    .line 312
    .restart local v0    # "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    .restart local v4    # "tagName":Lorg/jsoup/safety/Safelist$TagName;
    :cond_2d
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 313
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 314
    .local v1, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 316
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 317
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .end local v1    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    :cond_53
    const-string v5, ":all"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 320
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_65
    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/safety/Safelist$TagName;

    .line 321
    .local v3, "name":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v6, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 322
    .restart local v1    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 324
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 325
    iget-object v6, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 327
    .end local v1    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    .end local v3    # "name":Lorg/jsoup/safety/Safelist$TagName;
    :cond_88
    return-object p0
.end method

.method public removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 372
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 374
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v2

    .line 375
    .local v2, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 376
    invoke-static {p2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v0

    .line 377
    .local v0, "attrKey":Lorg/jsoup/safety/Safelist$AttributeKey;
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 378
    .local v1, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 381
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v0    # "attrKey":Lorg/jsoup/safety/Safelist$AttributeKey;
    .end local v1    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    :cond_34
    return-object p0
.end method

.method public varargs removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "removeProtocols"    # [Ljava/lang/String;

    .prologue
    .line 465
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 466
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 467
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 469
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v3

    .line 470
    .local v3, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    invoke-static {p2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v0

    .line 474
    .local v0, "attr":Lorg/jsoup/safety/Safelist$AttributeKey;
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Cannot remove a protocol that is not set."

    invoke-static {v5, v6}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 475
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 476
    .local v4, "tagProtocols":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Cannot remove a protocol that is not set."

    invoke-static {v5, v6}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 478
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 479
    .local v1, "attrProtocols":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    array-length v6, p3

    const/4 v5, 0x0

    :goto_35
    if-ge v5, v6, :cond_46

    aget-object v2, p3, v5

    .line 480
    .local v2, "protocol":Ljava/lang/String;
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 481
    invoke-static {v2}, Lorg/jsoup/safety/Safelist$Protocol;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$Protocol;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 484
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_46
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 485
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 487
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_5a
    return-object p0
.end method

.method public varargs removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 7
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 237
    array-length v3, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_2a

    aget-object v0, p1, v2

    .line 238
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 239
    invoke-static {v0}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v1

    .line 241
    .local v1, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 242
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 247
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "tagName":Lorg/jsoup/safety/Safelist$TagName;
    :cond_2a
    return-object p0
.end method
