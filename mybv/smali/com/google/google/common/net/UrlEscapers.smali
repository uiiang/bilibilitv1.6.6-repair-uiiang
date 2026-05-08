.class public final Lcom/google/common/net/UrlEscapers;
.super Ljava/lang/Object;
.source "UrlEscapers.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final URL_FORM_PARAMETER_ESCAPER:Lcom/google/common/escape/Escaper;

.field static final URL_FORM_PARAMETER_OTHER_SAFE_CHARS:Ljava/lang/String; = "-_.*"

.field private static final URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

.field static final URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS:Ljava/lang/String; = "-._~!$\'()*,;&=@:"

.field private static final URL_PATH_SEGMENT_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_FORM_PARAMETER_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 112
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const-string v1, "-._~!$\'()*,;&=@:+"

    invoke-direct {v0, v1, v3}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_PATH_SEGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 143
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const-string v1, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v1, v3}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static urlFormParameterEscaper()Lcom/google/common/escape/Escaper;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/common/net/UrlEscapers;->URL_FORM_PARAMETER_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method

.method public static urlFragmentEscaper()Lcom/google/common/escape/Escaper;
    .registers 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/common/net/UrlEscapers;->URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method

.method public static urlPathSegmentEscaper()Lcom/google/common/escape/Escaper;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/common/net/UrlEscapers;->URL_PATH_SEGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
