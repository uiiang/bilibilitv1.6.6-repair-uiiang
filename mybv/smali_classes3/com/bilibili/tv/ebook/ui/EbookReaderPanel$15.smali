.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createOrganizeButton(Landroid/app/Activity;Ljava/lang/String;)Lcom/bilibili/tv/widget/DrawFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field final synthetic val$button:Lcom/bilibili/tv/widget/DrawFrameLayout;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/widget/DrawFrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 785
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;->val$button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;->val$button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 789
    if-eqz p2, :cond_10

    .line 790
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;->val$button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v1, 0x7f070113

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    .line 794
    :goto_f
    return-void

    .line 792
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$15;->val$button:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setBackgroundResource(I)V

    goto :goto_f
.end method
