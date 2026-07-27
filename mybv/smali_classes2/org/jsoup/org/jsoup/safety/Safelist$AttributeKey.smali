.class Lorg/jsoup/safety/Safelist$AttributeKey;
.super Lorg/jsoup/safety/Safelist$TypedValue;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Safelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributeKey"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lorg/jsoup/safety/Safelist$TypedValue;-><init>(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method static valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 598
    new-instance v0, Lorg/jsoup/safety/Safelist$AttributeKey;

    invoke-direct {v0, p0}, Lorg/jsoup/safety/Safelist$AttributeKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
