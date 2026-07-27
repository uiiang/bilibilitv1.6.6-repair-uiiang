.class Lorg/jsoup/safety/Cleaner$ElementMeta;
.super Ljava/lang/Object;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementMeta"
.end annotation


# instance fields
.field el:Lorg/jsoup/nodes/Element;

.field numAttribsDiscarded:I


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;I)V
    .registers 3
    .param p1, "el"    # Lorg/jsoup/nodes/Element;
    .param p2, "numAttribsDiscarded"    # I

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$ElementMeta;->el:Lorg/jsoup/nodes/Element;

    .line 182
    iput p2, p0, Lorg/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    .line 183
    return-void
.end method
