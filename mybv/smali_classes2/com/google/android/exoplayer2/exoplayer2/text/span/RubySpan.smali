.class public final Lcom/google/android/exoplayer2/text/span/RubySpan;
.super Ljava/lang/Object;
.source "RubySpan.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/span/LanguageFeatureSpan;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final position:I

.field public final rubyText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "rubyText"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;->rubyText:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;->position:I

    .line 50
    return-void
.end method
