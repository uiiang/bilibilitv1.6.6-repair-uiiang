.class Lbl/afi$7$3;
.super Ljava/lang/Object;
.source "afi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afi$7;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/afi$7;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lbl/afi$7;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lbl/afi$7$3;->this$1:Lbl/afi$7;

    iput-object p2, p0, Lbl/afi$7$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lbl/afi$7$3;->this$1:Lbl/afi$7;

    iget-object v0, v0, Lbl/afi$7;->val$searchResponse:Lbl/afi$SearchUserResponse;

    iget-object v1, p0, Lbl/afi$7$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lbl/afi$SearchUserResponse;->onError(Ljava/lang/Throwable;)V

    .line 729
    return-void
.end method
