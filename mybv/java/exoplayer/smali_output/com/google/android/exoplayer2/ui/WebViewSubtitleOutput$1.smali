.class Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;
.super Landroid/webkit/WebView;
.source "WebViewSubtitleOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # Landroid/util/AttributeSet;

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;->this$0:Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;

    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 98
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .registers 2

    .line 105
    invoke-super {p0}, Landroid/webkit/WebView;->performClick()Z

    .line 107
    const/4 v0, 0x0

    return v0
.end method
