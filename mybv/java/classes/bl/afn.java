package bl;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.DrawFrameLayout;
import com.bilibili.tv.widget.ShadowTextView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import tv.danmaku.videoplayer.core.media.PlayerSelector;
import tv.danmaku.videoplayer.core.media.ijk.IjkMediaCodecInfo;

public final class afn extends adw implements View.OnFocusChangeListener, View.OnClickListener {
    public static final a Companion = new a(null);
    public static String prefect_codec = null;
    public static String prefect_decoder = null;
    public List<String> supported_codecs = new ArrayList<>(Arrays.asList("video/avc", "video/hevc", "video/av01"));

    private DrawFrameLayout b;
    private DrawFrameLayout c;
    private DrawFrameLayout d;
    public DrawFrameLayout e;
    private DrawFrameLayout ijkPlayerBtn;
    private DrawFrameLayout exoPlayerBtn;

    private DrawFrameLayout decodeSystemBtn;
    private DrawFrameLayout decodeIjkHardBtn;
    private DrawFrameLayout decodeIjkSoftBtn;
    private DrawFrameLayout codecButton;

    private ViewGroup decodeSettingsLayout;
    private ViewGroup codecSettingsLayout;

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public void d_() {
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        bbi.b(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(R.layout.fragment_setting_play_quality, viewGroup, false);
        bbi.a((Object) inflate, "view");

        this.b = (DrawFrameLayout) a(inflate, R.id.low_quality);
        this.c = (DrawFrameLayout) a(inflate, R.id.medium_quality);
        this.d = (DrawFrameLayout) a(inflate, R.id.high_quality);
        this.e = (DrawFrameLayout) a(inflate, R.id.super_quality);

        if (this.b == null) bbi.a();
        this.b.setUpDrawable(R.drawable.shadow_white_rect);
        if (this.c == null) bbi.a();
        this.c.setUpDrawable(R.drawable.shadow_white_rect);
        if (this.d == null) bbi.a();
        this.d.setUpDrawable(R.drawable.shadow_white_rect);
        if (this.e == null) bbi.a();
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

        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);

        this.decodeSystemBtn = (DrawFrameLayout) a(inflate, R.id.decode_system);
        this.decodeIjkHardBtn = (DrawFrameLayout) a(inflate, R.id.decode_ijk_hard);
        this.decodeIjkSoftBtn = (DrawFrameLayout) a(inflate, R.id.decode_ijk_soft);
        this.codecButton = (DrawFrameLayout) a(inflate, R.id.codec_button);

        if (this.decodeSystemBtn != null) {
            this.decodeSystemBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.decodeSystemBtn.setOnFocusChangeListener(this);
            this.decodeSystemBtn.setOnClickListener(this);
        }
        if (this.decodeIjkHardBtn != null) {
            this.decodeIjkHardBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.decodeIjkHardBtn.setOnFocusChangeListener(this);
            this.decodeIjkHardBtn.setOnClickListener(this);
        }
        if (this.decodeIjkSoftBtn != null) {
            this.decodeIjkSoftBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.decodeIjkSoftBtn.setOnFocusChangeListener(this);
            this.decodeIjkSoftBtn.setOnClickListener(this);
        }
        if (this.codecButton != null) {
            this.codecButton.setUpDrawable(R.drawable.shadow_white_rect);
            this.codecButton.setOnFocusChangeListener(this);
            this.codecButton.setOnClickListener(this);
        }

        this.decodeSettingsLayout = (ViewGroup) a(inflate, R.id.decode_settings_layout);
        this.codecSettingsLayout = (ViewGroup) a(inflate, R.id.codec_settings_layout);

        switch (abd.h(getActivity())) {
            case 1:
                if (this.decodeSystemBtn != null)
                    this.decodeSystemBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
                break;
            case 2:
                if (this.decodeIjkHardBtn != null)
                    this.decodeIjkHardBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
                break;
            case 3:
                if (this.decodeIjkSoftBtn != null)
                    this.decodeIjkSoftBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
                break;
        }

        if (afn.prefect_decoder != null && this.codecButton != null) {
            ((ShadowTextView) ((ViewGroup) this.codecButton).getChildAt(0)).setText(afn.prefect_decoder);
        }

        this.ijkPlayerBtn = (DrawFrameLayout) a(inflate, R.id.ijk_player);
        this.exoPlayerBtn = (DrawFrameLayout) a(inflate, R.id.exo_player);

        Log.i("afn", "ijkPlayerBtn=" + this.ijkPlayerBtn + ", exoPlayerBtn=" + this.exoPlayerBtn);
        Log.i("afn", "isExoPlayerSupported=" + PlayerSelector.isExoPlayerSupported()
            + ", isExoPlayerAvailable=" + PlayerSelector.isExoPlayerAvailable());

        if (this.ijkPlayerBtn != null) {
            this.ijkPlayerBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.ijkPlayerBtn.setOnFocusChangeListener(this);
            this.ijkPlayerBtn.setOnClickListener(this);
        }
        if (this.exoPlayerBtn != null) {
            this.exoPlayerBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.exoPlayerBtn.setOnFocusChangeListener(this);
            this.exoPlayerBtn.setOnClickListener(this);

            if (!PlayerSelector.isExoPlayerSupported() || !PlayerSelector.isExoPlayerAvailable()) {
                Log.i("afn", "Hiding exoPlayerBtn - ExoPlayer not supported/available");
                this.exoPlayerBtn.setVisibility(View.GONE);
            } else {
                Log.i("afn", "exoPlayerBtn is visible, focusable=" + this.exoPlayerBtn.isFocusable());
            }
        }

        updatePlayerSelection();

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
            if (this.decodeSettingsLayout != null) {
                this.decodeSettingsLayout.setVisibility(View.GONE);
            }
            if (this.codecSettingsLayout != null) {
                this.codecSettingsLayout.setVisibility(View.GONE);
            }
        } else {
            this.ijkPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.exoPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            if (this.decodeSettingsLayout != null) {
                this.decodeSettingsLayout.setVisibility(View.VISIBLE);
            }
            if (this.codecSettingsLayout != null) {
                this.codecSettingsLayout.setVisibility(View.VISIBLE);
            }
        }
    }

    @Override
    public void onClick(View view) {
        if (view == this.b) {
            abd.a((Context) afn.this.getActivity(), 16);
            afn.this.b.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            afn.this.c.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.d.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.e.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
        if (view == this.c) {
            abd.a((Context) afn.this.getActivity(), 32);
            afn.this.b.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.c.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            afn.this.d.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.e.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
        if (view == this.d) {
            abd.a((Context) afn.this.getActivity(), 80);
            afn.this.b.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.c.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.d.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            afn.this.e.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
        if (view == this.e) {
            abd.a((Context) afn.this.getActivity(), 120);
            afn.this.b.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.c.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.d.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.e.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }

        if (view == this.decodeSystemBtn) {
            abd.b((Context) afn.this.getActivity(), 1);
            afn.this.decodeSystemBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            afn.this.decodeIjkHardBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.decodeIjkSoftBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
        if (view == this.decodeIjkHardBtn) {
            abd.b((Context) afn.this.getActivity(), 2);
            afn.this.decodeSystemBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.decodeIjkHardBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            afn.this.decodeIjkSoftBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
        if (view == this.decodeIjkSoftBtn) {
            abd.b((Context) afn.this.getActivity(), 3);
            afn.this.decodeSystemBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.decodeIjkHardBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            afn.this.decodeIjkSoftBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }
        if (view == this.codecButton) {
            List<String> tmp_codecs = new ArrayList<String>();
            tmp_codecs.add("无");
            List<String> show_decoders = new ArrayList<String>();
            show_decoders.add("无");
            for (int i = 0; i < MediaCodecList.getCodecCount(); i++) {
                MediaCodecInfo info = MediaCodecList.getCodecInfoAt(i);
                if (!info.isEncoder()) {
                    String[] types = info.getSupportedTypes();
                    for (int j = 0; j < types.length; j++)
                        if (this.supported_codecs.contains(types[j])) {
                            tmp_codecs.add(types[j]);
                            show_decoders.add(info.getName());
                        }
                }
            }
            AlertDialog dialog = new AlertDialog.Builder(getContext())
                .setItems(show_decoders.toArray(new String[0]), new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Map<String, Integer> sKnownCodecList = IjkMediaCodecInfo.getKnownCodecList();
                        Iterator<Map.Entry<String, Integer>> iterator = sKnownCodecList.entrySet().iterator();
                        while (iterator.hasNext()) {
                            Map.Entry<String, Integer> entry = iterator.next();
                            if (entry.getValue() == IjkMediaCodecInfo.RANK_MAX) iterator.remove();
                        }
                        if (which > 1) {
                            afn.prefect_codec = tmp_codecs.get(which);
                            afn.prefect_decoder = show_decoders.get(which);
                            sKnownCodecList.put(afn.prefect_decoder, IjkMediaCodecInfo.RANK_MAX);
                        } else {
                            afn.prefect_codec = null;
                            afn.prefect_decoder = null;
                        }
                        abd.set_personal_config(MainApplication.a(), "prefect_codec", afn.prefect_codec);
                        abd.set_personal_config(MainApplication.a(), "prefect_decoder", afn.prefect_decoder);
                        ((ShadowTextView) ((ViewGroup) afn.this.codecButton).getChildAt(0)).setText(show_decoders.get(which));
                    }
                }).create();
            dialog.show();
        }

        if (view == this.ijkPlayerBtn) {
            abd.set_player_type((Context) afn.this.getActivity(), PlayerSelector.PLAYER_IJK);
            afn.this.updatePlayerSelection();
        }
        if (view == this.exoPlayerBtn) {
            abd.set_player_type((Context) afn.this.getActivity(), PlayerSelector.PLAYER_EXO);
            afn.this.updatePlayerSelection();
        }
    }

    public final boolean a() {
        if (this.b == null) {
            return false;
        }
        if (this.b.hasFocus() || this.c.hasFocus() || this.d.hasFocus() || this.e.hasFocus()) {
            return false;
        }
        if (this.decodeSystemBtn != null && this.decodeSystemBtn.hasFocus()) {
            return false;
        }
        if (this.decodeIjkHardBtn != null && this.decodeIjkHardBtn.hasFocus()) {
            return false;
        }
        if (this.decodeIjkSoftBtn != null && this.decodeIjkSoftBtn.hasFocus()) {
            return false;
        }
        if (this.codecButton != null && this.codecButton.hasFocus()) {
            return false;
        }
        if (this.ijkPlayerBtn != null && this.ijkPlayerBtn.hasFocus()) {
            return false;
        }
        if (this.exoPlayerBtn != null && this.exoPlayerBtn.hasFocus()) {
            return false;
        }
        this.b.requestFocus();
        return true;
    }

    public final boolean b() {
        if (this.b == null) {
            return false;
        }
        if (this.b.hasFocus() || this.c.hasFocus() || this.d.hasFocus() || this.e.hasFocus()) {
            return true;
        }
        if (this.decodeSystemBtn != null && this.decodeSystemBtn.hasFocus()) {
            return true;
        }
        if (this.decodeIjkHardBtn != null && this.decodeIjkHardBtn.hasFocus()) {
            return true;
        }
        if (this.decodeIjkSoftBtn != null && this.decodeIjkSoftBtn.hasFocus()) {
            return true;
        }
        if (this.codecButton != null && this.codecButton.hasFocus()) {
            return true;
        }
        if (this.ijkPlayerBtn != null && this.ijkPlayerBtn.hasFocus()) {
            return true;
        }
        if (this.exoPlayerBtn != null && this.exoPlayerBtn.hasFocus()) {
            return true;
        }
        return false;
    }

    @Override
    public void onFocusChange(View view, boolean z) {
        bbi.b(view, "v");
        Log.i("afn", "onFocusChange: view=" + view + ", hasFocus=" + z);
        if (view instanceof DrawFrameLayout) {
            ((DrawFrameLayout) view).setUpEnabled(z);
        }
    }

    public static final class a {
        private a() {
        }

        public a(bbg bbgVar) {
            this();
        }

        public final afn a() {
            return new afn();
        }
    }
}
