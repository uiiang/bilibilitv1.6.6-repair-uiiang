.class Lbl/afi$6$3;
.super Ljava/lang/Object;
.source "afi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afi$6;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/afi$6;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lbl/afi$6;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lbl/afi$6$3;->this$1:Lbl/afi$6;

    iput-object p2, p0, Lbl/afi$6$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lbl/afi$6$3;->this$1:Lbl/afi$6;

    iget-object v0, v0, Lbl/afi$6;->val$searchResponse:Lbl/afi$SearchLiveRoomResponse;

    iget-object v1, p0, Lbl/afi$6$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lbl/afi$SearchLiveRoomResponse;->onError(Ljava/lang/Throwable;)V

    .line 661
    return-void
.end method
