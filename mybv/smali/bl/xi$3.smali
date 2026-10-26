.class Lbl/xi$3;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/xi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xi;


# direct methods
.method constructor <init>(Lbl/xi;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lbl/xi$3;->this$0:Lbl/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lbl/xi$3;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->isSliding:Z
    invoke-static {v0}, Lbl/xi;->access$300(Lbl/xi;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 133
    iget-object v0, p0, Lbl/xi$3;->this$0:Lbl/xi;

    # invokes: Lbl/xi;->syncProgressUiWithPlayer()V
    invoke-static {v0}, Lbl/xi;->access$400(Lbl/xi;)V

    .line 135
    :cond_d
    return-void
.end method
