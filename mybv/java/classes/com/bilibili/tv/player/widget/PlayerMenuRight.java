package com.bilibili.tv.player.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import bl.aai;
import bl.aap;
import bl.aaw;
import bl.aax;
import bl.aay;
import bl.aaz;
import com.bilibili.tv.R;
import java.util.*;
import tv.danmaku.android.log.BLog;
import tv.danmaku.videoplayer.core.danmaku.DanmakuConfig;

import bl.aau;
import bl.aas;
import bl.aat;
import bl.aav;
import bl.abd;
import org.json.*;
import android.app.AlertDialog;
import android.util.Log;
import android.content.DialogInterface;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;

/* compiled from: BL */
/* loaded from: classes.dex */
public class PlayerMenuRight extends aay<String> {
    private Animation a;
    private Animation b;
    private boolean c;
    private a d;
    private List<String> main_list;
    private String f;
    private List<String> quality_list;
    private List<String> danmaku_list;
    private List<String> size_list;
    private List<String> alpha_list;
    private List<String> ratio_list;
    private List<String> adjust_list=Arrays.asList(new String[]{"旋转","镜像"});
    private int quality_id;
    private int danmaku_type;
    private int size_id;
    private int alpha_id;
    private int ratio_id;
    private int q;
    private Runnable r;

    public static int speed_id = -1;
    public static int mode_id = -1;
    public static int subtitle_id = -1;
    public static int subtitle_size_id = -1;
    public static int audio_balance_id = 0;
    public static int ebook_font_size_id = 4; // 默认字体大小索引（28px）
    public static int ebook_color_theme_id = 0; // 默认配色方案索引（System）
    public static int ebook_percent_id = 1; // 默认屏幕占比索引（30%）
    public static int video_position_id = 0; // 默认视频位置索引（左上）
    public List<String> speed_list;
    public List<String> mode_list;
    public List<String> subtitle_list;
    public List<String> subtitle_size_list;
    public List<String> chapter_list;
    public List<String> audio_balance_list;
    public List<String> ebook_font_size_list; // 电子书字体大小列表
    public List<String> ebook_color_theme_list; // 电子书配色方案列表
    public List<String> ebook_percent_list; // 电子书屏幕占比列表
    public List<String> video_position_list; // 视频位置列表
    public static boolean danmaku_valid_list[] = {false,true,false,false,true,true,true,true,false,false};
    public static int danmaku_level=0;

    // 弹幕开关状态缓存的key
    private static final String DANMAKU_PREFS_NAME = "danmaku_settings";
    private static final String DANMAKU_VALID_KEY = "danmaku_valid_list";

    // 记录弹幕关闭前的状态（用于恢复）
    private static boolean danmaku_last_valid_list[] = {false,true,false,false,true,true,true,true,false,false};
    private List<Integer> menuIndexMap;
    private ResolveResourceParams params;

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public interface a {
        void P();

        void a(float f);

        void b(float f);

        void c(boolean z);

        void e(int i);

        void f(int i);

        void adjust_screen(int i);

        void set_danmaku_type(int i);

        void switch_speed(float f);

        void refresh_subtitle();

        // 电子书功能：菜单关闭回调
        void onMenuClosed();

        void jumpToChapter(int chapterIndex);

        void showSkipSettingDialog();

        void set_audio_balance_level(int level);

        void set_subtitle_size(float f);

        // 新增：打开电子书阅读器
        void openEbookReader();

        // 新增：打开电子书文件选择器
        void openEbookFileChooser();

        // 新增：显示章节列表
        void showChapterList();

        // 新增：清空书架
        void clearBookshelf();

        // 新增：关闭当前书籍
        void closeCurrentBook();

        // 新增：切换控制目标
        void switchControlTarget(String target);

        // 新增：设置电子书字体大小
        void set_ebook_font_size(float fontSize);

        // 新增：设置电子书配色方案
        void set_ebook_color_theme(int themeIndex);

        // 新增：设置电子书屏幕占比
        void set_ebook_percent(int percentIndex);

        // 新增：设置视频位置
        void set_video_position(int positionIndex);
    }

    private void jumpToChapter(int chapterIndex) {
        // 实现章节跳转功能
        if (this.d != null && this.chapter_list != null && chapterIndex >= 0 && chapterIndex < this.chapter_list.size()) {
            // 检查是否是"无"，如果是则不做任何操作
            if ("无".equals(this.chapter_list.get(chapterIndex))) {
                return;
            }
            // 调用播放器接口进行跳转
            this.d.jumpToChapter(chapterIndex);
        }
    }

    public void init_chapter(JSONArray view_points) {
        this.chapter_list = new ArrayList<>();
        
        if (view_points == null || view_points.length() == 0) {
            this.chapter_list.add("无");
            return;
        }
        
        for (int i = 0; i < view_points.length(); i++) {
            JSONObject chapter = view_points.optJSONObject(i);
            if (chapter != null) {
                String content = chapter.optString("content", "");
                if (!TextUtils.isEmpty(content)) {
                    this.chapter_list.add(content);
                }
            }
        }
    }

    public void init_audio_balance(List<String> options, int currentId) {
        this.audio_balance_list = options;
        this.audio_balance_id = currentId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.aay
    public int b(int i) {
        return i != 2 ? R.layout.player_right_text_menu_item : R.layout.player_right_text_menu_item_2;
    }

    public PlayerMenuRight(Context context) {
        super(context);
        this.c = false;
        this.quality_id = 0;
        this.danmaku_type = 0;
        this.size_id = 0;
        this.alpha_id = 0;
        this.ratio_id = 0;
        this.q = 0;
        this.speed_id = -1;
        this.mode_id = -1;
        this.subtitle_id = -1;
        this.subtitle_size_id = -1;

        // 初始化电子书字体大小列表
        this.ebook_font_size_list = new ArrayList<>();
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

        // 初始化电子书配色方案列表
        this.ebook_color_theme_list = new ArrayList<>();
        this.ebook_color_theme_list.add("System");
        this.ebook_color_theme_list.add("Light");
        this.ebook_color_theme_list.add("Dark");
        this.ebook_color_theme_list.add("Sepia");
        this.ebook_color_theme_list.add("Slate");
        this.ebook_color_theme_list.add("OLED");

        // 读取缓存的弹幕开关状态
        loadDanmakuValidList();
    }

    public PlayerMenuRight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = false;
        this.quality_id = 0;
        this.danmaku_type = 0;
        this.size_id = 0;
        this.alpha_id = 0;
        this.ratio_id = 0;
        this.q = 0;
        this.speed_id = -1;
        this.mode_id = -1;
        this.subtitle_id = -1;
        this.subtitle_size_id = -1;

        // 读取缓存的弹幕开关状态
        loadDanmakuValidList();
    }

    public PlayerMenuRight(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = false;
        this.quality_id = 0;
        this.danmaku_type = 0;
        this.size_id = 0;
        this.alpha_id = 0;
        this.ratio_id = 0;
        this.q = 0;
        this.speed_id = -1;
        this.mode_id = -1;
        this.subtitle_id = -1;
        this.subtitle_size_id = -1;

        // 读取缓存的弹幕开关状态
        loadDanmakuValidList();
    }

    public void setListener(a aVar) {
        this.d = aVar;
    }

    public void setMenuIndexMap(List<Integer> map) {
        this.menuIndexMap = map;
    }

    // 缓存弹幕开关状态到SharedPreferences
    private void saveDanmakuValidList() {
        try {
            android.content.SharedPreferences prefs = MainApplication.a().getSharedPreferences(DANMAKU_PREFS_NAME, 0);
            android.content.SharedPreferences.Editor editor = prefs.edit();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < danmaku_valid_list.length; i++) {
                sb.append(danmaku_valid_list[i] ? "1" : "0");
                if (i < danmaku_valid_list.length - 1) {
                    sb.append(",");
                }
            }
            editor.putString(DANMAKU_VALID_KEY, sb.toString());
            editor.apply();
        } catch (Exception e) {
            Log.i("PlayerMenuRight", "缓存弹幕开关状态失败: " + e.getMessage());
            e.printStackTrace();
        }
    }

    // 从SharedPreferences读取弹幕开关状态
    public static void loadDanmakuValidList() {
        try {
            android.content.SharedPreferences prefs = MainApplication.a().getSharedPreferences(DANMAKU_PREFS_NAME, 0);
            String saved = prefs.getString(DANMAKU_VALID_KEY, null);

            if (saved != null && !saved.isEmpty()) {
                String[] parts = saved.split(",");
                for (int i = 0; i < parts.length && i < danmaku_valid_list.length; i++) {
                    danmaku_valid_list[i] = parts[i].equals("1");
                }
            }
        } catch (Exception e) {
            Log.i("PlayerMenuRight", "读取弹幕开关状态失败: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void setResolveParams(ResolveResourceParams params) {
        this.params = params;
    }
    
    private int getOriginalMenuIndex(int displayIndex) {
        // 电子书模式特殊处理
        if (menuIndexMap == null || menuIndexMap.isEmpty()) {
            // 电子书模式：将索引映射到父类能够识别的索引
            // 书架页面菜单：[控制视频, 选择文件, 清空书架, 屏幕占比, 视频位置, 退出阅读]
            // 阅读页面菜单：[控制视频, 章节列表, 字体大小, 配色方案, 屏幕占比, 关闭书籍]

            // 关键修复：判断页面类型应该使用电子书专属的列表
            // 阅读页面才有ebook_font_size_list和ebook_color_theme_list
            boolean isReadingPage = (ebook_font_size_list != null || ebook_color_theme_list != null);

            int result = -1;
            switch (displayIndex) {
                case 0: // 控制视频 - 没有二级菜单
                    result = -1;
                    break;
                case 1: // 章节列表/选择文件 - 没有二级菜单
                    result = -1;
                    break;
                case 2:
                    // 书架页面: 清空书架 → -1
                    // 阅读页面: 字体大小 → 4 (对应ebook_font_size_list)
                    result = isReadingPage ? 4 : -1;
                    break;
                case 3:
                    // 书架页面: 屏幕占比 → 10 (ebook_percent_list)
                    // 阅读页面: 配色方案 → 5 (对应ebook_color_theme_list)
                    result = isReadingPage ? 5 : 10;
                    break;
                case 4:
                    // 书架页面: 视频位置 → 13 (video_position_list)
                    // 阅读页面: 屏幕占比 → 10 (ebook_percent_list)
                    result = isReadingPage ? 10 : 13;
                    break;
                case 5:
                    // 书架页面: 退出阅读 → -1
                    // 阅读页面: 关闭书籍 → -1
                    result = -1;
                    break;
                default:
                    result = -1;
                    break;
            }
            return result;
        }

        // 视频模式：使用正常映射
        if (menuIndexMap != null && displayIndex >= 0 && displayIndex < menuIndexMap.size()) {
            int result = menuIndexMap.get(displayIndex);
            return result;
        }
        return displayIndex;
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
        if(this.speed_list != null && this.speed_list.contains(str)){
            textView.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View v) {
                    abd.set_speed_id(MainApplication.a().getApplicationContext(), i2);
                    a(i, i2, v, (ViewGroup)v.getParent(), str);
                    return true;
                }
            });
        }
        if(this.mode_list != null && this.mode_list.contains(str)){
            textView.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View v) {
                    abd.set_mode_id(MainApplication.a().getApplicationContext(), i2);
                    a(i, i2, v, (ViewGroup)v.getParent(), str);
                    return true;
                }
            });
        }
        if (i == 2) {
            try {
                int currentMenuIndex = getOriginalMenuIndex(this.q);
                boolean isCurrentItem = false;
                boolean isEbookMode = (menuIndexMap == null || menuIndexMap.isEmpty());

                // 关键重构：统一圆点标注逻辑，避免重复和混乱
                switch (currentMenuIndex) {
                    case 0: // 清晰度
                        if (this.quality_list != null && this.quality_id >= 0 && this.quality_id < this.quality_list.size()) {
                            isCurrentItem = this.quality_list.get(this.quality_id).equals(str);
                        }
                        break;
                    case 1: // 弹幕开关
                        if (this.danmaku_list != null) {
                            int w = this.danmaku_list.indexOf(str);

                            if (w != -1) {
                                boolean f = false;
                                for (int ii = 0; ii < 10; ii++) {
                                    if (danmaku_valid_list[ii]) f = true;
                                }

                                switch (w) {
                                    case 0:
                                        textView.getCompoundDrawables()[0].setAlpha(f ? DanmakuConfig.ALPHA_VALUE_MAX : 0);
                                        textView.setText(f ? "弹幕开" : "弹幕关");
                                        e(i, i2);
                                        return;
                                    case 1:
                                        textView.getCompoundDrawables()[0].setAlpha(0);
                                        textView.setText(str);
                                        return;
                                    case 2:
                                        boolean valid2 = danmaku_valid_list[1];
                                        textView.getCompoundDrawables()[0].setAlpha(valid2 ? DanmakuConfig.ALPHA_VALUE_MAX : 0);
                                        textView.setText(str);
                                        return;
                                    default:
                                        boolean validDefault = danmaku_valid_list[w + 1];
                                        textView.getCompoundDrawables()[0].setAlpha(validDefault ? DanmakuConfig.ALPHA_VALUE_MAX : 0);
                                        textView.setText(str);
                                        return;
                                }
                            }
                        }
                        break;
                    case 2: // 画面比例
                        if (this.ratio_list != null && this.ratio_id >= 0 && this.ratio_id < this.ratio_list.size()) {
                            isCurrentItem = this.ratio_list.get(this.ratio_id).equals(str);
                        }
                        break;
                    case 3: // 画面调整
                        break;
                    case 4: // 弹幕大小（视频模式）或 字体大小（电子书模式）
                        if (isEbookMode) {
                            // 电子书模式：字体大小
                            if (this.ebook_font_size_list != null && this.ebook_font_size_id >= 0 && this.ebook_font_size_id < this.ebook_font_size_list.size()) {
                                isCurrentItem = this.ebook_font_size_list.get(this.ebook_font_size_id).equals(str);
                            }
                        } else {
                            // 视频模式：弹幕大小
                            if (this.size_list != null && this.size_id >= 0 && this.size_id < this.size_list.size()) {
                                isCurrentItem = this.size_list.get(this.size_id).equals(str);
                            }
                        }
                        break;
                    case 5: // 弹幕透明度（视频模式）或 配色方案（电子书模式）
                        if (isEbookMode) {
                            // 电子书模式：配色方案
                            if (this.ebook_color_theme_list != null && this.ebook_color_theme_id >= 0 && this.ebook_color_theme_id < this.ebook_color_theme_list.size()) {
                                isCurrentItem = this.ebook_color_theme_list.get(this.ebook_color_theme_id).equals(str);
                            }
                        } else {
                            // 视频模式：弹幕透明度
                            if (this.alpha_list != null && this.alpha_id >= 0 && this.alpha_id < this.alpha_list.size()) {
                                isCurrentItem = this.alpha_list.get(this.alpha_id).equals(str);
                            }
                        }
                        break;
                    case 6: // 播放速度
                        if (this.speed_list != null && this.speed_id >= 0 && this.speed_id < this.speed_list.size()) {
                            isCurrentItem = this.speed_list.get(this.speed_id).equals(str);
                        }
                        break;
                    case 7: // 播放模式
                        if (this.mode_list != null && this.mode_id >= 0 && this.mode_id < this.mode_list.size()) {
                            isCurrentItem = this.mode_list.get(this.mode_id).equals(str);
                        }
                        break;
                    case 8: // 字幕
                        if (this.subtitle_list != null && this.subtitle_id >= 0 && this.subtitle_id < this.subtitle_list.size()) {
                            isCurrentItem = this.subtitle_list.get(this.subtitle_id).equals(str);
                        }
                        break;
                    case 9: // 章节列表
                        break;
                    case 10: // 屏幕占比（电子书模式）
                        if (this.ebook_percent_list != null && this.ebook_percent_id >= 0 && this.ebook_percent_id < this.ebook_percent_list.size()) {
                            isCurrentItem = this.ebook_percent_list.get(this.ebook_percent_id).equals(str);
                        }
                        break;
                    case 11: // 音频平衡
                        if (this.audio_balance_list != null && this.audio_balance_id >= 0 && this.audio_balance_id < this.audio_balance_list.size()) {
                            isCurrentItem = this.audio_balance_list.get(this.audio_balance_id).equals(str);
                        }
                        break;
                    case 12: // 字幕大小
                        if (this.subtitle_size_list != null && this.subtitle_size_id >= 0 && this.subtitle_size_id < this.subtitle_size_list.size()) {
                            isCurrentItem = this.subtitle_size_list.get(this.subtitle_size_id).equals(str);
                        }
                        break;
                    case 13: // 视频位置（电子书模式）
                        if (this.video_position_list != null && this.video_position_id >= 0 && this.video_position_id < this.video_position_list.size()) {
                            isCurrentItem = this.video_position_list.get(this.video_position_id).equals(str);
                        }
                        break;
                }

                // 设置圆点显示
                if (isCurrentItem) {
                    textView.getCompoundDrawables()[0].setAlpha(DanmakuConfig.ALPHA_VALUE_MAX);
                    // 关键：只对选中项调用焦点管理
                    e(i, i2);
                } else {
                    textView.getCompoundDrawables()[0].setAlpha(0);
                }
            } catch (IndexOutOfBoundsException unused) {
                BLog.e("PlayerMenuRight", "Menu data error, why?");
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
        aax<String> aaxVar = new aax<String>(getContext(), b(i)) { // from class: com.bilibili.tv.player.widget.PlayerMenuRight.1
            @Override // bl.aaw
            public void a(aaz aazVar, int i2, String str) {
                PlayerMenuRight.this.a(i, i2, aazVar, str);
            }
        };
        aaxVar.a(new aas(this,aaxVar));
        aaxVar.a(new aat(this,dimension2,color,i,dimension));
        return aaxVar;
    }

    public final /* synthetic */ boolean a(aax aaxVar, View view, View view2, int i, int i2, KeyEvent keyEvent) {
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
                return;
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
            this.r = new aau(this);
        }
        removeCallbacks(this.r);
        postDelayed(this.r, 5000L);
    }

    public final /* synthetic */ void b() {
        a(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.aay
    public boolean a(int i, int i2, View view, ViewGroup viewGroup, String str) {
        int i3;
        e();

        // 关键修复: 电子书专用菜单项处理必须在super.a()之前,避免触发二级菜单
        if (TextUtils.equals(str, "章节列表")) {
            a(false);  // 关闭菜单
            android.util.Log.i("EbookReader", "章节列表菜单项被点击");
            if (this.d != null) {
                this.d.showChapterList();
            }
            return true;
        }

        if (TextUtils.equals(str, "字体大小")) {
            android.util.Log.i("EbookReader", "字体大小菜单项被点击");
            // 关键修复：不要return false，让执行流继续到达super.a()以显示二级菜单
            // size_list已在xw.S()中通过init_size设置为字体大小列表
        }

        if (TextUtils.equals(str, "屏幕占比")) {
            android.util.Log.i("EbookReader", "屏幕占比菜单项被点击");
            // 关键修复：不要return false，让执行流继续到达super.a()以显示二级菜单
            // size_list已在xw.S()中通过init_percent设置为占比列表
        }

        if (TextUtils.equals(str, "选择文件")) {
            a(false);  // 关闭菜单
            android.util.Log.i("EbookReader", "选择文件菜单项被点击");
            if (this.d != null) {
                this.d.openEbookFileChooser();
            }
            return true;
        }

        if (TextUtils.equals(str, "清空书架")) {
            a(false);  // 关闭菜单
            android.util.Log.i("EbookReader", "清空书架菜单项被点击");
            if (this.d != null) {
                this.d.clearBookshelf();
            }
            return true;
        }

        if (TextUtils.equals(str, "退出阅读")) {
            a(false);  // 关闭菜单
            android.util.Log.i("EbookReader", "退出阅读菜单项被点击");
            this.d.openEbookReader(); // 再次调用会关闭电子书面板
            return true;
        }

        if (TextUtils.equals(str, "关闭书籍")) {
            a(false);  // 关闭菜单
            android.util.Log.i("EbookReader", "关闭书籍菜单项被点击");
            if (this.d != null) {
                this.d.closeCurrentBook(); // 关闭当前书籍，返回书架页面
            }
            return true;
        }

        if (TextUtils.equals(str, "关闭电子书")) {
            a(false);  // 关闭菜单
            android.util.Log.i("EbookReader", "关闭电子书菜单项被点击");
            this.d.openEbookReader(); // 再次调用会关闭电子书面板
            return true;
        }

        // 新增：控制视频菜单项点击处理（必须在super.a()之前，避免触发二级菜单）
        if (TextUtils.equals(str, "控制视频")) {
            a(false);
            this.d.switchControlTarget("video");
            android.util.Log.i("EbookReader", "控制视频菜单项被点击");
            return true;
        }

        // 新增：控制电子书菜单项点击处理（必须在super.a()之前，避免触发二级菜单）
        if (TextUtils.equals(str, "控制电子书")) {
            a(false);
            this.d.switchControlTarget("ebook");
            android.util.Log.i("EbookReader", "控制电子书菜单项被点击");
            return true;
        }

        if (super.a(i, i2, view, viewGroup, str)) {
            this.q = i2;
            View d = d(1, i2);
            if (d != null) {
                d.setSelected(true);
            }
            int originalIndex = getOriginalMenuIndex(i2);
            d(originalIndex);
            return true;
        }
        if (this.d == null) {
            i3 = 0;
        } else if (f()) {
            return false;
        } else {
            if (TextUtils.equals(str, "分集")) {
                a(false);
                this.d.P();
                return true;
            }
            // 新增：电子书菜单项点击处理
            if (TextUtils.equals(str, "电子书")) {
                a(false);
                this.d.openEbookReader();
                android.util.Log.i("PlayerMenuRight", "电子书菜单项被点击");
                return true;
            }
            if (this.quality_list.indexOf(str) == -1 || i2 == this.quality_id) {
                i3 = 0;
            } else {
                a(false);
                this.d.e(i2);
                i3 = this.quality_id;
                this.quality_id = i2;
            }
            if (this.danmaku_list.indexOf(str) != -1) {
                //i3 = this.danmaku_type;
                //this.danmaku_type = i2;
                switch(i2){
                    case 0:
                        boolean f = false;
                        for(int ii=0;ii<10;ii++){if(danmaku_valid_list[ii])f=true;}

                        if (f) {
                            // 当前弹幕开，记录当前状态并全部关闭
                            for(int ii=0;ii<10;ii++){
                                danmaku_last_valid_list[ii] = danmaku_valid_list[ii];
                            }
                            danmaku_valid_list[1]=danmaku_valid_list[4]=danmaku_valid_list[5]=danmaku_valid_list[6]=danmaku_valid_list[7]=false;
                        } else {
                            // 当前弹幕关，恢复之前的状态
                            for(int ii=0;ii<10;ii++){
                                danmaku_valid_list[ii] = danmaku_last_valid_list[ii];
                            }
                        }
                        break;
                    case 1:
                        String values[] = {"0","1","2","3","4","5","6","7","8","9","10"};
                        AlertDialog dialog = new AlertDialog.Builder(getContext())
                            .setTitle("弹幕屏蔽等级")
                            .setItems(values, new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    PlayerMenuRight.danmaku_level=which;
                                    ((TextView) viewGroup.getChildAt(1)).setText("屏蔽等级："+PlayerMenuRight.danmaku_level);
                                    PlayerMenuRight.this.d.refresh_subtitle();
                                }
                            }).create();
                        dialog.show();
                        return true;
                    case 2:
                        danmaku_valid_list[1]=!danmaku_valid_list[1];
                        break;
                    default:
                        danmaku_valid_list[i2+1]=!danmaku_valid_list[i2+1];
                        ((TextView) view).getCompoundDrawables()[0].setAlpha(danmaku_valid_list[i2+1]?DanmakuConfig.ALPHA_VALUE_MAX:0);
                        break;
                }
                boolean f = false;
                this.danmaku_type=0;
                for(int ii=0;ii<10;ii++){
                    if(danmaku_valid_list[ii]){this.danmaku_type+=1<<ii;f=true;}
                }
                ((TextView) viewGroup.getChildAt(0)).getCompoundDrawables()[0].setAlpha(f?DanmakuConfig.ALPHA_VALUE_MAX:0);
                ((TextView) viewGroup.getChildAt(0)).setText(f?"弹幕开":"弹幕关");
                ((TextView) viewGroup.getChildAt(2)).getCompoundDrawables()[0].setAlpha(danmaku_valid_list[1]?DanmakuConfig.ALPHA_VALUE_MAX:0);
                for(int ii=4;ii<8;ii++)((TextView) viewGroup.getChildAt(ii-1)).getCompoundDrawables()[0].setAlpha(danmaku_valid_list[ii]?DanmakuConfig.ALPHA_VALUE_MAX:0);
                this.d.refresh_subtitle();
                this.d.set_danmaku_type(this.danmaku_type);

                // 缓存弹幕开关状态
                saveDanmakuValidList();
                return true;
            }
            if (this.ratio_list.indexOf(str) != -1) {
                this.d.f(i2);
                i3 = this.ratio_id;
                this.ratio_id = i2;
            }
            if (this.adjust_list.indexOf(str) != -1) {
                this.d.adjust_screen(i2);
                return true;
            }
            int currentMenuIndex = getOriginalMenuIndex(this.q);
            // 电子书模式下跳过父类的size_list处理（因为电子书有自己的字体大小/屏幕占比处理）
            boolean isEbookMode = (menuIndexMap == null || menuIndexMap.isEmpty());
            if (!isEbookMode && this.size_list != null && this.size_list.indexOf(str) != -1 && currentMenuIndex == 4) {
                this.d.a(Float.valueOf(this.size_list.get(i2)).floatValue());
                i3 = this.size_id;
                this.size_id = i2;
            }
            if (this.alpha_list != null && this.alpha_list.indexOf(str) != -1) {
                // 关键修复：电子书模式下跳过alpha_list的视频弹幕透明度处理
                // 电子书模式下alpha_list用于配色方案，已在前面处理
                if (menuIndexMap == null || menuIndexMap.isEmpty()) {
                    // 电子书模式：不处理视频弹幕透明度
                    // 配色方案的处理在前面的set_ebook_color_theme逻辑中
                } else {
                    // 视频模式：正常处理弹幕透明度
                    this.d.b(Float.valueOf(this.alpha_list.get(i2).replace("f", "")).floatValue());
                    i3 = this.alpha_id;
                    this.alpha_id = i2;
                }
            }
            if (this.speed_list != null && this.speed_list.indexOf(str) != -1) {
                this.d.switch_speed(Float.valueOf(this.speed_list.get(i2).replace("x", "")).floatValue());
                i3 = this.speed_id;
                this.speed_id = i2;
            }
            if (this.mode_list != null && this.mode_list.indexOf(str) != -1) {
                i3 = this.mode_id;
                this.mode_id = i2;
            }
            if (this.subtitle_list != null && this.subtitle_list.indexOf(str) != -1) {
                i3 = this.subtitle_id;
                this.subtitle_id = i2;
                this.d.refresh_subtitle();
                saveSubtitleSettings();
            }
            if (this.subtitle_size_list != null && this.subtitle_size_list.indexOf(str) != -1 && currentMenuIndex == 12) {
                this.d.set_subtitle_size(Float.valueOf(this.subtitle_size_list.get(i2)).floatValue());
                i3 = this.subtitle_size_id;
                this.subtitle_size_id = i2;
                this.d.refresh_subtitle();
                saveSubtitleSettings();
            }
            // 新增：电子书字体大小处理
            // 关键修复：使用ebook_font_size_list而不是size_list
            if (isEbookMode &&
                this.ebook_font_size_list != null && this.ebook_font_size_list.indexOf(str) != -1 && currentMenuIndex == 4) {
                // 电子书模式下的字体大小选择
                this.d.set_ebook_font_size(Float.valueOf(this.ebook_font_size_list.get(i2)).floatValue());
                i3 = this.ebook_font_size_id;
                this.ebook_font_size_id = i2;
            }

            // 新增：电子书配色方案处理
            // 关键修复：使用ebook_color_theme_list而不是alpha_list
            if (isEbookMode &&
                this.ebook_color_theme_list != null && this.ebook_color_theme_list.indexOf(str) != -1 && currentMenuIndex == 5) {
                // 电子书模式下的配色方案选择
                this.d.set_ebook_color_theme(i2);
                i3 = this.ebook_color_theme_id;
                this.ebook_color_theme_id = i2;
            }

            // 新增：电子书屏幕占比处理
            // 电子书模式下，屏幕占比列表使用ebook_percent_list（独立列表）
            if (isEbookMode &&
                this.ebook_percent_list != null && this.ebook_percent_list.indexOf(str) != -1 && currentMenuIndex == 10) {
                // 电子书模式下的屏幕占比选择
                this.d.set_ebook_percent(i2);
                i3 = this.ebook_percent_id;
                this.ebook_percent_id = i2;
            }

            // 电子书模式下，视频位置列表使用video_position_list（独立列表）
            if (isEbookMode &&
                this.video_position_list != null && this.video_position_list.indexOf(str) != -1 && currentMenuIndex == 13) {
                // 电子书模式下的视频位置选择
                this.d.set_video_position(i2);
                i3 = this.video_position_id;
                this.video_position_id = i2;
            }

            if (this.chapter_list != null && this.chapter_list.contains(str)) {
                jumpToChapter(i2);
                return true;
            }
            if (TextUtils.equals(str, "跳过设置")) {
                a(false);
                this.d.showSkipSettingDialog();
                return true;
            }
            if (this.audio_balance_list != null && this.audio_balance_list.contains(str)) {
                i3 = this.audio_balance_id;
                this.audio_balance_id = i2;
                this.d.set_audio_balance_level(i2);
            }
        }
        TextView textView = (TextView) viewGroup.getChildAt(i3);
        if (textView != null) {
            android.graphics.drawable.Drawable[] drawables = textView.getCompoundDrawables();
            if (drawables != null && drawables[0] != null) {
                drawables[0].setAlpha(0);
            }
        }
        if (view instanceof TextView) {
            android.graphics.drawable.Drawable[] viewDrawables = ((TextView) view).getCompoundDrawables();
            if (viewDrawables != null && viewDrawables[0] != null) {
                viewDrawables[0].setAlpha(DanmakuConfig.ALPHA_VALUE_MAX);
            }
        }
        return true;
    }

    private boolean f() {
        // 关键修复：电子书模式下不需要quality_list等，直接返回false
        if (menuIndexMap == null || menuIndexMap.isEmpty()) {
            return false;
        }
        return this.main_list == null || this.quality_list == null || this.danmaku_list == null || this.ratio_list == null;
    }

    private void d(int i) {
        // 关键修复：电子书模式特殊处理
        if (menuIndexMap == null || menuIndexMap.isEmpty()) {
            // 电子书模式
            switch (i) {
                case 0:
                    aai.a(2);
                    return;
                case 1:
                    aai.a(1);
                    return;
                case 2:
                    aai.a(3);
                    return;
                case 4: // 字体大小
                    aai.a(3);
                    return;
                case 5: // 配色方案
                    aai.a(3);
                    return;
                case 10: // 屏幕占比
                    aai.a(3);
                    return;
                case 13: // 视频位置
                    aai.a(3);
                    return;
                default:
                    return;
            }
        } else {
            // 视频模式：保持原有逻辑
            switch (i) {
                case 0:
                    aai.a(2);
                    return;
                case 1:
                    aai.a(1);
                    return;
                case 2:
                    aai.a(3);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers from: protected */
    @Override // bl.aay
    public boolean a(int i, int i2) {
        int i3;
        boolean a2 = super.a(i, i2);
        int originalIndex = getOriginalMenuIndex(i2);

        // 电子书模式特殊处理
        // 注意：电子书模式使用menuIndexMap为空列表，所以i2就是菜单项的实际索引
        if (menuIndexMap == null || menuIndexMap.isEmpty()) {
            // 电子书模式
            // 关键修复：使用电子书专属列表判断页面类型，而不是alpha_list
            boolean isReadingPage = (ebook_font_size_list != null || ebook_color_theme_list != null);

            switch (i2) {
                case 0: // 控制视频
                    i3 = 0;
                    break;
                case 1: // 章节列表/选择文件
                    i3 = 0;
                    break;
                case 2:
                    // 书架页面: 清空书架 → 0
                    // 阅读页面: 字体大小 → ebook_font_size_id
                    i3 = isReadingPage ? this.ebook_font_size_id : 0;
                    break;
                case 3:
                    // 书架页面: 屏幕占比 → ebook_percent_id
                    // 阅读页面: 配色方案 → ebook_color_theme_id
                    i3 = isReadingPage ? this.ebook_color_theme_id : this.ebook_percent_id;
                    break;
                case 4:
                    // 书架页面: 退出阅读 → 0
                    // 阅读页面: 屏幕占比 → ebook_percent_id
                    i3 = isReadingPage ? this.ebook_percent_id : 0;
                    break;
                default:
                    i3 = 0;
                    break;
            }
        } else {
            // 视频模式
            switch (originalIndex) {
                case 0:
                    i3 = this.quality_id;
                    break;
                case 1:
                    i3 = 1;//i3 = this.danmaku_type;
                    break;
                case 2:
                    i3 = this.ratio_id;
                    break;
                case 4:
                    i3 = this.size_id;
                    break;
                case 5:
                    i3 = this.alpha_id;
                    break;
                case 6:
                    i3 = this.speed_id;
                    break;
                case 7:
                    i3 = this.mode_id;
                    break;
                case 8:
                    i3 = this.subtitle_id;
                    break;
                case 9:
                    i3 = 0; // 章节列表默认选中第一个
                    break;
                case 10:
                    i3 = 0; // 跳过设置
                    break;
                case 11:
                    i3 = this.audio_balance_id; // 音频平衡
                    break;
                case 12:
                    i3 = this.subtitle_size_id; // 字幕大小
                    break;
                case 13:
                    i3 = this.video_position_id; // 视频位置
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
        List<String> list;
        if (i > 1) {
            return null;
        }
        if (i < 1) {
            return this.main_list;
        }
        int originalIndex = getOriginalMenuIndex(i2);
        boolean isEbookMode = (menuIndexMap == null || menuIndexMap.isEmpty());

        if (TextUtils.isEmpty(this.f)) {
            switch (originalIndex) {
                case 0:
                    list = this.quality_list;
                    break;
                case 1:
                    list = this.danmaku_list;
                    break;
                case 2:
                    list = this.ratio_list;
                    break;
                case 3:
                    list = this.adjust_list;
                    break;
                case 4:
                    // 关键修复：电子书模式下返回电子书字体大小列表
                    list = isEbookMode ? this.ebook_font_size_list : this.size_list;
                    break;
                case 5:
                    // 关键修复：电子书模式下返回电子书配色方案列表
                    list = isEbookMode ? this.ebook_color_theme_list : this.alpha_list;
                    break;
                case 6:
                    list = this.speed_list;
                    break;
                case 7:
                    list = this.mode_list;
                    break;
                case 8:
                    list = this.subtitle_list;
                    break;
                case 9:
                    list = this.chapter_list;
                    break;
                case 10:
                    list = this.ebook_percent_list;
                    break;
                case 11:
                    list = this.audio_balance_list;
                    break;
                case 12:
                    list = this.subtitle_size_list;
                    break;
                case 13:
                    list = this.video_position_list;
                    break;
                default:
                    return null;
            }
            return list;
        }
        // 关键修复：this.f 不为空时，也需要返回所有二级菜单列表
        // 第二个分支应该与第一个分支保持一致，避免焦点和菜单显示异常
        switch (originalIndex) {
            case 0:
            default:
                return null;
            case 1:
                list = this.quality_list;
                break;
            case 2:
                list = this.danmaku_list;
                break;
            case 3:
                list = this.ratio_list;
                break;
            case 4:
                // 关键修复：电子书模式下返回电子书字体大小列表
                list = isEbookMode ? this.ebook_font_size_list : this.size_list;
                break;
            case 5:
                // 关键修复：电子书模式下返回电子书配色方案列表
                list = isEbookMode ? this.ebook_color_theme_list : this.alpha_list;
                break;
            case 6:
                list = this.speed_list;
                break;
            case 7:
                list = this.mode_list;
                break;
            case 8:
                list = this.subtitle_list;
                break;
            case 9:
                list = this.chapter_list;
                break;
            case 10:
                list = this.ebook_percent_list;
                break;
            case 11:
                list = this.audio_balance_list;
                break;
            case 12:
                list = this.subtitle_size_list;
                break;
            case 13:
                list = this.video_position_list;
                break;
        }
        return list;
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
        if (z) {
            if (this.a == null) {
                this.a = AnimationUtils.loadAnimation(getContext(), R.anim.in_from_right);
                this.a.setAnimationListener(new Animation.AnimationListener() { // from class: com.bilibili.tv.player.widget.PlayerMenuRight.2
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        PlayerMenuRight.this.setVisibility(0);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        PlayerMenuRight.this.e();
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
            this.b.setAnimationListener(new Animation.AnimationListener() { // from class: com.bilibili.tv.player.widget.PlayerMenuRight.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    PlayerMenuRight.this.a();
                    PlayerMenuRight.this.setVisibility(4);
                    PlayerMenuRight.this.c = false;

                    // 关键修复：菜单关闭时通知监听器（用于恢复电子书面板显示）
                    if (PlayerMenuRight.this.d != null) {
                        PlayerMenuRight.this.d.onMenuClosed();
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

    public void setEpisodeMenuString(String str) {
        this.f = str;
    }

    public void init_quality(List<String> list, int i) {
        this.quality_list = list;
        this.quality_id = i;
    }

    public void b(List<String> list, int i) {
        this.main_list = list;
    }

    public void init_danmaku(List<String> list, int i) {
        list.set(0, i>0?"弹幕开":"弹幕关");
        list.set(1, "屏蔽等级："+PlayerMenuRight.danmaku_level);
        this.danmaku_list = list;
        this.danmaku_type = i;
    }

    public void init_size(List<String> list, int i) {
        this.size_list = list;
        this.size_id = i;
    }

    public void init_alpha(List<String> list, int i) {
        this.alpha_list = list;
        this.alpha_id = i;
    }

    public void init_ratio(List<String> list, int i) {
        this.ratio_list = list;
        this.ratio_id = i;
    }

    public void init_percent(List<String> list, int i) {
        // 使用独立列表存储屏幕占比选项，不覆盖size_list（字体大小）
        this.ebook_percent_list = list;
        this.ebook_percent_id = i;
    }

    public void init_video_position(List<String> list, int i) {
        // 存储视频位置选项
        this.video_position_list = list;
        this.video_position_id = i;
    }

    public void clearEbookReadingPageLists() {
        // 清空阅读页面专属的列表，避免状态残留
        this.size_list = null;
        this.size_id = 0;
        this.alpha_list = null;
        this.alpha_id = 0;
        this.ebook_font_size_list = null;
        this.ebook_color_theme_list = null;
    }

    public void init_speed(List<String> list, int i) {
        this.speed_list = list;
        this.speed_id = i;
    }

    public void init_mode(List<String> list, int i) {
        this.mode_list = list;
        this.mode_id = i;
    }

    public void init_subtitle(JSONObject subtitle_info) {
        this.subtitle_list = new ArrayList<>();
        this.subtitle_list.add("关闭字幕");
        if(subtitle_info==null){
            this.subtitle_id = 0;
            return;
        }
        JSONArray subtitles = subtitle_info.optJSONArray("subtitles");
        for(int i=0;i<subtitles.length();i++)this.subtitle_list.add(subtitles.optJSONObject(i).optString("lan_doc"));

        int cachedId = getSubtitleIdFromCache();
        if (cachedId >= 0 && cachedId < this.subtitle_list.size()) {
            this.subtitle_id = cachedId;
        } else {
            if(subtitles.length()>0 && !subtitles.optJSONObject(0).optString("lan").startsWith("ai-"))this.subtitle_id = 1;
            else this.subtitle_id = 0;
        }
    }

    public void init_subtitle_size(List<String> list, int i) {
        this.subtitle_size_list = list;
        
        float cachedSize = getSubtitleSizeFromCache();
        if (cachedSize > 0) {
            int sizeIndex = list.indexOf(String.valueOf(cachedSize));
            if (sizeIndex >= 0) {
                this.subtitle_size_id = sizeIndex;
            } else {
                this.subtitle_size_id = 2;
            }
        } else {
            if(i == -1) i = 2;
            this.subtitle_size_id = i;
        }
    }

    private int getSubtitleIdFromCache() {
        if (params == null) {
            return -1;
        }

        int[] settings = null;

        if (!android.text.TextUtils.isEmpty(params.mListKey)) {
            String key = "subtitle_list_" + params.mListKey;
            settings = abd.getSubtitleSettings(getContext(), key);
        }

        if (settings == null) {
            String key = abd.getVideoSubtitleKey(params.mAvid);
            settings = abd.getSubtitleSettings(getContext(), key);
        }

        return settings != null ? settings[0] : -1;
    }

    private float getSubtitleSizeFromCache() {
        if (params == null) return -1.0f;
        
        int[] settings = null;
        
        if (!android.text.TextUtils.isEmpty(params.mListKey)) {
            settings = abd.getSubtitleSettings(getContext(), "subtitle_list_" + params.mListKey);
        }
        
        if (settings == null) {
            settings = abd.getSubtitleSettings(getContext(), abd.getVideoSubtitleKey(params.mAvid));
        }
        
        return settings != null ? settings[1] / 100.0f : -1.0f;
    }

    private void saveSubtitleSettings() {
        if (params == null) {
            return;
        }

        float subtitleSize = 0.7f;
        if (this.subtitle_size_id >= 0 && this.subtitle_size_id < this.subtitle_size_list.size()) {
            subtitleSize = Float.valueOf(this.subtitle_size_list.get(this.subtitle_size_id)).floatValue();
        }

        if (!android.text.TextUtils.isEmpty(params.mListKey)) {
            String listKey = "subtitle_list_" + params.mListKey;
            String videoKey = abd.getVideoSubtitleKey(params.mAvid);
            abd.setSubtitleSettings(getContext(), listKey, this.subtitle_id, subtitleSize);
            abd.clearSubtitleSettings(getContext(), videoKey);
        } else {
            String videoKey = abd.getVideoSubtitleKey(params.mAvid);
            abd.setSubtitleSettings(getContext(), videoKey, this.subtitle_id, subtitleSize);
        }
    }

    public void a(int i, int i2, long j) {
        postDelayed(new aav(this,i,i2), j);
    }

    public final /* synthetic */ void c(int i, int i2) {
        switch (i) {
            case 2:
                if (this.quality_id != i2) {
                    this.quality_id = i2;
                    c(2);
                    return;
                }
                return;
            case 3:
                if (this.danmaku_type != i2) {
                    this.danmaku_type = i2;
                    c(2);
                    return;
                }
                return;
            default:
                return;
        }
    }
}