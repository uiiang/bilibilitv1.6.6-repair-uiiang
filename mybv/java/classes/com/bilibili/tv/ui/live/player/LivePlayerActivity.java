package com.bilibili.tv.ui.live.player;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import bl.abt;
import bl.adl;
import bl.agb;
import bl.lr;
import bl.vm;
import bl.wm;
import bl.wr;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.tv.R;
import com.bilibili.tv.api.history.BiliPlayerHistoryService;
import com.bilibili.tv.newplayer.video.LiveVideoPlayer;
import com.bilibili.tv.newplayer.widget.LivePlayerController;
import com.bilibili.tv.ui.base.BaseActivity;
import mybl.CookieUtil;
import mybl.CdnSelector;
import bl.mg;
import u.aly.j;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import mybl.DanmakuClient;
import mybl.BiliLiveContent;

/* compiled from: BL */
/* loaded from: classes.dex */
public class LivePlayerActivity extends BaseActivity implements View.OnClickListener, wr {
    private static final String TAG = "LivePlayerActivity";
    private BiliLiveContent a;
    private String b;
    private String c;
    private int d;
    private agb e;
    private boolean f = false;
    private LiveVideoPlayer g;
    private LivePlayerController h;
    private ExecutorService cdnExecutor;
    private Handler mainHandler;

    public static LivePlayerActivity _this = null;
    public static List<BiliLiveContent> lives = null;
    public static int live_index = -1;

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public int g() {
        return R.layout.activity_live_player;
    }

    public static Intent a(Context context, BiliLiveContent biliLive) {
        Intent intent = new Intent(context, LivePlayerActivity.class);
        intent.putExtra("bili_live", biliLive);
        intent.addFlags(604045312);
        return intent;
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public void f() {
        getWindow().addFlags(j.h);
        getWindow().setFlags(1024, 1024);
        adl.a(getWindow().getDecorView());
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public void a(Bundle bundle) {
        cdnExecutor = Executors.newSingleThreadExecutor();
        mainHandler = new Handler(Looper.getMainLooper());
        
        Intent intent = getIntent();
        if (intent != null) {
            this.a = (BiliLiveContent) intent.getParcelableExtra("bili_live");
            Log.i(TAG, "a(Bundle): hasPlayUrl=" + this.a.hasPlayUrl() + ", mPlayUrl=" + (this.a.mPlayUrl != null ? this.a.mPlayUrl.substring(0, Math.min(50, this.a.mPlayUrl.length())) : "null"));
            if(this.a.hasPlayUrl()){
                this.a.getPlayUrl();
            }
            if (this.a != null) {
                this.b = this.a.mPlayUrl;
                this.c = this.a.mTitle;
                this.d = this.a.mRoomId;
            }
        }
        if (this.a == null || TextUtils.isEmpty(this.b)) {
            lr.b(this, "播放地址为空！！！");
            finish();
            return;
        }
        this.g = (LiveVideoPlayer) d(R.id.video_view);
        this.g.setLoadingCover(this.a.mCover);
        this.g.setTitle(this.c);
        this.g.setOnClickListener(this);
        this.g.requestFocus();
        this.h = (LivePlayerController) d(R.id.play_controller);
        this.h.setFirstText(this.c);
        LivePlayerController livePlayerController = this.h;
        livePlayerController.setSecondText(this.a.mUname + " · " + this.a.mArea + " · " + this.d);
        this.h.setUpAvatar(this.a.mFace);
        this.h.setControllerListener(this);
        this.h.setPlayer(this.g);
        this.h.setBiliLive(this.a);
        ((View) this.h.getParent()).setOnClickListener(this);

        this.g.danmakuClient = new DanmakuClient(this.d);
        LivePlayerActivity._this = this;

        startPlaybackWithCdnRace();
        reportLiveHistory();
    }
    
    private void startPlaybackWithCdnRace() {
        Log.i(TAG, "startPlaybackWithCdnRace: 开始播放流程");
        
        // 设置直播格式，让播放器选择正确的播放引擎
        if (this.a.mPlayFormat != null) {
            wm.setLiveFormat(this.a.mPlayFormat);
            Log.i(TAG, "startPlaybackWithCdnRace: 设置直播格式=" + this.a.mPlayFormat);
        } else {
            wm.setLiveFormat(null);
        }
        
        if (this.a.mPlayUrls != null && this.a.mPlayUrls.size() > 1) {
            Log.i(TAG, "startPlaybackWithCdnRace: 有多个URL, 开始CDN竞速, 数量=" + this.a.mPlayUrls.size());
            cdnExecutor.execute(new Runnable() {
                @Override
                public void run() {
                    long cdnStart = System.currentTimeMillis();
                    List<CdnSelector.CdnUrlInfo> urlInfos = new ArrayList<>();
                    for (String url : a.mPlayUrls) {
                        String cdn = Uri.parse(url).getHost();
                        int score = CdnSelector.getCdnScore(cdn);
                        urlInfos.add(new CdnSelector.CdnUrlInfo(url, cdn, score));
                        Log.i(TAG, "CDN候选: " + cdn + ", score=" + score);
                    }
                    CdnSelector.RaceResult result = CdnSelector.selectBestUrl(
                        LivePlayerActivity.this,
                        String.valueOf(d),
                        urlInfos,
                        true
                    );
                    Log.i(TAG, "CDN竞速完成, 耗时=" + (System.currentTimeMillis() - cdnStart) + "ms");
                    
                    final String playUrl;
                    if (result != null && result.winningUrl != null) {
                        playUrl = result.winningUrl;
                        Log.i(TAG, "CDN竞速胜出: cdn=" + result.winningCdn + ", raceTime=" + result.raceTime + "ms");
                    } else {
                        playUrl = a.mPlayUrls.get(0);
                        Log.w(TAG, "CDN竞速无结果, 使用第一个URL");
                    }
                    
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            Log.i(TAG, "开始播放: url=" + playUrl.substring(0, Math.min(80, playUrl.length())));
                            b = playUrl;
                            g.a(b, c, Integer.valueOf(d));
                            g.m();
                            Log.i(TAG, "播放命令已发送");
                        }
                    });
                }
            });
        } else {
            Log.i(TAG, "startPlaybackWithCdnRace: 只有1个URL, 直接播放");
            this.g.a(this.b, this.c, Integer.valueOf(this.d));
            this.g.m();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(abt.a(context));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean show = this.h.getShow();
        boolean e = wm.e();
        if (!show && e) {
            this.h.a(true);
        } else if (show) {
            this.h.a(false);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean show = this.h.getShow();
        boolean e = wm.e();
        Log.i(TAG, "onKeyUp: keyCode=" + i + ", show=" + show + ", isPlaying=" + e);
        if (i != KeyEvent.KEYCODE_BACK) {
            if (i != KeyEvent.KEYCODE_MENU) {
                switch (i) {
                }
            }
            if ((i==KeyEvent.KEYCODE_MENU||i==KeyEvent.KEYCODE_ENTER||i==KeyEvent.KEYCODE_DPAD_CENTER) && !show) {
                Log.i(TAG, "onKeyUp: 显示控制器菜单");
                this.h.a(true);
            }
            if(i==KeyEvent.KEYCODE_DPAD_UP && !show){
                if(LivePlayerActivity.live_index>0){
                    LivePlayerActivity.live_index-=1;
                    LivePlayerActivity.this.f = false;
                    LivePlayerActivity.this.refresh();
                }
                else lr.b(this,"已经到顶了");
            }
            if(i==KeyEvent.KEYCODE_DPAD_DOWN && !show){
                if(LivePlayerActivity.live_index<LivePlayerActivity.lives.size()-1){
                    LivePlayerActivity.live_index+=1;
                    LivePlayerActivity.this.f = false;
                    LivePlayerActivity.this.refresh();
                }
                else lr.b(this,"已经到底了");
            }
            this.h.a(i, keyEvent);
        } else if (show) {
            this.h.a();
        } else {
            i();
            this.f = true;
        }
        return h();
    }

    private boolean h() {
        return this.e != null && this.e.isShowing();
    }

    public void refresh() {
        Log.i(TAG, "refresh: 被调用, live_index=" + live_index);
        Log.i(TAG, "refresh: 调用堆栈: " + android.util.Log.getStackTraceString(new Throwable()));
        finish();
        startActivity(LivePlayerActivity.a(this, LivePlayerActivity.lives.get(LivePlayerActivity.live_index)));
    }

    private void i() {
        if(mybl.BiliFilter.fastquit_on){
            this.f=false;
            finish();
            return;
        }
        if (this.e == null) {
            this.e = new agb.a(this).a(1).a("确定要退出播放吗？").a("继续播放", new agb.b() { // from class: com.bilibili.tv.ui.live.player.LivePlayerActivity.2
                @Override // bl.agb.b
                public void a(agb agbVar, View view) {
                    LivePlayerActivity.this.e.dismiss();
                    adl.a(LivePlayerActivity.this.getWindow().getDecorView());
                }
            }).b("确认退出", new agb.b() { // from class: com.bilibili.tv.ui.live.player.LivePlayerActivity.1
                @Override // bl.agb.b
                public void a(agb agbVar, View view) {
                    LivePlayerActivity.this.e.dismiss();
                    LivePlayerActivity.this.f = false;
                    LivePlayerActivity.this.finish();
                }
            }).a();
            this.e.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bilibili.tv.ui.live.player.LivePlayerActivity.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (wm.e() || !LivePlayerActivity.this.f) {
                        return;
                    }
                    wm.g();
                    LivePlayerActivity.this.f = false;
                }
            });
        }
        if (this.e.isShowing()) {
            this.e.dismiss();
            return;
        }
        this.e.show();
        if (wm.e()) {
            wm.f();
            this.f = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bilibili.tv.ui.base.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.g.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.g.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bilibili.tv.ui.base.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Log.i(TAG, "onDestroy: 被调用");
        if(this.g != null){this.g.i();}
        if(cdnExecutor != null){cdnExecutor.shutdownNow();}
        this.e = null;
        super.onDestroy();
    }

    private void reportLiveHistory() {
        mg biliAccount = mg.a(this);
        if (biliAccount != null && biliAccount.a()) {
            String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
            String csrf = CookieUtil.getBiliJct(biliAccount);
            Log.i("LivePlayerActivity", "reportLiveHistory: roomId=" + this.d);
            ((BiliPlayerHistoryService) bl.vo.a(BiliPlayerHistoryService.class))
                .reportLiveEntry(this.d, csrf, csrf, cookie)
                .a(new vm<GeneralResponse<Void>>() {
                    @Override
                    public void onSuccess(GeneralResponse<Void> response) {
                        Log.i("LivePlayerActivity", "reportLiveHistory success");
                    }

                    @Override
                    public void onError(Throwable th) {
                        Log.e("LivePlayerActivity", "reportLiveHistory error: " + th.getMessage());
                    }
                });
        }
    }
}