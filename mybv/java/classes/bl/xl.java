package bl;

import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
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
        return P();
    }

    @Override // bl.xh
    public void i() {
        PlayerMenuRight.speed_id=-1;
        PlayerMenuRight.mode_id=-1;
        PlayerMenuRight.subtitle_id=-1;
    }

    @Override // bl.xh
    public boolean f(int i, KeyEvent keyEvent) {
        return P();
    }

    @Override // bl.xh
    public boolean g(int i, KeyEvent keyEvent) {
        Log.i("xl", "g() | keyCode=" + i + " | isShowing=" + P() + " | hasEpisodes=" + X());
        if (!X()) {
            return false;
        }
        
        if (i == 4) {
            Log.i("xl", "g() | 返回键 | isShowing=" + P());
            if (P()) {
                V();
                return true;
            }
            return false;
        }
        
        if (i == 19) {
            Log.i("xl", "g() | 上键 | isShowing=" + P());
            if (!S()) {
                R();
            }
            if (P()) {
                return true;
            }
            v();
            U();
            return true;
        }
        
        if (P()) {
            Log.i("xl", "g() | 其他按键(" + i + ") | 菜单显示中，不关闭");
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
        
        int i;
        int mode_id = PlayerMenuRight.mode_id>=0?PlayerMenuRight.mode_id:abd.get_mode_id(MainApplication.a().getApplicationContext());
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
            Log.i("xl", "P() | 状态不一致，同步this.g=false");
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
}