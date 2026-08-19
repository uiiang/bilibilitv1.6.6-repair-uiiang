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
import android.view.ViewGroup;
import android.widget.RelativeLayout;
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
import com.bilibili.tv.ebook.ui.EbookHost;
import com.bilibili.tv.ebook.ui.EbookMenuHelper;
import com.bilibili.tv.ebook.ui.EbookReaderPanel;
import com.bilibili.tv.newplayer.video.LiveVideoPlayer;
import com.bilibili.tv.newplayer.widget.LivePlayerController;
import com.bilibili.tv.newplayer.widget.LivePlayerMenuRight;
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
public class LivePlayerActivity extends BaseActivity implements View.OnClickListener, wr, EbookHost {
    private static final String TAG = "LivePlayerActivity";
    private BiliLiveContent a;
    private String b;
    private String c;
    private int d;
    private agb e;
    private boolean f = false;
    private LiveVideoPlayer g;
    private LivePlayerController h;
    private LivePlayerMenuRight mRightMenu;
    private EbookReaderPanel ebookReaderPanel; // 电子书阅读器面板（复用点播电子书逻辑）
    private boolean panelHandledBackKey = false; // 面板在onKeyDown已处理BACK，onKeyUp需消费防止穿透退出直播
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
        Log.i(TAG, "[LIVE_STARTUP_TRACE] onCreate room=" + this.d + " hasPlayUrl=" + (this.a != null && this.a.hasPlayUrl()));
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

        // 初始化右侧菜单（仿点播页右侧菜单风格）
        ViewGroup rootView = (ViewGroup) this.g.getParent();
        this.mRightMenu = new LivePlayerMenuRight(this);
        RelativeLayout.LayoutParams menuLp = new RelativeLayout.LayoutParams(
                RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.MATCH_PARENT);
        menuLp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
        rootView.addView(this.mRightMenu, menuLp);
        this.mRightMenu.setVisibility(View.INVISIBLE);
        this.mRightMenu.setListener(this.h);
        this.h.initRightMenu(this.mRightMenu);
        Log.i(TAG, "a(Bundle): 右侧菜单已初始化");

        // 初始化电子书阅读器面板（复用点播电子书逻辑，通过 EbookHost 适配直播差异）
        this.ebookReaderPanel = new EbookReaderPanel(this);
        Log.i(TAG, "a(Bundle): 电子书阅读器面板已初始化");

        this.g.danmakuClient = new DanmakuClient(this.d);
        LivePlayerActivity._this = this;

        startPlaybackWithCdnRace();
        reportLiveHistory();
    }
    
    private void startPlaybackWithCdnRace() {
        Log.i(TAG, "startPlaybackWithCdnRace: 开始播放流程");
        Log.i(TAG, "[LIVE_STARTUP_TRACE] race_start urlCount=" + (this.a.mPlayUrls != null ? this.a.mPlayUrls.size() : 0) + " room=" + this.d);
        
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
                    Log.i(TAG, "[LIVE_STARTUP_TRACE] race_done cost=" + (System.currentTimeMillis() - cdnStart) + "ms room=" + LivePlayerActivity.this.d);
                    
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
                            Log.i(TAG, "[LIVE_STARTUP_TRACE] start_play room=" + LivePlayerActivity.this.d);
                            b = playUrl;
                            g.a(b, c, Integer.valueOf(d));
                            g.m();
                            Log.i(TAG, "播放命令已发送");
                            
                            // 播放开始后更新音频平衡菜单（根据实际播放器类型）
                            mainHandler.postDelayed(new Runnable() {
                                @Override
                                public void run() {
                                    if (h != null) {
                                        h.updateAudioBalanceMenu();
                                        h.initRightMenu(mRightMenu);
                                        Log.i(TAG, "音频平衡菜单已更新");
                                    }
                                }
                            }, 500L);
                        }
                    });
                }
            });
        } else {
            Log.i(TAG, "startPlaybackWithCdnRace: 只有1个URL, 直接播放");
            Log.i(TAG, "[LIVE_STARTUP_TRACE] start_play room=" + this.d + " (direct)");
            this.g.a(this.b, this.c, Integer.valueOf(this.d));
            this.g.m();
            
            // 播放开始后更新音频平衡菜单（根据实际播放器类型）
            mainHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (h != null) {
                        h.updateAudioBalanceMenu();
                        h.initRightMenu(mRightMenu);
                        Log.i(TAG, "音频平衡菜单已更新");
                    }
                }
            }, 500L);
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
        boolean menuShown = this.mRightMenu != null && this.mRightMenu.isShown();
        Log.i(TAG, "onKeyUp: keyCode=" + i + ", show=" + show + ", isPlaying=" + e + ", menuShown=" + menuShown);

        // ===== 电子书模式按键路由（面板显示时优先处理） =====
        // 面板已在onKeyDown完整处理BACK（双击检测等），keyUp直接消费，防止穿透到Activity退出逻辑
        if (i == KeyEvent.KEYCODE_BACK && this.panelHandledBackKey) {
            this.panelHandledBackKey = false;
            Log.i(TAG, "onKeyUp: BACK已由电子书面板处理，消费keyUp");
            return true;
        }
        if (this.ebookReaderPanel != null && this.ebookReaderPanel.isEbookModeActive()) {
            boolean controlEbook = this.ebookReaderPanel.getControlTarget() != null
                    && this.ebookReaderPanel.getControlTarget().equals("ebook");
            if (controlEbook) {
                // 菜单键：若菜单由本按键（onKeyDown）刚打开，消费 keyUp 保持菜单打开；
                // 若菜单已在显示中，则放行给下方原有逻辑关闭菜单
                if (i == KeyEvent.KEYCODE_MENU) {
                    if (this.ebookReaderPanel.consumeMenuOpenedByKeyDown() || !menuShown) {
                        return true;
                    }
                }
                if (i == KeyEvent.KEYCODE_BACK && !menuShown) {
                    return true;
                }
                // 关键修复：电子书控制模式且菜单未显示时，所有按键一律消费，
                // 防止方向键穿透到下方切台逻辑（DPAD_UP/DPAD_DOWN 切换直播间）。
                // 书架/章节列表的方向键焦点移动由 ListView 在 dispatchKeyEvent 阶段完成，
                // 此处消费 keyUp 不影响列表操作，只阻止直播画面响应。
                if (!menuShown) {
                    this.ebookReaderPanel.onKeyUp(i, keyEvent);
                    return true;
                }
            }
            // 菜单未显示时，将按键交给面板处理（方向键翻页/滚动、三连击确定键隐藏面板等）
            if (!menuShown && this.ebookReaderPanel.onKeyUp(i, keyEvent)) {
                return true;
            }
        }

        if (i == KeyEvent.KEYCODE_BACK) {
            if (menuShown) {
                Log.i(TAG, "onKeyUp: 关闭右侧菜单");
                this.mRightMenu.a(false);
                return true;
            } else if (show) {
                this.h.a();
            } else {
                i();
                this.f = true;
            }
            return h();
        }
        if (menuShown) {
            // 右侧菜单显示时，除菜单键外全部消费，防止误触控制器/切换直播间
            if (i == KeyEvent.KEYCODE_MENU) {
                Log.i(TAG, "onKeyUp: 菜单键关闭右侧菜单");
                this.mRightMenu.a(false);
            } else {
                Log.i(TAG, "onKeyUp: 右侧菜单显示中, 消费按键 " + i);
            }
            return true;
        }
        if (i != KeyEvent.KEYCODE_MENU) {
            if (i == KeyEvent.KEYCODE_DPAD_UP && !show) {
                if (LivePlayerActivity.live_index > 0) {
                    LivePlayerActivity.live_index -= 1;
                    LivePlayerActivity.this.f = false;
                    LivePlayerActivity.this.refresh();
                } else {
                    lr.b(this, "已经到顶了");
                }
            }
            if (i == KeyEvent.KEYCODE_DPAD_DOWN && !show) {
                if (LivePlayerActivity.live_index < LivePlayerActivity.lives.size() - 1) {
                    LivePlayerActivity.live_index += 1;
                    LivePlayerActivity.this.f = false;
                    LivePlayerActivity.this.refresh();
                } else {
                    lr.b(this, "已经到底了");
                }
            }
        }
        if (i == KeyEvent.KEYCODE_MENU) {
            Log.i(TAG, "onKeyUp: 显示右侧菜单");
            if (show) {
                this.h.a(false);
            }
            // 统一走 showMenu 打开菜单：重建正确的菜单数据（普通/电子书）并设置电子书动作回调，
            // 确保"电子书"菜单项被 EbookMenuHelper.dispatch 拦截，避免落入索引5（音频平衡）二级菜单
            this.showMenu(true);
        } else if ((i == KeyEvent.KEYCODE_ENTER || i == KeyEvent.KEYCODE_DPAD_CENTER) && !show) {
            Log.i(TAG, "onKeyUp: 显示控制器菜单");
            this.h.a(true);
        }
        this.h.a(i, keyEvent);
        return h();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        // 电子书模式按键路由：控制电子书且菜单未显示时，按键交给面板处理
        // （面板处理 MENU/BACK/方向键拦截，防止系统焦点移动干扰电子书阅读）
        if (this.ebookReaderPanel != null && this.ebookReaderPanel.isEbookModeActive()) {
            boolean controlEbook = this.ebookReaderPanel.getControlTarget() != null
                    && this.ebookReaderPanel.getControlTarget().equals("ebook");
            boolean menuShown = this.mRightMenu != null && this.mRightMenu.isShown();
            if (controlEbook && !menuShown && this.ebookReaderPanel.onKeyDown(i, keyEvent)) {
                // 记录面板消费的BACK键：onKeyUp需同步消费，防止keyUp穿透到Activity退出逻辑
                if (i == KeyEvent.KEYCODE_BACK) {
                    this.panelHandledBackKey = true;
                }
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
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

    // ==================== EbookHost 适配接口 ====================

    @Override
    public android.app.Activity getActivity() {
        return this;
    }

    @Override
    public Context getContext() {
        return this;
    }

    @Override
    public View getVideoView() {
        return this.g; // 直播视频视图（LiveVideoPlayer 整体，视频+弹幕一体）
    }

    @Override
    public ViewGroup getVideoContainer() {
        if (this.g == null) {
            return null;
        }
        return (ViewGroup) this.g.getParent(); // 根 RelativeLayout
    }

    @Override
    public View getDanmakuView() {
        // 返回直播弹幕容器（LiveVideoPlayer 内部 @id/danmaku_view），与点播 xw.getDanmakuView() 一致：
        // 使 shrinkDanmakuView/restoreDanmakuView 能保存并恢复弹幕宽度，
        // 修复关闭电子书后弹幕仍停留在电子书区域边缘（缩窄宽度）的问题
        return findViewById(R.id.danmaku_view);
    }

    @Override
    public boolean isVideoTextureView() {
        return true; // 直播渲染视图继承 TextureView，天然满足电子书前置条件
    }

    @Override // com.bilibili.tv.ebook.ui.EbookHost
    public boolean isLiveMode() {
        return true; // 直播：视频视图为 LiveVideoPlayer 整体，缩小视频时需同步缩小高度
    }

    @Override
    public boolean isMenuShown() {
        return this.mRightMenu != null && this.mRightMenu.isShown();
    }

    @Override
    public void showMenu(boolean show) {
        if (this.mRightMenu == null) {
            return;
        }
        if (show) {
            // 菜单显示前根据电子书状态重建菜单数据
            boolean controlEbook = this.ebookReaderPanel != null && this.ebookReaderPanel.isControlEbook();
            if (controlEbook) {
                // 电子书模式菜单（书架页/阅读页）
                this.mRightMenu.setEbookMode(true, this.ebookReaderPanel.isReadingBook(), getEbookMenuActions());
            } else {
                // 正常直播菜单（电子书面板激活时显示"控制电子书"，点击切换控制焦点而非关闭面板）
                this.mRightMenu.setEbookMode(false, false, getEbookMenuActions());
                if (this.h != null) {
                    this.h.setEbookModeActive(this.ebookReaderPanel != null && this.ebookReaderPanel.isEbookModeActive());
                    this.h.initRightMenu(this.mRightMenu);
                }
            }
        }
        this.mRightMenu.a(show);
    }

    @Override
    public void onEbookDestroy() {
        // 电子书资源已由 EbookReaderPanel.onDestroy 清理
    }

    @Override
    public void showToast(String message) {
        lr.b(this, message);
    }

    @Override
    public void requestVideoFocus() {
        if (this.g != null) {
            this.g.requestFocus();
        }
    }

    /** 电子书菜单动作回调（桥接到 EbookReaderPanel） */
    private EbookMenuHelper.EbookActions getEbookMenuActions() {
        return new EbookMenuHelper.EbookActions() {
            @Override
            public void openEbookReader() {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.openEbookReader();
                }
            }

            @Override
            public void openEbookFileChooser() {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.openEbookFileChooser();
                }
            }

            @Override
            public void showChapterList() {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.showChapterList();
                }
            }

            @Override
            public void clearBookshelf() {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.clearBookshelf();
                }
            }

            @Override
            public void closeCurrentBook() {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.closeCurrentBook();
                }
            }

            @Override
            public void switchControlTarget(String target) {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.switchControlTarget(target);
                }
            }

            @Override
            public void setEbookFontSize(float fontSize) {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.setEbookFontSize(fontSize);
                }
            }

            @Override
            public void setEbookColorTheme(int themeIndex) {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.setEbookColorTheme(themeIndex);
                }
            }

            @Override
            public void setEbookPercent(int percentIndex) {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.setEbookPercent(percentIndex);
                }
            }

            @Override
            public void setVideoPosition(int positionIndex) {
                if (ebookReaderPanel != null) {
                    ebookReaderPanel.setVideoPosition(positionIndex);
                }
            }
        };
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
        // 回收电子书资源（面板、WebView、书架/缓存管理器）
        if (this.ebookReaderPanel != null) {
            this.ebookReaderPanel.onDestroy();
            this.ebookReaderPanel = null;
        }
        if(this.g != null){this.g.i();}
        if(cdnExecutor != null){cdnExecutor.shutdownNow();}
        this.e = null;
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bilibili.tv.ui.base.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
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