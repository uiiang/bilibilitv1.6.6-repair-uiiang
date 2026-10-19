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

import mybl.BiliFilter;

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
    private DrawFrameLayout liveIjkPlayerBtn;
    private DrawFrameLayout liveExoPlayerBtn;

    private DrawFrameLayout decodeSystemBtn;
    private DrawFrameLayout decodeIjkHardBtn;
    private DrawFrameLayout decodeIjkSoftBtn;
    private DrawFrameLayout codecButton;

    private ViewGroup decodeSettingsLayout;
    private ViewGroup codecSettingsLayout;

    private DrawFrameLayout menuQualityBtn;
    private DrawFrameLayout menuDanmakuBtn;
    private DrawFrameLayout menuRatioBtn;
    private DrawFrameLayout menuAdjustBtn;
    private DrawFrameLayout menuSizeBtn;
    private DrawFrameLayout menuAlphaBtn;
    private DrawFrameLayout menuSpeedBtn;
    private DrawFrameLayout menuModeBtn;
    private DrawFrameLayout menuSubtitleBtn;
    private DrawFrameLayout menuChapterBtn;
    private DrawFrameLayout menuSkipBtn;
    private DrawFrameLayout menuSubtitleSizeBtn;
    private DrawFrameLayout menuAudioBalanceBtn;
    private DrawFrameLayout menuEbookBtn;

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

        this.liveIjkPlayerBtn = (DrawFrameLayout) a(inflate, R.id.live_ijk_player);
        this.liveExoPlayerBtn = (DrawFrameLayout) a(inflate, R.id.live_exo_player);

        if (this.liveIjkPlayerBtn != null) {
            this.liveIjkPlayerBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.liveIjkPlayerBtn.setOnFocusChangeListener(this);
            this.liveIjkPlayerBtn.setOnClickListener(this);
        }
        if (this.liveExoPlayerBtn != null) {
            this.liveExoPlayerBtn.setUpDrawable(R.drawable.shadow_white_rect);
            this.liveExoPlayerBtn.setOnFocusChangeListener(this);
            this.liveExoPlayerBtn.setOnClickListener(this);

            if (!PlayerSelector.isExoPlayerSupported() || !PlayerSelector.isExoPlayerAvailable()) {
                this.liveExoPlayerBtn.setVisibility(View.GONE);
            }
        }

        updateLivePlayerSelection();

        // ===== 以下为从"个性化"页迁移来的"右侧菜单"设置项（置于默认清晰度上方）=====
        this.menuQualityBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_quality_btn);
        this.menuDanmakuBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_danmaku_btn);
        this.menuRatioBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_ratio_btn);
        this.menuAdjustBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_adjust_btn);
        this.menuSizeBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_size_btn);
        this.menuAlphaBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_alpha_btn);
        this.menuSpeedBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_speed_btn);
        this.menuModeBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_mode_btn);
        this.menuSubtitleBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_subtitle_btn);
        this.menuChapterBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_chapter_btn);
        this.menuSkipBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_skip_btn);
        this.menuSubtitleSizeBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_subtitle_size_btn);
        this.menuAudioBalanceBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_audio_balance_btn);
        this.menuEbookBtn = (DrawFrameLayout) inflate.findViewById(R.id.menu_ebook_btn);

        // 根据隐藏功能开关和渲染视图类型决定是否显示电子书选项
        boolean ebookEnabled = abd.b(getActivity()) && (mybl.BiliFilter.prefer_videoview == abd.RENDER_VIEW_TEXTURE);
        if (!ebookEnabled) {
            this.menuEbookBtn.setVisibility(View.GONE);
            // 设置音频平衡按钮的右键焦点为自身，避免焦点跳到页面顶部
            this.menuAudioBalanceBtn.setNextFocusRightId(R.id.menu_audio_balance_btn);
        }

        this.menuQualityBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuDanmakuBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuRatioBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuAdjustBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuSizeBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuAlphaBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuSpeedBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuModeBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuSubtitleBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuChapterBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuSkipBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuSubtitleSizeBtn.setUpDrawable(R.drawable.shadow_white_rect);
        this.menuAudioBalanceBtn.setUpDrawable(R.drawable.shadow_white_rect);
        if (ebookEnabled) {
            this.menuEbookBtn.setUpDrawable(R.drawable.shadow_white_rect);
        }

        this.menuQualityBtn.setOnFocusChangeListener(this);
        this.menuDanmakuBtn.setOnFocusChangeListener(this);
        this.menuRatioBtn.setOnFocusChangeListener(this);
        this.menuAdjustBtn.setOnFocusChangeListener(this);
        this.menuSizeBtn.setOnFocusChangeListener(this);
        this.menuAlphaBtn.setOnFocusChangeListener(this);
        this.menuSpeedBtn.setOnFocusChangeListener(this);
        this.menuModeBtn.setOnFocusChangeListener(this);
        this.menuSubtitleBtn.setOnFocusChangeListener(this);
        this.menuChapterBtn.setOnFocusChangeListener(this);
        this.menuSkipBtn.setOnFocusChangeListener(this);
        this.menuSubtitleSizeBtn.setOnFocusChangeListener(this);
        this.menuAudioBalanceBtn.setOnFocusChangeListener(this);
        if (ebookEnabled) {
            this.menuEbookBtn.setOnFocusChangeListener(this);
        }

        this.menuQualityBtn.setOnClickListener(this);
        this.menuDanmakuBtn.setOnClickListener(this);
        this.menuRatioBtn.setOnClickListener(this);
        this.menuAdjustBtn.setOnClickListener(this);
        this.menuSizeBtn.setOnClickListener(this);
        this.menuAlphaBtn.setOnClickListener(this);
        this.menuSpeedBtn.setOnClickListener(this);
        this.menuModeBtn.setOnClickListener(this);
        this.menuSubtitleBtn.setOnClickListener(this);
        this.menuChapterBtn.setOnClickListener(this);
        this.menuSkipBtn.setOnClickListener(this);
        this.menuSubtitleSizeBtn.setOnClickListener(this);
        this.menuAudioBalanceBtn.setOnClickListener(this);
        if (ebookEnabled) {
            this.menuEbookBtn.setOnClickListener(this);
        }

        int menuConfig = abd.get_player_menu_config(getActivity());
        updateMenuButtonState(this.menuQualityBtn, (menuConfig & abd.MENU_QUALITY) != 0);
        updateMenuButtonState(this.menuDanmakuBtn, (menuConfig & abd.MENU_DANMAKU) != 0);
        updateMenuButtonState(this.menuRatioBtn, (menuConfig & abd.MENU_RATIO) != 0);
        updateMenuButtonState(this.menuAdjustBtn, (menuConfig & abd.MENU_ADJUST) != 0);
        updateMenuButtonState(this.menuSizeBtn, (menuConfig & abd.MENU_SIZE) != 0);
        updateMenuButtonState(this.menuAlphaBtn, (menuConfig & abd.MENU_ALPHA) != 0);
        updateMenuButtonState(this.menuSpeedBtn, (menuConfig & abd.MENU_SPEED) != 0);
        updateMenuButtonState(this.menuModeBtn, (menuConfig & abd.MENU_MODE) != 0);
        updateMenuButtonState(this.menuSubtitleBtn, (menuConfig & abd.MENU_SUBTITLE) != 0);
        updateMenuButtonState(this.menuChapterBtn, (menuConfig & abd.MENU_CHAPTER) != 0);
        updateMenuButtonState(this.menuSkipBtn, (menuConfig & abd.MENU_SKIP) != 0);
        updateMenuButtonState(this.menuSubtitleSizeBtn, (menuConfig & abd.MENU_SUBTITLE_SIZE) != 0);
        updateMenuButtonState(this.menuAudioBalanceBtn, (menuConfig & abd.MENU_AUDIO_BALANCE) != 0);
        if (ebookEnabled) {
            updateMenuButtonState(this.menuEbookBtn, (menuConfig & abd.MENU_EBOOK) != 0);
        }
        // ===== 右侧菜单设置项迁移结束 =====

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

    private void updateLivePlayerSelection() {
        if (this.liveIjkPlayerBtn == null || this.liveExoPlayerBtn == null) return;

        int playerType = abd.get_live_player_type(getActivity());

        if (playerType == PlayerSelector.PLAYER_EXO
            && PlayerSelector.isExoPlayerSupported()) {
            this.liveIjkPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.liveExoPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else {
            this.liveIjkPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.liveExoPlayerBtn.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
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
        if (view == this.liveIjkPlayerBtn) {
            abd.set_live_player_type((Context) afn.this.getActivity(), PlayerSelector.PLAYER_IJK);
            afn.this.updateLivePlayerSelection();
        }
        if (view == this.liveExoPlayerBtn) {
            abd.set_live_player_type((Context) afn.this.getActivity(), PlayerSelector.PLAYER_EXO);
            afn.this.updateLivePlayerSelection();
        }

        if (view == this.menuQualityBtn || view == this.menuDanmakuBtn ||
                view == this.menuRatioBtn || view == this.menuAdjustBtn ||
                view == this.menuSizeBtn || view == this.menuAlphaBtn ||
                view == this.menuSpeedBtn || view == this.menuModeBtn ||
                view == this.menuSubtitleBtn || view == this.menuChapterBtn ||
                view == this.menuSkipBtn || view == this.menuSubtitleSizeBtn ||
                view == this.menuAudioBalanceBtn || view == this.menuEbookBtn) {
            int config = abd.get_player_menu_config(getActivity());
            int flag = 0;
            if (view == this.menuQualityBtn)
                flag = abd.MENU_QUALITY;
            else if (view == this.menuDanmakuBtn)
                flag = abd.MENU_DANMAKU;
            else if (view == this.menuRatioBtn)
                flag = abd.MENU_RATIO;
            else if (view == this.menuAdjustBtn)
                flag = abd.MENU_ADJUST;
            else if (view == this.menuSizeBtn)
                flag = abd.MENU_SIZE;
            else if (view == this.menuAlphaBtn)
                flag = abd.MENU_ALPHA;
            else if (view == this.menuSpeedBtn)
                flag = abd.MENU_SPEED;
            else if (view == this.menuModeBtn)
                flag = abd.MENU_MODE;
            else if (view == this.menuSubtitleBtn)
                flag = abd.MENU_SUBTITLE;
            else if (view == this.menuChapterBtn)
                flag = abd.MENU_CHAPTER;
            else if (view == this.menuSkipBtn)
                flag = abd.MENU_SKIP;
            else if (view == this.menuSubtitleSizeBtn)
                flag = abd.MENU_SUBTITLE_SIZE;
            else if (view == this.menuAudioBalanceBtn)
                flag = abd.MENU_AUDIO_BALANCE;
            else if (view == this.menuEbookBtn)
                flag = abd.MENU_EBOOK;

            boolean wasEnabled = (config & flag) != 0;
            int newConfig;
            if (wasEnabled) {
                newConfig = config & ~flag;
                if (newConfig == 0) {
                    newConfig = flag;
                }
            } else {
                newConfig = config | flag;
            }
            abd.set_player_menu_config(getActivity(), newConfig);
            updateMenuButtonState((DrawFrameLayout) view, !wasEnabled);
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
        if (this.liveIjkPlayerBtn != null && this.liveIjkPlayerBtn.hasFocus()) {
            return false;
        }
        if (this.liveExoPlayerBtn != null && this.liveExoPlayerBtn.hasFocus()) {
            return false;
        }
        if (this.menuQualityBtn != null && this.menuQualityBtn.hasFocus()) {
            return false;
        }
        if (this.menuDanmakuBtn != null && this.menuDanmakuBtn.hasFocus()) {
            return false;
        }
        if (this.menuRatioBtn != null && this.menuRatioBtn.hasFocus()) {
            return false;
        }
        if (this.menuAdjustBtn != null && this.menuAdjustBtn.hasFocus()) {
            return false;
        }
        if (this.menuSizeBtn != null && this.menuSizeBtn.hasFocus()) {
            return false;
        }
        if (this.menuAlphaBtn != null && this.menuAlphaBtn.hasFocus()) {
            return false;
        }
        if (this.menuSpeedBtn != null && this.menuSpeedBtn.hasFocus()) {
            return false;
        }
        if (this.menuModeBtn != null && this.menuModeBtn.hasFocus()) {
            return false;
        }
        if (this.menuSubtitleBtn != null && this.menuSubtitleBtn.hasFocus()) {
            return false;
        }
        if (this.menuChapterBtn != null && this.menuChapterBtn.hasFocus()) {
            return false;
        }
        if (this.menuSkipBtn != null && this.menuSkipBtn.hasFocus()) {
            return false;
        }
        if (this.menuSubtitleSizeBtn != null && this.menuSubtitleSizeBtn.hasFocus()) {
            return false;
        }
        if (this.menuAudioBalanceBtn != null && this.menuAudioBalanceBtn.hasFocus()) {
            return false;
        }
        if (this.menuEbookBtn != null && this.menuEbookBtn.hasFocus()) {
            return false;
        }
        this.menuQualityBtn.requestFocus();
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
        if (this.liveIjkPlayerBtn != null && this.liveIjkPlayerBtn.hasFocus()) {
            return true;
        }
        if (this.liveExoPlayerBtn != null && this.liveExoPlayerBtn.hasFocus()) {
            return true;
        }
        if (this.menuQualityBtn != null && this.menuQualityBtn.hasFocus()) {
            return true;
        }
        if (this.menuDanmakuBtn != null && this.menuDanmakuBtn.hasFocus()) {
            return true;
        }
        if (this.menuRatioBtn != null && this.menuRatioBtn.hasFocus()) {
            return true;
        }
        if (this.menuAdjustBtn != null && this.menuAdjustBtn.hasFocus()) {
            return true;
        }
        if (this.menuSizeBtn != null && this.menuSizeBtn.hasFocus()) {
            return true;
        }
        if (this.menuAlphaBtn != null && this.menuAlphaBtn.hasFocus()) {
            return true;
        }
        if (this.menuSpeedBtn != null && this.menuSpeedBtn.hasFocus()) {
            return true;
        }
        if (this.menuModeBtn != null && this.menuModeBtn.hasFocus()) {
            return true;
        }
        if (this.menuSubtitleBtn != null && this.menuSubtitleBtn.hasFocus()) {
            return true;
        }
        if (this.menuChapterBtn != null && this.menuChapterBtn.hasFocus()) {
            return true;
        }
        if (this.menuSkipBtn != null && this.menuSkipBtn.hasFocus()) {
            return true;
        }
        if (this.menuSubtitleSizeBtn != null && this.menuSubtitleSizeBtn.hasFocus()) {
            return true;
        }
        if (this.menuAudioBalanceBtn != null && this.menuAudioBalanceBtn.hasFocus()) {
            return true;
        }
        if (this.menuEbookBtn != null && this.menuEbookBtn.hasFocus()) {
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

    private void updateMenuButtonState(DrawFrameLayout button, boolean enabled) {
        if (enabled) {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
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
