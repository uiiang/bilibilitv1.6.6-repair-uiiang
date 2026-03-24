.class Lbl/afi$4$1;
.super Ljava/lang/Object;
.source "afi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afi$4;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/afi$4;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lbl/afi$4;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lbl/afi$4$1;->this$1:Lbl/afi$4;

    iput-object p2, p0, Lbl/afi$4$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lbl/afi$4$1;->this$1:Lbl/afi$4;

    iget-object v0, v0, Lbl/afi$4;->val$searchResponse:Lbl/afi$SearchBangumiResponse;

    iget-object v1, p0, Lbl/afi$4$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v0, v1}, Lbl/afi$SearchBangumiResponse;->onError(Ljava/lang/Throwable;)V

    .line 488
    return-void
.end method
