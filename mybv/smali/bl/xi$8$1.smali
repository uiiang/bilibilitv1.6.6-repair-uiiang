.class Lbl/xi$8$1;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xi$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xi$8;

.field final synthetic val$scaled:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lbl/xi$8;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lbl/xi$8$1;->this$1:Lbl/xi$8;

    iput-object p2, p0, Lbl/xi$8$1;->val$scaled:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lbl/xi$8$1;->this$1:Lbl/xi$8;

    iget-object v0, v0, Lbl/xi$8;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lbl/xi;->access$800(Lbl/xi;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lbl/xi$8$1;->this$1:Lbl/xi$8;

    iget-object v0, v0, Lbl/xi$8;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->isSliding:Z
    invoke-static {v0}, Lbl/xi;->access$900(Lbl/xi;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1164
    iget-object v0, p0, Lbl/xi$8$1;->this$1:Lbl/xi$8;

    iget-object v0, v0, Lbl/xi$8;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lbl/xi;->access$800(Lbl/xi;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lbl/xi$8$1;->val$scaled:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1165
    iget-object v0, p0, Lbl/xi$8$1;->this$1:Lbl/xi$8;

    iget-object v0, v0, Lbl/xi$8;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->seekPreviewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lbl/xi;->access$800(Lbl/xi;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1166
    const-string v0, "xi_java"

    const-string v1, "loadSeekPreviewSnapshot: set image and set VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_34
    return-void
.end method
