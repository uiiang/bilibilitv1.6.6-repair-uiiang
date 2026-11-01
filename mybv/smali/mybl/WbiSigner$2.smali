.class Lmybl/WbiSigner$2;
.super Ljava/lang/Object;
.source "WbiSigner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/WbiSigner;->signAsync(Ljava/util/TreeMap;Lmybl/WbiSigner$WbiSignCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/WbiSigner;

.field final synthetic val$callback:Lmybl/WbiSigner$WbiSignCallback;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmybl/WbiSigner;Lmybl/WbiSigner$WbiSignCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 155
    iput-object p1, p0, Lmybl/WbiSigner$2;->this$0:Lmybl/WbiSigner;

    iput-object p2, p0, Lmybl/WbiSigner$2;->val$callback:Lmybl/WbiSigner$WbiSignCallback;

    iput-object p3, p0, Lmybl/WbiSigner$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lmybl/WbiSigner$2;->val$callback:Lmybl/WbiSigner$WbiSignCallback;

    iget-object v1, p0, Lmybl/WbiSigner$2;->val$query:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmybl/WbiSigner$WbiSignCallback;->onSignReady(Ljava/lang/String;)V

    .line 159
    return-void
.end method
