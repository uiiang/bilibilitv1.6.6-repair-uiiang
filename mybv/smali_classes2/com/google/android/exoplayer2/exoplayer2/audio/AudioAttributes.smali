.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;,
        Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;,
        Lcom/google/android/exoplayer2/audio/AudioAttributes$Api32;,
        Lcom/google/android/exoplayer2/audio/AudioAttributes$Api29;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/audio/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private static final FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

.field private static final FIELD_CONTENT_TYPE:Ljava/lang/String;

.field private static final FIELD_FLAGS:Ljava/lang/String;

.field private static final FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

.field private static final FIELD_USAGE:Ljava/lang/String;


# instance fields
.field public final allowedCapturePolicy:I

.field private audioAttributesV21:Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

.field public final contentType:I

.field public final flags:I

.field public final spatializationBehavior:I

.field public final usage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_CONTENT_TYPE:Ljava/lang/String;

    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_FLAGS:Ljava/lang/String;

    .line 210
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_USAGE:Ljava/lang/String;

    .line 211
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

    .line 212
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .registers 6
    .param p1, "contentType"    # I
    .param p2, "flags"    # I
    .param p3, "usage"    # I
    .param p4, "allowedCapturePolicy"    # I
    .param p5, "spatializationBehavior"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    .line 159
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    .line 160
    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    .line 161
    iput p4, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    .line 162
    iput p5, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    .line 163
    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/google/android/exoplayer2/audio/AudioAttributes$1;

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIIII)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 228
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    .line 229
    .local v0, "builder":Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 230
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 232
    :cond_14
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_FLAGS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 233
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setFlags(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 235
    :cond_23
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_USAGE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 236
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 238
    :cond_32
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 239
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 241
    :cond_41
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 242
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setSpatializationBehavior(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 244
    :cond_50
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 182
    return v0

    .line 184
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 187
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 188
    .local v2, "other":Lcom/google/android/exoplayer2/audio/AudioAttributes;
    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    iget v4, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    iget v4, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    iget v4, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    iget v4, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    iget v4, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    if-ne v3, v4, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0

    .line 185
    .end local v2    # "other":Lcom/google/android/exoplayer2/audio/AudioAttributes;
    :cond_36
    :goto_36
    return v1
.end method

.method public getAudioAttributesV21()Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

    if-nez v0, :cond_c

    .line 174
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;-><init>(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/audio/AudioAttributes$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

    .line 176
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 197
    const/16 v0, 0x11

    .line 198
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    add-int/2addr v1, v2

    .line 199
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    add-int/2addr v0, v2

    .line 200
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    add-int/2addr v1, v2

    .line 201
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    add-int/2addr v0, v2

    .line 202
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    add-int/2addr v1, v2

    .line 203
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_CONTENT_TYPE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_FLAGS:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_USAGE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->spatializationBehavior:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    return-object v0
.end method
