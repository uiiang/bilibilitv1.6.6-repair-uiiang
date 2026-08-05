.class Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

.field final synthetic val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;ILcom/bilibili/tv/ui/download/DownloadManagerActivity$c;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iput p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    iput-object p3, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 281
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    if-eqz p2, :cond_48

    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->e(I)V

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    .line 287
    if-eqz v0, :cond_34

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$200(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 288
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$200(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->c(I)V

    .line 290
    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$i:I

    # setter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$302(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)I

    .line 293
    :cond_34
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->val$cVar:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    iget-object v0, v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    .line 294
    if-nez v0, :cond_42

    .line 295
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.widget.side.SideLeftSelectLinearLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_42
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->a()V

    .line 305
    :cond_47
    :goto_47
    return-void

    .line 301
    :cond_48
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->d:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->access$400(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_47
.end method
