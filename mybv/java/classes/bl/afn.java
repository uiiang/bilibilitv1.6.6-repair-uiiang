package bl;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.DrawFrameLayout;
import tv.danmaku.videoplayer.core.media.PlayerSelector;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class afn extends adw implements View.OnFocusChangeListener {
    public static final a Companion = new a(null);
    private DrawFrameLayout b;
    private DrawFrameLayout c;
    private DrawFrameLayout d;

    public DrawFrameLayout e;

    private DrawFrameLayout ijkPlayerBtn;
    private DrawFrameLayout exoPlayerBtn;

    @Override // bl.adw
    public boolean c() {
        return true;
    }

    @Override // bl.aea
    public void d_() {
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        bbi.b(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(R.layout.fragment_setting_play_quality, viewGroup, false);
        bbi.a((Object) inflate, "view");
        this.b = (DrawFrameLayout) a(inflate, R.id.low_quality);
        this.c = (DrawFrameLayout) a(inflate, R.id.medium_quality);
        this.d = (DrawFrameLayout) a(inflate, R.id.high_quality);
        this.e = (DrawFrameLayout) a(inflate, R.id.super_quality);
        if (this.b == null) {
            bbi.a();
        }
        this.b.setUpDrawable(R.drawable.shadow_white_rect);
        if (this.c == null) {
            bbi.a();
        }
        this.c.setUpDrawable(R.drawable.shadow_white_rect);
        if (this.d == null) {
            bbi.a();
        }
        this.d.setUpDrawable(R.drawable.shadow_white_rect);
        if (this.e == null) {
            bbi.a();
        }
        this.e.setUpDrawable(R.drawable.shadow_white_rect);

        this.b.setOnFocusChangeListener(this);
        this.c.setOnFocusChangeListener(this);
        this.d.setOnFocusChangeListener(this);
        this.e.setOnFocusChangeListener(this);
        int quality = abd.d(getActivity());
        if (quality == 16) {
            this.b.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else if (quality == 32) {
            this.c.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else if (quality == 80) {
            this.d.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else if (quality == 120) {
            this.e.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }
        this.b.setOnClickListener(new b());
        this.c.setOnClickListener(new c());
        this.d.setOnClickListener(new d());
        this.e.setOnClickListener(new e());

        this.ijkPlayerBtn = (DrawFrameLayout) a(inflate, R.id.ijk_player);
        this.exoPlayerBtn = (DrawFrameLayout) a(inflate, R.id.exo_player);

        Log.i("afn", "ijkPlayerBtn=" + this.ijkPlayerBtn + ", exoPlayerBtn=" + this.exoPlayerBtn);
        Log.i("afn", "isExoPlayerSupported=" + PlayerSelector.isExoPlayerSupported() 
            + ", isExoPlayerAvailable=" + PlayerSelector.isExoPlayerAvailable());

        if (this.ijkPlayerBtn != null) {
            this.ijkPlayerBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.ijkPlayerBtn.setOnFocusChangeListener(this);
            this.ijkPlayerBtn.setOnClickListener(new f());
        }
        if (this.exoPlayerBtn != null) {
            this.exoPlayerBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.exoPlayerBtn.setOnFocusChangeListener(this);
            this.exoPlayerBtn.setOnClickListener(new g());

            if (!PlayerSelector.isExoPlayerSupported() || !PlayerSelector.isExoPlayerAvailable()) {
                Log.i("afn", "Hiding exoPlayerBtn - ExoPlayer not supported/available");
                this.exoPlayerBtn.setVisibility(View.GONE);
            } else {
                Log.i("afn", "exoPlayerBtn is visible, focusable=" + this.exoPlayerBtn.isFocusable());
            }
        }

        updatePlayerSelection();

        this.exoPlayerBtn.post(new Runnable() {
            @Override
            public void run() {
                if (afn.this.exoPlayerBtn != null) {
                    Log.i("afn", "exoPlayerBtn after layout: width=" + afn.this.exoPlayerBtn.getWidth() 
                        + ", height=" + afn.this.exoPlayerBtn.getHeight()
                        + ", visibility=" + afn.this.exoPlayerBtn.getVisibility()
                        + ", left=" + afn.this.exoPlayerBtn.getLeft()
                        + ", top=" + afn.this.exoPlayerBtn.getTop()
                        + ", right=" + afn.this.exoPlayerBtn.getRight()
                        + ", bottom=" + afn.this.exoPlayerBtn.getBottom());
                }
                if (afn.this.ijkPlayerBtn != null) {
                    Log.i("afn", "ijkPlayerBtn after layout: width=" + afn.this.ijkPlayerBtn.getWidth() 
                        + ", height=" + afn.this.ijkPlayerBtn.getHeight()
                        + ", left=" + afn.this.ijkPlayerBtn.getLeft()
                        + ", top=" + afn.this.ijkPlayerBtn.getTop()
                        + ", right=" + afn.this.ijkPlayerBtn.getRight()
                        + ", bottom=" + afn.this.ijkPlayerBtn.getBottom());
                }
            }
        });

        return inflate;
    }

    private void updatePlayerSelection() {
        if (this.ijkPlayerBtn == null || this.exoPlayerBtn == null) return;

        int playerType = abd.get_player_type(getActivity());
        Log.i("afn", "updatePlayerSelection: playerType=" + playerType 
            + ", ijkVisibility=" + this.ijkPlayerBtn.getVisibility() 
            + ", exoVisibility=" + this.exoPlayerBtn.getVisibility());

        if (playerType == PlayerSelector.PLAYER_EXO
            && PlayerSelector.isExoPlayerSupported()) {
            this.ijkPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.exoPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else {
            this.ijkPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.exoPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            abd.a((Context) afn.this.getActivity(), 16);
            DrawFrameLayout drawFrameLayout = afn.this.b;
            if (drawFrameLayout == null) {
                bbi.a();
            }
            drawFrameLayout.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            DrawFrameLayout drawFrameLayout2 = afn.this.c;
            if (drawFrameLayout2 == null) {
                bbi.a();
            }
            drawFrameLayout2.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout3 = afn.this.d;
            if (drawFrameLayout3 == null) {
                bbi.a();
            }
            drawFrameLayout3.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout4 = afn.this.e;
            if (drawFrameLayout4 == null) {
                bbi.a();
            }
            drawFrameLayout4.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    final class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            abd.a((Context) afn.this.getActivity(), 32);
            DrawFrameLayout drawFrameLayout = afn.this.b;
            if (drawFrameLayout == null) {
                bbi.a();
            }
            drawFrameLayout.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout2 = afn.this.c;
            if (drawFrameLayout2 == null) {
                bbi.a();
            }
            drawFrameLayout2.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            DrawFrameLayout drawFrameLayout3 = afn.this.d;
            if (drawFrameLayout3 == null) {
                bbi.a();
            }
            drawFrameLayout3.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout4 = afn.this.e;
            if (drawFrameLayout4 == null) {
                bbi.a();
            }
            drawFrameLayout4.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            abd.a((Context) afn.this.getActivity(), 80);
            DrawFrameLayout drawFrameLayout = afn.this.b;
            if (drawFrameLayout == null) {
                bbi.a();
            }
            drawFrameLayout.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout2 = afn.this.c;
            if (drawFrameLayout2 == null) {
                bbi.a();
            }
            drawFrameLayout2.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout3 = afn.this.d;
            if (drawFrameLayout3 == null) {
                bbi.a();
            }
            drawFrameLayout3.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            DrawFrameLayout drawFrameLayout4 = afn.this.e;
            if (drawFrameLayout4 == null) {
                bbi.a();
            }
            drawFrameLayout4.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
    }

    final class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            abd.a((Context) afn.this.getActivity(), 120);
            DrawFrameLayout drawFrameLayout = afn.this.b;
            if (drawFrameLayout == null) {
                bbi.a();
            }
            drawFrameLayout.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout2 = afn.this.c;
            if (drawFrameLayout2 == null) {
                bbi.a();
            }
            drawFrameLayout2.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout3 = afn.this.d;
            if (drawFrameLayout3 == null) {
                bbi.a();
            }
            drawFrameLayout3.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            DrawFrameLayout drawFrameLayout4 = afn.this.e;
            if (drawFrameLayout4 == null) {
                bbi.a();
            }
            drawFrameLayout4.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }
    }

    final class f implements View.OnClickListener {
        f() {
        }

        @Override
        public final void onClick(View view) {
            abd.set_player_type((Context) afn.this.getActivity(),
                PlayerSelector.PLAYER_IJK);
            afn.this.updatePlayerSelection();
        }
    }

    final class g implements View.OnClickListener {
        g() {
        }

        @Override
        public final void onClick(View view) {
            abd.set_player_type((Context) afn.this.getActivity(),
                PlayerSelector.PLAYER_EXO);
            afn.this.updatePlayerSelection();
        }
    }

    public final boolean a() {
        if (this.b == null) {
            return false;
        }
        DrawFrameLayout drawFrameLayout = this.b;
        if (drawFrameLayout == null) {
            bbi.a();
        }
        if (!drawFrameLayout.hasFocus()) {
            DrawFrameLayout drawFrameLayout2 = this.c;
            if (drawFrameLayout2 == null) {
                bbi.a();
            }
            if (!drawFrameLayout2.hasFocus()) {
                DrawFrameLayout drawFrameLayout3 = this.d;
                if (drawFrameLayout3 == null) {
                    bbi.a();
                }
                if (!drawFrameLayout3.hasFocus()) {
                    DrawFrameLayout drawFrameLayout4 = this.b;
                    if (drawFrameLayout4 == null) {
                        bbi.a();
                    }
                    drawFrameLayout4.requestFocus();
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean b() {
        if (this.b == null) {
            return false;
        }
        return !this.b.hasFocus();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        bbi.b(view, "v");
        Log.i("afn", "onFocusChange: view=" + view + ", hasFocus=" + z);
        if (view instanceof DrawFrameLayout) {
            ((DrawFrameLayout) view).setUpEnabled(z);
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(bbg bbgVar) {
            this();
        }

        public final afn a() {
            return new afn();
        }
    }
}