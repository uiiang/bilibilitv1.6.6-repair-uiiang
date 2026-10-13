.class Lbl/xi$4;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Lcom/bilibili/tv/player/widget/PlayerSeekBar$SnapshotLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xi;->updateSeekPreview(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xi;


# direct methods
.method constructor <init>(Lbl/xi;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lbl/xi$4;->this$0:Lbl/xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lbl/xi$4;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;
    invoke-static {v0}, Lbl/xi;->access$300(Lbl/xi;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 244
    iget-object v0, p0, Lbl/xi$4;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;
    invoke-static {v0}, Lbl/xi;->access$300(Lbl/xi;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const-string v0, "SeekPreview"

    const-string v1, "onLoadFailed: snapshot gone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1a
    return-void
.end method

.method public onLoadSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lbl/xi$4;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;
    invoke-static {v0}, Lbl/xi;->access$300(Lbl/xi;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 235
    iget-object v0, p0, Lbl/xi$4;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;
    invoke-static {v0}, Lbl/xi;->access$300(Lbl/xi;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    iget-object v0, p0, Lbl/xi$4;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewSnapshot:Landroid/widget/ImageView;
    invoke-static {v0}, Lbl/xi;->access$300(Lbl/xi;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    const-string v0, "SeekPreview"

    const-string v1, "onLoadSuccess: snapshot visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_22
    return-void
.end method
