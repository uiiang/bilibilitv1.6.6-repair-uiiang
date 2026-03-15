.class public Lcom/bilibili/tv/player/PlayerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BL"

# interfaces
.implements Lbl/wf;


# instance fields
.field private a:Lbl/xh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;
    .locals 2

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-static {p0, v0, p1}, Lbl/zs;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/os/Bundle;

    .line 26
    iget-object p1, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 27
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/player/PlayerActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p0, 0x34010000

    .line 29
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p1
.end method

.method public static aForResult(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, p1}, Lbl/zs;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/bilibili/tv/player/basic/context/PlayerParams;)Landroid/os/Bundle;

    iget-object p1, p1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/player/PlayerActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ott-player.player.0.0.pv"

    return-object v0
.end method

.method public a_()Z
    .locals 1

    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->i()V

    const-string v4, "PlayerActivity"

    const-string v0, "finish() called"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    if-eqz v0, :cond_return

    const-string v0, "xh is not null"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->x()I

    move-result v0

    if-lez v0, :cond_return

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v1}, Lbl/xh;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    if-eqz v1, :cond_return

    const-string v2, "PlayerParams is not null"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v2, :cond_return

    const-string v2, "mVideoParams is not null"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_return

    const-string v2, "mResolveParams is not null"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    if-eqz v2, :cond_continue

    goto :cond_return

    :cond_continue
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "last_progress"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    const-string v3, "last_cid"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "setResult with cid and progress"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/bilibili/tv/player/PlayerActivity;->setResult(ILandroid/content/Intent;)V

    :cond_return
    .line 127
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0, p1, p2, p3}, Lbl/xh;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    const-string v2, "UI_TRANSITION"
    const-string v3, "[12_PLAYER_ONCREATE] PlayerActivity onCreate started"
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "UI_TRANSITION"
    const-string v3, "[12a_AFTER_SUPER_ONCREATE] super.onCreate() done"
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p0}, Lbl/xe;->a(Landroid/app/Activity;)Lbl/xh;

    move-result-object v4

    iput-object v4, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    const-string v2, "UI_TRANSITION"
    const-string v3, "[12b_AFTER_XE_A] xe.a() done, xh created"
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v4, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {p0}, Lcom/bilibili/tv/player/PlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3, p1}, Lbl/xh;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    const-string v2, "UI_TRANSITION"
    const-string v3, "[12c_AFTER_INFLATE] xh.a() inflate done"
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    const-string p1, "\u5e94\u7528\u8fd0\u884c\u5f02\u5e38\uff0c\u8bf7\u8054\u7cfbqq\u7fa4\uff01"

    .line 42
    invoke-static {p0, p1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/bilibili/tv/player/PlayerActivity;->finish()V

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, v4}, Lcom/bilibili/tv/player/PlayerActivity;->setContentView(Landroid/view/View;)V

    const-string v2, "UI_TRANSITION"
    const-string v3, "[12d_AFTER_SETCONTENTVIEW] setContentView() done"
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v2, v4, p1}, Lbl/xh;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v2, "UI_TRANSITION"
    const-string v3, "[12e_AFTER_XH_A_VIEW] xh.a(View,Bundle) done"
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v2, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    const-string v2, "UI_TRANSITION"
    const-string v3, "[13_PLAYER_ONCREATE_END] PlayerActivity onCreate completed"
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->d()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0, p1, p2}, Lbl/xh;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->a(Z)V

    .line 133
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 60
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->e()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "UI_TRANSITION"
    const-string v1, "[15_PLAYER_ONRESUME] PlayerActivity onResume started"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->f()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "UI_TRANSITION"
    const-string v1, "[14_PLAYER_ONSTART] PlayerActivity onStart started"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->g()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 72
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->h()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity;->a:Lbl/xh;

    invoke-virtual {v0, p1}, Lbl/xh;->b(Z)V

    .line 106
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    return-void
.end method
