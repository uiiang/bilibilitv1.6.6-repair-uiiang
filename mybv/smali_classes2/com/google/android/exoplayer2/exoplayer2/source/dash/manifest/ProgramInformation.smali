.class public final Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
.super Ljava/lang/Object;
.source "ProgramInformation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final copyright:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public final moreInformationURL:Ljava/lang/String;

.field public final source:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "copyright"    # Ljava/lang/String;
    .param p4, "moreInformationURL"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 61
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 62
    return v0

    .line 64
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 65
    return v2

    .line 67
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    .line 68
    .local v1, "other":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    .line 69
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    .line 70
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    .line 71
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    .line 72
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 68
    :goto_41
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 77
    const/16 v0, 0x11

    .line 78
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v1, v2

    .line 79
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    add-int/2addr v0, v2

    .line 80
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    add-int/2addr v1, v2

    .line 81
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    add-int/2addr v0, v2

    .line 82
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_41
    add-int/2addr v1, v3

    .line 83
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
