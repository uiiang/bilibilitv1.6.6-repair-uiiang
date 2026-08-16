.class Lmybl/DanmakuSegmentLoader$1;
.super Ljava/lang/Object;
.source "DanmakuSegmentLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/DanmakuSegmentLoader;->loadSegment(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/DanmakuSegmentLoader;

.field final synthetic val$aid:J

.field final synthetic val$cid:J

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lmybl/DanmakuSegmentLoader;JJI)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lmybl/DanmakuSegmentLoader$1;->this$0:Lmybl/DanmakuSegmentLoader;

    iput-wide p2, p0, Lmybl/DanmakuSegmentLoader$1;->val$aid:J

    iput-wide p4, p0, Lmybl/DanmakuSegmentLoader$1;->val$cid:J

    iput p6, p0, Lmybl/DanmakuSegmentLoader$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 166
    iget-object v1, p0, Lmybl/DanmakuSegmentLoader$1;->this$0:Lmybl/DanmakuSegmentLoader;

    iget-wide v2, p0, Lmybl/DanmakuSegmentLoader$1;->val$aid:J

    iget-wide v4, p0, Lmybl/DanmakuSegmentLoader$1;->val$cid:J

    iget v6, p0, Lmybl/DanmakuSegmentLoader$1;->val$index:I

    # invokes: Lmybl/DanmakuSegmentLoader;->requestSegment(JJI)V
    invoke-static/range {v1 .. v6}, Lmybl/DanmakuSegmentLoader;->access$000(Lmybl/DanmakuSegmentLoader;JJI)V

    .line 167
    return-void
.end method
