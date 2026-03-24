.class Lbl/agb$TagData;
.super Ljava/lang/Object;
.source "agb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagData"
.end annotation


# instance fields
.field groupIndex:I

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput p1, p0, Lbl/agb$TagData;->groupIndex:I

    .line 377
    iput-object p2, p0, Lbl/agb$TagData;->value:Ljava/lang/Object;

    .line 378
    return-void
.end method
