package com.bilibili.tv.newplayer.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import bl.aap;
import bl.aaw;
import bl.aax;
import bl.aay;
import bl.aaz;
import com.bilibili.tv.R;
import com.bilibili.tv.ebook.ui.EbookMenuHelper;
import java.util.List;
import tv.danmaku.videoplayer.core.danmaku.DanmakuConfig;

/* compiled from: BL */
/* loaded from: classes.dex */
public class LivePlayerMenuRight extends aay<String> {
    private Animation a;
    private Animation b;
    private boolean c;
    private a d;
    private List<String> main_list;
    private List<String> danmaku_display_list;
    private List<String> size_list;
    private List<String> alpha_list;
    private List<String> mirror_list;
    private List<String> quality_list;
    private List<String> audio_balance_list;
    private int danmaku_display_id;
    private int size_id;
    private int alpha_id;
    private int mirror_id;
    private int quality_id;
    private int audio_balance_id;
    private int q;
    private Runnable r;

    // ===== 菜单项自定义显示（与点播页共用 player_menu_config 配置） =====
    // 直播主菜单固定顺序（原始下标）：
    // 0=弹幕开关 1=弹幕大小 2=弹幕透明 3=镜像 4=画质 5=音频平衡 6=电子书
    // 镜像 对应点播"画面调节"(MENU_ADJUST)，画质 对应点播"清晰度"(MENU_QUALITY)，
    // 其余项与点播同名菜单项对应
    private static final int MENU_ORIGINAL_DANMAKU_DISPLAY = 0;
    private static final int MENU_ORIGINAL_SIZE = 1;
    private static final int MENU_ORIGINAL_ALPHA = 2;
    private static final int MENU_ORIGINAL_MIRROR = 3;
    private static final int MENU_ORIGINAL_QUALITY = 4;
    private static final int MENU_ORIGINAL_AUDIO_BALANCE = 5;
    private static final int MENU_ORIGINAL_EBOOK = 6;
    private List<Integer> menuIndexMap; // 显示下标 -> 原始下标 映射（隐藏菜单项后保持功能不串位）

    // ===== 电子书模式支持（复用 EbookMenuHelper 统一菜单逻辑） =====
    private boolean isEbookMode = false; // 是否电子书模式
    private EbookMenuHelper.EbookActions ebookActions; // 电子书动作回调
    private List<String> ebook_font_size_list; // 电子书字体大小列表（阅读页）
    private List<String> ebook_color_theme_list; // 电子书配色方案列表（阅读页）
    private List<String> ebook_percent_list; // 电子书屏幕占比列表
    private List<String> ebook_video_position_list; // 电子书视频位置列表（书架页）
    private int ebook_font_size_id = 4; // 默认字体大小索引（28px）
    private int ebook_color_theme_id = 0; // 默认配色方案索引（System）
    private int ebook_percent_id = 1; // 默认屏幕占比索引（30%）
    private int ebook_video_position_id = 0; // 默认视频位置索引（左上）

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public interface a {
        void setDanmakuDisplay(boolean z);

        void setDanmakuSize(float f);

        void setDanmakuAlpha(float f);

        void toggleMirror();

        void setQuality(int i);

        void setAudioBalance(int i);

        void onMenuClosed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.aay
    public int b(int i) {
        return i != 2 ? R.layout.player_right_text_menu_item : R.layout.player_right_text_menu_item_2;
    }

    public LivePlayerMenuRight(Context context) {
        super(context);
        this.c = false;
        this.danmaku_display_id = 0;
        this.size_id = 0;
        this.alpha_id = 0;
        this.mirror_id = 0;
        this.quality_id = 0;
        this.audio_balance_id = 0;
        this.q = 0;
        // 与点播页右侧菜单一致：半透明黑色背景
        setBackgroundResource(R.color.black_80);
    }

    public LivePlayerMenuRight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = false;
        this.danmaku_display_id = 0;
        this.size_id = 0;
        this.alpha_id = 0;
        this.mirror_id = 0;
        this.quality_id = 0;
        this.audio_balance_id = 0;
        this.q = 0;
        setBackgroundResource(R.color.black_80);
    }

    public LivePlayerMenuRight(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = false;
        this.danmaku_display_id = 0;
        this.size_id = 0;
        this.alpha_id = 0;
        this.mirror_id = 0;
        this.quality_id = 0;
        this.audio_balance_id = 0;
        this.q = 0;
        setBackgroundResource(R.color.black_80);
    }

    public void setListener(a aVar) {
        this.d = aVar;
    }

    public void setMenuIndexMap(List<Integer> map) {
        this.menuIndexMap = map;
    }

    /**
     * 将菜单显示下标转换为原始功能下标
     * （与点播页 PlayerMenuRight.getOriginalMenuIndex 一致：
     * 隐藏菜单项后显示下标会变化，必须经 menuIndexMap 还原为原始下标再分发）
     */
    private int getOriginalMenuIndex(int displayIndex) {
        if (this.isEbookMode) {
            // 电子书模式菜单无隐藏项，显示下标即原始下标
            return displayIndex;
        }
        if (menuIndexMap != null && displayIndex >= 0 && displayIndex < menuIndexMap.size()) {
            return menuIndexMap.get(displayIndex);
        }
        // menuIndexMap 为 null 时无隐藏项，显示下标即原始下标；越界时返回 -1 避免串位
        return menuIndexMap == null ? displayIndex : -1;
    }

    // ===== 电子书模式菜单 =====

    /** 是否阅读页面（有字体/配色列表即为阅读页） */
    private boolean isEbookReadingPage() {
        return this.ebook_font_size_list != null || this.ebook_color_theme_list != null;
    }

    /**
     * 切换电子书模式菜单
     *
     * @param ebookMode    是否电子书模式
     * @param isReadingBook 是否正在阅读书籍（决定书架页/阅读页菜单）
     * @param actions      电子书动作回调（可复用同一个实例）
     */
    public void setEbookMode(boolean ebookMode, boolean isReadingBook, EbookMenuHelper.EbookActions actions) {
        this.isEbookMode = ebookMode;
        this.ebookActions = actions;

        if (!ebookMode) {
            // 退出电子书模式：清空电子书列表，主菜单由 LivePlayerController.initRightMenu 重建
            this.menuIndexMap = null; // 视频模式映射由 initRightMenu 重建
            this.ebook_font_size_list = null;
            this.ebook_color_theme_list = null;
            this.ebook_percent_list = null;
            this.ebook_video_position_list = null;
            return;
        }

        // 电子书模式主菜单（书架页/阅读页）
        this.main_list = EbookMenuHelper.buildEbookMenus(isReadingBook);
        this.menuIndexMap = null; // 电子书模式无隐藏项，getOriginalMenuIndex 直接返回显示下标

        android.content.SharedPreferences prefs = getContext()
                .getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);

        // 屏幕占比列表（书架页和阅读页都需要）
        this.ebook_percent_list = new java.util.ArrayList<>();
        this.ebook_percent_list.add("25%");
        this.ebook_percent_list.add("30%");
        this.ebook_percent_list.add("35%");
        this.ebook_percent_list.add("40%");
        this.ebook_percent_list.add("45%");
        this.ebook_percent_list.add("50%");
        int savedPercent = prefs.getInt("screen_percent", 1);
        if (savedPercent < 0 || savedPercent >= this.ebook_percent_list.size()) {
            savedPercent = 1;
        }
        this.ebook_percent_id = savedPercent;

        if (!isReadingBook) {
            // 书架页面：视频位置列表
            this.ebook_video_position_list = new java.util.ArrayList<>();
            this.ebook_video_position_list.add("左上");
            this.ebook_video_position_list.add("左下");
            this.ebook_video_position_list.add("右上");
            this.ebook_video_position_list.add("右下");
            int savedPos = prefs.getInt("video_position", 0);
            if (savedPos < 0 || savedPos >= this.ebook_video_position_list.size()) {
                savedPos = 0;
            }
            this.ebook_video_position_id = savedPos;
            this.ebook_font_size_list = null;
            this.ebook_color_theme_list = null;
        } else {
            // 阅读页面：字体大小列表
            this.ebook_font_size_list = new java.util.ArrayList<>();
            this.ebook_font_size_list.add("20");
            this.ebook_font_size_list.add("22");
            this.ebook_font_size_list.add("24");
            this.ebook_font_size_list.add("26");
            this.ebook_font_size_list.add("28");
            this.ebook_font_size_list.add("30");
            this.ebook_font_size_list.add("32");
            this.ebook_font_size_list.add("34");
            this.ebook_font_size_list.add("36");
            this.ebook_font_size_list.add("38");
            float savedFont = prefs.getFloat("font_size", 28f);
            int savedFontIndex = 4; // 默认索引（28px）
            for (int i = 0; i < this.ebook_font_size_list.size(); i++) {
                if (Float.valueOf(this.ebook_font_size_list.get(i)).floatValue() == savedFont) {
                    savedFontIndex = i;
                    break;
                }
            }
            this.ebook_font_size_id = savedFontIndex;

            // 阅读页面：配色方案列表
            this.ebook_color_theme_list = new java.util.ArrayList<>();
            this.ebook_color_theme_list.add("System");
            this.ebook_color_theme_list.add("Light");
            this.ebook_color_theme_list.add("Dark");
            this.ebook_color_theme_list.add("Sepia");
            this.ebook_color_theme_list.add("Slate");
            this.ebook_color_theme_list.add("OLED");
            int savedTheme = prefs.getInt("color_theme_index", 0);
            if (savedTheme < 0 || savedTheme >= this.ebook_color_theme_list.size()) {
                savedTheme = 0;
            }
            this.ebook_color_theme_id = savedTheme;
            this.ebook_video_position_list = null;
        }

        // 刷新主菜单列表
        c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.aay
    public void a(int i, int i2, aaz aazVar, String str) {
        TextView textView;
        if (f()) {
            return;
        }
        textView = (TextView) aazVar.c(R.id.text);
        if (textView == null) {
            return;
        }
        if (i == 2) {
            try {
                boolean isCurrentItem = false;
                if (this.isEbookMode) {
                    // 电子书模式：根据显示索引映射到电子书二级列表，判断当前选中项
                    boolean isReadingPage = isEbookReadingPage();
                    int currentMenuIndex = EbookMenuHelper.getOriginalMenuIndex(this.q, isReadingPage);
                    switch (currentMenuIndex) {
                        case 4: // 字体大小
                            if (this.ebook_font_size_list != null && this.ebook_font_size_id >= 0 && this.ebook_font_size_id < this.ebook_font_size_list.size()) {
                                isCurrentItem = this.ebook_font_size_list.get(this.ebook_font_size_id).equals(str);
                            }
                            break;
                        case 5: // 配色方案
                            if (this.ebook_color_theme_list != null && this.ebook_color_theme_id >= 0 && this.ebook_color_theme_id < this.ebook_color_theme_list.size()) {
                                isCurrentItem = this.ebook_color_theme_list.get(this.ebook_color_theme_id).equals(str);
                            }
                            break;
                        case 10: // 屏幕占比
                            if (this.ebook_percent_list != null && this.ebook_percent_id >= 0 && this.ebook_percent_id < this.ebook_percent_list.size()) {
                                isCurrentItem = this.ebook_percent_list.get(this.ebook_percent_id).equals(str);
                            }
                            break;
                        case 13: // 视频位置
                            if (this.ebook_video_position_list != null && this.ebook_video_position_id >= 0 && this.ebook_video_position_id < this.ebook_video_position_list.size()) {
                                isCurrentItem = this.ebook_video_position_list.get(this.ebook_video_position_id).equals(str);
                            }
                            break;
                        default:
                            break;
                    }
                } else {
                    switch (getOriginalMenuIndex(this.q)) {
                        case 0:
                            if (this.danmaku_display_list != null && this.danmaku_display_id >= 0 && this.danmaku_display_id < this.danmaku_display_list.size()) {
                                isCurrentItem = this.danmaku_display_list.get(this.danmaku_display_id).equals(str);
                            }
                            break;
                        case 1:
                            if (this.size_list != null && this.size_id >= 0 && this.size_id < this.size_list.size()) {
                                isCurrentItem = this.size_list.get(this.size_id).equals(str);
                            }
                            break;
                        case 2:
                            if (this.alpha_list != null && this.alpha_id >= 0 && this.alpha_id < this.alpha_list.size()) {
                                isCurrentItem = this.alpha_list.get(this.alpha_id).equals(str);
                            }
                            break;
                        case 3:
                            if (this.mirror_list != null && this.mirror_id >= 0 && this.mirror_id < this.mirror_list.size()) {
                                isCurrentItem = this.mirror_list.get(this.mirror_id).equals(str);
                            }
                            break;
                        case 4:
                            if (this.quality_list != null && this.quality_id >= 0 && this.quality_id < this.quality_list.size()) {
                                isCurrentItem = this.quality_list.get(this.quality_id).equals(str);
                            }
                            break;
                        case 5:
                            if (this.audio_balance_list != null && this.audio_balance_id >= 0 && this.audio_balance_id < this.audio_balance_list.size()) {
                                isCurrentItem = this.audio_balance_list.get(this.audio_balance_id).equals(str);
                            }
                            break;
                        default:
                            break;
                    }
                }
                if (isCurrentItem) {
                    textView.getCompoundDrawables()[0].setAlpha(DanmakuConfig.ALPHA_VALUE_MAX);
                    e(i, i2);
                } else {
                    textView.getCompoundDrawables()[0].setAlpha(0);
                }
            } catch (IndexOutOfBoundsException unused) {
                Log.i("LivePlayerMenuRight", "Menu data error, why?");
            }
        }
        textView.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.aay
    public aaw<String> a(final int i) {
        float dimension = getResources().getDimension(R.dimen.px_42);
        float dimension2 = getResources().getDimension(R.dimen.px_36);
        int color = getResources().getColor(R.color.white_50);
        final aax<String> aaxVar = new aax<String>(getContext(), b(i)) { // from class: com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.1
            @Override // bl.aaw
            public void a(aaz aazVar2, int i2, String str) {
                LivePlayerMenuRight.this.a(i, i2, aazVar2, str);
            }
        };
        aaxVar.a(new aax.b() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.2
            @Override // bl.aax.b
            public boolean a(View view, View view2, int i2, int i3, KeyEvent keyEvent) {
                return LivePlayerMenuRight.this.a(aaxVar, view, view2, i2, i3, keyEvent);
            }
        });
        aaxVar.a(new aax.a() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.3
            @Override // bl.aax.a
            public void a(View view, int i2, boolean z) {
                LivePlayerMenuRight.this.a(dimension2, color, i, dimension, view, i2, z);
            }
        });
        return aaxVar;
    }

    public final /* synthetic */ boolean a(aax<String> aaxVar, View view, View view2, int i, int i2, KeyEvent keyEvent) {
        if ((view instanceof RecyclerView) && keyEvent.getAction() == 0) {
            e();
            if (i2 == 21) {
                a(a(view), i, view2, (ViewGroup) view, (String) aaxVar.e().get(i));
                return true;
            } else if (i2 == 22) {
                int a2 = a(view);
                if (a2 == 2) {
                    e(1, this.q);
                    removeViewAt(0);
                } else if (a2 == 1) {
                    a(false);
                }
                return true;
            } else if (i == 0 && i2 == 19) {
                return true;
            } else if (i2 == 20) {
                RecyclerView recyclerView = (RecyclerView) view;
                RecyclerView.h layoutManager = recyclerView.getLayoutManager();
                int adapterPosition = layoutManager.d(view2);
                int itemCount = aaxVar.a();
                if (adapterPosition == itemCount - 1) {
                    return true;
                }
            }
        }
        return false;
    }

    public final /* synthetic */ void a(float f, int i, int i2, float f2, View view, int i3, boolean z) {
        TextView textView = (TextView) view;
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (!textView.isFocused()) {
            if (i2 == 2) {
                textView.setTextSize(0, f);
                textView.setTextColor(i);
            }
            return;
        }
        e();
        for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
            TextView textView2 = (TextView) viewGroup.getChildAt(i4);
            textView2.setTextSize(0, f);
            textView2.setTextColor(i);
        }
        if (i2 == 1) {
            textView.setTextSize(0, f2);
            if (this.q < viewGroup.getChildCount()) {
                viewGroup.getChildAt(this.q).setSelected(false);
            }
        }
        textView.setSelected(false);
        textView.setTextColor(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.r == null) {
            this.r = new Runnable() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.4
                @Override // java.lang.Runnable
                public void run() {
                    LivePlayerMenuRight.this.a(false);
                }
            };
        }
        removeCallbacks(this.r);
        postDelayed(this.r, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.aay
    public boolean a(int i, int i2, View view, ViewGroup viewGroup, String str) {
        e();

        // 电子书菜单项分发（必须在super.a()之前，避免触发二级菜单）
        // 动作型菜单项（章节列表/选择文件/清空书架/退出阅读/关闭书籍/控制视频/控制电子书/电子书）
        if (this.ebookActions != null && EbookMenuHelper.isEbookMenuItem(str)) {
            if (EbookMenuHelper.dispatch(str, this.ebookActions)) {
                a(false); // 关闭菜单
                return true;
            }
            // 需要二级菜单的项（字体大小/配色方案/屏幕占比/视频位置）继续执行super.a()
        }

        if (super.a(i, i2, view, viewGroup, str)) {
            this.q = i2;
            View d = d(1, i2);
            if (d != null) {
                d.setSelected(true);
            }
            return true;
        }
        if (this.d == null) {
            return false;
        }
        if (f()) {
            return false;
        }
        // 电子书模式：二级列表项处理（字体大小/配色方案/屏幕占比/视频位置）
        if (this.isEbookMode) {
            boolean isReadingPage = isEbookReadingPage();
            int currentMenuIndex = EbookMenuHelper.getOriginalMenuIndex(this.q, isReadingPage);
            if (this.ebook_font_size_list != null && this.ebook_font_size_list.indexOf(str) != -1 && currentMenuIndex == 4) {
                this.ebook_font_size_id = i2;
                if (this.ebookActions != null) {
                    this.ebookActions.setEbookFontSize(Float.valueOf(this.ebook_font_size_list.get(i2)).floatValue());
                }
                refreshDots(view, viewGroup);
                return true;
            }
            if (this.ebook_color_theme_list != null && this.ebook_color_theme_list.indexOf(str) != -1 && currentMenuIndex == 5) {
                this.ebook_color_theme_id = i2;
                if (this.ebookActions != null) {
                    this.ebookActions.setEbookColorTheme(i2);
                }
                refreshDots(view, viewGroup);
                return true;
            }
            if (this.ebook_percent_list != null && this.ebook_percent_list.indexOf(str) != -1 && currentMenuIndex == 10) {
                this.ebook_percent_id = i2;
                if (this.ebookActions != null) {
                    this.ebookActions.setEbookPercent(i2);
                }
                refreshDots(view, viewGroup);
                return true;
            }
            if (this.ebook_video_position_list != null && this.ebook_video_position_list.indexOf(str) != -1 && currentMenuIndex == 13) {
                this.ebook_video_position_id = i2;
                if (this.ebookActions != null) {
                    this.ebookActions.setVideoPosition(i2);
                }
                refreshDots(view, viewGroup);
                return true;
            }
            // 电子书模式下不匹配任何电子书二级列表的项，不进入视频菜单处理
            return false;
        }
        // 加固：以当前主菜单原始功能下标（this.q 经 menuIndexMap 还原）作为层级条件，
        // 避免隐藏菜单项后显示下标串位导致弹幕大小/透明度等二级菜单误触发其它分支（与点播页加固一致）
        int currentMenuIndex = getOriginalMenuIndex(this.q);
        if (currentMenuIndex == 0 && this.danmaku_display_list != null && this.danmaku_display_list.indexOf(str) != -1) {
            if (i2 != this.danmaku_display_id) {
                this.danmaku_display_id = i2;
                this.d.setDanmakuDisplay(i2 == 0);
                refreshDots(view, viewGroup);
            }
            return true;
        }
        if (currentMenuIndex == 1 && this.size_list != null && this.size_list.indexOf(str) != -1) {
            this.size_id = i2;
            this.d.setDanmakuSize(Float.valueOf(str).floatValue());
            refreshDots(view, viewGroup);
            return true;
        }
        if (currentMenuIndex == 2 && this.alpha_list != null && this.alpha_list.indexOf(str) != -1) {
            this.alpha_id = i2;
            this.d.setDanmakuAlpha(Float.valueOf(str).floatValue());
            refreshDots(view, viewGroup);
            return true;
        }
        if (currentMenuIndex == 3 && this.mirror_list != null && this.mirror_list.indexOf(str) != -1) {
            if (i2 != this.mirror_id) {
                this.mirror_id = i2;
                this.d.toggleMirror();
                refreshDots(view, viewGroup);
            }
            return true;
        }
        if (currentMenuIndex == 4 && this.quality_list != null && this.quality_list.indexOf(str) != -1) {
            if (i2 != this.quality_id) {
                this.quality_id = i2;
                a(false);
                this.d.setQuality(i2);
            }
            return true;
        }
        if (currentMenuIndex == 5 && this.audio_balance_list != null && this.audio_balance_list.indexOf(str) != -1) {
            if (i2 != this.audio_balance_id) {
                this.audio_balance_id = i2;
                this.d.setAudioBalance(i2);
                refreshDots(view, viewGroup);
            }
            return true;
        }
        return false;
    }

    private void refreshDots(View view, ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View child = viewGroup.getChildAt(i);
            if (child instanceof TextView) {
                android.graphics.drawable.Drawable[] drawables = ((TextView) child).getCompoundDrawables();
                if (drawables != null && drawables[0] != null) {
                    drawables[0].setAlpha(0);
                }
            }
        }
        if (view instanceof TextView) {
            android.graphics.drawable.Drawable[] viewDrawables = ((TextView) view).getCompoundDrawables();
            if (viewDrawables != null && viewDrawables[0] != null) {
                viewDrawables[0].setAlpha(DanmakuConfig.ALPHA_VALUE_MAX);
            }
        }
    }

    private boolean f() {
        return this.main_list == null || this.danmaku_display_list == null || this.size_list == null || this.alpha_list == null || this.mirror_list == null || this.quality_list == null || this.audio_balance_list == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.aay
    public boolean a(int i, int i2) {
        boolean a2 = super.a(i, i2);
        int i3;
        if (this.isEbookMode) {
            // 电子书模式：根据显示索引映射到电子书二级列表的选中索引
            boolean isReadingPage = isEbookReadingPage();
            int originalIndex = EbookMenuHelper.getOriginalMenuIndex(i2, isReadingPage);
            switch (originalIndex) {
                case 4:
                    i3 = this.ebook_font_size_id;
                    break;
                case 5:
                    i3 = this.ebook_color_theme_id;
                    break;
                case 10:
                    i3 = this.ebook_percent_id;
                    break;
                case 13:
                    i3 = this.ebook_video_position_id;
                    break;
                default:
                    i3 = 0;
                    break;
            }
        } else {
            switch (getOriginalMenuIndex(i2)) {
                case 0:
                    i3 = this.danmaku_display_id;
                    break;
                case 1:
                    i3 = this.size_id;
                    break;
                case 2:
                    i3 = this.alpha_id;
                    break;
                case 3:
                    i3 = this.mirror_id;
                    break;
                case 4:
                    i3 = this.quality_id;
                    break;
                case 5:
                    i3 = this.audio_balance_id;
                    break;
                default:
                    i3 = 0;
                    break;
            }
        }
        e(i + 1, i3);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.aay
    public List<String> b(int i, int i2) {
        if (i > 1) {
            return null;
        }
        if (i < 1) {
            return this.main_list;
        }
        if (this.isEbookMode) {
            // 电子书模式：根据显示索引映射到电子书二级列表
            boolean isReadingPage = isEbookReadingPage();
            int originalIndex = EbookMenuHelper.getOriginalMenuIndex(i2, isReadingPage);
            switch (originalIndex) {
                case 4: // 字体大小
                    return this.ebook_font_size_list;
                case 5: // 配色方案
                    return this.ebook_color_theme_list;
                case 10: // 屏幕占比
                    return this.ebook_percent_list;
                case 13: // 视频位置
                    return this.ebook_video_position_list;
                default:
                    return null;
            }
        }
        switch (getOriginalMenuIndex(i2)) {
            case 0:
                return this.danmaku_display_list;
            case 1:
                return this.size_list;
            case 2:
                return this.alpha_list;
            case 3:
                return this.mirror_list;
            case 4:
                return this.quality_list;
            case 5:
                return this.audio_balance_list;
            default:
                return null;
        }
    }

    @Override // bl.aay
    public void a() {
        View d = d(1, this.q);
        if (d != null) {
            d.setSelected(false);
        }
        super.a();
    }

    public void a(boolean z) {
        if (f()) {
            return;
        }
        if (this.c == z) {
            return;
        }
        if (z) {
            if (this.a == null) {
                this.a = AnimationUtils.loadAnimation(getContext(), R.anim.in_from_right);
                this.a.setAnimationListener(new Animation.AnimationListener() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.5
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        LivePlayerMenuRight.this.setVisibility(0);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        LivePlayerMenuRight.this.e();
                    }
                });
            }
            c();
            setVisibility(0);
            startAnimation(this.a);
            this.c = true;
            return;
        }
        if (this.b == null) {
            this.b = AnimationUtils.loadAnimation(getContext(), R.anim.out_to_right);
            this.b.setAnimationListener(new Animation.AnimationListener() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.6
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    LivePlayerMenuRight.this.a();
                    LivePlayerMenuRight.this.setVisibility(4);
                    LivePlayerMenuRight.this.c = false;
                    if (LivePlayerMenuRight.this.d != null) {
                        LivePlayerMenuRight.this.d.onMenuClosed();
                    }
                }
            });
        }
        this.b.cancel();
        startAnimation(this.b);
        aap.b(this);
    }

    @Override // android.view.View
    public boolean isShown() {
        return this.c;
    }

    public void init_main(List<String> list) {
        this.main_list = list;
    }

    public void init_danmaku_display(List<String> list, int i) {
        this.danmaku_display_list = list;
        this.danmaku_display_id = i;
    }

    public void init_size(List<String> list, int i) {
        this.size_list = list;
        this.size_id = i;
    }

    public void init_alpha(List<String> list, int i) {
        this.alpha_list = list;
        this.alpha_id = i;
    }

    public void init_mirror(List<String> list, int i) {
        this.mirror_list = list;
        this.mirror_id = i;
    }

    public void init_quality(List<String> list, int i) {
        this.quality_list = list;
        this.quality_id = i;
    }

    public void init_audio_balance(List<String> list, int i) {
        this.audio_balance_list = list;
        this.audio_balance_id = i;
    }

    public void updateAudioBalanceMenu(boolean hasAudioBalance) {
        if (this.main_list == null || this.isEbookMode) {
            return;
        }
        // 音频平衡菜单显示需同时满足：ExoPlayer 播放器 + 个性化设置开启 MENU_AUDIO_BALANCE
        boolean configEnabled = (bl.abd.get_player_menu_config(getContext()) & bl.abd.MENU_AUDIO_BALANCE) != 0;
        boolean showAudioBalance = hasAudioBalance && configEnabled;
        boolean contains = this.main_list.contains("音频平衡");
        if (showAudioBalance && !contains) {
            // 关键修复：插入到"电子书"菜单项之前（原始下标5），
            // 同时同步维护 menuIndexMap，与 b(int,int)/a(int,int)/圆点标注中原始下标映射保持一致
            int ebookIndex = this.main_list.indexOf(com.bilibili.tv.ebook.ui.EbookMenuHelper.MENU_OPEN_EBOOK);
            if (ebookIndex >= 0) {
                this.main_list.add(ebookIndex, "音频平衡");
                if (this.menuIndexMap != null && ebookIndex >= 0 && ebookIndex < this.menuIndexMap.size()) {
                    this.menuIndexMap.add(ebookIndex, MENU_ORIGINAL_AUDIO_BALANCE);
                }
            } else {
                this.main_list.add("音频平衡");
                if (this.menuIndexMap != null) {
                    this.menuIndexMap.add(MENU_ORIGINAL_AUDIO_BALANCE);
                }
            }
            c(1);
        } else if (!showAudioBalance && contains) {
            int idx = this.main_list.indexOf("音频平衡");
            this.main_list.remove("音频平衡");
            if (this.menuIndexMap != null && idx >= 0 && idx < this.menuIndexMap.size()) {
                this.menuIndexMap.remove(idx);
            }
            c(1);
        }
    }
}
