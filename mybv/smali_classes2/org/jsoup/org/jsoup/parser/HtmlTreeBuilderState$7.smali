.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# static fields
.field private static final MaxStackScan:I = 0x18


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private inBodyEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 11
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 672
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v1

    .line 673
    .local v1, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "name":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_230

    :cond_12
    :goto_12
    packed-switch v6, :pswitch_data_276

    .line 777
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d7

    .line 778
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyEndTagAdoption(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    .line 806
    :goto_21
    return v4

    .line 675
    :sswitch_22
    const-string v7, "template"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move v6, v4

    goto :goto_12

    :sswitch_2c
    const-string v7, "sarcasm"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move v6, v5

    goto :goto_12

    :sswitch_36
    const-string v7, "span"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v6, 0x2

    goto :goto_12

    :sswitch_40
    const-string v7, "li"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v6, 0x3

    goto :goto_12

    :sswitch_4a
    const-string v7, "body"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v6, 0x4

    goto :goto_12

    :sswitch_54
    const-string v7, "html"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v6, 0x5

    goto :goto_12

    :sswitch_5e
    const-string v7, "form"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v6, 0x6

    goto :goto_12

    :sswitch_68
    const-string v7, "p"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v6, 0x7

    goto :goto_12

    :sswitch_72
    const-string v7, "dd"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0x8

    goto :goto_12

    :sswitch_7d
    const-string v7, "dt"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0x9

    goto :goto_12

    :sswitch_88
    const-string v7, "h1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0xa

    goto :goto_12

    :sswitch_93
    const-string v7, "h2"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0xb

    goto/16 :goto_12

    :sswitch_9f
    const-string v7, "h3"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0xc

    goto/16 :goto_12

    :sswitch_ab
    const-string v7, "h4"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0xd

    goto/16 :goto_12

    :sswitch_b7
    const-string v7, "h5"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0xe

    goto/16 :goto_12

    :sswitch_c3
    const-string v7, "h6"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0xf

    goto/16 :goto_12

    :sswitch_cf
    const-string v7, "br"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0x10

    goto/16 :goto_12

    .line 677
    :pswitch_db
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    :cond_e0
    :goto_e0
    move v4, v5

    .line 806
    goto/16 :goto_21

    .line 682
    :pswitch_e3
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    goto/16 :goto_21

    .line 684
    :pswitch_e9
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f4

    .line 685
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 688
    :cond_f4
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_100

    .line 690
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 691
    :cond_100
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_e0

    .line 695
    :pswitch_104
    const-string v6, "body"

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_111

    .line 696
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 700
    :cond_111
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_e0

    .line 704
    :pswitch_117
    const-string v4, "body"

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v3

    .line 705
    .local v3, "notIgnored":Z
    if-eqz v3, :cond_e0

    .line 706
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto/16 :goto_21

    .line 709
    .end local v3    # "notIgnored":Z
    :pswitch_125
    const-string v6, "template"

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_152

    .line 710
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    .line 711
    .local v0, "currentForm":Lorg/jsoup/nodes/Element;
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/FormElement;)V

    .line 712
    if-eqz v0, :cond_13d

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_142

    .line 713
    :cond_13d
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 716
    :cond_142
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 717
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14e

    .line 718
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 720
    :cond_14e
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto :goto_e0

    .line 722
    .end local v0    # "currentForm":Lorg/jsoup/nodes/Element;
    :cond_152
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15d

    .line 723
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 726
    :cond_15d
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 727
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_169

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 728
    :cond_169
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_e0

    .line 732
    :pswitch_16e
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_180

    .line 733
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 734
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 735
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto/16 :goto_21

    .line 737
    :cond_180
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18c

    .line 739
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 740
    :cond_18c
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_e0

    .line 745
    :pswitch_191
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19c

    .line 746
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 749
    :cond_19c
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a8

    .line 751
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 752
    :cond_1a8
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_e0

    .line 761
    :pswitch_1ad
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1ba

    .line 762
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 765
    :cond_1ba
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c6

    .line 767
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 768
    :cond_1c6
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 772
    :pswitch_1cd
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 773
    const-string v5, "br"

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    goto/16 :goto_21

    .line 779
    :cond_1d7
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1fb

    .line 780
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1ea

    .line 782
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 785
    :cond_1ea
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 786
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f6

    .line 787
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 788
    :cond_1f6
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_e0

    .line 790
    :cond_1fb
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22a

    .line 791
    const-string v6, "name"

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e0

    .line 792
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_216

    .line 793
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 796
    :cond_216
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 797
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_222

    .line 798
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 799
    :cond_222
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 800
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_e0

    .line 803
    :cond_22a
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    goto/16 :goto_21

    .line 675
    :sswitch_data_230
    .sparse-switch
        -0x4ec53386 -> :sswitch_22
        0x70 -> :sswitch_68
        0xc50 -> :sswitch_cf
        0xc80 -> :sswitch_72
        0xc90 -> :sswitch_7d
        0xcc9 -> :sswitch_88
        0xcca -> :sswitch_93
        0xccb -> :sswitch_9f
        0xccc -> :sswitch_ab
        0xccd -> :sswitch_b7
        0xcce -> :sswitch_c3
        0xd7d -> :sswitch_40
        0x2e39a2 -> :sswitch_4a
        0x300cc4 -> :sswitch_5e
        0x3107ab -> :sswitch_54
        0x35f74a -> :sswitch_36
        0x6f67a51c -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_276
    .packed-switch 0x0
        :pswitch_db
        :pswitch_e3
        :pswitch_e3
        :pswitch_e9
        :pswitch_104
        :pswitch_117
        :pswitch_125
        :pswitch_16e
        :pswitch_191
        :pswitch_191
        :pswitch_1ad
        :pswitch_1ad
        :pswitch_1ad
        :pswitch_1ad
        :pswitch_1ad
        :pswitch_1ad
        :pswitch_1cd
    .end packed-switch
.end method

.method private inBodyEndTagAdoption(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 25
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    .line 840
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v7

    .line 841
    .local v7, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v7}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v13

    .line 843
    .local v13, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v18

    .line 845
    .local v18, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_d
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v10, v0, :cond_18f

    .line 846
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v8

    .line 847
    .local v8, "formatEl":Lorg/jsoup/nodes/Element;
    if-nez v8, :cond_20

    .line 848
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v20

    .line 935
    .end local v8    # "formatEl":Lorg/jsoup/nodes/Element;
    :goto_1f
    return v20

    .line 849
    .restart local v8    # "formatEl":Lorg/jsoup/nodes/Element;
    :cond_20
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v20

    if-nez v20, :cond_37

    .line 850
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 851
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 852
    const/16 v20, 0x1

    goto :goto_1f

    .line 853
    :cond_37
    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4f

    .line 854
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 855
    const/16 v20, 0x0

    goto :goto_1f

    .line 856
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v20

    move-object/from16 v0, v20

    if-eq v0, v8, :cond_5e

    .line 857
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 859
    :cond_5e
    const/4 v9, 0x0

    .line 860
    .local v9, "furthestBlock":Lorg/jsoup/nodes/Element;
    const/4 v5, 0x0

    .line 861
    .local v5, "commonAncestor":Lorg/jsoup/nodes/Element;
    const/16 v16, 0x0

    .line 863
    .local v16, "seenFormattingElement":Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 864
    .local v19, "stackSize":I
    const/4 v4, -0x1

    .line 865
    .local v4, "bookmark":I
    const/16 v17, 0x1

    .local v17, "si":I
    :goto_69
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_a5

    const/16 v20, 0x40

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_a5

    .line 867
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 868
    .local v6, "el":Lorg/jsoup/nodes/Element;
    if-ne v6, v8, :cond_9a

    .line 869
    add-int/lit8 v20, v17, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "commonAncestor":Lorg/jsoup/nodes/Element;
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 870
    .restart local v5    # "commonAncestor":Lorg/jsoup/nodes/Element;
    const/16 v16, 0x1

    .line 872
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->positionOfElement(Lorg/jsoup/nodes/Element;)I

    move-result v4

    .line 865
    :cond_97
    add-int/lit8 v17, v17, 0x1

    goto :goto_69

    .line 873
    :cond_9a
    if-eqz v16, :cond_97

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v20

    if-eqz v20, :cond_97

    .line 874
    move-object v9, v6

    .line 878
    .end local v6    # "el":Lorg/jsoup/nodes/Element;
    :cond_a5
    if-nez v9, :cond_bb

    .line 879
    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 880
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 881
    const/16 v20, 0x1

    goto/16 :goto_1f

    .line 884
    :cond_bb
    move-object v14, v9

    .line 885
    .local v14, "node":Lorg/jsoup/nodes/Element;
    move-object v12, v9

    .line 886
    .local v12, "lastNode":Lorg/jsoup/nodes/Element;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_be
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v11, v0, :cond_e4

    .line 887
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v20

    if-eqz v20, :cond_d2

    .line 888
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v14

    .line 889
    :cond_d2
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v20

    if-nez v20, :cond_e2

    .line 890
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 886
    :goto_df
    add-int/lit8 v11, v11, 0x1

    goto :goto_be

    .line 892
    :cond_e2
    if-ne v14, v8, :cond_140

    .line 913
    :cond_e4
    if-eqz v5, :cond_100

    .line 914
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_181

    .line 915
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v20

    if-eqz v20, :cond_fb

    .line 916
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->remove()V

    .line 917
    :cond_fb
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    .line 925
    :cond_100
    :goto_100
    new-instance v3, Lorg/jsoup/nodes/Element;

    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 926
    .local v3, "adopter":Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v20

    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 927
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Element;->appendChildren(Ljava/util/Collection;)Lorg/jsoup/nodes/Element;

    .line 928
    invoke-virtual {v9, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 929
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 931
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushWithBookmark(Lorg/jsoup/nodes/Element;I)V

    .line 932
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 933
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 845
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d

    .line 895
    .end local v3    # "adopter":Lorg/jsoup/nodes/Element;
    :cond_140
    new-instance v15, Lorg/jsoup/nodes/Element;

    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 897
    .local v15, "replacement":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 898
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 899
    move-object v14, v15

    .line 901
    if-ne v12, v9, :cond_172

    .line 904
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->positionOfElement(Lorg/jsoup/nodes/Element;)I

    move-result v20

    add-int/lit8 v4, v20, 0x1

    .line 906
    :cond_172
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v20

    if-eqz v20, :cond_17b

    .line 907
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->remove()V

    .line 908
    :cond_17b
    invoke-virtual {v14, v12}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 910
    move-object v12, v14

    goto/16 :goto_df

    .line 919
    .end local v15    # "replacement":Lorg/jsoup/nodes/Element;
    :cond_181
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v20

    if-eqz v20, :cond_18a

    .line 920
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->remove()V

    .line 921
    :cond_18a
    invoke-virtual {v5, v12}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_100

    .line 935
    .end local v4    # "bookmark":I
    .end local v5    # "commonAncestor":Lorg/jsoup/nodes/Element;
    .end local v8    # "formatEl":Lorg/jsoup/nodes/Element;
    .end local v9    # "furthestBlock":Lorg/jsoup/nodes/Element;
    .end local v11    # "j":I
    .end local v12    # "lastNode":Lorg/jsoup/nodes/Element;
    .end local v14    # "node":Lorg/jsoup/nodes/Element;
    .end local v16    # "seenFormattingElement":Z
    .end local v17    # "si":I
    .end local v19    # "stackSize":I
    :cond_18f
    const/16 v20, 0x1

    goto/16 :goto_1f
.end method

.method private inBodyStartTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 28
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    .line 320
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v19

    .line 321
    .local v19, "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v14

    .line 325
    .local v14, "name":Ljava/lang/String;
    const/16 v22, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_9ce

    :cond_11
    :goto_11
    packed-switch v22, :pswitch_data_a60

    .line 635
    invoke-static {v14}, Lorg/jsoup/parser/Tag;->isKnownTag(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8fc

    .line 636
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 667
    :cond_21
    :goto_21
    const/16 v22, 0x1

    :goto_23
    return v22

    .line 325
    :sswitch_24
    const-string v23, "a"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x0

    goto :goto_11

    :sswitch_31
    const-string v23, "span"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x1

    goto :goto_11

    :sswitch_3e
    const-string v23, "li"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x2

    goto :goto_11

    :sswitch_4b
    const-string v23, "html"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x3

    goto :goto_11

    :sswitch_58
    const-string v23, "body"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x4

    goto :goto_11

    :sswitch_65
    const-string v23, "frameset"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x5

    goto :goto_11

    :sswitch_72
    const-string v23, "form"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x6

    goto :goto_11

    :sswitch_7f
    const-string v23, "plaintext"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x7

    goto :goto_11

    :sswitch_8c
    const-string v23, "button"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x8

    goto/16 :goto_11

    :sswitch_9a
    const-string v23, "nobr"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x9

    goto/16 :goto_11

    :sswitch_a8
    const-string v23, "table"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0xa

    goto/16 :goto_11

    :sswitch_b6
    const-string v23, "input"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0xb

    goto/16 :goto_11

    :sswitch_c4
    const-string v23, "hr"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0xc

    goto/16 :goto_11

    :sswitch_d2
    const-string v23, "image"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0xd

    goto/16 :goto_11

    :sswitch_e0
    const-string v23, "isindex"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0xe

    goto/16 :goto_11

    :sswitch_ee
    const-string v23, "textarea"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0xf

    goto/16 :goto_11

    :sswitch_fc
    const-string v23, "xmp"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x10

    goto/16 :goto_11

    :sswitch_10a
    const-string v23, "iframe"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x11

    goto/16 :goto_11

    :sswitch_118
    const-string v23, "noembed"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x12

    goto/16 :goto_11

    :sswitch_126
    const-string v23, "select"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x13

    goto/16 :goto_11

    :sswitch_134
    const-string v23, "math"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x14

    goto/16 :goto_11

    :sswitch_142
    const-string v23, "svg"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x15

    goto/16 :goto_11

    :sswitch_150
    const-string v23, "h1"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x16

    goto/16 :goto_11

    :sswitch_15e
    const-string v23, "h2"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x17

    goto/16 :goto_11

    :sswitch_16c
    const-string v23, "h3"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x18

    goto/16 :goto_11

    :sswitch_17a
    const-string v23, "h4"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x19

    goto/16 :goto_11

    :sswitch_188
    const-string v23, "h5"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x1a

    goto/16 :goto_11

    :sswitch_196
    const-string v23, "h6"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x1b

    goto/16 :goto_11

    :sswitch_1a4
    const-string v23, "pre"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x1c

    goto/16 :goto_11

    :sswitch_1b2
    const-string v23, "listing"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x1d

    goto/16 :goto_11

    :sswitch_1c0
    const-string v23, "dd"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x1e

    goto/16 :goto_11

    :sswitch_1ce
    const-string v23, "dt"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x1f

    goto/16 :goto_11

    :sswitch_1dc
    const-string v23, "optgroup"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x20

    goto/16 :goto_11

    :sswitch_1ea
    const-string v23, "option"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x21

    goto/16 :goto_11

    :sswitch_1f8
    const-string v23, "rp"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x22

    goto/16 :goto_11

    :sswitch_206
    const-string v23, "rt"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v22, 0x23

    goto/16 :goto_11

    .line 327
    :pswitch_214
    const-string v22, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v22

    if-eqz v22, :cond_24a

    .line 328
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 329
    const-string v22, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 332
    const-string v22, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v16

    .line 333
    .local v16, "remainingA":Lorg/jsoup/nodes/Element;
    if-eqz v16, :cond_24a

    .line 334
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 335
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 338
    .end local v16    # "remainingA":Lorg/jsoup/nodes/Element;
    :cond_24a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 339
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    .line 340
    .local v9, "el":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_21

    .line 344
    .end local v9    # "el":Lorg/jsoup/nodes/Element;
    :pswitch_25c
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 345
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 348
    :pswitch_268
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v18

    .line 350
    .local v18, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v12, v22, -0x1

    .local v12, "i":I
    :goto_27b
    if-lez v12, :cond_29a

    .line 351
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 352
    .restart local v9    # "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "li"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b8

    .line 353
    const-string v22, "li"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 359
    .end local v9    # "el":Lorg/jsoup/nodes/Element;
    :cond_29a
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2af

    .line 360
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 362
    :cond_2af
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 356
    .restart local v9    # "el":Lorg/jsoup/nodes/Element;
    :cond_2b8
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v22

    if-eqz v22, :cond_2cc

    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_29a

    .line 350
    :cond_2cc
    add-int/lit8 v12, v12, -0x1

    goto :goto_27b

    .line 365
    .end local v9    # "el":Lorg/jsoup/nodes/Element;
    .end local v12    # "i":I
    .end local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    :pswitch_2cf
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 366
    const-string v22, "template"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2e6

    const/16 v22, 0x0

    goto/16 :goto_23

    .line 368
    :cond_2e6
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v18

    .line 369
    .restart local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_21

    .line 370
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 371
    .local v11, "html":Lorg/jsoup/nodes/Element;
    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v22

    if-eqz v22, :cond_21

    .line 372
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_30c
    :goto_30c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_21

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Attribute;

    .line 373
    .local v6, "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_30c

    .line 374
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_30c

    .line 380
    .end local v6    # "attribute":Lorg/jsoup/nodes/Attribute;
    .end local v11    # "html":Lorg/jsoup/nodes/Element;
    .end local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    :pswitch_32e
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v18

    .line 382
    .restart local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_375

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_369

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "body"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_375

    :cond_369
    const-string v22, "template"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_379

    .line 384
    :cond_375
    const/16 v22, 0x0

    goto/16 :goto_23

    .line 386
    :cond_379
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 387
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 388
    .local v7, "body":Lorg/jsoup/nodes/Element;
    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v22

    if-eqz v22, :cond_21

    .line 389
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_39e
    :goto_39e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_21

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Attribute;

    .line 390
    .restart local v6    # "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_39e

    .line 391
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_39e

    .line 397
    .end local v6    # "attribute":Lorg/jsoup/nodes/Attribute;
    .end local v7    # "body":Lorg/jsoup/nodes/Element;
    .end local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    :pswitch_3c0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v18

    .line 399
    .restart local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3fb

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3ff

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "body"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3ff

    .line 401
    :cond_3fb
    const/16 v22, 0x0

    goto/16 :goto_23

    .line 402
    :cond_3ff
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v22

    if-nez v22, :cond_409

    .line 403
    const/16 v22, 0x0

    goto/16 :goto_23

    .line 405
    :cond_409
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/jsoup/nodes/Element;

    .line 406
    .local v17, "second":Lorg/jsoup/nodes/Element;
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v22

    if-eqz v22, :cond_41e

    .line 407
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->remove()V

    .line 409
    :cond_41e
    :goto_41e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_438

    .line 410
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_41e

    .line 411
    :cond_438
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 412
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 416
    .end local v17    # "second":Lorg/jsoup/nodes/Element;
    .end local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    :pswitch_44a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v22

    if-eqz v22, :cond_467

    const-string v22, "template"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_467

    .line 417
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 418
    const/16 v22, 0x0

    goto/16 :goto_23

    .line 420
    :cond_467
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_47c

    .line 421
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->closeElement(Ljava/lang/String;)V

    .line 423
    :cond_47c
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForm(Lorg/jsoup/parser/Token$StartTag;ZZ)Lorg/jsoup/nodes/FormElement;

    goto/16 :goto_21

    .line 426
    :pswitch_48d
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4a2

    .line 427
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 429
    :cond_4a2
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 430
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v22, v0

    sget-object v23, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual/range {v22 .. v23}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_21

    .line 433
    :pswitch_4b6
    const-string v22, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4db

    .line 435
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 436
    const-string v22, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 437
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_21

    .line 439
    :cond_4db
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 440
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 441
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_21

    .line 445
    :pswitch_4f0
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 446
    const-string v22, "nobr"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_512

    .line 447
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 448
    const-string v22, "nobr"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 449
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 451
    :cond_512
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    .line 452
    .restart local v9    # "el":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_21

    .line 455
    .end local v9    # "el":Lorg/jsoup/nodes/Element;
    :pswitch_521
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v22

    sget-object v23, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_546

    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_546

    .line 456
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 458
    :cond_546
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 459
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 460
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 463
    :pswitch_561
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 464
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    .line 465
    .restart local v9    # "el":Lorg/jsoup/nodes/Element;
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "hidden"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_21

    .line 466
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_21

    .line 469
    .end local v9    # "el":Lorg/jsoup/nodes/Element;
    :pswitch_587
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_59c

    .line 470
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 472
    :cond_59c
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 473
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_21

    .line 476
    :pswitch_5ae
    const-string v22, "svg"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v22

    if-nez v22, :cond_5ce

    .line 477
    const-string v22, "img"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v22

    goto/16 :goto_23

    .line 479
    :cond_5ce
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 483
    :pswitch_5d7
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v22

    if-eqz v22, :cond_5e8

    .line 485
    const/16 v22, 0x0

    goto/16 :goto_23

    .line 487
    :cond_5e8
    const-string v22, "form"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 488
    const-string v22, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$StartTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_628

    .line 489
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v10

    .line 490
    .local v10, "form":Lorg/jsoup/nodes/Element;
    if-eqz v10, :cond_628

    const-string v22, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$StartTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_628

    .line 491
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v22, v0

    const-string v23, "action"

    invoke-virtual/range {v22 .. v23}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v22

    const-string v23, "action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 495
    .end local v4    # "action":Ljava/lang/String;
    .end local v10    # "form":Lorg/jsoup/nodes/Element;
    :cond_628
    const-string v22, "hr"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 496
    const-string v22, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 498
    const-string v22, "prompt"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$StartTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_695

    .line 499
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v22, v0

    const-string v23, "prompt"

    invoke-virtual/range {v22 .. v23}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 502
    .local v15, "prompt":Ljava/lang/String;
    :goto_652
    new-instance v22, Lorg/jsoup/parser/Token$Character;

    invoke-direct/range {v22 .. v22}, Lorg/jsoup/parser/Token$Character;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 505
    new-instance v13, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v13}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 506
    .local v13, "inputAttribs":Lorg/jsoup/nodes/Attributes;
    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v22

    if-eqz v22, :cond_698

    .line 507
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_679
    :goto_679
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_698

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Attribute;

    .line 508
    .local v5, "attr":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v5}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    invoke-static/range {v23 .. v24}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_679

    .line 509
    invoke-virtual {v13, v5}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_679

    .line 500
    .end local v5    # "attr":Lorg/jsoup/nodes/Attribute;
    .end local v13    # "inputAttribs":Lorg/jsoup/nodes/Attributes;
    .end local v15    # "prompt":Ljava/lang/String;
    :cond_695
    const-string v15, "This is a searchable index. Enter search keywords: "

    goto :goto_652

    .line 512
    .restart local v13    # "inputAttribs":Lorg/jsoup/nodes/Attributes;
    .restart local v15    # "prompt":Ljava/lang/String;
    :cond_698
    const-string v22, "name"

    const-string v23, "isindex"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 513
    const-string v22, "input"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z

    .line 514
    const-string v22, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 515
    const-string v22, "hr"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 516
    const-string v22, "form"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto/16 :goto_21

    .line 519
    .end local v13    # "inputAttribs":Lorg/jsoup/nodes/Attributes;
    .end local v15    # "prompt":Ljava/lang/String;
    :pswitch_6c9
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 520
    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v22

    if-nez v22, :cond_21

    .line 521
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v22, v0

    sget-object v23, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual/range {v22 .. v23}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 523
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 524
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 528
    :pswitch_6f8
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_70d

    .line 529
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 531
    :cond_70d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 532
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 533
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    # invokes: Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_21

    .line 536
    :pswitch_722
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 537
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    # invokes: Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_21

    .line 541
    :pswitch_734
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    # invokes: Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_21

    .line 544
    :pswitch_73d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 545
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 546
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 547
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/jsoup/parser/Token$StartTag;->selfClosing:Z

    move/from16 v22, v0

    if-nez v22, :cond_21

    .line 549
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v20

    .line 550
    .local v20, "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_798

    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_798

    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_798

    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_798

    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7a3

    .line 551
    :cond_798
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 553
    :cond_7a3
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_21

    .line 556
    .end local v20    # "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    :pswitch_7ae
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 558
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 561
    :pswitch_7ba
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 563
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 572
    :pswitch_7c6
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7db

    .line 573
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 575
    :cond_7db
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7f5

    .line 576
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 579
    :cond_7f5
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 584
    :pswitch_7fe
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_813

    .line 585
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 587
    :cond_813
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 588
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    move-object/from16 v22, v0

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 589
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_21

    .line 594
    :pswitch_830
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v18

    .line 596
    .restart local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .line 597
    .local v8, "bottom":I
    const/16 v22, 0x18

    move/from16 v0, v22

    if-lt v8, v0, :cond_88d

    add-int/lit8 v21, v8, -0x18

    .line 598
    .local v21, "upper":I
    :goto_84b
    move v12, v8

    .restart local v12    # "i":I
    :goto_84c
    move/from16 v0, v21

    if-lt v12, v0, :cond_86f

    .line 599
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 600
    .restart local v9    # "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_890

    .line 601
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 607
    .end local v9    # "el":Lorg/jsoup/nodes/Element;
    :cond_86f
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_884

    .line 608
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 610
    :cond_884
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 597
    .end local v12    # "i":I
    .end local v21    # "upper":I
    :cond_88d
    const/16 v21, 0x0

    goto :goto_84b

    .line 604
    .restart local v9    # "el":Lorg/jsoup/nodes/Element;
    .restart local v12    # "i":I
    .restart local v21    # "upper":I
    :cond_890
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v22

    if-eqz v22, :cond_8a4

    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_86f

    .line 598
    :cond_8a4
    add-int/lit8 v12, v12, -0x1

    goto :goto_84c

    .line 615
    .end local v8    # "bottom":I
    .end local v9    # "el":Lorg/jsoup/nodes/Element;
    .end local v12    # "i":I
    .end local v18    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    .end local v21    # "upper":I
    :pswitch_8a7
    const-string v22, "option"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8bc

    .line 616
    const-string v22, "option"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 617
    :cond_8bc
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 618
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 623
    :pswitch_8c8
    const-string v22, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 624
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 625
    const-string v22, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8f3

    .line 626
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 627
    const-string v22, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    .line 629
    :cond_8f3
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 637
    :cond_8fc
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartEmptyFormatters:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_91b

    .line 638
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 639
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 640
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_21

    .line 641
    :cond_91b
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_943

    .line 642
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_93a

    .line 643
    const-string v22, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 645
    :cond_93a
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 646
    :cond_943
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_95b

    .line 647
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v22

    goto/16 :goto_23

    .line 648
    :cond_95b
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Formatters:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_977

    .line 649
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 650
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    .line 651
    .restart local v9    # "el":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_21

    .line 652
    .end local v9    # "el":Lorg/jsoup/nodes/Element;
    :cond_977
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_999

    .line 653
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 654
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 655
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 656
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_21

    .line 657
    :cond_999
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9ac

    .line 658
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 659
    :cond_9ac
    sget-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9c1

    .line 660
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 661
    const/16 v22, 0x0

    goto/16 :goto_23

    .line 663
    :cond_9c1
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 664
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_21

    .line 325
    nop

    :sswitch_data_9ce
    .sparse-switch
        -0x620c002b -> :sswitch_65
        -0x521dd8ce -> :sswitch_8c
        -0x47007d5c -> :sswitch_10a
        -0x3c35778b -> :sswitch_1ea
        -0x3bcc48c6 -> :sswitch_ee
        -0x3600cb04 -> :sswitch_126
        -0x4d08054 -> :sswitch_1dc
        0x61 -> :sswitch_24
        0xc80 -> :sswitch_1c0
        0xc90 -> :sswitch_1ce
        0xcc9 -> :sswitch_150
        0xcca -> :sswitch_15e
        0xccb -> :sswitch_16c
        0xccc -> :sswitch_17a
        0xccd -> :sswitch_188
        0xcce -> :sswitch_196
        0xd0a -> :sswitch_c4
        0xd7d -> :sswitch_3e
        0xe3e -> :sswitch_1f8
        0xe42 -> :sswitch_206
        0x1b2a3 -> :sswitch_1a4
        0x1be64 -> :sswitch_142
        0x1d01b -> :sswitch_fc
        0x2e39a2 -> :sswitch_58
        0x300cc4 -> :sswitch_72
        0x3107ab -> :sswitch_4b
        0x330708 -> :sswitch_134
        0x33add1 -> :sswitch_9a
        0x35f74a -> :sswitch_31
        0x5faa95b -> :sswitch_d2
        0x5fb57ca -> :sswitch_b6
        0x6903bce -> :sswitch_a8
        0xad8ba84 -> :sswitch_1b2
        0x759d29f7 -> :sswitch_7f
        0x7ca6c5e8 -> :sswitch_e0
        0x7e19b1b8 -> :sswitch_118
    .end sparse-switch

    :pswitch_data_a60
    .packed-switch 0x0
        :pswitch_214
        :pswitch_25c
        :pswitch_268
        :pswitch_2cf
        :pswitch_32e
        :pswitch_3c0
        :pswitch_44a
        :pswitch_48d
        :pswitch_4b6
        :pswitch_4f0
        :pswitch_521
        :pswitch_561
        :pswitch_587
        :pswitch_5ae
        :pswitch_5d7
        :pswitch_6c9
        :pswitch_6f8
        :pswitch_722
        :pswitch_734
        :pswitch_73d
        :pswitch_7ae
        :pswitch_7ba
        :pswitch_7c6
        :pswitch_7c6
        :pswitch_7c6
        :pswitch_7c6
        :pswitch_7c6
        :pswitch_7c6
        :pswitch_7fe
        :pswitch_7fe
        :pswitch_830
        :pswitch_830
        :pswitch_8a7
        :pswitch_8a7
        :pswitch_8c8
        :pswitch_8c8
    .end packed-switch
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 10
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    const/4 v5, 0x0

    .line 810
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v6

    iget-object v1, v6, Lorg/jsoup/parser/Token$EndTag;->normalName:Ljava/lang/String;

    .line 811
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v4

    .line 814
    .local v4, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 815
    .local v0, "elFromStack":Lorg/jsoup/nodes/Element;
    if-nez v0, :cond_15

    .line 816
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 835
    :goto_14
    return v5

    .line 820
    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "pos":I
    :goto_1b
    if-ltz v3, :cond_3c

    .line 821
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 822
    .local v2, "node":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 823
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 825
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 826
    :cond_39
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 835
    .end local v2    # "node":Lorg/jsoup/nodes/Element;
    :cond_3c
    const/4 v5, 0x1

    goto :goto_14

    .line 829
    .restart local v2    # "node":Lorg/jsoup/nodes/Element;
    :cond_3e
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 830
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_14

    .line 820
    :cond_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 7
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    const/4 v1, 0x0

    .line 280
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v3, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_66

    .line 316
    :cond_e
    :goto_e
    const/4 v1, 0x1

    :goto_f
    return v1

    .line 282
    :pswitch_10
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    .line 283
    .local v0, "c":Lorg/jsoup/parser/Token$Character;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v2

    # getter for: Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 285
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_f

    .line 287
    :cond_26
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v2

    if-eqz v2, :cond_39

    # invokes: Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z
    invoke-static {v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 288
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 289
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_e

    .line 291
    :cond_39
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 292
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 293
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_e

    .line 298
    .end local v0    # "c":Lorg/jsoup/parser/Token$Character;
    :pswitch_43
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_e

    .line 302
    :pswitch_4b
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_f

    .line 306
    :pswitch_4f
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyStartTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    goto :goto_f

    .line 308
    :pswitch_54
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    goto :goto_f

    .line 310
    :pswitch_59
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->templateModeSize()I

    move-result v1

    if-lez v1, :cond_e

    .line 311
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    goto :goto_f

    .line 280
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_43
        :pswitch_4b
        :pswitch_4f
        :pswitch_54
        :pswitch_10
        :pswitch_59
    .end packed-switch
.end method
