.class public final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF4:I = 0x9c

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

.field private currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private final isWideAspectRatio:Z

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private previousSequenceNumber:I

.field private final selectedServiceNumber:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 8
    .param p1, "accessibilityChannel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 170
    .local p2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 171
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 172
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    .line 174
    const/4 v1, 0x1

    if-ne p1, v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    move v0, p1

    :goto_1a
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 175
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    .line 177
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseCea708InitializationData(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->isWideAspectRatio:Z

    .line 179
    const/16 v1, 0x8

    new-array v2, v1, [Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    iput-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_3e

    .line 181
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    new-instance v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v4, v3, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 184
    .end local v2    # "i":I
    :cond_3e
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 185
    return-void
.end method

.method private finalizeCurrentPacket()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_5

    .line 284
    return-void

    .line 287
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->processCurrentPacket()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 289
    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v0, "displayCueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2e

    .line 815
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 816
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->build()Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    move-result-object v2

    .line 817
    .local v2, "cueInfo":Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;
    if-eqz v2, :cond_2b

    .line 818
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    .end local v2    # "cueInfo":Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 822
    .end local v1    # "i":I
    :cond_2e
    # getter for: Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->access$000()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 823
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 824
    .local v1, "displayCues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 825
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 827
    .end local v2    # "i":I
    :cond_53
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private handleC0Command(I)V
    .registers 5
    .param p1, "command"    # I

    .line 395
    sparse-switch p1, :sswitch_data_84

    .line 415
    const/16 v0, 0x11

    const-string v1, "Cea708Decoder"

    if-lt p1, v0, :cond_46

    const/16 v0, 0x17

    if-gt p1, v0, :cond_46

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_82

    .line 413
    :sswitch_2b
    goto :goto_82

    .line 409
    :sswitch_2c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 410
    goto :goto_82

    .line 406
    :sswitch_34
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 407
    goto :goto_82

    .line 403
    :sswitch_38
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backspace()V

    .line 404
    goto :goto_82

    .line 400
    :sswitch_3e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 401
    goto :goto_82

    .line 398
    :sswitch_45
    goto :goto_82

    .line 418
    :cond_46
    const/16 v0, 0x18

    if-lt p1, v0, :cond_6c

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_6c

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_82

    .line 422
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C0 command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_82
    return-void

    nop

    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_45
        0x3 -> :sswitch_3e
        0x8 -> :sswitch_38
        0xc -> :sswitch_34
        0xd -> :sswitch_2c
        0xe -> :sswitch_2b
    .end sparse-switch
.end method

.method private handleC1Command(I)V
    .registers 7
    .param p1, "command"    # I

    .line 429
    const/16 v0, 0x10

    const/4 v1, 0x1

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_126

    .line 539
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C1 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea708Decoder"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_124

    .line 530
    :pswitch_22
    add-int/lit16 v0, p1, -0x98

    .line 531
    .local v0, "window":I
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 533
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v0, :cond_124

    .line 534
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 535
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    goto/16 :goto_124

    .line 515
    .end local v0    # "window":I
    :pswitch_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v0

    if-nez v0, :cond_46

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_124

    .line 519
    :cond_46
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    .line 521
    goto/16 :goto_124

    .line 507
    :pswitch_4b
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 509
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_124

    .line 511
    :cond_5a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleSetPenLocation()V

    .line 513
    goto/16 :goto_124

    .line 499
    :pswitch_5f
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v0

    if-nez v0, :cond_70

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_124

    .line 503
    :cond_70
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleSetPenColor()V

    .line 505
    goto/16 :goto_124

    .line 491
    :pswitch_75
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v1

    if-nez v1, :cond_84

    .line 493
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_124

    .line 495
    :cond_84
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    .line 497
    goto/16 :goto_124

    .line 488
    :pswitch_89
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 489
    goto/16 :goto_124

    .line 486
    :pswitch_8e
    goto/16 :goto_124

    .line 482
    :pswitch_90
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 483
    goto/16 :goto_124

    .line 474
    :pswitch_97
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_98
    if-gt v0, v2, :cond_ae

    .line 475
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 476
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    .line 474
    :cond_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 479
    .end local v0    # "i":I
    :cond_ae
    goto/16 :goto_124

    .line 466
    :pswitch_b0
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_b1
    if-gt v0, v2, :cond_cc

    .line 467
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 468
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v4, v0, 0x8

    aget-object v3, v3, v4

    .line 469
    .local v3, "cueInfoBuilder":Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 466
    .end local v3    # "cueInfoBuilder":Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;
    :cond_c9
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 472
    .end local v0    # "i":I
    :cond_cc
    goto :goto_124

    .line 459
    :pswitch_cd
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_ce
    if-gt v0, v2, :cond_e5

    .line 460
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 461
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 459
    :cond_e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    .line 464
    .end local v0    # "i":I
    :cond_e5
    goto :goto_124

    .line 452
    :pswitch_e6
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_e7
    if-gt v0, v2, :cond_fd

    .line 453
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 454
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v4, v0, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 452
    :cond_fa
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 457
    .end local v0    # "i":I
    :cond_fd
    goto :goto_124

    .line 445
    :pswitch_fe
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_ff
    if-gt v0, v2, :cond_115

    .line 446
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_112

    .line 447
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    .line 445
    :cond_112
    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    .line 450
    .end local v0    # "i":I
    :cond_115
    goto :goto_124

    .line 438
    :pswitch_116
    add-int/lit8 v0, p1, -0x80

    .line 439
    .local v0, "window":I
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v0, :cond_124

    .line 440
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 441
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 541
    .end local v0    # "window":I
    :cond_124
    :goto_124
    return-void

    nop

    :pswitch_data_126
    .packed-switch 0x80
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_fe
        :pswitch_e6
        :pswitch_cd
        :pswitch_b0
        :pswitch_97
        :pswitch_90
        :pswitch_8e
        :pswitch_89
        :pswitch_75
        :pswitch_5f
        :pswitch_4b
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_35
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .registers 4
    .param p1, "command"    # I

    .line 545
    const/4 v0, 0x7

    if-gt p1, v0, :cond_4

    goto :goto_27

    .line 547
    :cond_4
    const/16 v0, 0xf

    if-gt p1, v0, :cond_10

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_27

    .line 549
    :cond_10
    const/16 v0, 0x17

    if-gt p1, v0, :cond_1c

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_27

    .line 551
    :cond_1c
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_27

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 554
    :cond_27
    :goto_27
    return-void
.end method

.method private handleC3Command(I)V
    .registers 5
    .param p1, "command"    # I

    .line 558
    const/16 v0, 0x87

    if-gt p1, v0, :cond_c

    .line 559
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_30

    .line 560
    :cond_c
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_18

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_30

    .line 562
    :cond_18
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_30

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 568
    .local v0, "length":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    mul-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 570
    .end local v0    # "length":I
    :cond_30
    :goto_30
    return-void
.end method

.method private handleDefineWindow(I)V
    .registers 29
    .param p1, "window"    # I

    .line 772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, p1

    .line 776
    .local v1, "cueInfoBuilder":Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 777
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v15

    .line 778
    .local v15, "visible":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    .line 779
    .local v16, "rowLock":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    .line 780
    .local v17, "columnLock":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 782
    .local v18, "priority":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v19

    .line 783
    .local v19, "relativePositioning":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 785
    .local v20, "verticalAnchor":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 787
    .local v21, "horizontalAnchor":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v22

    .line 788
    .local v22, "anchorId":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v23

    .line 790
    .local v23, "rowCount":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 791
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v24

    .line 793
    .local v24, "columnCount":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 794
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 795
    .local v25, "windowStyle":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 797
    .local v26, "penStyle":I
    move-object v2, v1

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v22

    move/from16 v13, v25

    move/from16 v14, v26

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defineWindow(ZZZIZIIIIIII)V

    .line 810
    return-void
.end method

.method private handleG0Character(I)V
    .registers 4
    .param p1, "characterCode"    # I

    .line 573
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_c

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x266b

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_14

    .line 576
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 578
    :goto_14
    return-void
.end method

.method private handleG1Character(I)V
    .registers 4
    .param p1, "characterCode"    # I

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 582
    return-void
.end method

.method private handleG2Character(I)V
    .registers 4
    .param p1, "characterCode"    # I

    .line 585
    sparse-switch p1, :sswitch_data_fc

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G2 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea708Decoder"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fa

    .line 662
    :sswitch_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x250c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 663
    goto/16 :goto_fa

    .line 659
    :sswitch_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2518

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 660
    goto/16 :goto_fa

    .line 656
    :sswitch_2f
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 657
    goto/16 :goto_fa

    .line 653
    :sswitch_38
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2514

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 654
    goto/16 :goto_fa

    .line 650
    :sswitch_41
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2510

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 651
    goto/16 :goto_fa

    .line 647
    :sswitch_4a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2502

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 648
    goto/16 :goto_fa

    .line 644
    :sswitch_53
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x215e

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 645
    goto/16 :goto_fa

    .line 641
    :sswitch_5c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x215d

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 642
    goto/16 :goto_fa

    .line 638
    :sswitch_65
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x215c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 639
    goto/16 :goto_fa

    .line 635
    :sswitch_6e
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x215b

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 636
    goto/16 :goto_fa

    .line 632
    :sswitch_77
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x178

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 633
    goto/16 :goto_fa

    .line 629
    :sswitch_80
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2120

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 630
    goto/16 :goto_fa

    .line 626
    :sswitch_89
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x153

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 627
    goto/16 :goto_fa

    .line 623
    :sswitch_92
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x161

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 624
    goto :goto_fa

    .line 620
    :sswitch_9a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2122

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 621
    goto :goto_fa

    .line 617
    :sswitch_a2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2022

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 618
    goto :goto_fa

    .line 614
    :sswitch_aa
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x201d

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 615
    goto :goto_fa

    .line 611
    :sswitch_b2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x201c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 612
    goto :goto_fa

    .line 608
    :sswitch_ba
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2019

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 609
    goto :goto_fa

    .line 605
    :sswitch_c2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2018

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 606
    goto :goto_fa

    .line 602
    :sswitch_ca
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2588

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 603
    goto :goto_fa

    .line 599
    :sswitch_d2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x152

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 600
    goto :goto_fa

    .line 596
    :sswitch_da
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x160

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 597
    goto :goto_fa

    .line 593
    :sswitch_e2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 594
    goto :goto_fa

    .line 590
    :sswitch_ea
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 591
    goto :goto_fa

    .line 587
    :sswitch_f2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 588
    nop

    .line 669
    :goto_fa
    return-void

    nop

    :sswitch_data_fc
    .sparse-switch
        0x20 -> :sswitch_f2
        0x21 -> :sswitch_ea
        0x25 -> :sswitch_e2
        0x2a -> :sswitch_da
        0x2c -> :sswitch_d2
        0x30 -> :sswitch_ca
        0x31 -> :sswitch_c2
        0x32 -> :sswitch_ba
        0x33 -> :sswitch_b2
        0x34 -> :sswitch_aa
        0x35 -> :sswitch_a2
        0x39 -> :sswitch_9a
        0x3a -> :sswitch_92
        0x3c -> :sswitch_89
        0x3d -> :sswitch_80
        0x3f -> :sswitch_77
        0x76 -> :sswitch_6e
        0x77 -> :sswitch_65
        0x78 -> :sswitch_5c
        0x79 -> :sswitch_53
        0x7a -> :sswitch_4a
        0x7b -> :sswitch_41
        0x7c -> :sswitch_38
        0x7d -> :sswitch_2f
        0x7e -> :sswitch_26
        0x7f -> :sswitch_1d
    .end sparse-switch
.end method

.method private handleG3Character(I)V
    .registers 4
    .param p1, "characterCode"    # I

    .line 672
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_c

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x33c4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_2b

    .line 675
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea708Decoder"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 679
    :goto_2b
    return-void
.end method

.method private handleSetPenAttributes()V
    .registers 16

    .line 684
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 685
    .local v0, "textTag":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 686
    .local v1, "offset":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 688
    .local v10, "penSize":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 689
    .local v11, "italicsToggle":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 690
    .local v12, "underlineToggle":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 691
    .local v13, "edgeType":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 693
    .local v14, "fontStyle":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    move v3, v0

    move v4, v1

    move v5, v10

    move v6, v11

    move v7, v12

    move v8, v13

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    .line 695
    return-void
.end method

.method private handleSetPenColor()V
    .registers 16

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 701
    .local v0, "foregroundO":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 702
    .local v2, "foregroundR":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 703
    .local v3, "foregroundG":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 704
    .local v4, "foregroundB":I
    nop

    .line 705
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v5

    .line 707
    .local v5, "foregroundColor":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 708
    .local v6, "backgroundO":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 709
    .local v7, "backgroundR":I
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 710
    .local v8, "backgroundG":I
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 711
    .local v9, "backgroundB":I
    nop

    .line 712
    invoke-static {v7, v8, v9, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v10

    .line 714
    .local v10, "backgroundColor":I
    iget-object v11, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 715
    iget-object v11, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 716
    .local v11, "edgeR":I
    iget-object v12, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 717
    .local v12, "edgeG":I
    iget-object v13, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 718
    .local v1, "edgeB":I
    invoke-static {v11, v12, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v13

    .line 720
    .local v13, "edgeColor":I
    iget-object v14, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v14, v5, v10, v13}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    .line 721
    return-void
.end method

.method private handleSetPenLocation()V
    .registers 4

    .line 726
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 727
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 729
    .local v0, "row":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 730
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 732
    .local v1, "column":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenLocation(II)V

    .line 733
    return-void
.end method

.method private handleSetWindowAttributes()V
    .registers 24

    .line 738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 739
    .local v1, "fillO":I
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 740
    .local v3, "fillR":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 741
    .local v4, "fillG":I
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 742
    .local v5, "fillB":I
    invoke-static {v3, v4, v5, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v14

    .line 744
    .local v14, "fillColor":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 745
    .local v6, "borderType":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 746
    .local v15, "borderR":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 747
    .local v13, "borderG":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 748
    .local v12, "borderB":I
    invoke-static {v15, v13, v12}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v16

    .line 750
    .local v16, "borderColor":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 751
    or-int/lit8 v6, v6, 0x4

    move/from16 v17, v6

    goto :goto_4a

    .line 750
    :cond_48
    move/from16 v17, v6

    .line 753
    .end local v6    # "borderType":I
    .local v17, "borderType":I
    :goto_4a
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v18

    .line 754
    .local v18, "wordWrapToggle":Z
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 755
    .local v19, "printDirection":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 756
    .local v20, "scrollDirection":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 759
    .local v2, "justification":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 761
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    move v7, v14

    move/from16 v8, v16

    move/from16 v9, v18

    move/from16 v10, v17

    move/from16 v11, v19

    move/from16 v21, v12

    .end local v12    # "borderB":I
    .local v21, "borderB":I
    move/from16 v12, v20

    move/from16 v22, v13

    .end local v13    # "borderG":I
    .local v22, "borderG":I
    move v13, v2

    invoke-virtual/range {v6 .. v13}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    .line 769
    return-void
.end method

.method private processCurrentPacket()V
    .registers 14
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentDtvCcPacket"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    const-string v3, "Cea708Decoder"

    if-eq v0, v1, :cond_51

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_51
    const/4 v0, 0x0

    .line 321
    .local v0, "cuesNeedUpdate":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v5, v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 322
    :goto_5f
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-lez v1, :cond_159

    .line 324
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 325
    .local v1, "serviceNumber":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 326
    .local v4, "blockSize":I
    const/4 v5, 0x7

    if-ne v1, v5, :cond_9c

    .line 328
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 329
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 330
    if-ge v1, v5, :cond_9c

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid extended service number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_9c
    if-nez v4, :cond_be

    .line 337
    if-eqz v1, :cond_159

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceNumber is non-zero ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") when blockSize is 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_159

    .line 343
    :cond_be
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v1, v5, :cond_c8

    .line 344
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 345
    goto :goto_5f

    .line 350
    :cond_c8
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v5

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v5, v6

    .line 351
    .local v5, "endBlockPosition":I
    :goto_d1
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v6

    if-ge v6, v5, :cond_157

    .line 352
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 353
    .local v6, "command":I
    const/16 v8, 0x10

    const/16 v9, 0xff

    const/16 v10, 0x9f

    const/16 v11, 0x7f

    const/16 v12, 0x1f

    if-eq v6, v8, :cond_11f

    .line 354
    if-gt v6, v12, :cond_f3

    .line 355
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto :goto_155

    .line 357
    :cond_f3
    if-gt v6, v11, :cond_fa

    .line 358
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleG0Character(I)V

    .line 359
    const/4 v0, 0x1

    goto :goto_155

    .line 360
    :cond_fa
    if-gt v6, v10, :cond_101

    .line 361
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleC1Command(I)V

    .line 362
    const/4 v0, 0x1

    goto :goto_155

    .line 363
    :cond_101
    if-gt v6, v9, :cond_108

    .line 364
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleG1Character(I)V

    .line 365
    const/4 v0, 0x1

    goto :goto_155

    .line 367
    :cond_108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid base command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_155

    .line 371
    :cond_11f
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 372
    if-gt v6, v12, :cond_12b

    .line 373
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_155

    .line 374
    :cond_12b
    if-gt v6, v11, :cond_132

    .line 375
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleG2Character(I)V

    .line 376
    const/4 v0, 0x1

    goto :goto_155

    .line 377
    :cond_132
    if-gt v6, v10, :cond_138

    .line 378
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_155

    .line 379
    :cond_138
    if-gt v6, v9, :cond_13f

    .line 380
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleG3Character(I)V

    .line 381
    const/4 v0, 0x1

    goto :goto_155

    .line 383
    :cond_13f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid extended command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .end local v6    # "command":I
    :goto_155
    goto/16 :goto_d1

    .line 387
    .end local v1    # "serviceNumber":I
    .end local v4    # "blockSize":I
    .end local v5    # "endBlockPosition":I
    :cond_157
    goto/16 :goto_5f

    .line 389
    :cond_159
    :goto_159
    if-eqz v0, :cond_161

    .line 390
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 392
    :cond_161
    return-void
.end method

.method private resetCueBuilders()V
    .registers 3

    .line 831
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_f

    .line 832
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 834
    .end local v0    # "i":I
    :cond_f
    return-void
.end method


# virtual methods
.method protected createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 211
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .registers 18
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 219
    .local v2, "subtitleData":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 220
    .local v3, "inputBufferData":[B
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 221
    :goto_19
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_e0

    .line 222
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    .line 224
    .local v4, "ccTypeAndValid":I
    and-int/lit8 v6, v4, 0x3

    .line 225
    .local v6, "ccType":I
    and-int/lit8 v7, v4, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-ne v7, v9, :cond_34

    const/4 v7, 0x1

    goto :goto_35

    :cond_34
    const/4 v7, 0x0

    .line 226
    .local v7, "ccValid":Z
    :goto_35
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    int-to-byte v11, v11

    .line 227
    .local v11, "ccData1":B
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    int-to-byte v12, v12

    .line 230
    .local v12, "ccData2":B
    const/4 v13, 0x2

    if-eq v6, v13, :cond_49

    if-eq v6, v5, :cond_49

    .line 231
    goto :goto_19

    .line 234
    :cond_49
    if-nez v7, :cond_4c

    .line 236
    goto :goto_19

    .line 239
    :cond_4c
    const-string v14, "Cea708Decoder"

    if-ne v6, v5, :cond_a2

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 242
    and-int/lit16 v5, v11, 0xc0

    shr-int/lit8 v5, v5, 0x6

    .line 243
    .local v5, "sequenceNumber":I
    iget v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v15, -0x1

    if-eq v8, v15, :cond_86

    add-int/lit8 v8, v8, 0x1

    rem-int/2addr v8, v9

    if-eq v5, v8, :cond_86

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sequence number discontinuity. previous="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_86
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    .line 255
    and-int/lit8 v8, v11, 0x3f

    .line 256
    .local v8, "packetSize":I
    if-nez v8, :cond_8e

    .line 257
    const/16 v8, 0x40

    .line 260
    :cond_8e
    new-instance v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v9, v5, v8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 261
    iget-object v9, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v14, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v15, v14, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v10, v15, 0x1

    iput v10, v14, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v12, v9, v15

    .line 262
    .end local v5    # "sequenceNumber":I
    .end local v8    # "packetSize":I
    goto :goto_cd

    .line 264
    :cond_a2
    if-ne v6, v13, :cond_a5

    const/4 v8, 0x1

    :cond_a5
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 266
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v5, :cond_b3

    .line 267
    const-string v5, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {v14, v5}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    goto/16 :goto_19

    .line 271
    :cond_b3
    iget-object v5, v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v9, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v11, v5, v9

    .line 272
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v5, v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v9, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v12, v5, v9

    .line 275
    :goto_cd
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v5, v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v8, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v5, v8, :cond_de

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 278
    .end local v4    # "ccTypeAndValid":I
    .end local v6    # "ccType":I
    .end local v7    # "ccValid":Z
    .end local v11    # "ccData1":B
    .end local v12    # "ccData2":B
    :cond_de
    goto/16 :goto_19

    .line 279
    :cond_e0
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 56
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 56
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 4

    .line 194
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 196
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 198
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 199
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 200
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 201
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 189
    const-string v0, "Cea708Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .registers 1

    .line 56
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .registers 3

    .line 56
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
