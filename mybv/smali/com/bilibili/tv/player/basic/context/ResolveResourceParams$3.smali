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
    .line 295
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
    .line 295
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;->call()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 298
    const-string v0, "https://bsbsb.top/api/skipSegments"

    .line 299
    const-string v1, "http://bsbsb.top/api/skipSegments"

    .line 300
    iget-object v2, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$3;->this$0:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 301
    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    :try_start_17
    new-instance v4, Lbl/qa$a;

    const-class v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;

    invoke-direct {v4, v5}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 305
    invoke-virtual {v4, v0}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v4, "videoID"

    .line 306
    invoke-virtual {v0, v4, v2}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v4, "categories"

    .line 307
    invoke-virtual {v0, v4, v3}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v4, "actionType"

    const-string v5, "skip"

    .line 308
    invoke-virtual {v0, v4, v5}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v4, Lbl/qb;

    invoke-direct {v4}, Lbl/qb;-><init>()V

    .line 309
    invoke-virtual {v0, v4}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    const-string v4, "GET"

    .line 304
    invoke-static {v0, v4}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;

    .line 309
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;->result2()Lorg/json/JSONArray;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_59} :catch_5d

    move-result v4

    if-lez v4, :cond_5e

    .line 324
    :goto_5c
    return-object v0

    .line 313
    :catch_5d
    move-exception v0

    .line 317
    :cond_5e
    :try_start_5e
    new-instance v0, Lbl/qa$a;

    const-class v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;

    invoke-direct {v0, v4}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 318
    invoke-virtual {v0, v1}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    const-string v1, "videoID"

    .line 319
    invoke-virtual {v0, v1, v2}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "categories"

    .line 320
    invoke-virtual {v0, v1, v3}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v1, "actionType"

    const-string v2, "skip"

    .line 321
    invoke-virtual {v0, v1, v2}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    new-instance v1, Lbl/qb;

    invoke-direct {v1}, Lbl/qb;-><init>()V

    .line 322
    invoke-virtual {v0, v1}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v0

    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    const-string v1, "GET"

    .line 317
    invoke-static {v0, v1}, Lbl/pz;->a(Lbl/qa;Ljava/lang/String;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;

    .line 322
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;->result2()Lorg/json/JSONArray;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9a} :catch_9c

    move-result-object v0

    goto :goto_5c

    .line 323
    :catch_9c
    move-exception v0

    .line 324
    const/4 v0, 0x0

    goto :goto_5c
.end method
