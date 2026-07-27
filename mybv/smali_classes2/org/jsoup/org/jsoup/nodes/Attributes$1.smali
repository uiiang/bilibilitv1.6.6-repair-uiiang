.class Lorg/jsoup/nodes/Attributes$1;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/jsoup/nodes/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lorg/jsoup/nodes/Attributes;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Attributes;)V
    .registers 3
    .param p1, "this$0"    # Lorg/jsoup/nodes/Attributes;

    .prologue
    .line 281
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .prologue
    .line 286
    :goto_0
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    # getter for: Lorg/jsoup/nodes/Attributes;->size:I
    invoke-static {v1}, Lorg/jsoup/nodes/Attributes;->access$000(Lorg/jsoup/nodes/Attributes;)I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 287
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget-object v1, v1, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    aget-object v1, v1, v2

    # invokes: Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lorg/jsoup/nodes/Attributes;->access$100(Lorg/jsoup/nodes/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 288
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    goto :goto_0

    .line 293
    :cond_21
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    # getter for: Lorg/jsoup/nodes/Attributes;->size:I
    invoke-static {v1}, Lorg/jsoup/nodes/Attributes;->access$000(Lorg/jsoup/nodes/Attributes;)I

    move-result v1

    if-ge v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes$1;->next()Lorg/jsoup/nodes/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jsoup/nodes/Attribute;
    .registers 5

    .prologue
    .line 298
    new-instance v0, Lorg/jsoup/nodes/Attribute;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget-object v1, v1, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget-object v2, v2, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 299
    .local v0, "attr":Lorg/jsoup/nodes/Attribute;
    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 300
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    # invokes: Lorg/jsoup/nodes/Attributes;->remove(I)V
    invoke-static {v0, v1}, Lorg/jsoup/nodes/Attributes;->access$200(Lorg/jsoup/nodes/Attributes;I)V

    .line 306
    return-void
.end method
