.class public final Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;
.super Lbl/adz;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/download/DownloadManagerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lbl/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/cj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;Lbl/cj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/download/DownloadManagerActivity;",
            "Lbl/cj",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 145
    const-string v0, "activity"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    const-string v0, "titles"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b:Ljava/lang/ref/WeakReference;

    .line 148
    iput-object p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->c:Lbl/cj;

    .line 149
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->c:Lbl/cj;

    .line 193
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lbl/cj;->b()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;
    .locals 3

    .prologue
    .line 162
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 164
    const-string v1, "view"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 134
    check-cast p1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;I)V
    .locals 2

    .prologue
    .line 170
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->z()Landroid/widget/TextView;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_18

    .line 173
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->c:Lbl/cj;

    .line 174
    if-eqz v0, :cond_23

    invoke-virtual {v0, p2}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :goto_15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_18
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    return-void

    .line 174
    :cond_23
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public e()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    .line 153
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    return v0
.end method
