.class Lbl/xw$3;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->showSkipSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lbl/xw$3;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lbl/xw$3;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->x()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
