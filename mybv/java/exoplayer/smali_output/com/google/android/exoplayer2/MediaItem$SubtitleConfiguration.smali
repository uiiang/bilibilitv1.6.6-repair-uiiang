.class public Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final FIELD_LABEL:Ljava/lang/String;

.field private static final FIELD_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_URI:Ljava/lang/String;


# instance fields
.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final roleFlags:I

.field public final selectionFlags:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$Jg5nfttUVMSVvXUhCI0aHIOhwG0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1647
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    .line 1648
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    .line 1649
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 1650
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    .line 1651
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    .line 1652
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    .line 1653
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    .line 1656
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "selectionFlags"    # I
    .param p5, "roleFlags"    # I
    .param p6, "label"    # Ljava/lang/String;
    .param p7, "id"    # Ljava/lang/String;

    .line 1588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1589
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1590
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1591
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1592
    iput p4, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 1593
    iput p5, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 1594
    iput-object p6, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1595
    iput-object p7, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    .line 1596
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 9
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1473
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1599
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$2800(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1600
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$2900(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1601
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3000(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1602
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3100(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 1603
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3200(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 1604
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3300(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1605
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3400(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    .line 1606
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1473
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1659
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1660
    .local v0, "uri":Landroid/net/Uri;
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, "mimeType":Ljava/lang/String;
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1662
    .local v2, "language":Ljava/lang/String;
    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1663
    .local v3, "selectionFlags":I
    sget-object v5, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1664
    .local v4, "roleFlags":I
    sget-object v5, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1665
    .local v5, "label":Ljava/lang/String;
    sget-object v6, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1667
    .local v6, "id":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 1668
    .local v7, "builder":Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    nop

    .line 1669
    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v8

    .line 1670
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v8

    .line 1671
    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v8

    .line 1672
    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v8

    .line 1673
    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v8

    .line 1674
    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v8

    .line 1675
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    move-result-object v8

    .line 1668
    return-object v8
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 3

    .line 1610
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1615
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1616
    return v0

    .line 1618
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1619
    return v2

    .line 1622
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    .line 1624
    .local v1, "other":Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1625
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1626
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget v3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iget v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    if-ne v3, v4, :cond_4c

    iget v3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    iget v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1629
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    .line 1630
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    .line 1624
    :goto_4d
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1635
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 1636
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v1, v2

    .line 1637
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    .line 1638
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    add-int/2addr v1, v2

    .line 1639
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    add-int/2addr v0, v2

    .line 1640
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    if-nez v2, :cond_33

    const/4 v2, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_37
    add-int/2addr v1, v2

    .line 1641
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-nez v2, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_43
    add-int/2addr v0, v3

    .line 1642
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 1680
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1681
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1682
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1683
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    :cond_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 1686
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    :cond_1e
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    if-eqz v1, :cond_27

    .line 1689
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1691
    :cond_27
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    if-eqz v1, :cond_30

    .line 1692
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1694
    :cond_30
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 1695
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :cond_39
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 1698
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    :cond_42
    return-object v0
.end method
