.class final Lbl/PlayUrlPrefetch$Cached;
.super Ljava/lang/Object;
.source "PlayUrlPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/PlayUrlPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cached"
.end annotation


# instance fields
.field final createdAt:J

.field final generation:I

.field final response:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lbl/PlayUrlPrefetch$Cached;->response:Ljava/lang/Object;

    .line 147
    iput-wide p2, p0, Lbl/PlayUrlPrefetch$Cached;->createdAt:J

    .line 148
    iput p4, p0, Lbl/PlayUrlPrefetch$Cached;->generation:I

    .line 149
    return-void
.end method
