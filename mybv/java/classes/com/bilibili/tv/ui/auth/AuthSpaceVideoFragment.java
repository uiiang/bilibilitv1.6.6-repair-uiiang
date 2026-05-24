package com.bilibili.tv.ui.auth;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
  private TextView hintSort;
  
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

  @Override
  public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle bundle) {
    View rootView = inflater.inflate(R.layout.fragment_auth_space_video, container, false);
    this.headerLayout = rootView.findViewById(R.id.space_header_layout);
    this.headerTitle = (TextView) rootView.findViewById(R.id.header_title);
    this.headerCount = (TextView) rootView.findViewById(R.id.header_count);
    this.attentionButton = (DrawTextView) rootView.findViewById(R.id.attention);
    this.hintSort = (TextView) rootView.findViewById(R.id.hint_sort);
    return rootView;
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
        if (page == 1)
          k();
      }

      @Override
      public void a(JSONObject data) {
        if (adapter == null)
          return;
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
      if (AuthSpaceVideoFragment.this.loading || AuthSpaceVideoFragment.this.adapter == null || !AuthSpaceVideoFragment.this.hasMore)
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
