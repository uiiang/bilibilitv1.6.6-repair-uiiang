.class public Lbl/agb$a;
.super Ljava/lang/Object;
.source "agb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private cancelClickListener:Lbl/agb$b;

.field private cancelText:Ljava/lang/String;

.field private confirmClickListener:Lbl/agb$b;

.field private confirmText:Ljava/lang/String;

.field private focusCancel:Z

.field private groupClickListener:Lbl/agb$GroupClickListener;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/agb$GroupData;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/4 v0, 0x2

    iput v0, p0, Lbl/agb$a;->type:I

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/agb$a;->focusCancel:Z

    .line 409
    iput-object p1, p0, Lbl/agb$a;->activity:Landroid/app/Activity;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lbl/agb$a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/agb$a;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lbl/agb$a;)I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lbl/agb$a;->type:I

    return v0
.end method

.method static synthetic access$1000(Lbl/agb$a;)Lbl/agb$b;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/agb$a;->cancelClickListener:Lbl/agb$b;

    return-object v0
.end method

.method static synthetic access$1100(Lbl/agb$a;)Lbl/agb$b;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/agb$a;->confirmClickListener:Lbl/agb$b;

    return-object v0
.end method

.method static synthetic access$200(Lbl/agb$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/agb$a;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lbl/agb$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/agb$a;->confirmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lbl/agb$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/agb$a;->cancelText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lbl/agb$a;)Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lbl/agb$a;->focusCancel:Z

    return v0
.end method

.method static synthetic access$600(Lbl/agb$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lbl/agb$a;)Lbl/agb$GroupClickListener;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/agb$a;->groupClickListener:Lbl/agb$GroupClickListener;

    return-object v0
.end method


# virtual methods
.method public a(I)Lbl/agb$a;
    .locals 0

    .prologue
    .line 413
    iput p1, p0, Lbl/agb$a;->type:I

    .line 414
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lbl/agb$a;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 454
    iget-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/agb$GroupData;

    iput-object p1, v0, Lbl/agb$GroupData;->selectedValue:Ljava/lang/Object;

    .line 456
    :cond_17
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbl/agb$a;
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lbl/agb$a;->title:Ljava/lang/String;

    .line 419
    return-object p0
.end method

.method public a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lbl/agb$a;->confirmText:Ljava/lang/String;

    .line 424
    iput-object p2, p0, Lbl/agb$a;->confirmClickListener:Lbl/agb$b;

    .line 425
    return-object p0
.end method

.method public a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lbl/agb$c;",
            ")",
            "Lbl/agb$a;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    if-nez v0, :cond_c

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    .line 438
    :cond_c
    new-instance v0, Lbl/agb$GroupData;

    invoke-direct {v0, v1, p1, v1}, Lbl/agb$GroupData;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Object;)V

    .line 439
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbl/agb$GroupData;->useKeyAsTag:Z

    .line 440
    iget-object v1, p0, Lbl/agb$a;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v0, Lbl/agb$a$1;

    invoke-direct {v0, p0, p2}, Lbl/agb$a$1;-><init>(Lbl/agb$a;Lbl/agb$c;)V

    iput-object v0, p0, Lbl/agb$a;->groupClickListener:Lbl/agb$GroupClickListener;

    .line 449
    return-object p0
.end method

.method public a(Z)Lbl/agb$a;
    .locals 0

    .prologue
    .line 460
    iput-boolean p1, p0, Lbl/agb$a;->focusCancel:Z

    .line 461
    return-object p0
.end method

.method public a()Lbl/agb;
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lbl/agb;

    invoke-direct {v0, p0}, Lbl/agb;-><init>(Lbl/agb$a;)V

    return-object v0
.end method

.method public addGroup(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Object;)Lbl/agb$a;
    .locals 2
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
            ")",
            "Lbl/agb$a;"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    if-nez v0, :cond_b

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    .line 472
    :cond_b
    iget-object v0, p0, Lbl/agb$a;->groups:Ljava/util/List;

    new-instance v1, Lbl/agb$GroupData;

    invoke-direct {v1, p1, p2, p3}, Lbl/agb$GroupData;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    return-object p0
.end method

.method public b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lbl/agb$a;->cancelText:Ljava/lang/String;

    .line 430
    iput-object p2, p0, Lbl/agb$a;->cancelClickListener:Lbl/agb$b;

    .line 431
    return-object p0
.end method

.method public setGroupClickListener(Lbl/agb$GroupClickListener;)Lbl/agb$a;
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lbl/agb$a;->groupClickListener:Lbl/agb$GroupClickListener;

    .line 478
    return-object p0
.end method
