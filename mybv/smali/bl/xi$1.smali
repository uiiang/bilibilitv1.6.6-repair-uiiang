.class Lbl/xi$1;
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
    .line 85
    iput-object p1, p0, Lbl/xi$1;->this$0:Lbl/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lbl/xi$1;->this$0:Lbl/xi;

    const/4 v1, 0x1

    # setter for: Lbl/xi;->moreActionOkLongFired:Z
    invoke-static {v0, v1}, Lbl/xi;->access$002(Lbl/xi;Z)Z

    .line 89
    iget-object v0, p0, Lbl/xi$1;->this$0:Lbl/xi;

    # invokes: Lbl/xi;->showPlayerRightMenu()V
    invoke-static {v0}, Lbl/xi;->access$100(Lbl/xi;)V

    .line 90
    return-void
.end method
