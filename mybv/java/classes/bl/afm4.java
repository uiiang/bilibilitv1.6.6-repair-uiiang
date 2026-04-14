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

    public static String[] tab_names = {"登录","动态","待看","收藏","历史"};
    private DrawFrameLayout[] tab_buttons = {null,null,null,null,null};
    private DrawFrameLayout column2Button;
    private DrawFrameLayout column3Button;
    private DrawFrameLayout column4Button;

    private DrawFrameLayout otherNormalButton;
    private DrawFrameLayout otherCompactButton;

    private DrawFrameLayout tabPersonalRecommend;
    private DrawFrameLayout tabHotRecommend;
    private DrawFrameLayout tabArea;
    private DrawFrameLayout tabBangumi;
    private DrawFrameLayout tabPgc;

    private DrawFrameLayout spaceDynamicButton;
    private DrawFrameLayout spaceAllButton;

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
        this.progressbar_button = (DrawFrameLayout)inflate.findViewById(R.id.progressbar_button);
        this.fastquit_button = (DrawFrameLayout)inflate.findViewById(R.id.fastquit_button);
        this.tab_buttons[0] = (DrawFrameLayout)inflate.findViewById(R.id.tab_button0);
        this.tab_buttons[1] = (DrawFrameLayout)inflate.findViewById(R.id.tab_button1);
        this.tab_buttons[2] = (DrawFrameLayout)inflate.findViewById(R.id.tab_button2);
        this.tab_buttons[3] = (DrawFrameLayout)inflate.findViewById(R.id.tab_button3);
        this.tab_buttons[4] = (DrawFrameLayout)inflate.findViewById(R.id.tab_button4);

        this.progressbar_button.setUpDrawable(R.drawable.shadow_white_rect);
        this.progressbar_button.setOnFocusChangeListener(this);
        this.fastquit_button.setUpDrawable(R.drawable.shadow_white_rect);
        this.fastquit_button.setOnFocusChangeListener(this);
        if(BiliFilter.progressbar_on){
            ((ShadowTextView)((ViewGroup)this.progressbar_button).getChildAt(0)).setText("开");
            this.progressbar_button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }
        if(BiliFilter.fastquit_on){
            ((ShadowTextView)((ViewGroup)this.fastquit_button).getChildAt(0)).setText("开");
            this.fastquit_button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }
        this.progressbar_button.setOnClickListener(this);
        this.fastquit_button.setOnClickListener(this);
        for(int i=0;i<5;i++){
            this.tab_buttons[i].setUpDrawable(R.drawable.shadow_white_rect);
            this.tab_buttons[i].setOnFocusChangeListener(this);
            this.tab_buttons[i].setOnClickListener(this);
            ((ShadowTextView)this.tab_buttons[i].getChildAt(0)).setText(afm4.tab_names[MainMyFragment.MyMap[i]]);
        }

        this.column2Button = (DrawFrameLayout)inflate.findViewById(R.id.column_2_button);
        this.column3Button = (DrawFrameLayout)inflate.findViewById(R.id.column_3_button);
        this.column4Button = (DrawFrameLayout)inflate.findViewById(R.id.column_4_button);
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

        this.otherNormalButton = (DrawFrameLayout)inflate.findViewById(R.id.other_normal_button);
        this.otherCompactButton = (DrawFrameLayout)inflate.findViewById(R.id.other_compact_button);
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

        this.tabPersonalRecommend = (DrawFrameLayout)inflate.findViewById(R.id.tab_personal_recommend);
        this.tabHotRecommend = (DrawFrameLayout)inflate.findViewById(R.id.tab_hot_recommend);
        this.tabArea = (DrawFrameLayout)inflate.findViewById(R.id.tab_area);
        this.tabBangumi = (DrawFrameLayout)inflate.findViewById(R.id.tab_bangumi);
        this.tabPgc = (DrawFrameLayout)inflate.findViewById(R.id.tab_pgc);

        this.tabPersonalRecommend.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabHotRecommend.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabArea.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabBangumi.setUpDrawable(R.drawable.shadow_white_rect);
        this.tabPgc.setUpDrawable(R.drawable.shadow_white_rect);

        this.tabPersonalRecommend.setOnFocusChangeListener(this);
        this.tabHotRecommend.setOnFocusChangeListener(this);
        this.tabArea.setOnFocusChangeListener(this);
        this.tabBangumi.setOnFocusChangeListener(this);
        this.tabPgc.setOnFocusChangeListener(this);

        this.tabPersonalRecommend.setOnClickListener(this);
        this.tabHotRecommend.setOnClickListener(this);
        this.tabArea.setOnClickListener(this);
        this.tabBangumi.setOnClickListener(this);
        this.tabPgc.setOnClickListener(this);

        int topTabConfig = abd.get_top_tab_config(getActivity());
        updateTopTabButtonState(this.tabPersonalRecommend, (topTabConfig & abd.TAB_PERSONAL_RECOMMEND) != 0);
        updateTopTabButtonState(this.tabHotRecommend, (topTabConfig & abd.TAB_HOT_RECOMMEND) != 0);
        updateTopTabButtonState(this.tabArea, (topTabConfig & abd.TAB_AREA) != 0);
        updateTopTabButtonState(this.tabBangumi, (topTabConfig & abd.TAB_BANGUMI) != 0);
        updateTopTabButtonState(this.tabPgc, (topTabConfig & abd.TAB_PGC) != 0);

        this.spaceDynamicButton = (DrawFrameLayout)inflate.findViewById(R.id.space_dynamic_button);
        this.spaceAllButton = (DrawFrameLayout)inflate.findViewById(R.id.space_all_button);
        this.spaceDynamicButton.setUpDrawable(R.drawable.shadow_white_rect);
        this.spaceAllButton.setUpDrawable(R.drawable.shadow_white_rect);
        this.spaceDynamicButton.setOnFocusChangeListener(this);
        this.spaceAllButton.setOnFocusChangeListener(this);
        this.spaceDynamicButton.setOnClickListener(this);
        this.spaceAllButton.setOnClickListener(this);

        int spaceMode = abd.get_space_dynamic_mode(getActivity());
        if (spaceMode == abd.SPACE_MODE_DYNAMIC) {
            this.spaceDynamicButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            this.spaceAllButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        } else {
            this.spaceDynamicButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            this.spaceAllButton.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        }

        return inflate;
    }

    private void updateTopTabButtonState(DrawFrameLayout button, boolean enabled) {
        if (enabled) {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
        } else {
            button.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if(view == this.progressbar_button){
            if(BiliFilter.progressbar_on){
                ((ShadowTextView)((ViewGroup)view).getChildAt(0)).setText("关");
                view.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            }
            else{
                ((ShadowTextView)((ViewGroup)view).getChildAt(0)).setText("开");
                view.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            }
            BiliFilter.progressbar_on=!BiliFilter.progressbar_on;
            abd.set_personal_config(MainApplication.a().getApplicationContext(),"progressbar_on",BiliFilter.progressbar_on);
        }
        if(view == this.fastquit_button){
            if(BiliFilter.fastquit_on){
                ((ShadowTextView)((ViewGroup)view).getChildAt(0)).setText("关");
                view.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_10);
            }
            else{
                ((ShadowTextView)((ViewGroup)view).getChildAt(0)).setText("开");
                view.setBackgroundResource(R.drawable.shape_rectangle_trans_with_12corner_white_50);
            }
            BiliFilter.fastquit_on=!BiliFilter.fastquit_on;
            abd.set_personal_config(MainApplication.a().getApplicationContext(),"fastquit_on",BiliFilter.fastquit_on);
        }
        for(int i=0;i<5;i++){
            if(this.tab_buttons[i]==view){
                int t=MainMyFragment.MyMap[i];
                for(int j=i-1;j>=0;j--)MainMyFragment.MyMap[j+1]=MainMyFragment.MyMap[j];
                MainMyFragment.MyMap[0]=t;
                abd.set_personal_config(MainApplication.a(),"myarea_map",JSON.toJSON(MainMyFragment.MyMap));
                for(int j=0;j<5;j++)((ShadowTextView)this.tab_buttons[j].getChildAt(0)).setText((j==i?"≪ ":"")+afm4.tab_names[MainMyFragment.MyMap[j]]);
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
            view == this.tabArea || view == this.tabBangumi || view == this.tabPgc) {
            int config = abd.get_top_tab_config(getActivity());
            int flag = 0;
            if (view == this.tabPersonalRecommend) flag = abd.TAB_PERSONAL_RECOMMEND;
            else if (view == this.tabHotRecommend) flag = abd.TAB_HOT_RECOMMEND;
            else if (view == this.tabArea) flag = abd.TAB_AREA;
            else if (view == this.tabBangumi) flag = abd.TAB_BANGUMI;
            else if (view == this.tabPgc) flag = abd.TAB_PGC;

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
            updateTopTabButtonState((DrawFrameLayout)view, !wasEnabled);
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
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (z) {
            ((DrawFrameLayout)view).setUpEnabled(true);
        } else {
            ((DrawFrameLayout)view).setUpEnabled(false);
        }
        for(int i=0;i<5;i++){
            if(this.tab_buttons[i]==view && this.tab_buttons[i].getChildAt(0)!=null)((ShadowTextView)this.tab_buttons[i].getChildAt(0)).setText((z?"≪ ":"")+afm4.tab_names[MainMyFragment.MyMap[i]]);
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
        return true;
    }

    public final boolean a() {
        if (this.progressbar_button == null) {
            return false;
        }
        if (!this.progressbar_button.hasFocus() && !this.fastquit_button.hasFocus() && !this.column2Button.hasFocus() && !this.column3Button.hasFocus() && !this.column4Button.hasFocus() && !this.otherNormalButton.hasFocus() && !this.otherCompactButton.hasFocus() && !this.spaceDynamicButton.hasFocus() && !this.spaceAllButton.hasFocus()) {
            boolean allTabsNoFocus = true;
            for(int i=0;i<5;i++){
                if(this.tab_buttons[i] != null && this.tab_buttons[i].hasFocus()){
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
            if (allTabsNoFocus && this.tabArea != null && this.tabArea.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.tabBangumi != null && this.tabBangumi.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus && this.tabPgc != null && this.tabPgc.hasFocus()) {
                allTabsNoFocus = false;
            }
            if (allTabsNoFocus) {
                this.progressbar_button.requestFocus();
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