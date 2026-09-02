package com.bilibili.tv.ui.auth;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;

import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import bl.adl;
import bl.ady;
import bl.abd;
import bl.adv;
import bl.adz;
import bl.agd;
import bl.bbi;
import bl.lr;
import bl.vn;
import bl.vo;
import bl.aj;
import bl.ach;
import bl.nv;
import bl.adh;
import com.bilibili.tv.R;
import com.bilibili.tv.widget.DrawTextView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;
import mybl.CookieUtil;
import mybl.LogUtil;
import mybl.MyBiliApiService;
import com.bilibili.tv.api.auth.BiliSpaceVideo;
import com.bilibili.tv.util.DateHelper;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;
import bl.mg;
import bl.vo;

public final class AuthSpaceVideoFragment extends ady {
  private static final String TAG = "AuthSpaceVideo";
  private static final int COLUMNS = 2;
  private c adapter;
  private b callback;
  private boolean loading = false;
  private Long cursor = null;
  private int page = 1;
  private boolean hasMore = true;
  private boolean firstLoad = false;
  private long mid;
  private String mode;
  private long targetId;
  private String upName; // UP 主名称
  private String dynamicOffset = null; // 动态模式分页偏移
  
  // Header 相关视图
  private View headerLayout;
  private TextView headerTitle;
  private TextView headerCount;
  public DrawTextView attentionButton;
  public DrawTextView locateButton;
  private TextView hintSort;
  
  // ===== 定位模式状态（参考BT UpSpaceActivity J/K/L/M/N/O/P/Q/R）=====
  private long locateAid = 0L;             // 目标视频aid（详情页传入）
  private String locateBvid = null;        // 目标视频bvid（aid为0时兜底匹配）
  private String locateTitle = null;       // 目标视频标题（跳转按钮焦点浮动提示用）
  private PopupWindow locateTipWindow; // 跳转按钮焦点浮动提示
  private boolean locateMode = false;      // J：定位模式激活
  private boolean locateNavigated = false; // K：用户已按键导航过（开启双向翻页触发）
  private boolean locateHasMoreUp = false; // L：向上（更新方向）还有更多
  private boolean locateHasMoreDown = false; // M：向下（更旧方向）还有更多
  private boolean locatingUp = false;      // N：向上加载中
  private boolean locatingDown = false;    // O：向下加载中
  private boolean locatingRemote = false;  // 远程定位在途（屏蔽正常分页响应）
  private long locateNewestAid = 0L;       // P：列表头部（最新）aid游标，向上加载时作oid
  private long locateOldestAid = 0L;       // Q：列表尾部（最旧）aid游标，向下加载时作oid
  private int locateGeneration = 0;        // R：定位请求代次号（切排序/复位时++作废在途请求）
  private boolean pendingLocate = false;   // 切换排序后首屏加载完成自动执行定位
  private static final int LOCATE_PS = 15;
  
  // 视频总数（用于 header 显示）
  private int totalCount = 0;
  
  // 排序参数
  // 全部视频模式: order, click=最多播放, pubdate=最新发布
  // 合集模式: sort_reverse, true=默认排序, false=倒序排序
  // 系列模式: sort, desc=默认排序, asc=倒序排序
  private String allVideoOrder = null;  // 全部视频模式排序，null=默认排序(按aid倒序)
  private boolean sortReverse = true;  // 合集模式排序
  private String sortDirection = "desc";  // 系列模式排序

  public static AuthSpaceVideoFragment newInstance(String mode, long mid, long id) {
    AuthSpaceVideoFragment f = new AuthSpaceVideoFragment();
    f.mode = mode;
    f.mid = mid;
    f.targetId = id;
    return f;
  }
  
  public static AuthSpaceVideoFragment newInstance(String mode, long mid, long id, String upName) {
    AuthSpaceVideoFragment f = new AuthSpaceVideoFragment();
    f.mode = mode;
    f.mid = mid;
    f.targetId = id;
    f.upName = upName;
    return f;
  }

  /** 带定位参数的实例：从视频详情页进入UP空间时启用"定位至当前视频" */
  public static AuthSpaceVideoFragment newInstance(String mode, long mid, long id, String upName,
      long locateAid, String locateBvid, String locateTitle) {
    AuthSpaceVideoFragment f = newInstance(mode, mid, id, upName);
    f.locateAid = locateAid;
    f.locateBvid = locateBvid;
    f.locateTitle = locateTitle;
    return f;
  }

  @Override
  public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle bundle) {
    View rootView = inflater.inflate(R.layout.fragment_auth_space_video, container, false);
    this.headerLayout = rootView.findViewById(R.id.space_header_layout);
    this.headerTitle = (TextView) rootView.findViewById(R.id.header_title);
    this.headerCount = (TextView) rootView.findViewById(R.id.header_count);
    this.attentionButton = (DrawTextView) rootView.findViewById(R.id.attention);
    this.locateButton = (DrawTextView) rootView.findViewById(R.id.locate_current);
    this.hintSort = (TextView) rootView.findViewById(R.id.hint_sort);
    return rootView;
  }

  @Override
  public void onDestroyView() {
    hideLocateTip();
    super.onDestroyView();
  }

  @Override
  public void onViewCreated(View view, Bundle bundle) {
    super.onViewCreated(view, bundle);
  }

  @Override
  public void a(RecyclerView recyclerView, Bundle bundle) {
    super.a(recyclerView, bundle);
    this.mRecyclerView = recyclerView;
    SideRightGridLayoutManger lm = new SideRightGridLayoutManger(getActivity(), COLUMNS);
    FragmentActivity activity = getActivity();
    if (activity == null)
      return;
    lm.a(new e((AuthSpaceSideActivity) activity));
    recyclerView.setLayoutManager(lm);
    int gap = adl.b(R.dimen.px_4);
    int margin = adl.b(R.dimen.px_10);
    int pad = adl.b(R.dimen.px_30);
    int paddingBottom = adl.b(R.dimen.px_306);
    recyclerView.setPadding(pad, pad, pad, paddingBottom);
    recyclerView.a(new f(margin, gap));
    recyclerView.a(new g(lm));
    this.adapter = new c();
    this.adapter.setOuter(this);
    recyclerView.setAdapter(this.adapter);
    this.callback = new b();
    
    // 初始化 header 和关注按钮
    initHeader();
    
    // 初始化完成后加载数据
    i();
    b();
  }

  // 保存 RecyclerView 引用，用于外部判断是否在底部
  public RecyclerView mRecyclerView;

  // expose loading state
  public boolean isLoading() {
    return this.loading;
  }
  
  private void initHeader() {
    if ("all".equals(mode) || "dynamic".equals(mode)) {
      if (headerTitle != null) {
        if (upName != null && !upName.isEmpty()) {
          headerTitle.setText(upName);
        } else {
          headerTitle.setText(String.valueOf(mid));
        }
      }
      setupAttentionButton();
      // 定位按钮：仅"全部视频"模式且带定位参数、已登录时显示
      setupLocateButton();
      if (headerCount != null) {
        headerCount.setText(totalCount > 0 ? totalCount + "条" : "");
      }
      if (hintSort != null) {
        hintSort.setVisibility("all".equals(mode) ? View.VISIBLE : View.GONE);
      }
    } else if (isSeasonOrSeriesMode()) {
      if (headerTitle != null) {
        headerTitle.setText("加载中...");
      }
      if (attentionButton != null) {
        attentionButton.setVisibility(View.GONE);
      }
      if (headerCount != null) {
        headerCount.setText(totalCount > 0 ? totalCount + "个视频" : "");
      }
      if (hintSort != null) {
        hintSort.setVisibility(View.VISIBLE);
      }
    }
  }
  
  private void setupAttentionButton() {
    if (attentionButton == null) return;
    attentionButton.setVisibility(View.VISIBLE);
    attentionButton.setUpDrawable(R.drawable.shadow_red_rect);
    attentionButton.setOnFocusChangeListener(new View.OnFocusChangeListener() {
      @Override
      public void onFocusChange(View view, boolean z) {
        ((DrawTextView) view).setUpEnabled(z);
      }
    });
    attentionButton.setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        showRelationTagMenu();
      }
    });
    
    mg account = mg.a(getActivity());
    if (account != null) {
      String cookie = CookieUtil.getFullCookieWithDevice(account);
      ((MyBiliApiService) vo.a(MyBiliApiService.class)).getRelation(mid, cookie)
        .a(new vn<JSONObject>() {
          @Override
          public void a(JSONObject response) {
            int attribute = response.getIntValue("attribute");
            if (attribute == 2 || attribute == 6) {
              attentionButton.setText("已关注");
            }
          }

          @Override
          public void onError(Throwable th) {}

          @Override
          public boolean isCancel() {
            return getActivity() == null || getActivity().isFinishing();
          }
        });
    }
  }
  
  private void showRelationTagMenu() {
    Activity activity = getActivity();
    if (activity == null) return;
    mg account = mg.a(activity);
    if (account == null || !account.a()) {
      lr.b(getContext(), "账号未登录");
      return;
    }
    RelationTagMenuDialog dialog = new RelationTagMenuDialog(activity, mid);
    dialog.setOnTagsChangedListener(new RelationTagMenuDialog.OnTagsChangedListener() {
      @Override
      public void onTagsChanged(List<Long> selectedTagIds, boolean isFollowed) {
        Log.i(TAG, "Selected tags: " + selectedTagIds + ", isFollowed: " + isFollowed);
        updateAttentionButton(isFollowed);
      }
    });
    dialog.show();
  }

  private void updateAttentionButton(boolean isFollowed) {
    if (attentionButton != null) {
      attentionButton.setText(isFollowed ? "已关注" : "＋关注");
      attentionButton.setUpDrawable(R.drawable.shadow_red_rect);
    }
  }

  // ==================== 定位至当前视频（移植自BT UpSpaceActivity） ====================

  /** 定位按钮初始化：仅"全部视频"模式 + 带定位参数 + 已登录时显示 */
  private void setupLocateButton() {
    if (locateButton == null) return;
    boolean show = locateAid > 0 && "all".equals(mode) && mg.a(getActivity()) != null;
    locateButton.setVisibility(show ? View.VISIBLE : View.GONE);
    if (!show) return;
    locateButton.setUpDrawable(R.drawable.shadow_red_rect);
    locateButton.setOnFocusChangeListener(new View.OnFocusChangeListener() {
      @Override
      public void onFocusChange(View view, boolean z) {
        ((DrawTextView) view).setUpEnabled(z);
        if (z) showLocateTip(); else hideLocateTip();
      }
    });
    locateButton.setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        locateToCurrent();
      }
    });
  }

  /** 跳转按钮焦点浮动提示：按钮下方显示"跳转到+视频标题" */
  private void showLocateTip() {
    hideLocateTip();
    if (locateTitle == null || locateTitle.isEmpty() || locateButton.getWidth() <= 0) return;
    TextView tip = new TextView(getActivity());
    tip.setText("跳转到" + locateTitle);
    tip.setTextSize(TypedValue.COMPLEX_UNIT_PX, adl.b(R.dimen.px_28));
    tip.setTextColor(adl.d(R.color.white));
    tip.setBackgroundResource(R.drawable.shape_rectangle_with_8corner_black_90);
    int padX = adl.b(R.dimen.px_18);
    int padY = adl.b(R.dimen.px_10);
    tip.setPadding(padX, padY, padX, padY);
    // 超长标题自动换行完整显示：限制最大宽度为屏幕宽度的30%
    tip.setMaxWidth((int) (getResources().getDisplayMetrics().widthPixels * 0.3f));
    locateTipWindow = new PopupWindow(tip, ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    locateTipWindow.setOutsideTouchable(false);
    locateTipWindow.showAsDropDown(locateButton, 0, adl.b(R.dimen.px_4));
  }

  private void hideLocateTip() {
    if (locateTipWindow != null) {
      try { locateTipWindow.dismiss(); } catch (Exception ignored) {}
      locateTipWindow = null;
    }
  }

  /** 定位模式中用户按键导航过（等价BT的K标志置位，由 Activity.dispatchKeyEvent 调用） */
  public void onUserNavigate() {
    if (locateMode) {
      locateNavigated = true;
    }
  }

  /** 定位入口：优先本地已加载列表查找，未找到再远程定位 */
  private void locateToCurrent() {
    if (locateAid <= 0 || loading) return;
    // 定位仅在"最新发布(pubdate)"时间序下有意义；非 pubdate 先切排序，首屏完成后自动定位
    if (!"pubdate".equals(allVideoOrder)) {
      if (pendingLocate) return;
      pendingLocate = true;
      setSortOrder("pubdate");
      return;
    }
    int idx = findLocateIndex();
    if (idx >= 0) {
      enterLocateMode();
      scrollToLocate(idx);
      return;
    }
    remoteLocate();
  }

  /** 在已加载列表中查找目标视频位置 */
  private int findLocateIndex() {
    if (adapter == null) return -1;
    List<BiliSpaceVideo> data = adapter.getData();
    for (int i = 0; i < data.size(); i++) {
      if (isLocateTarget(data.get(i))) return i;
    }
    return -1;
  }

  private boolean isLocateTarget(BiliSpaceVideo v) {
    if (v == null) return false;
    if (locateAid > 0) return v.aid == locateAid;
    return locateBvid != null && locateBvid.equals(v.bvid);
  }

  /** medailist 去重key：优先aid，兜底bvid（等价BT "a"+aid / "b"+bvid） */
  private static String locateKey(BiliSpaceVideo v) {
    if (v == null) return "bnull";
    if (v.aid > 0) return "a" + v.aid;
    return "b" + (v.bvid != null ? v.bvid : "");
  }

  private void enterLocateMode() {
    locateMode = true;
    locateNavigated = false;
    updateLocateCursors();
  }

  /** 退出定位模式并作废所有在途定位请求（等价BT的e()，切排序/复位/定位失败时调用） */
  private void exitLocateMode() {
    locateMode = false;
    locateNavigated = false;
    locateHasMoreUp = false;
    locateHasMoreDown = false;
    locatingUp = false;
    locatingDown = false;
    locatingRemote = false;
    locateNewestAid = 0L;
    locateOldestAid = 0L;
    locateGeneration++;
  }

  /** 刷新双向翻页游标：medialist结果为pubdate倒序（最新在前），头部最新、尾部最旧 */
  private void updateLocateCursors() {
    if (adapter == null) return;
    List<BiliSpaceVideo> data = adapter.getData();
    locateNewestAid = data.isEmpty() ? 0L : data.get(0).aid;
    locateOldestAid = data.isEmpty() ? 0L : data.get(data.size() - 1).aid;
  }

  /** 远程定位：两路并发请求目标视频邻近分页（direction=true/false，均 with_current=true，等价BT H0 flags=24） */
  private void remoteLocate() {
    Activity activity = getActivity();
    if (activity == null) return;
    mg account = mg.a(activity);
    if (account == null) {
      lr.b(getContext(), "账号未登录，无法定位");
      return;
    }
    exitLocateMode(); // 作废旧在途请求
    locatingRemote = true;
    loading = true;   // 定位期间阻止正常分页
    final int gen = ++locateGeneration;
    final String cookie = CookieUtil.getFullCookieWithDevice(account);
    final String referer = "https://space.bilibili.com/" + mid + "/video";
    LogUtil.i(TAG, "remoteLocate mid=" + mid + " aid=" + locateAid + " gen=" + gen);
    MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
    final JSONObject[] results = new JSONObject[2]; // 0=更新的方向, 1=更旧的方向
    final int[] pending = {2};
    api.getSpaceMedialist("web", 1, mid, locateAid, 2, LOCATE_PS, true, true, "1", 0, true, referer, cookie)
        .a(createLocateCallback(0, gen, pending, results));
    api.getSpaceMedialist("web", 1, mid, locateAid, 2, LOCATE_PS, false, true, "1", 0, true, referer, cookie)
        .a(createLocateCallback(1, gen, pending, results));
  }

  private vn<JSONObject> createLocateCallback(final int slot, final int gen, final int[] pending,
      final JSONObject[] results) {
    return new vn<JSONObject>() {
      @Override
      public boolean isCancel() {
        return getActivity() == null;
      }

      @Override
      public void onError(Throwable th) {
        LogUtil.i(TAG, "remoteLocate slot=" + slot + " error: " + th.getMessage());
        adl.a.a(th, getActivity());
        results[slot] = null;
        onLocateResponse(gen, pending, results);
      }

      @Override
      public void a(JSONObject data) {
        results[slot] = data;
        onLocateResponse(gen, pending, results);
      }
    };
  }

  /** 两路定位请求全部返回后合并处理（等价BT RunnableC1274n4 case 11） */
  private void onLocateResponse(int gen, int[] pending, JSONObject[] results) {
    pending[0]--;
    if (pending[0] > 0) return;
    if (getActivity() == null) return;
    if (gen != locateGeneration) {
      LogUtil.i(TAG, "remoteLocate stale gen=" + gen + ", drop");
      return;
    }
    locatingRemote = false;
    loading = false;
    List<BiliSpaceVideo> newer = parseMedialist(results[0]); // 比目标更新的
    List<BiliSpaceVideo> older = parseMedialist(results[1]); // 比目标更旧的
    // 合并（更新的在前、更旧的在后，与pubdate顺序一致）+ 去重
    LinkedHashSet<String> seen = new LinkedHashSet<>();
    List<BiliSpaceVideo> merged = new ArrayList<>();
    for (BiliSpaceVideo v : newer) {
      if (seen.add(locateKey(v))) merged.add(v);
    }
    for (BiliSpaceVideo v : older) {
      if (seen.add(locateKey(v))) merged.add(v);
    }
    // 在合并结果中查找目标视频
    int idx = -1;
    for (int i = 0; i < merged.size(); i++) {
      if (isLocateTarget(merged.get(i))) {
        idx = i;
        break;
      }
    }
    if (idx < 0) {
      LogUtil.i(TAG, "remoteLocate target not found");
      lr.b(getContext(), "定位失败：未在UP主投稿中找到该视频");
      exitLocateMode();
      page = 1;
      b(); // 回退正常分页加载
      return;
    }
    adapter.setVideos(merged);
    locateHasMoreUp = results[0] != null && results[0].getBooleanValue("has_more");
    locateHasMoreDown = results[1] != null && results[1].getBooleanValue("has_more");
    enterLocateMode();
    View view = getView();
    if (view != null) view.requestLayout();
    scrollToLocate(idx);
  }

  /** 解析 medialist 响应 data 节点（media_list[] + BiliFilter 过滤；原始数组字段是 media_list，非转换后的 item） */
  private List<BiliSpaceVideo> parseMedialist(JSONObject data) {
    List<BiliSpaceVideo> out = new ArrayList<>();
    if (data == null) return out;
    try {
      JSONArray items = data.getJSONArray("media_list");
      if (items != null) {
        List<BiliSpaceVideo> videos = new ArrayList<>();
        // StringBuilder sb = new StringBuilder("medialist raw:");
        for (int i = 0; i < items.size(); i++) {
          JSONObject it = items.getJSONObject(i);
          // sb.append(" ").append(it.getLongValue("id")).append("@").append(it.getLongValue("pubtime"));
          videos.add(BiliSpaceVideo.fromMedialistItem(it));
        }
        out = mybl.BiliFilter.filterBiliSpaceVideo(videos, "个人投稿");
        // LogUtil.i(TAG, sb.toString()); // 调试用：打印接口返回的原始 aid@pubtime 序列（验证direction/游标语义）
        LogUtil.i(TAG, "parseMedialist size=" + out.size() + " has_more=" + data.getBooleanValue("has_more"));
      }
    } catch (Exception e) {
      LogUtil.i(TAG, "parseMedialist error: " + e.getMessage());
    }
    return out;
  }

  /** 滚动到指定位置并聚焦目标item（混淆库无LayoutManager符号，复用VideoListSection的反射模式） */
  private void scrollToLocate(final int idx) {
    if (mRecyclerView == null) return;
    try {
      java.lang.reflect.Method scrollToWithOffset = mRecyclerView.getLayoutManager().getClass().getMethod("b", int.class, int.class);
      scrollToWithOffset.invoke(mRecyclerView.getLayoutManager(), idx, 0);
    } catch (Exception e) {
      try {
        java.lang.reflect.Method scrollToMethod = mRecyclerView.getClass().getMethod("a", int.class);
        scrollToMethod.invoke(mRecyclerView, idx);
      } catch (Exception e2) {
        LogUtil.i(TAG, "scrollToLocate error: " + e2.getMessage());
      }
    }
    mRecyclerView.post(new Runnable() {
      private int retry = 0;

      @Override
      public void run() {
        View target = findChildByPosition(idx);
        if (target != null) {
          target.requestFocus();
        } else if (retry++ < 3 && mRecyclerView != null && getActivity() != null) {
          mRecyclerView.postDelayed(this, 100L);
        }
      }
    });
  }

  /** 遍历可见子View按position查找（避免依赖新版LayoutManager API） */
  private View findChildByPosition(int pos) {
    if (mRecyclerView == null) return null;
    for (int i = 0; i < mRecyclerView.getChildCount(); i++) {
      View child = mRecyclerView.getChildAt(i);
      if (child != null && mRecyclerView.g(child) == pos) return child;
    }
    return null;
  }

  /**
   * 定位模式双向加载（等价BT的p()）
   * up=true：以列表头部（最新）aid为游标加载更新的，结果插入头部
   * up=false：以列表尾部（最旧）aid为游标加载更旧的，结果追加尾部
   */
  private void loadLocate(final boolean up) {
    if (up) {
      if (!locateHasMoreUp || locatingUp || locateNewestAid <= 0) return;
      locatingUp = true;
    } else {
      if (!locateHasMoreDown || locatingDown || locateOldestAid <= 0) return;
      locatingDown = true;
    }
    Activity activity = getActivity();
    mg account = activity != null ? mg.a(activity) : null;
    if (account == null) {
      if (up) locatingUp = false; else locatingDown = false;
      return;
    }
    final int gen = locateGeneration;
    long cursorAid = up ? locateNewestAid : locateOldestAid;
    final String cookie = CookieUtil.getFullCookieWithDevice(account);
    final String referer = "https://space.bilibili.com/" + mid + "/video";
    LogUtil.i(TAG, "loadLocate up=" + up + " cursor=" + cursorAid + " gen=" + gen);
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .getSpaceMedialist("web", 1, mid, cursorAid, 2, LOCATE_PS, up, true, "1", 0, false, referer, cookie)
        .a(new vn<JSONObject>() {
          @Override
          public boolean isCancel() {
            return getActivity() == null || adapter == null;
          }

          @Override
          public void onError(Throwable th) {
            LogUtil.i(TAG, "loadLocate error: " + th.getMessage());
            if (up) locatingUp = false; else locatingDown = false;
          }

          @Override
          public void a(JSONObject data) {
            // 先复位加载标志（无论代次号是否有效）
            if (up) locatingUp = false; else locatingDown = false;
            if (adapter == null || getActivity() == null) return;
            if (gen != locateGeneration || !locateMode) return; // 代次号校验，防串页
            List<BiliSpaceVideo> fresh = parseMedialist(data);
            boolean hasMore = data != null && data.getBooleanValue("has_more");
            // 去重：过滤已加载条目（等价BT的setZ1检查）
            LinkedHashSet<String> seen = new LinkedHashSet<>();
            for (BiliSpaceVideo v : adapter.getData()) {
              seen.add(locateKey(v));
            }
            List<BiliSpaceVideo> newList = new ArrayList<>();
            for (BiliSpaceVideo v : fresh) {
              if (seen.add(locateKey(v))) newList.add(v);
            }
            LogUtil.i(TAG, "loadLocate fresh=" + fresh.size() + " dedup=" + newList.size()
                + " listHead=" + adapter.getData().get(0).aid + " listTail=" + adapter.getData().get(adapter.getData().size() - 1).aid);
            if (newList.isEmpty()) {
              // 该方向无新数据 → 停止该方向（等价BT的L/M置false）
              if (up) locateHasMoreUp = false; else locateHasMoreDown = false;
              return;
            }
            if (up) {
              locateHasMoreUp = hasMore;
              // 记录插入前焦点item的position与像素偏移（焦点必在视口内）
              View focused = mRecyclerView != null ? mRecyclerView.getFocusedChild() : null;
              final int focusPos = focused != null ? mRecyclerView.g(focused) : -1;
              final int focusTop = focused != null ? focused.getTop() : 0;
              final int insertCount = newList.size();
              adapter.insertVideosAtHead(newList);
              updateLocateCursors();
              // 焦点补偿：视口与焦点保持不动（头部插入后焦点item的position偏移insertCount，滚回原像素位置并重新聚焦，等价BT的RunnableC0483Ye）
              if (focusPos >= 0 && mRecyclerView != null) {
                scrollToAnchor(focusPos + insertCount, focusTop, focusPos + insertCount);
              }
            } else {
              locateHasMoreDown = hasMore;
              adapter.addVideos(newList);
              updateLocateCursors();
            }
          }
        });
  }

  /**
   * 头部插入后的视口/焦点补偿：把原焦点item滚回原像素位置并重新聚焦（带重试，适配notifyDataSetChanged重布局）。
   * anchorPos=插入后该item的position，offset=该item原top像素偏移。
   */
  private void scrollToAnchor(final int anchorPos, final int offset, final int focusPos) {
    if (mRecyclerView == null) return;
    try {
      java.lang.reflect.Method m = mRecyclerView.getLayoutManager().getClass().getMethod("b", int.class, int.class);
      m.invoke(mRecyclerView.getLayoutManager(), anchorPos, offset);
    } catch (Exception e) {
      LogUtil.i(TAG, "scrollToAnchor error: " + e.getMessage());
    }
    mRecyclerView.post(new Runnable() {
      private int retry = 0;
      @Override
      public void run() {
        if (mRecyclerView == null || getActivity() == null) return;
        View target = findChildByPosition(focusPos);
        if (target != null) {
          target.requestFocus();
        } else if (retry++ < 3) {
          mRecyclerView.postDelayed(this, 100L);
        }
      }
    });
  }

  /**
   * 定位模式焦点自动加载（adapter.onFocusChange 回调）：
   * 焦点进入顶部两行 → 向上加载更新视频；进入底部两行 → 向下加载更旧视频。
   * 覆盖 onScrollStateChanged 覆盖不到的场景：视口顶/底边与列表头/尾重合时，焦点在视口内移动不产生滚动。
   */
  public void onLocateFocusPosition(int pos) {
    if (!locateMode || adapter == null) return;
    int count = adapter.getData().size();
    if (pos < COLUMNS && locateHasMoreUp && !locatingUp) {
      LogUtil.i(TAG, "focus auto load up pos=" + pos);
      loadLocate(true);
    } else if (pos >= count - COLUMNS && locateHasMoreDown && !locatingDown) {
      LogUtil.i(TAG, "focus auto load down pos=" + pos);
      loadLocate(false);
    }
  }

  /**
   * 定位模式按键触发双向加载（供 Activity.dispatchKeyEvent 调用）：
   * up=true 要求焦点在第一行（按上键），up=false 要求焦点在最后一行（按下键）。
   * TV 焦点网格视口内移动不产生滚动，onScrollStateChanged 无法覆盖顶部/底部按键场景。
   * 返回是否已触发加载；返回 false 时 Activity 走原有焦点处理。
   */
  public boolean locateLoadByKeyEvent(boolean up) {
    if (!locateMode || mRecyclerView == null || adapter == null) return false;
    View focused = mRecyclerView.getFocusedChild();
    if (focused == null) return false;
    int pos = mRecyclerView.g(focused);
    if (pos < 0) return false;
    if (up) {
      if (!locateHasMoreUp || pos >= COLUMNS) return false;
      if (locatingUp) return true; // 加载中消费按键，避免连按时焦点跳到header
      LogUtil.i(TAG, "locateLoadByKeyEvent up pos=" + pos);
      loadLocate(true);
      return true;
    } else {
      if (!locateHasMoreDown || pos < adapter.getData().size() - COLUMNS) return false;
      if (locatingDown) return true;
      LogUtil.i(TAG, "locateLoadByKeyEvent down pos=" + pos);
      loadLocate(false);
      return true;
    }
  }

  // 更新 header 显示
  public void updateHeaderInfo(String title, int count) {
    this.totalCount = count;
    if (headerTitle != null && title != null) {
      headerTitle.setText(title);
    }
    if (headerCount != null) {
      String countText = count + "个视频";
      if ("all".equals(mode)) {
        countText = count + "条";
      }
      headerCount.setText(countText);
    }
  }
  
  public boolean isSeasonOrSeriesMode() {
    return "season".equals(mode) || "series".equals(mode);
  }
  
  public boolean canSort() {
    return "all".equals(mode) || "season".equals(mode) || "series".equals(mode);
  }
  
  public int getCurrentMode() {
    if ("all".equals(mode)) return 0;
    if ("season".equals(mode)) return 1;
    if ("series".equals(mode)) return 2;
    if ("dynamic".equals(mode)) return 3;
    return -1;
  }
  
  public String getSortOrder() {
    if ("all".equals(mode)) {
      return allVideoOrder;
    } else if ("season".equals(mode)) {
      return sortReverse ? "default" : "reverse";
    } else if ("series".equals(mode)) {
      return "desc".equals(sortDirection) ? "default" : "reverse";
    }
    return "default";
  }
  
  public void setSortOrder(String order) {
    if (TextUtils.equals(order, getSortOrder())) {
      return;
    }
    if ("all".equals(mode)) {
      allVideoOrder = order;
      // 用户切到非pubdate排序时取消待执行的自动定位
      if (!"pubdate".equals(order)) {
        pendingLocate = false;
      }
    } else if ("season".equals(mode)) {
      sortReverse = "default".equals(order);
    } else if ("series".equals(mode)) {
      sortDirection = "default".equals(order) ? "desc" : "asc";
    }
    if (this.adapter != null) {
      d_();
    }
  }

  @Override // bl.adw
  public boolean c() {
    if (isVisible() && this.adapter != null) {
      return this.adapter.a() > 0;
    }
    return false;
  }

  @Override
  public void d_() {
    super.d_();
    exitLocateMode(); // 复位时退出定位模式并作废在途定位请求
    this.cursor = null;
    this.page = 1;
    this.dynamicOffset = null;
    this.hasMore = true;
    b();
  }

  private void b() {
    this.loading = true;
    if ("all".equals(mode)) {
      loadAllVideos();
    } else if ("season".equals(mode)) {
      loadSeasonVideos();
    } else if ("series".equals(mode)) {
      loadSeriesVideos();
    } else if ("dynamic".equals(mode)) {
      loadDynamicVideos();
    } else {
      this.loading = false;
    }
  }

  private void loadAllVideos() {
    Activity activity = getActivity();
    if (activity == null)
      return;
    mg account = mg.a(activity);
    if (account == null)
      return;
    String cookie = CookieUtil.getFullCookieWithDevice(account);
    MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
    String order = this.allVideoOrder;
    LogUtil.i(TAG, "loadAllVideos mid=" + this.mid + " page=" + this.page + " order=" + order);

    api.getSpaceArcSearch(this.mid, this.page, 40, 0, order, "", true, "web", "333.1387", cookie)
    .a(new vn<JSONObject>() {
      @Override
      public boolean isCancel() {
        return getActivity() == null || adapter == null;
      }

      @Override
      public void onError(Throwable th) {
        Log.i(TAG, "loadAllVideos error: " + th.getMessage());
        adl.a.a(th, getActivity());
        loading = false;
        pendingLocate = false; // 加载失败取消待执行定位
        if (page == 1)
          k();
      }

      @Override
      public void a(JSONObject data) {
        if (adapter == null)
          return;
        // 远程定位在途时丢弃正常分页响应，防止定位成功前列表被追加脏数据
        if (locatingRemote) {
          LogUtil.i(TAG, "loadAllVideos response during locate, drop");
          return;
        }
        j();
        loading = false;
        try {
          if (data == null) {
            hasMore = false;
            if (page == 1) {
              k();
              AuthSpaceVideoFragment.this.a(R.string.nothing_show);
            }
            return;
          }
          JSONObject pageObj = data.getJSONObject("page");
          int totalCount = pageObj != null ? pageObj.getIntValue("count") : 0;
          int pn = pageObj != null ? pageObj.getIntValue("pn") : 1;
          int ps = pageObj != null ? pageObj.getIntValue("ps") : 40;

          JSONObject listObj = data.getJSONObject("list");
          JSONArray vlist = listObj != null ? listObj.getJSONArray("vlist") : null;
          if (vlist != null && vlist.size() > 0) {
            List<BiliSpaceVideo> videos = new ArrayList<>();
            for (int i = 0; i < vlist.size(); i++) {
              videos.add(BiliSpaceVideo.fromVlist(vlist.getJSONObject(i)));
            }
            List<BiliSpaceVideo> filtered = mybl.BiliFilter.filterBiliSpaceVideo(videos, "个人投稿");
            if (page == 1) {
              adapter.setVideos(filtered);
              updateHeaderInfo(null, totalCount);
            } else {
              adapter.addVideos(filtered);
            }
            hasMore = pn * ps < totalCount && filtered.size() > 0;
            View view = getView();
            if (view != null)
              view.requestLayout();
            if (hasMore && adapter.a() < 8) {
              page++;
              try {
                Thread.sleep(1000);
              } catch (Exception e) {
                e.printStackTrace();
              }
              b();
            } else {
              // 首屏（含补加载链）完成后自动执行待处理的定位（点击定位按钮时切排序的后续流程）
              if (pendingLocate && "pubdate".equals(allVideoOrder) && locateAid > 0) {
                pendingLocate = false;
                locateToCurrent();
              }
            }
            return;
          }
        } catch (Exception e) {
          Log.i(TAG, "loadAllVideos parse error: " + e.getMessage());
        }
        hasMore = false;
        if (page == 1) {
          k();
          AuthSpaceVideoFragment.this.a(R.string.nothing_show);
        }
      }
    });
  }

  private void loadSeasonVideos() {
    Activity activity = getActivity();
    if (activity == null) {
      return;
    }
    mg biliAccount = mg.a(activity);
    if (biliAccount != null) {
      String url = "https://api.bilibili.com/x/polymer/web-space/seasons_archives_list?" +
          "mid=" + this.mid + "&season_id=" + this.targetId +
          "&sort_reverse=" + this.sortReverse + "&page_size=30&page_num=" + this.page + "&web_location=333.1387";
      LogUtil.i(TAG, "loadSeasonVideos URL: " + url);
      
      String referer = "https://space.bilibili.com/" + this.mid + "/lists/" + this.targetId + "?type=season";
      String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
      ((MyBiliApiService) vo.a(MyBiliApiService.class))
          .getSeasonsArchivesList(this.mid, this.targetId, this.sortReverse, 30, this.page, "333.1387", referer, cookie)
          .a(new vn<JSONObject>() {
            @Override
            public boolean isCancel() {
              return getActivity() == null || adapter == null;
            }

            @Override
            public void onError(Throwable th) {
              Log.i(TAG, "loadSeasonVideos error: " + th.getMessage());
              adl.a.a(th, getActivity());
              loading = false;
              if (page == 1)
                k();
            }

            @Override
            public void a(JSONObject resp) {
              LogUtil.i(TAG, "loadSeasonVideos response: " + (resp != null ? resp.toString() : "null"));
              if (adapter == null)
                return;
              j();
              loading = false;
              if (resp != null) {
                String seasonTitle = "合集";
                int totalCount = 0;
                JSONObject meta = resp.getJSONObject("meta");
                if (meta != null) {
                  String name = meta.getString("name");
                  if (name != null && !name.isEmpty()) {
                    seasonTitle = name;
                  }
                  totalCount = meta.getIntValue("total");
                }
                
                JSONArray arr = resp.getJSONArray("archives");
                if (arr == null)
                  arr = resp.getJSONArray("list");
                if (arr != null && arr.size() > 0) {
                  List<BiliSpaceVideo> videos = new ArrayList<>();
                  for (int i = 0; i < arr.size(); i++) {
                    videos.add(BiliSpaceVideo.fromArchives(arr.getJSONObject(i)));
                  }
                  if (page == 1) {
                    adapter.setVideos(videos);
                    updateHeaderInfo(seasonTitle, totalCount);
                  } else {
                    adapter.addVideos(videos);
                  }
                  hasMore = arr.size() == 30;
                  View view = getView();
                  if (view != null)
                    view.requestLayout();
                  return;
                }
              }
              hasMore = false;
              if (page == 1) {
                k();
                AuthSpaceVideoFragment.this.a(R.string.nothing_show);
              }
            }
          });
    }
  }

  private void loadSeriesVideos() {
    Activity activity = getActivity();
    if (activity == null)
      return;
    mg biliAccount = mg.a(activity);
    if (biliAccount != null) {
      String url = "https://api.bilibili.com/x/series/archives?" +
          "mid=" + this.mid + "&current_mid=" + biliAccount.d() +
          "&series_id=" + this.targetId + "&only_normal=true&sort=" + this.sortDirection +
          "&ps=30&pn=" + this.page + "&web_location=333.1387";
      LogUtil.i(TAG, "loadSeriesVideos URL: " + url);

      String referer = "https://space.bilibili.com/" + this.mid + "/lists/" + this.targetId + "?type=series";
      String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
      ((MyBiliApiService) vo.a(MyBiliApiService.class))
          .getSeriesArchives(this.mid, biliAccount.d(), this.targetId, true, this.sortDirection, 30, this.page, "333.1387", referer, cookie)
          .a(new vn<JSONObject>() {
            @Override
            public boolean isCancel() {
              return getActivity() == null || adapter == null;
            }

            @Override
            public void onError(Throwable th) {
              Log.i(TAG, "loadSeriesVideos error: " + th.getMessage());
              adl.a.a(th, getActivity());
              loading = false;
              if (page == 1)
                k();
            }

            @Override
            public void a(JSONObject resp) {
              LogUtil.i(TAG, "loadSeriesVideos response: " + (resp != null ? resp.toString() : "null"));
              if (adapter == null)
                return;
              j();
              loading = false;
              if (resp != null) {
                String seriesTitle = "系列";
                int totalCount = 0;
                JSONObject data = resp.getJSONObject("data");
                JSONObject pageInfo = resp.getJSONObject("page");
                if (pageInfo != null) {
                  totalCount = pageInfo.getIntValue("total");
                }
                
                JSONArray arr = resp.getJSONArray("archives");
                if (arr == null) {
                  if (data != null)
                    arr = data.getJSONArray("archives");
                  if (arr == null && data != null)
                    arr = data.getJSONArray("list");
                }
                if (arr != null && arr.size() > 0) {
                  List<BiliSpaceVideo> videos = new ArrayList<>();
                  for (int i = 0; i < arr.size(); i++) {
                    videos.add(BiliSpaceVideo.fromArchives(arr.getJSONObject(i)));
                  }
                  if (page == 1) {
                    adapter.setVideos(videos);
                    updateHeaderInfo(seriesTitle, totalCount);
                  } else {
                    adapter.addVideos(videos);
                  }
                  hasMore = arr.size() == 30;
                  View view = getView();
                  if (view != null)
                    view.requestLayout();
                  return;
                }
              }
              hasMore = false;
              if (page == 1) {
                k();
                AuthSpaceVideoFragment.this.a(R.string.nothing_show);
              }
            }
          });
    }
  }

  private void loadDynamicVideos() {
    Activity activity = getActivity();
    if (activity == null)
      return;
    mg account = mg.a(activity);
    if (account == null)
      return;
    String cookie = CookieUtil.getFullCookieWithDevice(account);
    MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
    String offset = this.dynamicOffset;
    LogUtil.i(TAG, "loadDynamicVideos mid=" + this.mid + " offset=" + offset);

    api.getSpaceDynamicFeed(this.mid, offset, -480, "web", cookie)
    .a(new vn<JSONObject>() {
      @Override
      public boolean isCancel() {
        return getActivity() == null || adapter == null;
      }

      @Override
      public void onError(Throwable th) {
        Log.i(TAG, "loadDynamicVideos error: " + th.getMessage());
        adl.a.a(th, getActivity());
        loading = false;
        if (dynamicOffset == null)
          k();
      }

      @Override
      public void a(JSONObject resp) {
        LogUtil.i(TAG, "loadDynamicVideos response: " + (resp != null ? resp.toString() : "null"));
        if (adapter == null)
          return;
        j();
        loading = false;
        try {
          if (resp == null) {
            hasMore = false;
            if (dynamicOffset == null) {
              k();
              AuthSpaceVideoFragment.this.a(R.string.nothing_show);
            }
            return;
          }
          
          boolean hasMoreFlag = resp.getBooleanValue("has_more");
          String nextOffset = resp.getString("offset");
          JSONArray items = resp.getJSONArray("items");
          
          if (items != null && items.size() > 0) {
            List<BiliSpaceVideo> videos = new ArrayList<>();
            for (int i = 0; i < items.size(); i++) {
              JSONObject item = items.getJSONObject(i);
              String type = item.getString("type");
              if (!"DYNAMIC_TYPE_AV".equals(type)) {
                continue;
              }
              JSONObject modules = item.getJSONObject("modules");
              if (modules == null)
                continue;
              BiliSpaceVideo v = BiliSpaceVideo.fromFeedDynamic(modules);
              if (v != null) {
                videos.add(v);
              }
            }
            
            if (videos.size() > 0) {
              if (dynamicOffset == null) {
                adapter.setVideos(videos);
              } else {
                adapter.addVideos(videos);
              }
              dynamicOffset = nextOffset;
              hasMore = hasMoreFlag;
              View view = getView();
              if (view != null)
                view.requestLayout();
              return;
            }
          }
          
          hasMore = false;
          if (dynamicOffset == null) {
            k();
            AuthSpaceVideoFragment.this.a(R.string.nothing_show);
          }
        } catch (Exception e) {
          Log.i(TAG, "loadDynamicVideos parse error: " + e.getMessage());
          hasMore = false;
          if (dynamicOffset == null) {
            k();
            AuthSpaceVideoFragment.this.a(R.string.nothing_show);
          }
        }
      }
    });
  }

  /* compiled from: BL */
  final class b extends vn<Object> {
    public b() {
    }

    @Override
    public boolean isCancel() {
      return getActivity() == null || adapter == null;
    }

    @Override
    public void onError(Throwable th) {
      adl.a.a(th, getActivity());
      loading = false;
      if (page == 1)
        k();
    }

    @Override
    public void a(Object o) {
    }
  }

  final class e implements BorderGridLayoutManager.a {
    final /* synthetic */ AuthSpaceSideActivity host;

    e(AuthSpaceSideActivity host) {
      this.host = host;
    }

    @Override
    public void a(View view, View view2, int i, int i2, int i3) {
      agd agdVarM = this.host.m();
      if (agdVarM == null || view == null)
        return;
      agdVarM.setUpRectDrawable(aj.a(this.host, R.drawable.shadow_white_rect));
      agdVarM.a(view, i2, i3, AuthSpaceVideoFragment.this.firstLoad);
      AuthSpaceVideoFragment.this.firstLoad = false;
    }
  }

  public static final class f extends RecyclerView.g {
    final int a;
    final int b;

    f(int i, int i2) {
      this.a = i;
      this.b = i2;
    }

    @Override
    public void a(android.graphics.Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
      bbi.b(rect, "outRect");
      bbi.b(view, "view");
      bbi.b(recyclerView, "parent");
      int pos = recyclerView.g(view);
      int top = pos > AuthSpaceVideoFragment.COLUMNS + (-1) ? this.a : 0;
      if (pos % AuthSpaceVideoFragment.COLUMNS == 0) {
        rect.set(0, 0, this.b, 0);
      } else {
        rect.set(this.b, 0, 0, 0);
      }
    }
  }

  public final class g extends RecyclerView.m {
    final SideRightGridLayoutManger lm;

    g(SideRightGridLayoutManger lm) {
      this.lm = lm;
    }

    @Override
    public void a(RecyclerView recyclerView, int i) {
      super.a(recyclerView, i);
      if (AuthSpaceVideoFragment.this.loading || AuthSpaceVideoFragment.this.adapter == null)
        return;

      // 定位模式的双向加载由焦点路径(onLocateFocusPosition)与按键路径(locateLoadByKeyEvent)触发：
      // TV上滚动仅由焦点移动驱动，焦点回调必然先于/覆盖滚动回调，此处无需重复触发（loadLocate内部有防抖）。

      if (!AuthSpaceVideoFragment.this.hasMore)
        return;
      int last = this.lm.p();
      if (this.lm.x() <= 0 || last + 10 < this.lm.H() - 1 || this.lm.H() <= this.lm.x())
        return;
      if (!"dynamic".equals(AuthSpaceVideoFragment.this.mode)) {
        AuthSpaceVideoFragment.this.page++;
      }
      AuthSpaceVideoFragment.this.b();
    }
  }

  /* adapter */
  static final class c extends RecyclerView.a<adv> implements View.OnClickListener, View.OnFocusChangeListener {
    private List<BiliSpaceVideo> data = new ArrayList<>();
    private AuthSpaceVideoFragment outer; // 外部引用：定位模式焦点自动加载用

    public void setOuter(AuthSpaceVideoFragment f) {
      this.outer = f;
    }

    @Override
    public adv a(ViewGroup parent, int viewType) {
      return d.Companion.a(parent);
    }

    @Override
    public void a(adv holder, int pos) {
      if (holder instanceof d) {
        d vh = (d) holder;
        BiliSpaceVideo v = this.data.get(pos);
        vh.A().setText(v.title);
        vh.B().setVisibility(View.GONE);
        
        vh.C().setText(v.playStr != null ? v.playStr : "0");
        
        if (v.danmakuStr != null && !"0".equals(v.danmakuStr) && !v.danmakuStr.isEmpty()) {
          vh.danmakuInImage.setText(v.danmakuStr);
          vh.danmakuInImage.setVisibility(View.VISIBLE);
        } else {
          vh.danmakuInImage.setVisibility(View.GONE);
        }
        
        if (v.pubTimeStr != null && !v.pubTimeStr.isEmpty()) {
          vh.D().setText(v.pubTimeStr);
          vh.D().setVisibility(View.VISIBLE);
        } else {
          vh.D().setVisibility(View.GONE);
        }
        
        if (v.durationStr != null && !v.durationStr.isEmpty()) {
          vh.E().setText(v.durationStr);
        }
        
        int iconSize = bl.adl.b(R.dimen.px_26);
        android.graphics.drawable.Drawable playIcon = bl.adl.a.c(R.drawable.ic_video_info_play);
        android.graphics.drawable.Drawable danmakuIcon = bl.adl.a.c(R.drawable.ic_video_info_danmaku);
        if (playIcon != null) {
          playIcon.setBounds(0, 0, iconSize, iconSize);
          playIcon.setColorFilter(bl.adl.d(R.color.white), android.graphics.PorterDuff.Mode.MULTIPLY);
        }
        if (danmakuIcon != null) {
          danmakuIcon.setBounds(0, 0, iconSize, iconSize);
          danmakuIcon.setColorFilter(bl.adl.d(R.color.white), android.graphics.PorterDuff.Mode.MULTIPLY);
        }
        vh.C().setCompoundDrawables(playIcon, null, null, null);
        vh.danmakuInImage.setCompoundDrawables(danmakuIcon, null, null, null);
        
        if (v.cover != null)
          nv.a().a(abd.get_thumb_url_c(com.bilibili.tv.MainApplication.a(), v.cover), vh.z());
        
        if (v.badgeText != null && !v.badgeText.isEmpty()) {
          vh.F().setText(v.badgeText);
          vh.F().setVisibility(View.VISIBLE);
          if (v.badgeBgColor != null && !v.badgeBgColor.isEmpty()) {
            try {
              vh.F().setBackgroundColor(android.graphics.Color.parseColor(v.badgeBgColor));
            } catch (Exception e) {}
          }
        } else {
          vh.F().setVisibility(View.GONE);
        }
        
        vh.a.setTag(v);
        vh.a.setOnClickListener(this);
        vh.a.setOnFocusChangeListener(this);
        Object context = vh.a.getContext();
        if (context instanceof View.OnLongClickListener) {
          vh.a.setOnLongClickListener((View.OnLongClickListener) context);
        }
      }
    }

    @Override
    public int a() {
      return this.data.size();
    }

    public void setVideos(List<BiliSpaceVideo> list) {
      this.data.clear();
      this.data.addAll(list);
      d();
    }

    public void addVideos(List<BiliSpaceVideo> list) {
      int s = this.data.size();
      this.data.addAll(list);
      d(s);
    }

    public List<BiliSpaceVideo> getData() {
      return this.data;
    }

    /** 头部插入并全量刷新（定位模式向上加载用；d(I)=notifyItemInserted(p,1)只通知1条会造成position错位，多条插入必须notifyDataSetChanged） */
    public void insertVideosAtHead(List<BiliSpaceVideo> list) {
      this.data.addAll(0, list);
      d();
    }

    @Override
    public void onClick(View v) {
      Object tag = v.getTag();
      Activity a = bl.adl.a(v.getContext());
      if (a == null)
        return;
      if (tag instanceof BiliSpaceVideo) {
        BiliSpaceVideo vdo = (BiliSpaceVideo) tag;
        a.startActivity(com.bilibili.tv.ui.video.VideoDetailActivity.Companion.a(a, vdo.aid, vdo.cover));
      }
    }

    @Override
    public void onFocusChange(View v, boolean has) {
      if (v instanceof com.bilibili.tv.widget.DrawRelativeLayout)
        ((com.bilibili.tv.widget.DrawRelativeLayout) v).setUpEnabled(has);
      // 定位模式：焦点移动到顶部/底部两行时自动双向加载（覆盖"视口顶边=列表头，焦点在视口内移动无滚动、
      // onScrollStateChanged 不触发"的死区，使行为与向下翻页一致）
      if (has && outer != null) {
        RecyclerView rv = v.getParent() instanceof RecyclerView ? (RecyclerView) v.getParent() : null;
        if (rv != null) {
          int pos = rv.g(v);
          if (pos >= 0) outer.onLocateFocusPosition(pos);
        }
      }
    }
  }

  public static final class d extends adv {
    public static final a Companion = new a();
    private com.bilibili.tv.widget.ScalableImageView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView duration;
    private TextView danmakuInImage;
    private TextView badge;

    public d(View view) {
      super(view);
      this.n = (com.bilibili.tv.widget.ScalableImageView) a(view, R.id.img);
      this.o = (TextView) a(view, R.id.title);
      this.p = (TextView) a(view, R.id.up);
      this.q = (TextView) a(view, R.id.play);
      this.r = (TextView) a(view, R.id.pubdate);
      this.duration = (TextView) a(view, R.id.duration);
      this.danmakuInImage = (TextView) a(view, R.id.danmaku);
      this.badge = (TextView) a(view, R.id.badge);
    }

    public com.bilibili.tv.widget.ScalableImageView z() {
      return this.n;
    }

    public TextView A() {
      return this.o;
    }

    public TextView B() {
      return this.p;
    }

    public TextView C() {
      return this.q;
    }

    public TextView D() {
      return this.r;
    }

    public TextView E() {
      return this.duration;
    }

    public TextView F() {
      return this.badge;
    }

    public static final class a {
      public a() {
      }

      public final d a(ViewGroup parent) {
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_video_info, parent,
            false);
        return new d(inflate);
      }
    }
  }
}
