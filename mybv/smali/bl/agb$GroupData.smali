.class public Lbl/agb$GroupData;
.super Ljava/lang/Object;
.source "agb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupData"
.end annotation


# instance fields
.field public options:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public selectedValue:Ljava/lang/Object;

.field public title:Ljava/lang/String;

.field public useKeyAsTag:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Lbl/agb$GroupData;->title:Ljava/lang/String;

    .line 389
    iput-object p2, p0, Lbl/agb$GroupData;->options:Ljava/util/LinkedHashMap;

    .line 390
    iput-object p3, p0, Lbl/agb$GroupData;->selectedValue:Ljava/lang/Object;

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/agb$GroupData;->useKeyAsTag:Z

    .line 392
    return-void
.end method
