.class final enum Lorg/jsoup/parser/TokeniserState$1;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .registers 5
    .param p1, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p2, "r"    # Lorg/jsoup/parser/CharacterReader;

    .prologue
    .line 12
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v1

    sparse-switch v1, :sswitch_data_30

    .line 27
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consumeData()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 31
    .end local v0    # "data":Ljava/lang/String;
    :goto_e
    return-void

    .line 14
    :sswitch_f
    sget-object v1, Lorg/jsoup/parser/TokeniserState$1;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_e

    .line 17
    :sswitch_15
    sget-object v1, Lorg/jsoup/parser/TokeniserState$1;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_e

    .line 20
    :sswitch_1b
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 21
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_e

    .line 24
    :sswitch_26
    new-instance v1, Lorg/jsoup/parser/Token$EOF;

    invoke-direct {v1}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    goto :goto_e

    .line 12
    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_1b
        0x26 -> :sswitch_f
        0x3c -> :sswitch_15
        0xffff -> :sswitch_26
    .end sparse-switch
.end method
