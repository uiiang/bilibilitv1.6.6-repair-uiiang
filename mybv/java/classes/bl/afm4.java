package bl;

import android.view.*;
import android.widget.*;
import android.os.Bundle;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.*;
import com.bilibili.tv.MainApplication;
import android.view.inputmethod.EditorInfo;

import mybl.BiliFilter;
import com.alibaba.fastjson.JSON;
import com.bilibili.tv.ui.main.content.MainMyFragment;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class afm4 extends adw implements View.OnFocusChangeListener, View.OnClickListener {
    public static final a Companion = new a(null);
    private DrawFrameLayout progressbar_button;
    private DrawFrameLayout fastquit_button;

    public static String[] tab_names = { "登录", "动态", "待看", "收藏", "历史" };
    private DrawFrameLayout[] tab_buttons = { null, null, null, null, null };
    private DrawFrameLayout column2Button;
    private DrawFrameLayout column3Button;
    private DrawFrameLayout column4Button;

    private DrawFrameLayout otherNormalButton;
    private DrawFrameLayout otherCompactButton;

    private DrawFrameLayout tabPersonalRecommend;
    private DrawFrameLayout tabHotRecommend;
    private DrawFrameLayout tabLive;
    private DrawFrameLayout tabArea;
    private DrawFrameLayout tabBangumi;
    private DrawFrameLayout tabPgc;

    private DrawFrameLayout spaceDynamicButton;
    private DrawFrameLayout spaceAllButton;

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

    @Override // bl.adw
    public boolean c() {
        return true;
    }

    @Override // bl.aea
    public void d_() {
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        bbi.b(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_personalization, viewGroup, false);
        this.progressbar_button = (DrawFrameLayout) inflate.findViewById(R.id.progressbar_button);
        this.fastquit_button = (DrawFrameLayout) inflate.findViewById(R.id.fastquit_button);
        this.tab_buttons[0] = (DrawFrameLayout) inflate.findViewById(R.id.tab_button0);
        this.tab_buttons[1] = (DrawFrameLayout) inflate.findViewById(R.id.tab_button1);
        this.tab_buttons[2] = (DrawFrameLayout) inflate.findViewById(R.id.tab_button2);
        this.tab_buttons[3] = (DrawFrameLayout) inflate.findViewById(R.id.tab_button3);
        this.tab_buttons[4] = (DrawFrameLayout) inflate.findViewById(R.id.tab_button4);

        this.progressbar_button.setUpDrawable(R.drawable.shadow_white_rect);
        this.progressbar_button.setOnFocusChangeListener(this);
        this.fastquit_button.setUpDrawable(R.drawable.shadow_white_rect);
        this.fastquit_button.setOnFocusChangeListener(this);
        if (BiliFilter.progressbar_on) {
            ((ShadowTextView) ((ViewGroup) this.progressbar_button).getChildAt(0)).setText("开");
            this.progressbar_button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }
        if (BiliFilter.fastquit_on) {
            ((ShadowTextView) ((ViewGroup) this.fastquit_button).getChildAt(0)).setText("开");
            this.fastquit_button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }
        this.progressbar_button.setOnClickListener(this);
        this.fastquit_button.setOnClickListener(this);
        for (int i = 0; i < 5; i++) {
            this.tab_buttons[i].setUpDrawable(R.drawable.shadow_white_rect);
            this.tab_buttons[i].setOnFocusChangeListener(this);
            this.tab_buttons[i].setOnClickListener(this);
            ((ShadowTextView) this.tab_buttons[i].getChildAt(0)).setText(afm4.tab_names[MainMyFragment.MyMap[i]]);
        }

        this.column2Button = (DrawFrameLayout) inflate.findViewById(R.id.column_2_button);
        this.column3Button = (DrawFrameLayout) inflate.findViewById(R.id.column_3_button);
        this.column4Button = (DrawFrameLayout) inflate.findViewById(R.id.column_4_button);
        this.column2Button.setUpDrawable(R.drawable.shadow_white_rect);
        this.column3Button.setUpDrawable(R.drawable.shadow_white_rect);
        this.column4Button.setUpDrawable(R.drawable.shadow_white_rect);
        this.column2Button.setOnFocusChangeListener(this);
        this.column3Button.setOnFocusChangeListener(this);
        this.column4Button.setOnFocusChangeListener(this);
        this.column2Button.setOnClickListener(this);
        this.column3Button.setOnClickListener(this);
        this.column4Button.setOnClickListener(this);

        int homeColumn = abd.get_home_column(getActivity());
        if (homeColumn == 2) {
            this.column2Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.column3Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.column4Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else if (homeColumn == 3) {
            this.column2Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.column3Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.column4Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else {
            this.column2Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.column3Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.column4Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }

        this.otherNormalButton = (DrawFrameLayout) inflate.findViewById(R.id.other_normal_button);
        this.otherCompactButton = (DrawFrameLayout) inflate.findViewById(R.id.other_compact_button);
        this.otherNormalButton.setUpDrawable(R.drawable.shadow_white_rect);
        this.otherCompactButton.setUpDrawable(R.drawable.shadow_white_rect);
        this.otherNormalButton.setOnFocusChangeListener(this);
        this.otherCompactButton.setOnFocusChangeListener(this);
        this.otherNormalButton.setOnClickListener(this);
        this.otherCompactButton.setOnClickListener(this);

        int otherColumn = abd.get_other_column(getActivity());
        if (otherColumn == abd.OTHER_COLUMN_NORMAL) {
            this.otherNormalButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.otherCompactButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else {
            this.otherNormalButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.otherCompactButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }

        this.tabPersonalRecommend = (DrawFrameLayout) inflate.findViewById(R.id.tab_personal_recommend);
        this.tabHotRecommend = (DrawFrameLayout) inflate.findViewById(R.id.tab_hot_recommend);
        this.tabLive = (DrawFrameLayout) inflate.findViewById(R.id.tab_live);
        this.tabArea = (DrawFrameLayout) inflate.findViewById(R.id.tab_area);
        this.tabBangumi = (DrawFrameLayout) inflate.findViewById(R.id.tab_bangumi);
        this.tabPgc = (DrawFrameLayout) inflate.findViewById(R.id.tab_pgc);

        this.tabPersonalRecommend.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabHotRecommend.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabLive.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabArea.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabBangumi.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabPgc.setUpDrawable(R.drawable.shadow_white_rect);

        this.tabPersonalRecommend.setOnFocusChangeListener(this);
        this.tabHotRecommend.setOnFocusChangeListener(this);
        this.tabLive.setOnFocusChangeListener(this);
        this.tabArea.setOnFocusChangeListener(this);
        this.tabBangumi.setOnFocusChangeListener(this);
        this.tabPgc.setOnFocusChangeListener(this);

        this.tabPersonalRecommend.setOnClickListener(this);
        this.tabHotRecommend.setOnClickListener(this);
        this.tabLive.setOnClickListener(this);
        this.tabArea.setOnClickListener(this);
        this.tabBangumi.setOnClickListener(this);
        this.tabPgc.setOnClickListener(this);

        int topTabConfig = abd.get_top_tab_config(getActivity());
        updateTopTabButtonState(this.tabPersonalRecommend, (topTabConfig & abd.TAB_PERSONAL_RECOMMEND) != 0);
        updateTopTabButtonState(this.tabHotRecommend, (topTabConfig & abd.TAB_HOT_RECOMMEND) != 0);
        updateTopTabButtonState(this.tabLive, (topTabConfig & abd.TAB_LIVE) != 0);
        updateTopTabButtonState(this.tabArea, (topTabConfig & abd.TAB_AREA) != 0);
        updateTopTabButtonState(this.tabBangumi, (topTabConfig & abd.TAB_BANGUMI) != 0);
        updateTopTabButtonState(this.tabPgc, (topTabConfig & abd.TAB_PGC) != 0);

        this.spaceDynamicButton = (DrawFrameLayout) inflate.findViewById(R.id.space_dynamic_button);
        this.spaceAllButton = (DrawFrameLayout) inflate.findViewById(R.id.space_all_button);
        this.spaceDynamicButton.setUpDrawable(R.drawable.shadow_white_rect);
        this.spaceAllButton.setUpDrawable(R.drawable.shadow_white_rect);
        this.spaceDynamicButton.setOnFocusChangeListener(this);
        this.spaceAllButton.setOnFocusChangeListener(this);
        this.spaceDynamicButton.setOnClickListener(this);
        this.spaceAllButton.setOnClickListener(this);

        mg account = mg.a(getActivity());
        boolean isLoggedIn = account != null && account.a();
        int spaceMode = abd.get_space_dynamic_mode(getActivity());
        if (spaceMode == abd.SPACE_MODE_DYNAMIC) {
            this.spaceDynamicButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.spaceAllButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else {
            this.spaceDynamicButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.spaceAllButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }

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

        return inflate;
    }

    private void updateTopTabButtonState(DrawFrameLayout button, boolean enabled) {
        if (enabled) {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
    }

    private void updateMenuButtonState(DrawFrameLayout button, boolean enabled) {
        if (enabled) {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == this.progressbar_button) {
            if (BiliFilter.progressbar_on) {
                ((ShadowTextView) ((ViewGroup) view).getChildAt(0)).setText("关");
                view.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            } else {
                ((ShadowTextView) ((ViewGroup) view).getChildAt(0)).setText("开");
                view.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            }
            BiliFilter.progressbar_on = !BiliFilter.progressbar_on;
            abd.set_personal_config(MainApplication.a().getApplicationContext(), "progressbar_on",
                    BiliFilter.progressbar_on);
        }
        if (view == this.fastquit_button) {
            if (BiliFilter.fastquit_on) {
                ((ShadowTextView) ((ViewGroup) view).getChildAt(0)).setText("关");
                view.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            } else {
                ((ShadowTextView) ((ViewGroup) view).getChildAt(0)).setText("开");
                view.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            }
            BiliFilter.fastquit_on = !BiliFilter.fastquit_on;
            abd.set_personal_config(MainApplication.a().getApplicationContext(), "fastquit_on", BiliFilter.fastquit_on);
        }
        for (int i = 0; i < 5; i++) {
            if (this.tab_buttons[i] == view) {
                int t = MainMyFragment.MyMap[i];
                for (int j = i - 1; j >= 0; j--)
                    MainMyFragment.MyMap[j + 1] = MainMyFragment.MyMap[j];
                MainMyFragment.MyMap[0] = t;
                abd.set_personal_config(MainApplication.a(), "myarea_map", JSON.toJSON(MainMyFragment.MyMap));
                for (int j = 0; j < 5; j++)
                    ((ShadowTextView) this.tab_buttons[j].getChildAt(0))
                            .setText((j == i ? "≪ " : "") + afm4.tab_names[MainMyFragment.MyMap[j]]);
            }
        }

        if (view == this.column2Button) {
            abd.set_home_column(getActivity(), 2);
            this.column2Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.column3Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.column4Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else if (view == this.column3Button) {
            abd.set_home_column(getActivity(), 3);
            this.column2Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.column3Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.column4Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else if (view == this.column4Button) {
            abd.set_home_column(getActivity(), 4);
            this.column2Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.column3Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.column4Button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }

        if (view == this.otherNormalButton) {
            abd.set_other_column(getActivity(), abd.OTHER_COLUMN_NORMAL);
            this.otherNormalButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.otherCompactButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else if (view == this.otherCompactButton) {
            abd.set_other_column(getActivity(), abd.OTHER_COLUMN_COMPACT);
            this.otherNormalButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.otherCompactButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }

        if (view == this.tabPersonalRecommend || view == this.tabHotRecommend ||
                view == this.tabLive || view == this.tabArea || 
                view == this.tabBangumi || view == this.tabPgc) {
            int config = abd.get_top_tab_config(getActivity());
            int flag = 0;
            if (view == this.tabPersonalRecommend)
                flag = abd.TAB_PERSONAL_RECOMMEND;
            else if (view == this.tabHotRecommend)
                flag = abd.TAB_HOT_RECOMMEND;
            else if (view == this.tabLive)
                flag = abd.TAB_LIVE;
            else if (view == this.tabArea)
                flag = abd.TAB_AREA;
            else if (view == this.tabBangumi)
                flag = abd.TAB_BANGUMI;
            else if (view == this.tabPgc)
                flag = abd.TAB_PGC;

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
            abd.set_top_tab_config(getActivity(), newConfig);
            updateTopTabButtonState((DrawFrameLayout) view, !wasEnabled);
        }

        if (view == this.spaceDynamicButton) {
            abd.set_space_dynamic_mode(getActivity(), abd.SPACE_MODE_DYNAMIC);
            this.spaceDynamicButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.spaceAllButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else if (view == this.spaceAllButton) {
            abd.set_space_dynamic_mode(getActivity(), abd.SPACE_MODE_ALL);
            this.spaceDynamicButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.spaceAllButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }

        if (view == this.menuQualityBtn || view == this.menuDanmakuBtn ||
                view == this.menuRatioBtn || view == this.menuAdjustBtn ||
                view == this.menuSizeBtn || view == this.menuAlphaBtn ||
                view == this.menuSpeedBtn || view == this.menuModeBtn ||
                view == this.menuSubtitleBtn || view == this.menuChapterBtn ||
                view == this.menuSkipBtn || view == this.menuSubtitleSizeBtn) {
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

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (z) {
            ((DrawFrameLayout) view).setUpEnabled(true);
        } else {
            ((DrawFrameLayout) view).setUpEnabled(false);
        }
        for (int i = 0; i < 5; i++) {
            if (this.tab_buttons[i] == view && this.tab_buttons[i].getChildAt(0) != null)
                ((ShadowTextView) this.tab_buttons[i].getChildAt(0))
                        .setText((z ? "≪ " : "") + afm4.tab_names[MainMyFragment.MyMap[i]]);
        }
    }

    public final boolean b() {
        if (this.progressbar_button != null && this.progressbar_button.hasFocus()) {
            return false;
        }
        if (this.fastquit_button != null && this.fastquit_button.hasFocus()) {
            return false;
        }
        if (this.column2Button != null && this.column2Button.hasFocus()) {
            return false;
        }
        if (this.otherNormalButton != null && this.otherNormalButton.hasFocus()) {
            return false;
        }
        if (this.tabPersonalRecommend != null && this.tabPersonalRecommend.hasFocus()) {
            return false;
        }
        if (this.spaceDynamicButton != null && this.spaceDynamicButton.hasFocus()) {
            return false;
        }
        if (this.tab_buttons[0] != null && this.tab_buttons[0].hasFocus()) {
            return false;
        }
        if (this.menuQualityBtn != null && this.menuQualityBtn.hasFocus()) {
            return false;
        }
        return true;
    }

    public final boolean a() {
        if (this.progressbar_button == null) {
            return false;
        }
        if (!this.progressbar_button.hasFocus() && !this.fastquit_button.hasFocus() && !this.column2Button.hasFocus()
                && !this.column3Button.hasFocus() && !this.column4Button.hasFocus()
                && !this.otherNormalButton.hasFocus() && !this.otherCompactButton.hasFocus()
                && !this.spaceDynamicButton.hasFocus() && !this.spaceAllButton.hasFocus()) {
            boolean allTabsNoFocus = true;
            for (int i = 0; i < 5; i++) {
                if (this.tab_buttons[i] != null && this.tab_buttons[i].hasFocus()) {
                    allTabsNoFocus = false;
                    break;
                }
            }
            if (allTabsNoFocus && this.tabPersonalRecommend != null && this.tabPersonalRecommend.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.tabHotRecommend != null && this.tabHotRecommend.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.tabLive != null && this.tabLive.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.tabArea != null && this.tabArea.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.tabBangumi != null && this.tabBangumi.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.tabPgc != null && this.tabPgc.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuQualityBtn != null && this.menuQualityBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuDanmakuBtn != null && this.menuDanmakuBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuRatioBtn != null && this.menuRatioBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuAdjustBtn != null && this.menuAdjustBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuSizeBtn != null && this.menuSizeBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuAlphaBtn != null && this.menuAlphaBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuSpeedBtn != null && this.menuSpeedBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuModeBtn != null && this.menuModeBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuSubtitleBtn != null && this.menuSubtitleBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuChapterBtn != null && this.menuChapterBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuSkipBtn != null && this.menuSkipBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.menuSubtitleSizeBtn != null && this.menuSubtitleSizeBtn.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus) {
                this.fastquit_button.requestFocus();
                return true;
            }
        }
        return false;
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(bbg bbgVar) {
            this();
        }

        public final afm4 a() {
            return new afm4();
        }
    }
}