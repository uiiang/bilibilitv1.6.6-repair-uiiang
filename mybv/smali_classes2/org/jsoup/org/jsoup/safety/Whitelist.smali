.class public Lorg/jsoup/safety/Whitelist;
.super Lorg/jsoup/safety/Safelist;
.source "Whitelist.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/jsoup/safety/Safelist;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/Safelist;)V
    .registers 2
    .param p1, "copy"    # Lorg/jsoup/safety/Safelist;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/jsoup/safety/Safelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    .line 25
    return-void
.end method

.method public static basic()Lorg/jsoup/safety/Whitelist;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->basic()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static basicWithImages()Lorg/jsoup/safety/Whitelist;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->basicWithImages()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static none()Lorg/jsoup/safety/Whitelist;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->none()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static relaxed()Lorg/jsoup/safety/Whitelist;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->relaxed()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static simpleText()Lorg/jsoup/safety/Whitelist;
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->simpleText()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 62
    return-object p0
.end method

.method public bridge synthetic addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 5

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/Whitelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/Safelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 74
    return-object p0
.end method

.method public bridge synthetic addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 5

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 92
    return-object p0
.end method

.method public bridge synthetic addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 3

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public varargs addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .registers 2
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 50
    return-object p0
.end method

.method getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .registers 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method protected isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z
    .registers 5
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "el"    # Lorg/jsoup/nodes/Element;
    .param p3, "attr"    # Lorg/jsoup/nodes/Attribute;

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result v0

    return v0
.end method

.method protected isSafeTag(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preserveRelativeLinks(Z)Lorg/jsoup/safety/Safelist;
    .registers 3

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/Whitelist;->preserveRelativeLinks(Z)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public preserveRelativeLinks(Z)Lorg/jsoup/safety/Whitelist;
    .registers 2
    .param p1, "preserve"    # Z

    .prologue
    .line 85
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks(Z)Lorg/jsoup/safety/Safelist;

    .line 86
    return-object p0
.end method

.method public bridge synthetic removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/Whitelist;->removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/lang/String;

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/Safelist;->removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 68
    return-object p0
.end method

.method public bridge synthetic removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/Whitelist;->removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/Safelist;->removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 80
    return-object p0
.end method

.method public bridge synthetic removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 5

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/Whitelist;->removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "removeProtocols"    # [Ljava/lang/String;

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/Safelist;->removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 98
    return-object p0
.end method

.method public bridge synthetic removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .registers 3

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/Whitelist;->removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .registers 2
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 56
    return-object p0
.end method
