.class Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;
.super Ljava/lang/Object;
.source "ResolveResourceParams.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->fetchSponsorBlockSegments()Lorg/json/JSONArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;->this$0:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;->call()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 291
    const-string v0, "https://bsbsb.top/api/skipSegments"

    .line 292
    const-string v1, "http://bsbsb.top/api/skipSegments"

    .line 293
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;->this$0:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 295
    const-string v3, "[\"intro\",\"outro\",\"sponsor\"]"

    .line 298
    :try_start_e
    new-instance v4, Lbl/qa$a;

    const-class v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;

    invoke-direct {v4, v5}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 299
    invoke-virtual {v4, v0}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v4, "videoID"

    .line 300
    invoke-virtual {v0, v4, v2}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v4, "categories"

    .line 301
    invoke-virtual {v0, v4, v3}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v4, "actionType"

    const-string v5, "skip"

    .line 302
    invoke-virtual {v0, v4, v5}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v4, Lbl/QfNoTs;

    invoke-direct {v4}, Lbl/QfNoTs;-><init>()V

    .line 303
    invoke-virtual {v0, v4}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    const-string v4, "GET"

    .line 298
    invoke-static {v0, v4}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;

    .line 303
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;->result2()Lorg/json/JSONArray;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_50} :catch_54

    move-result v4

    if-lez v4, :cond_55

    .line 318
    :goto_53
    return-object v0

    .line 307
    :catch_54
    move-exception v0

    .line 311
    :cond_55
    :try_start_55
    new-instance v0, Lbl/qa$a;

    const-class v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;

    invoke-direct {v0, v4}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 312
    invoke-virtual {v0, v1}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v1, "videoID"

    .line 313
    invoke-virtual {v0, v1, v2}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "categories"

    .line 314
    invoke-virtual {v0, v1, v3}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "actionType"

    const-string v2, "skip"

    .line 315
    invoke-virtual {v0, v1, v2}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v1, Lbl/QfNoTs;

    invoke-direct {v1}, Lbl/QfNoTs;-><init>()V

    .line 316
    invoke-virtual {v0, v1}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    const-string v1, "GET"

    .line 311
    invoke-static {v0, v1}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;

    .line 316
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;->result2()Lorg/json/JSONArray;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_91} :catch_93

    move-result-object v0

    goto :goto_53

    .line 317
    :catch_93
    move-exception v0

    .line 318
    const/4 v0, 0x0

    goto :goto_53
.end method
