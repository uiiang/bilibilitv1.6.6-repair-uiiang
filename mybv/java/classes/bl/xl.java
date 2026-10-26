package bl;

import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import bl.aaw;
import bl.aax;
import bl.xl;
import com.bilibili.bangumi.api.BiliBangumiSeason;
import com.bilibili.tv.R;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.player.interfaces.IEventCenter;
import java.util.ArrayList;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;

import java.util.Random;
import android.text.TextUtils;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.player.widget.PlayerMenuRight;
import com.bilibili.tv.player.widget.PlayerSeekBar;
import com.bilibili.tv.api.video.VideoShot;
import com.bilibili.tv.ui.video.player.BottomShotMenu;

/* compiled from: BL */
/* loaded from: classes.dex */
public class xl extends xh implements aaw.a, View.OnFocusChangeListener {
    private ViewGroup c;
    private List<String> d;
    private Animation e;
    private Animation f;
    private RecyclerView h;
    private ResolveResourceParams[] j;
    private LinearLayoutManager k;
    private Runnable l;
    private aax<String> n;
    private boolean g = false;
    private int i = 0;
    private boolean m = false;
    private long lastCompletionTime = 0;
    private static final long COMPLETION_DEBOUNCE_MS = 1000;
    private BottomEpisodeMenu bottomEpisodeMenu;
    private BottomShotMenu bottomShotMenu;
    // 当前菜单模式：true=完整模式（↓），false=简单模式（↑/确定键/触摸）
    private boolean currentDetails = true;
    private android.os.Handler shotMenuHandler = new android.os.Handler();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ boolean a(View view, View view2, int i, int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo2(IMediaPlayer iMediaPlayer, int i, int i2, long j) {
        return false;
    }

    @Override // bl.xh
    public void b(IEventCenter.EventType eventType, Object... objArr) {
        super.b(eventType, objArr);
        if (eventType == IEventCenter.EventType.RESOLVE_SUCCESS) {
            T();
        } else if (eventType == IEventCenter.EventType.SWITCH_EPISODE_REMOTE) {
            e(((Integer) objArr[0]).intValue());
        }
    }

    @Override // bl.xh
    protected boolean e(int i, KeyEvent keyEvent) {
        if (i == KeyEvent.KEYCODE_DPAD_DOWN || i == KeyEvent.KEYCODE_DPAD_UP) {
            return true;
        }
        return P();
    }

    @Override // bl.xh
    public void i() {
        PlayerMenuRight.speed_id=-1;
        PlayerMenuRight.mode_id=-1;
        PlayerMenuRight.subtitle_id=-1;
        //Log.i("MenuBug", "xl.i() 重置 speed_id/mode_id/subtitle_id 为 -1");
    }

    @Override // bl.xh
    public boolean f(int i, KeyEvent keyEvent) {
        android.util.Log.i("EbookReader", "xl.f: 收到按键 " + i);

        // 电子书模式：检查是否需要传递方向键到xw
        xh nextHandler = next();
        if (nextHandler instanceof xw) {
            xw xwInstance = (xw) nextHandler;
            android.util.Log.i("EbookReader", "xl.f: 找到xw, isEbookMode=" + xwInstance.isEbookMode() + ", isControlEbook=" + xwInstance.isControlEbook() + ", isMenuShown=" + xwInstance.isMenuShown());

            // 关键修复：只在控制电子书时才传递方向键到xw
            if (xwInstance.isControlEbook() && !xwInstance.isMenuShown()) {
                android.util.Log.i("EbookReader", "xl.f: isEbookReadingContent=" + xwInstance.isEbookReadingContent());

                // 如果在电子书阅读内容页面或整理书架页面，传递方向键到xw.f()
                if (xwInstance.isEbookReadingContent() || xwInstance.isOrganizingShelf()) {
                    android.util.Log.i("EbookReader", "xl.f: 电子书阅读/整理书架页面，检查方向键 " + i);
                    if (i == KeyEvent.KEYCODE_DPAD_UP ||
                        i == KeyEvent.KEYCODE_DPAD_DOWN ||
                        i == KeyEvent.KEYCODE_DPAD_LEFT ||
                        i == KeyEvent.KEYCODE_DPAD_RIGHT) {
                        android.util.Log.i("EbookReader", "xl.f: 方向键传递到xw.f()");
                        // 明确调用xw.f()并返回结果
                        boolean result = xwInstance.f(i, keyEvent);
                        android.util.Log.i("EbookReader", "xl.f: xw.f() 返回 " + result);
                        return result;
                    }
                }

                android.util.Log.i("EbookReader", "xl.f: 电子书模式，非阅读页面");
            }
        }

        // 菜单显示时方向键只用来「续命」，不能漏到 xi.f() 触发快进/预览
        if (isShotMenuShowing() && (i == 19 || i == 20 || i == 21 || i == 22)) {
            resetShotMenuAutoHide();
            return true;
        }
        
        return P();
    }

    @Override // bl.xh
    public boolean g(int i, KeyEvent keyEvent) {
        // 电子书模式：拦截按键（除了菜单键、返回键、方向键）
        xh nextHandler = next();
        android.util.Log.i("EbookReader", "xl.g: 收到按键 " + i + ", nextHandler=" + (nextHandler != null ? nextHandler.getClass().getSimpleName() : "null"));

        if (nextHandler instanceof xw) {
            xw xwInstance = (xw) nextHandler;
            android.util.Log.i("EbookReader", "xl.g: isEbookMode=" + xwInstance.isEbookMode() + ", isControlEbook=" + xwInstance.isControlEbook() + ", isMenuShown=" + xwInstance.isMenuShown());

            // 关键修改：只在使用控制电子书时才拦截按键
            if (xwInstance.isControlEbook() && !xwInstance.isMenuShown()) {
                android.util.Log.i("EbookReader", "xl.g: isEbookReadingContent=" + xwInstance.isEbookReadingContent());

                // 关键修改：如果在电子书阅读内容页面或整理书架页面，让方向键传递到xw.g()处理
                if (xwInstance.isEbookReadingContent() || xwInstance.isOrganizingShelf()) {
                    android.util.Log.i("EbookReader", "xl.g: 电子书阅读/整理书架页面，检查方向键 " + i);
                    // 方向键不拦截，传递到xw.g()处理
                    if (i == KeyEvent.KEYCODE_DPAD_UP ||
                        i == KeyEvent.KEYCODE_DPAD_DOWN ||
                        i == KeyEvent.KEYCODE_DPAD_LEFT ||
                        i == KeyEvent.KEYCODE_DPAD_RIGHT) {
                        android.util.Log.i("EbookReader", "xl.g: 调用 xw.g() 处理方向键");
                        // 明确调用xw.g()并返回结果
                        boolean result = xwInstance.g(i, keyEvent);
                        android.util.Log.i("EbookReader", "xl.g: xw.g() 返回 " + result);
                        return result;
                    }
                }

                android.util.Log.i("EbookReader", "xl.g: 电子书模式，拦截按键 " + i);
                // 菜单键和返回键由xw.g()处理
                if (i != KeyEvent.KEYCODE_MENU && i != KeyEvent.KEYCODE_BACK) {
                    return true; // 拦截其他按键
                }
            }
        }

        boolean rightMenuShowing = (nextHandler instanceof xw) && nextHandler.e(i, keyEvent);
        boolean shotMenuShowing = isShotMenuShowing();
        boolean episodeMenuShowing = P();
        boolean anyMenuShowing = rightMenuShowing || shotMenuShowing || episodeMenuShowing;
        
        if (i == 4) {
            // 一次返回把底部进度条与选集菜单一起关掉
            if (shotMenuShowing || episodeMenuShowing) {
                if (shotMenuShowing) {
                    hideShotMenu();
                }
                if (episodeMenuShowing) {
                    V();
                }
                return true;
            }
            return false;
        }
        
        if (anyMenuShowing) {
            // 上下左右 / 确定键：视为「在底部进度条上操作」——不关闭菜单，只延长自动消失时间。
            // （完整模式下方向键会被卡片 View 消费，走不到这里；这里主要覆盖简单模式。）
            if (shotMenuShowing && (i == 19 || i == 20 || i == 21 || i == 22
                    || i == KeyEvent.KEYCODE_DPAD_CENTER || i == KeyEvent.KEYCODE_ENTER
                    || i == KeyEvent.KEYCODE_NUMPAD_ENTER)) {
                resetShotMenuAutoHide();
            }
            if (i == 19) {
                if (shotMenuShowing) {
                    return true;
                }
            }
            if (i == 20) {
                if (shotMenuShowing || episodeMenuShowing) {
                    return true;
                }
            }
            // 菜单内没有可聚焦项时（简单模式 / 无截图无章节），确定键必须透传给 xi.T()，
            // 否则暂停时打开的进度条会把「恢复播放」吃掉。
            if ((i == KeyEvent.KEYCODE_DPAD_CENTER || i == KeyEvent.KEYCODE_ENTER
                    || i == KeyEvent.KEYCODE_NUMPAD_ENTER)
                    && shotMenuShowing && !episodeMenuShowing && !isShotMenuFocusable()) {
                android.util.Log.i("BottomUi", "xl.g: shot menu has no focusable content, pass ENTER through");
                return false;
            }
            return true;
        }
        
        if (i == 20) {
            if (showShotMenu()) {
                return true;
            }
            xh parentHandler = a();
            while (parentHandler != null) {
                if (parentHandler instanceof xi) {
                    ((xi) parentHandler).tt();
                    break;
                }
                parentHandler = parentHandler.a();
            }
            return true;
        }
        
        if (i == 19) {
            // ↑ 键二选一：
            //   有选集/合集 → 只显示选集列表（原实现 U() → showBottomEpisodeMenu）
            //   没有        → 只显示 BottomShotMenu 简单进度条（无截图/时间分段/章节）
            if (X()) {
                if (isShotMenuShowing()) {
                    hideShotMenu();
                }
                if (!S()) {
                    R();
                }
                v();
                U();
                android.util.Log.i("BottomUi", "xl.g: UP -> episode list only");
                return true;
            }
            if (P()) {
                V();
            }
            if (showSimpleShotMenu()) {
                android.util.Log.i("BottomUi", "xl.g: UP -> simple shot menu");
                return true;
            }
            v();
            return true;
        }
        
        return false;
    }

    private void e(int i) {
        yh c;
        if (this.j == null || i < 0 || i >= this.j.length || (c = c()) == null || c.e == i) {
            return;
        }
        if (i == this.i) {
            d(R.string.preparing_next);
        } else {
            M();
        }
        if (this.n != null) {
            this.n.c(c.e);
        }
        if (m().a(i, c) > -1) {
            this.i = i;
            if (this.n != null) {
                this.n.c(this.i);
            }
            this.m = true;
            if (P()) {
                V();
            }
        }
    }

    @Override // bl.aaw.a
    public void a(ViewGroup viewGroup, View view, int i) {
        yh c;
        if (this.j == null || i < 0 || i >= this.j.length || (c = c()) == null) {
            return;
        }
        if (i == this.i) {
            d(R.string.preparing_next);
        } else {
            M();
        }
        if (this.n != null) {
            this.n.c(c.e);
        }
        if (m().a(i, c) > -1) {
            this.i = i;
            if (this.n != null) {
                this.n.c(this.i);
            }
            this.m = true;
            if (P()) {
                V();
            }
        }
    }

    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
    public void onPrepared(IMediaPlayer iMediaPlayer) {
        if (this.m) {
            this.m = false;
            a(IEventCenter.EventType.SWITCH_EPISODE, new Object[0]);
            a(IEventCenter.EventType.EPISODE_SWITCH_SUCCESS, new Object[0]);
            N();
        }
        super.onPrepared(iMediaPlayer);
    }

    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
    public void onCompletion(IMediaPlayer iMediaPlayer) {
        super.onCompletion(iMediaPlayer);
        
        long currentTime = System.currentTimeMillis();
        if (currentTime - lastCompletionTime < COMPLETION_DEBOUNCE_MS) {
            return;
        }
        lastCompletionTime = currentTime;
        
        int mode_id = PlayerMenuRight.mode_id>=0?PlayerMenuRight.mode_id:abd.get_mode_id(MainApplication.a().getApplicationContext());
        
        int i;
        switch(mode_id){
            case 1:
                i=this.i-1;
                break;
            case 2:
                i=new Random().nextInt(this.j.length);
                break;
            case 3:
                i=this.i;
                break;
            case 5:
                i=(this.i+1)%this.j.length;
                break;
            default:
                i=this.i+1;
                break;
        }
        this.i = i;
        if (this.i < 0 || this.i >= this.j.length || mode_id==4) {
            Activity o = o();
            if (o != null) {
                o.finish();
                return;
            }
            return;
        }
        a((ViewGroup) null, (View) null, i);
    }

    private void R() {
        if (!S()) {
            T();
            if (this.d == null) {
                return;
            }
            a(l());
        }
        this.c.setVisibility(8);
    }

    private boolean S() {
        return this.c != null;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean hasFocus) {
        TextView t = (TextView) view.findViewById(R.id.text);
        if(t != null){
            if(hasFocus) {
                t.setSelected(true);
                t.setSingleLine(false);
                t.setMaxLines(3);
                t.setEllipsize(TextUtils.TruncateAt.END);
            } else {
                t.setSelected(false);
                t.setSingleLine(true);
                t.setMaxLines(1);
                t.setEllipsize(TextUtils.TruncateAt.END);
            }
        }
    }

    private void a(ViewGroup viewGroup) {
        Context p = p();
        PlayerParams b = b();
        if (p == null || viewGroup == null || b == null) {
            return;
        }
        float dimension = p.getResources().getDimension(R.dimen.px_42);
        float dimension2 = p.getResources().getDimension(R.dimen.px_36);
        final int color = p.getResources().getColor(R.color.pink);
        final int color2 = p.getResources().getColor(R.color.white_50);
        this.c = (ViewGroup) ((ViewStub) viewGroup.findViewById(R.id.left_menu)).inflate();
        this.h = (RecyclerView) this.c.findViewById(R.id.episode_list);
        TextView textView = (TextView) this.c.findViewById(R.id.episode_count);
        this.n = new aax<String>(p, R.layout.player_left_text_menu_item) { // from class: bl.xl.1
            @Override // bl.aaw
            public void a(aaz aazVar, int i, String str) {
                ViewGroup viewGroup2 = (ViewGroup) aazVar.z();
                View childAt = viewGroup2.getChildAt(0);
                if (childAt instanceof TextView) {
                    TextView textView2 = (TextView) childAt;
                    textView2.setText(str);
                    textView2.setSingleLine(true);
                    textView2.setEllipsize(TextUtils.TruncateAt.END);
                    textView2.setMaxLines(1);
                    viewGroup2.setOnFocusChangeListener(xl.this);
                    if (i == xl.this.i) {
                        viewGroup2.getChildAt(1).setVisibility(0);
                        textView2.setTextColor(color);
                        return;
                    }
                    viewGroup2.getChildAt(1).setVisibility(4);
                    textView2.setTextColor(color2);
                }
            }
        };
        this.n.a(new aax.a() { // from class: bl.xm
            @Override // bl.aax.a
            public void a(View view, int i, boolean z) {
                xl.this.a(color, color2, dimension, dimension2, view, i, z);
            }
        });
        this.n.a(xn.a);
        this.n.a(this);
        this.n.a(this.d);
        this.k = new LinearLayoutManager(p, 1, false) { // from class: com.bilibili.tv.player.adapter.EpisodeSelectorAdapter$2
            @Override // android.support.v7.widget.RecyclerView.h
            public View d(View view, int direction) {
                int d = d(view);
                if (direction != View.FOCUS_LEFT) {
                    if (direction != View.FOCUS_UP) {
                        if (direction == View.FOCUS_RIGHT) {
                            return view;
                        }
                        if (direction == View.FOCUS_DOWN) {
                            if (d >= H() - 1) {
                                return view;
                            }
                            if (FocusFinder.getInstance().findNextFocus(xl.this.h, view, direction) == null) {
                                d(d + 1);
                                return view;
                            }
                        }
                    } else if (d <= 0) {
                        return view;
                    }
                    return super.d(view, direction);
                }
                return view;
            }
        };
        this.h.setLayoutManager(this.k);
        this.h.setAdapter(this.n);
        StringBuilder sb = new StringBuilder();
        sb.append("共 ");
        sb.append(this.j.length);
        sb.append(b.isBangumi() ? " 话" : " 集");
        SpannableString spannableString = new SpannableString(sb.toString());
        spannableString.setSpan(new ForegroundColorSpan(p.getResources().getColor(R.color.pink)), 1, spannableString.length() - 1, 17);
        textView.setText(spannableString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(int i, int i2, float f, float f2, View view, int i3, boolean z) {
        if (view instanceof ViewGroup) {
            View childAt = ((ViewGroup) view).getChildAt(0);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (this.i != i3) {
                    i = z ? -1 : i2;
                }
                textView.setTextColor(i);
                if (!z) {
                    f = f2;
                }
                textView.setTextSize(0, f);
                if (z) {
                    textView.setSingleLine(false);
                    textView.setMaxLines(3);
                    textView.setEllipsize(TextUtils.TruncateAt.END);
                } else {
                    textView.setSingleLine(true);
                    textView.setMaxLines(1);
                    textView.setEllipsize(TextUtils.TruncateAt.END);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i) {
        aap.a(this.h, i);
    }

    private void T() {
        if (this.j != null) {
            return;
        }
        PlayerParams b = b();
        this.j = b.mVideoParams.getResolveParamsArray();
        if (this.j == null) {
            return;
        }
        this.d = new ArrayList();
        for (int i = 0; i < this.j.length; i++) {
            ResolveResourceParams resolveResourceParams = this.j[i];
            if (b.isBangumi() && resolveResourceParams.mPageIndex!=null) {
                this.d.add(BiliBangumiSeason.getReadableIndexTitle(resolveResourceParams.mPageIndex));
            } else if (b.isTV()) {
                this.d.add("第 " + (i + 1) + " 集");
            } else {
                //this.d.add("P" + (i + 1));
                this.d.add(resolveResourceParams.mPageTitle);
            }
            if (resolveResourceParams.mCid == b.mVideoParams.obtainResolveParams().mCid) {
                g(i);
            }
        }
    }

    public boolean P() {
        if (this.g && bottomEpisodeMenu != null && bottomEpisodeMenu.isShowing()) {
            return true;
        }
        if (this.g && (bottomEpisodeMenu == null || !bottomEpisodeMenu.isShowing())) {
            this.g = false;
        }
        return this.g;
    }

    private void g(int i) {
        this.i = i;
        yh c = c();
        if (c != null) {
            c.e = i;
        }
    }

    private void U() {
        if (P()) {
            return;
        }
        showBottomEpisodeMenu();
    }

    private BottomEpisodeMenu getBottomEpisodeMenu() {
        if (bottomEpisodeMenu == null) {
            bottomEpisodeMenu = new BottomEpisodeMenu(p());
            bottomEpisodeMenu.setOnEpisodeClickListener(new BottomEpisodeMenu.OnEpisodeClickListener() {
                @Override
                public void onEpisodeClicked(ResolveResourceParams params, int position) {
                    e(position);
                }
            });
            // 选集菜单与进度条是二选一（见 i==19 分支），无需处理两者重叠
            Activity activity = o();
            if (activity != null) {
                View rootView = activity.getWindow().getDecorView().findViewById(android.R.id.content);
                if (rootView instanceof ViewGroup) {
                    FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                        FrameLayout.LayoutParams.MATCH_PARENT,
                        FrameLayout.LayoutParams.WRAP_CONTENT
                    );
                    lp.gravity = android.view.Gravity.BOTTOM;
                    bottomEpisodeMenu.setLayoutParams(lp);
                    ((ViewGroup) rootView).addView(bottomEpisodeMenu);
                }
            }
        }
        return bottomEpisodeMenu;
    }

    private void showBottomEpisodeMenu() {
        if (this.j == null) {
            T();
        }
        
        if (this.j == null || this.j.length <= 1) {
            return;
        }
        
        long currentCid = b().mVideoParams.obtainResolveParams().mCid;
        
        String title = "选集";
        int count = this.j.length;
        
        BottomEpisodeMenu menu = getBottomEpisodeMenu();
        // 标题上下文：合集 →「合集名 - 视频标题」；分集 →「视频标题 - 分P标题」
        String listTitle = yr.f(b());
        boolean isCollection = listTitle != null && !listTitle.isEmpty();
        menu.setTitleContext(yr.a(b()), listTitle, isCollection);
        menu.show(this.j, currentCid, title, count);
        
        this.g = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        if (!P()) {
            return;
        }
        if (this.l != null) {
            a(this.l);
        }
        if (bottomEpisodeMenu != null) {
            bottomEpisodeMenu.hide();
            // 关键修复：兜底强制隐藏选集菜单，防止动画回调(onAnimationEnd)丢失导致菜单残留VISIBLE
            // 残留菜单fillAfter移出屏幕但布局区域仍在屏幕底部，会拦截穿透到电子书WebView的鼠标点击，
            // 导致阅读页面下半部分无法响应
            bottomEpisodeMenu.clearAnimation();
            bottomEpisodeMenu.setVisibility(View.GONE);
        }
        this.g = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        if (this.l == null) {
            this.l = new Runnable() { // from class: bl.xo
                @Override // java.lang.Runnable
                public void run() {
                    xl.this.V();
                }
            };
        }
        a(this.l);
        a(this.l, 5000L);
    }

    private boolean X() {
        yh c = c();
        return (c == null || c.a == null || c.a.mVideoParams.mResolveParamsArray == null || c.a.mVideoParams.mResolveParamsArray.length <= 1) ? false : true;
    }

    public void cleanupBottomEpisodeMenu() {
        if (bottomEpisodeMenu != null) {
            bottomEpisodeMenu.cleanup();
            bottomEpisodeMenu = null;
        }
    }

    @Override // bl.xh
    public void d() {
        // 关键修复：兜底停止截图菜单进度刷新自循环并清理菜单引用，
        // 避免Activity被非BACK路径销毁时shotMenuProgressRunnable 800ms自循环持续持有播放器链导致泄漏
        stopShotMenuProgressUpdater();
        if (shotMenuHandler != null) {
            shotMenuHandler.removeCallbacksAndMessages(null);
        }
        if (bottomShotMenu != null) {
            bottomShotMenu.hide();
            bottomShotMenu.cleanup();
            bottomShotMenu = null;
        }
        cleanupBottomEpisodeMenu();
        super.d();
        r();
    }
    
    public boolean isShotMenuShowing() {
        return bottomShotMenu != null && bottomShotMenu.isShowing();
    }
    
    /** 菜单内是否有可聚焦内容（无内容时确定键要透传给播放器做播放/暂停）。 */
    private boolean isShotMenuFocusable() {
        return bottomShotMenu != null && bottomShotMenu.hasFocusableContent();
    }
    
    /** 按键视为「在进度条上操作」：延长自动消失时间（不关闭菜单）。 */
    private void resetShotMenuAutoHide() {
        if (bottomShotMenu != null) {
            bottomShotMenu.resetAutoHideTimer();
        }
    }
    
    /** 沿内层链查找 xi（用于回调控制条/图标等 UI）。 */
    private xi findXiHandler() {
        xh h = a();
        while (h != null) {
            if (h instanceof xi) {
                return (xi) h;
            }
            h = h.next();
        }
        return null;
    }
    
    /**
     * 获取有效的跳过段数据（片头/片尾/硬广）：
     * 优先取 xj.skips（本地设置优先 + 服务器补充的合并结果，播放器实际使用），
     * 为 null/空时回退到 resolveParams.skips（B站官方 + bsbsb.top 服务器数据）
     */
    private org.json.JSONArray getEffectiveSkipSegments(ResolveResourceParams resolveParams) {
        xh current = this;
        while (current != null) {
            if (current instanceof xj) {
                org.json.JSONArray skips = ((xj) current).skips;
                if (skips != null && skips.length() > 0) {
                    android.util.Log.i("ShotMenuBug", "getEffectiveSkipSegments: use xj.skips count=" + skips.length());
                    return skips;
                }
                break;
            }
            current = current.next();
        }
        if (resolveParams != null && resolveParams.skips != null && resolveParams.skips.length() > 0) {
            android.util.Log.i("ShotMenuBug", "getEffectiveSkipSegments: use resolveParams.skips count=" + resolveParams.skips.length());
            return resolveParams.skips;
        }
        return null;
    }
    
    private boolean showShotMenu() {
        return showShotMenu(true);
    }

    /** 供 xi 调用：↑ / 确定键 / 触摸单击时只显示进度条，不显示截图与章节。 */
    public boolean showSimpleShotMenu() {
        // 已经是简单模式且正在显示：只重置自动隐藏计时，避免重复播放动画/重建列表
        if (isShotMenuShowing() && !this.currentDetails) {
            if (bottomShotMenu != null) {
                bottomShotMenu.resetAutoHideTimer();
            }
            android.util.Log.i("BottomUi", "showSimpleShotMenu: already showing, reset timer");
            return true;
        }
        return showShotMenu(false);
    }

    /**
     * @param details true = 完整模式（↓ 键，按数据显隐截图/章节）
     *                false = 简单模式（只显示标题+时间+进度条）
     */
    private boolean showShotMenu(boolean details) {
        this.currentDetails = details;
        PlayerSeekBar playerSeekBar = getPlayerSeekBar();
        if (playerSeekBar == null) {
            android.util.Log.i("ShotMenuBug", "showShotMenu: playerSeekBar is null");
            return false;
        }
        
        VideoShot videoShot = playerSeekBar.getVideoShot();
        android.util.Log.i("ShotMenuBug", "showShotMenu: videoShot=" + videoShot);
        if (videoShot != null) {
            android.util.Log.i("ShotMenuBug", "showShotMenu: videoShot.index=" + videoShot.getIndex());
        }
        
        boolean hasVideoShot = videoShot != null && videoShot.getIndex() != null && !videoShot.getIndex().isEmpty();
        
        org.json.JSONArray viewPoints = null;
        ResolveResourceParams resolveParams = null;
        PlayerParams playerParams = b();
        if (playerParams != null && playerParams.mVideoParams != null) {
            resolveParams = playerParams.mVideoParams.obtainResolveParams();
            if (resolveParams != null) {
                viewPoints = resolveParams.view_points;
            }
        }
        android.util.Log.i("ShotMenuBug", "showShotMenu: viewPoints=" + viewPoints);
        
        boolean hasChapters = viewPoints != null && viewPoints.length() > 0;
        
        // 统一底部进度条：无论有没有截图/章节，一律使用 BottomShotMenu。
        // 无截图 → videoListSection GONE；无章节 → chapterSection GONE（均在 BottomShotMenu.show 内部处理）。
        if (!hasVideoShot && !hasChapters) {
            android.util.Log.i("ShotMenuBug", "showShotMenu: no videoShot and no chapters, showing plain seekbar only");
        }
        
        // 先隐藏普通进度条，避免覆盖截图进度条
        xh parentHandler = a();
        while (parentHandler != null) {
            if (parentHandler instanceof xi) {
                ((xi) parentHandler).v();
                break;
            }
            parentHandler = parentHandler.a();
        }
        
        int durationSec = playerSeekBar.getDuration();
        int currentPlayTimeMs = x();
        
        String videoTitle = getVideoTitle();
        
        if (bottomShotMenu == null) {
            bottomShotMenu = new BottomShotMenu(p());
            bottomShotMenu.setOnShotClickListener(new BottomShotMenu.OnShotClickListener() {
                @Override
                public void onShotClicked(int timeSeconds) {
                    seekTo(timeSeconds);
                }
            });
            // 菜单显隐（含 5 秒自动隐藏）时同步右下角暂停图标，替代原 PlayerSeekBar 的 v()/w() 行为
            bottomShotMenu.setOnVisibilityChangedListener(new BottomShotMenu.OnVisibilityChangedListener() {
                @Override
                public void onShotMenuVisibilityChanged(boolean visible) {
                    xi xiHandler = findXiHandler();
                    if (xiHandler != null) {
                        xiHandler.refreshTvToggleIcon();
                    }
                }
            });
            Activity activity = o();
            if (activity != null) {
                View rootView = activity.getWindow().getDecorView().findViewById(android.R.id.content);
                if (rootView instanceof ViewGroup) {
                    FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                        FrameLayout.LayoutParams.MATCH_PARENT,
                        FrameLayout.LayoutParams.WRAP_CONTENT
                    );
                    lp.gravity = android.view.Gravity.BOTTOM;
                    bottomShotMenu.setLayoutParams(lp);
                    ((ViewGroup) rootView).addView(bottomShotMenu);
                }
            }
        }
        
        // 传入有效的跳过段数据（本地优先 + 服务器补充），用于截图卡片badge显示
        bottomShotMenu.setSkipSegments(getEffectiveSkipSegments(resolveParams));
        bottomShotMenu.setSimpleMode(!details);
        
        bottomShotMenu.show(videoShot, durationSec * 1000, videoTitle, currentPlayTimeMs, viewPoints);
        startShotMenuProgressUpdater();
        return true;
    }
    
    private void startShotMenuProgressUpdater() {
        shotMenuHandler.removeCallbacks(shotMenuProgressRunnable);
        shotMenuHandler.post(shotMenuProgressRunnable);
    }
    
    private void stopShotMenuProgressUpdater() {
        shotMenuHandler.removeCallbacks(shotMenuProgressRunnable);
    }
    
    private Runnable shotMenuProgressRunnable = new Runnable() {
        @Override
        public void run() {
            if (bottomShotMenu == null || !bottomShotMenu.isShowing()) {
                return;
            }
            
            int currentMs = x();
            int totalMs = I();
            
            bottomShotMenu.updateProgress(currentMs, totalMs);
            
            shotMenuHandler.postDelayed(this, 800L);
        }
    };
    
    public void hideShotMenu() {
        stopShotMenuProgressUpdater();
        if (bottomShotMenu != null) {
            bottomShotMenu.hide();
        }
    }
    
    private PlayerSeekBar getPlayerSeekBar() {
        Activity activity = o();
        if (activity == null) {
            return null;
        }
        View rootView = activity.getWindow().getDecorView().findViewById(android.R.id.content);
        if (rootView == null) {
            return null;
        }
        return (PlayerSeekBar) rootView.findViewById(R.id.seekbar_group);
    }
    
    private String getVideoTitle() {
        PlayerParams playerParams = b();
        if (playerParams == null || playerParams.mVideoParams == null) {
            return "";
        }
        ResolveResourceParams resolveParams = playerParams.mVideoParams.obtainResolveParams();
        if (resolveParams == null) {
            return "";
        }
        String mainTitle = yr.a(playerParams);
        String pageTitle = resolveParams.mPageTitle;
        
        // UGC 合集：标题 = 合集名 + 当前视频名
        // 判定只看 player_params_list_title 是否有值 —— 该字段由 xg 的 episodes(合集) 分支独占写入，
        // 比 mListType==3 更鲁棒：初次进入时 obtainResolveParams() 拿到的实例可能还没被标成 3。
        // 分P（2）/ 番剧影视（1）不会写这个字段，因此策略保持不变。
        String listTitle = yr.f(playerParams);
        android.util.Log.i("BottomTitle", "[getVideoTitle] listTitle=" + listTitle
                + ", mListType=" + resolveParams.mListType
                + ", mListKey=" + resolveParams.mListKey
                + ", pageTitle=" + pageTitle
                + ", mainTitle=" + mainTitle);
        if (listTitle != null && !listTitle.isEmpty()) {
            String currentTitle = (pageTitle != null && !pageTitle.isEmpty()) ? pageTitle : mainTitle;
            if (currentTitle != null && !currentTitle.isEmpty() && !currentTitle.equals(listTitle)) {
                return listTitle + " - " + currentTitle;
            }
            return listTitle;
        }
        
        if (playerParams.isBangumi()) {
            String indexTitle = BiliBangumiSeason.getReadableIndexTitle(resolveParams.mPageIndex);
            boolean hasIndexTitle = indexTitle != null && !indexTitle.isEmpty();
            boolean hasPageTitle = pageTitle != null && !pageTitle.isEmpty();
            
            if (mainTitle != null && !mainTitle.isEmpty()) {
                if (hasIndexTitle) {
                    if (hasPageTitle && !pageTitle.equals(indexTitle)) {
                        return mainTitle + " - " + indexTitle + " - " + pageTitle;
                    }
                    return mainTitle + " - " + indexTitle;
                } else {
                    if (hasPageTitle) {
                        return mainTitle + " - " + pageTitle;
                    }
                    return mainTitle;
                }
            }
            
            if (hasIndexTitle) {
                if (hasPageTitle && !pageTitle.equals(indexTitle)) {
                    return indexTitle + " - " + pageTitle;
                }
                return indexTitle;
            }
            
            if (hasPageTitle) {
                return pageTitle;
            }
            return "";
        } else if (resolveParams != null && pageTitle != null && 
                   playerParams.mVideoParams.mResolveParamsArray != null && 
                   playerParams.mVideoParams.mResolveParamsArray.length > 1) {
            if (mainTitle != null && !mainTitle.isEmpty() && !mainTitle.equals(pageTitle)) {
                return mainTitle + " - " + pageTitle;
            }
            return pageTitle;
        }
        return mainTitle != null ? mainTitle : "";
    }
    
    private void seekTo(int timeSeconds) {
        c(timeSeconds * 1000);
    }
}