.class Lbl/afi$3$1;
.super Ljava/lang/Object;
.source "afi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afi$3;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/afi$3;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lbl/afi$3;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lbl/afi$3$1;->this$1:Lbl/afi$3;

    iput-object p2, p0, Lbl/afi$3$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "SearchFragment"

    const-string v1, "Calling searchResponse.onError on main thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lbl/afi$3$1;->this$1:Lbl/afi$3;

    iget-object v0, v0, Lbl/afi$3;->val$searchResponse:Lbl/afi$SearchVideoResponse;

    iget-object v1, p0, Lbl/afi$3$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v0, v1}, Lbl/afi$SearchVideoResponse;->onError(Ljava/lang/Throwable;)V

    .line 408
    return-void
.end method
