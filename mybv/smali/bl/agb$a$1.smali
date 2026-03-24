.class Lbl/agb$a$1;
.super Ljava/lang/Object;
.source "agb.java"

# interfaces
.implements Lbl/agb$GroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/agb$a;->a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/agb$a;

.field final synthetic val$listener:Lbl/agb$c;


# direct methods
.method constructor <init>(Lbl/agb$a;Lbl/agb$c;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lbl/agb$a$1;->this$0:Lbl/agb$a;

    iput-object p2, p0, Lbl/agb$a$1;->val$listener:Lbl/agb$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupItemClick(Lbl/agb;Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lbl/agb$a$1;->val$listener:Lbl/agb$c;

    if-eqz v0, :cond_f

    .line 445
    iget-object v1, p0, Lbl/agb$a$1;->val$listener:Lbl/agb$c;

    if-eqz p4, :cond_10

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-interface {v1, p1, p2, v0}, Lbl/agb$c;->a(Lbl/agb;Landroid/view/View;Ljava/lang/String;)V

    .line 447
    :cond_f
    return-void

    .line 445
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method
