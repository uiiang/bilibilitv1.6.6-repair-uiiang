.class final Lcom/google/android/exoplayer2/util/MimeTypes$Mp4aObjectType;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/MimeTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mp4aObjectType"
.end annotation


# instance fields
.field public final audioObjectTypeIndication:I

.field public final objectTypeIndication:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "objectTypeIndication"    # I
    .param p2, "audioObjectTypeIndication"    # I

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput p1, p0, Lcom/google/android/exoplayer2/util/MimeTypes$Mp4aObjectType;->objectTypeIndication:I

    .line 734
    iput p2, p0, Lcom/google/android/exoplayer2/util/MimeTypes$Mp4aObjectType;->audioObjectTypeIndication:I

    .line 735
    return-void
.end method


# virtual methods
.method public getEncoding()I
    .registers 2

    .line 740
    iget v0, p0, Lcom/google/android/exoplayer2/util/MimeTypes$Mp4aObjectType;->audioObjectTypeIndication:I

    sparse-switch v0, :sswitch_data_1a

    .line 754
    const/4 v0, 0x0

    return v0

    .line 748
    :sswitch_7
    const/16 v0, 0x10

    return v0

    .line 746
    :sswitch_a
    const/16 v0, 0xc

    return v0

    .line 750
    :sswitch_d
    const/16 v0, 0xf

    return v0

    .line 752
    :sswitch_10
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    .line 744
    :sswitch_13
    const/16 v0, 0xb

    return v0

    .line 742
    :sswitch_16
    const/16 v0, 0xa

    return v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x2 -> :sswitch_16
        0x5 -> :sswitch_13
        0x16 -> :sswitch_10
        0x17 -> :sswitch_d
        0x1d -> :sswitch_a
        0x2a -> :sswitch_7
    .end sparse-switch
.end method
