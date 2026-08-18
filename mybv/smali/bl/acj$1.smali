.class Lbl/acj$1;
.super Ljava/lang/Object;
.source "acj.java"

# interfaces
.implements Lbl/kn$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/acj;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$acuVar:Lbl/acu;


# direct methods
.method constructor <init>(Lbl/acu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lbl/acj$1;->val$acuVar:Lbl/acu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lbl/acj$1;->val$acuVar:Lbl/acu;

    invoke-virtual {v0}, Lbl/acu;->a()V

    .line 65
    return-void
.end method
