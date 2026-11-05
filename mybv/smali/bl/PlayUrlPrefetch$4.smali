.class Lbl/PlayUrlPrefetch$4;
.super Ljava/lang/Object;
.source "PlayUrlPrefetch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/PlayUrlPrefetch;->tick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$finalQuality:I

.field final synthetic val$gen:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$next:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

.field final synthetic val$pgc:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 494
    iput-object p1, p0, Lbl/PlayUrlPrefetch$4;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lbl/PlayUrlPrefetch$4;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lbl/PlayUrlPrefetch$4;->val$next:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iput p4, p0, Lbl/PlayUrlPrefetch$4;->val$finalQuality:I

    iput-boolean p5, p0, Lbl/PlayUrlPrefetch$4;->val$pgc:Z

    iput p6, p0, Lbl/PlayUrlPrefetch$4;->val$gen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 497
    iget-object v0, p0, Lbl/PlayUrlPrefetch$4;->val$appContext:Landroid/content/Context;

    iget-object v1, p0, Lbl/PlayUrlPrefetch$4;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lbl/PlayUrlPrefetch$4;->val$next:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget v3, p0, Lbl/PlayUrlPrefetch$4;->val$finalQuality:I

    iget-boolean v4, p0, Lbl/PlayUrlPrefetch$4;->val$pgc:Z

    iget v5, p0, Lbl/PlayUrlPrefetch$4;->val$gen:I

    # invokes: Lbl/PlayUrlPrefetch;->doPrefetch(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;IZI)V
    invoke-static/range {v0 .. v5}, Lbl/PlayUrlPrefetch;->access$400(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;IZI)V

    .line 498
    return-void
.end method
