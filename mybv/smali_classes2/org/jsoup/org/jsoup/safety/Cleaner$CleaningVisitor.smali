.class final Lorg/jsoup/safety/Cleaner$CleaningVisitor;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CleaningVisitor"
.end annotation


# instance fields
.field private destination:Lorg/jsoup/nodes/Element;

.field private numDiscarded:I

.field private final root:Lorg/jsoup/nodes/Element;

.field final synthetic this$0:Lorg/jsoup/safety/Cleaner;


# direct methods
.method private constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .registers 5
    .param p2, "root"    # Lorg/jsoup/nodes/Element;
    .param p3, "destination"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 113
    iput-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    .line 114
    iput-object p3, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Lorg/jsoup/safety/Cleaner$1;)V
    .registers 5
    .param p1, "x0"    # Lorg/jsoup/safety/Cleaner;
    .param p2, "x1"    # Lorg/jsoup/nodes/Element;
    .param p3, "x2"    # Lorg/jsoup/nodes/Element;
    .param p4, "x3"    # Lorg/jsoup/safety/Cleaner$1;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jsoup/safety/Cleaner$CleaningVisitor;)I
    .registers 2
    .param p0, "x0"    # Lorg/jsoup/safety/Cleaner$CleaningVisitor;

    .prologue
    .line 107
    iget v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    return v0
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .registers 12
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 118
    instance-of v7, p1, Lorg/jsoup/nodes/Element;

    if-eqz v7, :cond_39

    move-object v5, p1

    .line 119
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 121
    .local v5, "sourceEl":Lorg/jsoup/nodes/Element;
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    # getter for: Lorg/jsoup/safety/Cleaner;->safelist:Lorg/jsoup/safety/Safelist;
    invoke-static {v7}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Safelist;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 122
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    # invokes: Lorg/jsoup/safety/Cleaner;->createSafeElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;
    invoke-static {v7, v5}, Lorg/jsoup/safety/Cleaner;->access$100(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;

    move-result-object v3

    .line 123
    .local v3, "meta":Lorg/jsoup/safety/Cleaner$ElementMeta;
    iget-object v0, v3, Lorg/jsoup/safety/Cleaner$ElementMeta;->el:Lorg/jsoup/nodes/Element;

    .line 124
    .local v0, "destChild":Lorg/jsoup/nodes/Element;
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 126
    iget v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    iget v8, v3, Lorg/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    add-int/2addr v7, v8

    iput v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 127
    iput-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 142
    .end local v0    # "destChild":Lorg/jsoup/nodes/Element;
    .end local v3    # "meta":Lorg/jsoup/safety/Cleaner$ElementMeta;
    .end local v5    # "sourceEl":Lorg/jsoup/nodes/Element;
    :cond_2d
    :goto_2d
    return-void

    .line 128
    .restart local v5    # "sourceEl":Lorg/jsoup/nodes/Element;
    :cond_2e
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    if-eq p1, v7, :cond_2d

    .line 129
    iget v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    goto :goto_2d

    .line 131
    .end local v5    # "sourceEl":Lorg/jsoup/nodes/Element;
    :cond_39
    instance-of v7, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v7, :cond_4f

    move-object v6, p1

    .line 132
    check-cast v6, Lorg/jsoup/nodes/TextNode;

    .line 133
    .local v6, "sourceText":Lorg/jsoup/nodes/TextNode;
    new-instance v2, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v6}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "destText":Lorg/jsoup/nodes/TextNode;
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v7, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_2d

    .line 135
    .end local v2    # "destText":Lorg/jsoup/nodes/TextNode;
    .end local v6    # "sourceText":Lorg/jsoup/nodes/TextNode;
    :cond_4f
    instance-of v7, p1, Lorg/jsoup/nodes/DataNode;

    if-eqz v7, :cond_79

    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    # getter for: Lorg/jsoup/safety/Cleaner;->safelist:Lorg/jsoup/safety/Safelist;
    invoke-static {v7}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Safelist;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    move-object v4, p1

    .line 136
    check-cast v4, Lorg/jsoup/nodes/DataNode;

    .line 137
    .local v4, "sourceData":Lorg/jsoup/nodes/DataNode;
    new-instance v1, Lorg/jsoup/nodes/DataNode;

    invoke-virtual {v4}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "destData":Lorg/jsoup/nodes/DataNode;
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v7, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_2d

    .line 140
    .end local v1    # "destData":Lorg/jsoup/nodes/DataNode;
    .end local v4    # "sourceData":Lorg/jsoup/nodes/DataNode;
    :cond_79
    iget v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    goto :goto_2d
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .registers 5
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 145
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    # getter for: Lorg/jsoup/safety/Cleaner;->safelist:Lorg/jsoup/safety/Safelist;
    invoke-static {v0}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 146
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 148
    :cond_1c
    return-void
.end method
