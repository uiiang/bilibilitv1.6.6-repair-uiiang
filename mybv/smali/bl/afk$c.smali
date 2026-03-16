.class final Lbl/afk$c;
.super Ljava/lang/Object;
.source "afk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field final synthetic this$0:Lbl/afk;


# direct methods
.method constructor <init>(Lbl/afk;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lbl/afk$c;->this$0:Lbl/afk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lbl/afk$c;->a:Landroid/widget/TextView;

    .line 206
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lbl/aoy;->a()Lbl/aoy;

    move-result-object v0

    .line 210
    const-string v1, "ImagePipelineFactory.getInstance()"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lbl/aoy;->h()Lbl/aov;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lbl/aov;->c()V

    .line 214
    iget-object v0, p0, Lbl/afk$c;->a:Landroid/widget/TextView;

    const-string v1, "\u672c\u5730\u56fe\u7247\u7f13\u5b58 : 0M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method
