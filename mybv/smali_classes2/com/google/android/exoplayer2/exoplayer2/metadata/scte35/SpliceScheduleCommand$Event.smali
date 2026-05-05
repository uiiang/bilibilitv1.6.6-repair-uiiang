.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final uniqueProgramId:I

.field public final utcSpliceTime:J


# direct methods
.method private constructor <init>(JZZZLjava/util/List;JZJIII)V
    .registers 16
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p7, "utcSpliceTime"    # J
    .param p9, "autoReturn"    # Z
    .param p10, "breakDurationUs"    # J
    .param p12, "uniqueProgramId"    # I
    .param p13, "availNum"    # I
    .param p14, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 93
    .local p6, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 95
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 96
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 97
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 98
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 99
    iput-wide p7, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 100
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 101
    iput-wide p10, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    .line 102
    iput p12, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 103
    iput p13, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 104
    iput p14, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "componentSpliceListLength":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v3, "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    if-ge v4, v0, :cond_42

    .line 115
    # invokes: Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->access$000(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 117
    .end local v4    # "i":I
    :cond_42
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v2, :cond_55

    const/4 v1, 0x1

    :cond_55
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 124
    return-void
.end method

.method static synthetic access$300(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .registers 2
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 38
    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 38
    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;Landroid/os/Parcel;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .registers 31
    .param p0, "sectionData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    .line 129
    .local v15, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move/from16 v17, v0

    .line 130
    .local v17, "spliceEventCancelIndicator":Z
    const/4 v0, 0x0

    .line 131
    .local v0, "outOfNetworkIndicator":Z
    const/4 v3, 0x0

    .line 132
    .local v3, "programSpliceFlag":Z
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 133
    .local v4, "utcSpliceTime":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v7, 0x0

    .line 135
    .local v7, "uniqueProgramId":I
    const/4 v8, 0x0

    .line 136
    .local v8, "availNum":I
    const/4 v9, 0x0

    .line 137
    .local v9, "availsExpected":I
    const/4 v10, 0x0

    .line 138
    .local v10, "autoReturn":Z
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 139
    .local v11, "breakDurationUs":J
    if-nez v17, :cond_d2

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 141
    .local v13, "headerByte":I
    and-int/lit16 v14, v13, 0x80

    if-eqz v14, :cond_32

    const/4 v14, 0x1

    goto :goto_33

    :cond_32
    const/4 v14, 0x0

    :goto_33
    move v0, v14

    .line 142
    and-int/lit8 v14, v13, 0x40

    if-eqz v14, :cond_3a

    const/4 v14, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v14, 0x0

    :goto_3b
    move v3, v14

    .line 143
    and-int/lit8 v14, v13, 0x20

    if-eqz v14, :cond_42

    const/4 v14, 0x1

    goto :goto_43

    :cond_42
    const/4 v14, 0x0

    .line 144
    .local v14, "durationFlag":Z
    :goto_43
    if-eqz v3, :cond_49

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 147
    :cond_49
    if-nez v3, :cond_85

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 149
    .local v1, "componentCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .end local v6    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v2, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_55
    if-ge v6, v1, :cond_7b

    .line 151
    move/from16 v20, v0

    .end local v0    # "outOfNetworkIndicator":Z
    .local v20, "outOfNetworkIndicator":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 152
    .local v0, "componentTag":I
    move/from16 v21, v3

    move-wide/from16 v22, v4

    .end local v3    # "programSpliceFlag":Z
    .end local v4    # "utcSpliceTime":J
    .local v21, "programSpliceFlag":Z
    .local v22, "utcSpliceTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 153
    .local v3, "componentUtcSpliceTime":J
    new-instance v5, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    move/from16 v24, v1

    .end local v1    # "componentCount":I
    .local v24, "componentCount":I
    const/4 v1, 0x0

    invoke-direct {v5, v0, v3, v4, v1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJLcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v0    # "componentTag":I
    .end local v3    # "componentUtcSpliceTime":J
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v20

    move/from16 v3, v21

    move-wide/from16 v4, v22

    move/from16 v1, v24

    goto :goto_55

    .end local v20    # "outOfNetworkIndicator":Z
    .end local v21    # "programSpliceFlag":Z
    .end local v22    # "utcSpliceTime":J
    .end local v24    # "componentCount":I
    .local v0, "outOfNetworkIndicator":Z
    .restart local v1    # "componentCount":I
    .local v3, "programSpliceFlag":Z
    .restart local v4    # "utcSpliceTime":J
    :cond_7b
    move/from16 v20, v0

    move/from16 v24, v1

    move/from16 v21, v3

    move-wide/from16 v22, v4

    .end local v0    # "outOfNetworkIndicator":Z
    .end local v1    # "componentCount":I
    .end local v3    # "programSpliceFlag":Z
    .end local v4    # "utcSpliceTime":J
    .restart local v20    # "outOfNetworkIndicator":Z
    .restart local v21    # "programSpliceFlag":Z
    .restart local v22    # "utcSpliceTime":J
    .restart local v24    # "componentCount":I
    move-object v6, v2

    goto :goto_8b

    .line 147
    .end local v2    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .end local v20    # "outOfNetworkIndicator":Z
    .end local v21    # "programSpliceFlag":Z
    .end local v22    # "utcSpliceTime":J
    .end local v24    # "componentCount":I
    .restart local v0    # "outOfNetworkIndicator":Z
    .restart local v3    # "programSpliceFlag":Z
    .restart local v4    # "utcSpliceTime":J
    .local v6, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    :cond_85
    move/from16 v20, v0

    move/from16 v21, v3

    move-wide/from16 v22, v4

    .line 156
    .end local v0    # "outOfNetworkIndicator":Z
    .end local v3    # "programSpliceFlag":Z
    .end local v4    # "utcSpliceTime":J
    .restart local v20    # "outOfNetworkIndicator":Z
    .restart local v21    # "programSpliceFlag":Z
    .restart local v22    # "utcSpliceTime":J
    :goto_8b
    if-eqz v14, :cond_b9

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    .line 158
    .local v0, "firstByte":J
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v24, v2, v4

    if-eqz v24, :cond_9e

    const/16 v18, 0x1

    goto :goto_a0

    :cond_9e
    const/16 v18, 0x0

    :goto_a0
    move/from16 v2, v18

    .line 159
    .end local v10    # "autoReturn":Z
    .local v2, "autoReturn":Z
    const-wide/16 v3, 0x1

    and-long/2addr v3, v0

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v18

    or-long v3, v3, v18

    .line 160
    .local v3, "breakDuration90khz":J
    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v3

    const-wide/16 v24, 0x5a

    div-long v18, v18, v24

    move v10, v2

    move-wide/from16 v11, v18

    .line 162
    .end local v0    # "firstByte":J
    .end local v2    # "autoReturn":Z
    .end local v3    # "breakDuration90khz":J
    .restart local v10    # "autoReturn":Z
    :cond_b9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move-wide/from16 v27, v11

    goto :goto_e4

    .line 139
    .end local v13    # "headerByte":I
    .end local v14    # "durationFlag":Z
    .end local v20    # "outOfNetworkIndicator":Z
    .end local v21    # "programSpliceFlag":Z
    .end local v22    # "utcSpliceTime":J
    .local v0, "outOfNetworkIndicator":Z
    .local v3, "programSpliceFlag":Z
    .restart local v4    # "utcSpliceTime":J
    :cond_d2
    move/from16 v20, v0

    move/from16 v21, v3

    move-wide/from16 v22, v4

    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move-wide/from16 v27, v11

    .line 166
    .end local v0    # "outOfNetworkIndicator":Z
    .end local v3    # "programSpliceFlag":Z
    .end local v4    # "utcSpliceTime":J
    .end local v6    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .end local v7    # "uniqueProgramId":I
    .end local v8    # "availNum":I
    .end local v9    # "availsExpected":I
    .end local v10    # "autoReturn":Z
    .end local v11    # "breakDurationUs":J
    .local v18, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v19, "uniqueProgramId":I
    .restart local v20    # "outOfNetworkIndicator":Z
    .restart local v21    # "programSpliceFlag":Z
    .restart local v22    # "utcSpliceTime":J
    .local v24, "availNum":I
    .local v25, "availsExpected":I
    .local v26, "autoReturn":Z
    .local v27, "breakDurationUs":J
    :goto_e4
    new-instance v29, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-object/from16 v0, v29

    move-wide v1, v15

    move/from16 v3, v17

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v18

    move-wide/from16 v7, v22

    move/from16 v9, v26

    move-wide/from16 v10, v27

    move/from16 v12, v19

    move/from16 v13, v24

    move/from16 v14, v25

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v29
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 181
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 183
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 186
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_31

    .line 188
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    # invokes: Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->writeToParcel(Landroid/os/Parcel;)V
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->access$200(Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;Landroid/os/Parcel;)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 190
    .end local v1    # "i":I
    :cond_31
    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 191
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
