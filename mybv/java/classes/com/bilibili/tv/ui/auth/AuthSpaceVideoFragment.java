package com.bilibili.tv.ui.auth;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import bl.adl;
import bl.ady;
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
import mybl.MyBiliApiService;
import com.bilibili.tv.api.auth.BiliSpaceApiService;
import com.bilibili.tv.api.auth.BiliSpaceVideo;
import com.bilibili.tv.api.auth.BiliSpaceVideoList;
import java.util.ArrayList;
import java.util.List;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;
import bl.mg;
import bl.vo;

public final class AuthSpaceVideoFragment extends ady {
  private static final int COLUMNS = 2;
  private c adapter;
  private b callback;
  private boolean loading = false;
  private int page = 1;
  private boolean hasMore = true;
  private boolean firstLoad = false;
  private long mid;
  private String mode;
  private long targetId;
  private String upName; // UP 主名称
  
  // Header 相关视图
  private View headerLayout;
  private TextView headerTitle;
  private TextView headerCount;
  public DrawTextView attentionButton;
  
  // 视频总数（用于 header 显示）
  private int totalCount = 0;

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
    // 使用新的布局文件
    View rootView = inflater.inflate(R.layout.fragment_auth_space_video, container, false);
    this.headerLayout = rootView.findViewById(R.id.space_header_layout);
    this.headerTitle = (TextView) rootView.findViewById(R.id.header_title);
    this.headerCount = (TextView) rootView.findViewById(R.id.header_count);
    this.attentionButton = (DrawTextView) rootView.findViewById(R.id.attention);
    
    RecyclerView recyclerView = (RecyclerView) rootView.findViewById(R.id.recycler_view);
    a(recyclerView, bundle);
    
    // 初始化完成后加载数据
    d_();
    
    return rootView;
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
    recyclerView.setPadding(pad, pad, pad, pad);
    recyclerView.a(new f(margin, gap));
    recyclerView.a(new g(lm));
    this.adapter = new c();
    recyclerView.setAdapter(this.adapter);
    this.callback = new b();
    
    // 初始化 header 和关注按钮
    initHeader();
  }

  // 保存 RecyclerView 引用，用于外部判断是否在底部
  public RecyclerView mRecyclerView;

  // expose loading state
  public boolean isLoading() {
    return this.loading;
  }
  
  // 初始化 header 区域
  private void initHeader() {
    if ("all".equals(mode)) {
      // 全部视频模式：显示 UP 主名称和关注按钮
      if (headerTitle != null) {
        // 优先显示 UP 主名称，如果没有则显示 mid
        if (upName != null && !upName.isEmpty()) {
          headerTitle.setText(upName);
        } else {
          headerTitle.setText(String.valueOf(mid));
        }
      }
      if (attentionButton != null) {
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
            mg account = mg.a(getActivity());
            if (account == null) return;
            ((MyBiliApiService) vo.a(MyBiliApiService.class)).modifyRelation(
              account.e(), mid, 
              attentionButton.getText().equals("已关注") ? 2 : 1, 
              11
            ).a(new vn<JSONObject>() {
              @Override
              public void a(JSONObject response) {
                boolean followed = attentionButton.getText().equals("已关注");
                attentionButton.setText(followed ? "＋关注" : "已关注");
                lr.b(getContext(), followed ? "取消关注成功" : "关注成功");
              }

              @Override
              public void onError(Throwable th) {
                boolean followed = attentionButton.getText().equals("已关注");
                lr.b(getContext(), followed ? "取消关注失败" : "关注失败");
              }

              @Override
              public boolean isCancel() {
                return getActivity() == null || getActivity().isFinishing();
              }
            });
          }
        });
        
        // 查询关注状态
        mg account = mg.a(getActivity());
        if (account != null) {
          ((MyBiliApiService) vo.a(MyBiliApiService.class)).getRelation(account.e(), mid)
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
      if (headerCount != null) {
        headerCount.setText(totalCount > 0 ? totalCount + "条" : "");
      }
    } else if ("season".equals(mode)) {
      // 合集模式：显示合集标题和视频数
      if (headerTitle != null) {
        headerTitle.setText("加载中...");
      }
      if (attentionButton != null) {
        attentionButton.setVisibility(View.GONE);
      }
      if (headerCount != null) {
        headerCount.setText(totalCount > 0 ? totalCount + "个视频" : "");
      }
    } else if ("series".equals(mode)) {
      // 系列模式：显示系列标题和视频数
      if (headerTitle != null) {
        headerTitle.setText("加载中...");
      }
      if (attentionButton != null) {
        attentionButton.setVisibility(View.GONE);
      }
      if (headerCount != null) {
        headerCount.setText(totalCount > 0 ? totalCount + "个视频" : "");
      }
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

  @Override // bl.adw
  public boolean c() {
    if (isVisible() && this.adapter != null) {
      return this.adapter.a() > 0;
    }
    return false;
  }

  @Override
  public void d_() {
    // 不调用 super.d_()，避免访问未初始化的 recyclerView
    // super.d_();
    this.page = 1;
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
    } else {
      this.loading = false;
    }
  }

  private void loadAllVideos() {
    Activity activity = getActivity();
    if (activity == null)
      return;
    BiliSpaceApiService api = (BiliSpaceApiService) vo.a(BiliSpaceApiService.class);
    mg account = mg.a(activity);
    if (account == null)
      return;
    api.loadArchiveVideos(account.e(), this.mid, this.page, 20).a(new vn<BiliSpaceVideoList>() {
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
      public void a(BiliSpaceVideoList list) {
        if (adapter == null)
          return;
        j();
        loading = false;
        if (list != null && list.videos != null && list.videos.size() > 0) {
          List<BiliSpaceVideo> filtered = mybl.BiliFilter.filterBiliSpaceVideo(list.videos, "个人投稿");
          if (page == 1) {
            adapter.setVideos(filtered);
            // 更新 header 显示的视频总数
            updateHeaderInfo(null, list.count);
          } else {
            adapter.addVideos(filtered);
          }
          hasMore = filtered.size() == 20;
          View view = getView();
          if (view != null)
            view.requestLayout();
          if (hasMore && adapter.a() < 8) {
            try {
              Thread.sleep(1000);
            } catch (Exception e) {
              e.printStackTrace();
            }
            page++;
            b();
          }
          return;
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
      ((MyBiliApiService) vo.a(MyBiliApiService.class))
          .getSeasonsArchivesList(biliAccount.e(), this.mid, this.targetId, false, 30, this.page, "333.1387")
          .a(new vn<JSONObject>() {
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
            public void a(JSONObject resp) {
              if (adapter == null)
                return;
              j();
              loading = false;
              if (resp != null) {
                // 获取合集标题
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
                  List<JSONObject> items = new ArrayList<>();
                  for (int i = 0; i < arr.size(); i++)
                    items.add(arr.getJSONObject(i));
                  if (page == 1) {
                    adapter.setJsonItems(items);
                    // 更新 header 显示
                    updateHeaderInfo(seasonTitle, totalCount);
                  } else {
                    adapter.addJsonItems(items);
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

      ((MyBiliApiService) vo.a(MyBiliApiService.class))
          .getSeriesArchives(biliAccount.e(), this.mid, biliAccount.d(), this.targetId, true, "desc", 30, this.page, "333.1387")
          .a(new vn<JSONObject>() {
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
            public void a(JSONObject resp) {
              if (adapter == null)
                return;
              j();
              loading = false;
              if (resp != null) {
                // 获取系列标题
                String seriesTitle = "系列";
                int totalCount = 0;
                JSONObject data = resp.getJSONObject("data");
                if (data != null) {
                  JSONObject meta = data.getJSONObject("meta");
                  if (meta != null) {
                    String name = meta.getString("name");
                    if (name != null && !name.isEmpty()) {
                      seriesTitle = name;
                    }
                    totalCount = meta.getIntValue("total");
                  }
                }
                
                JSONArray arr = resp.getJSONArray("archives");
                if (arr == null) {
                  if (data != null)
                    arr = data.getJSONArray("archives");
                  if (arr == null && data != null)
                    arr = data.getJSONArray("list");
                }
                if (arr != null && arr.size() > 0) {
                  List<JSONObject> items = new ArrayList<>();
                  for (int i = 0; i < arr.size(); i++)
                    items.add(arr.getJSONObject(i));
                  if (page == 1) {
                    adapter.setJsonItems(items);
                    // 更新 header 显示
                    updateHeaderInfo(seriesTitle, totalCount);
                  } else {
                    adapter.addJsonItems(items);
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
      int last = this.lm.p();
      if (this.lm.x() <= 0 || last + 10 < this.lm.H() - 1 || this.lm.H() <= this.lm.x())
        return;
      AuthSpaceVideoFragment.this.page++;
      AuthSpaceVideoFragment.this.b();
    }
  }

  /* adapter */
  static final class c extends RecyclerView.a<adv> implements View.OnClickListener, View.OnFocusChangeListener {
    private List<Object> data = new ArrayList<>();

    @Override
    public adv a(ViewGroup parent, int viewType) {
      return d.Companion.a(parent);
    }

    @Override
    public void a(adv holder, int pos) {
      if (holder instanceof d) {
        d vh = (d) holder;
        Object item = this.data.get(pos);
        if (item instanceof JSONObject) {
          JSONObject jo = (JSONObject) item;
          JSONObject archive = jo;
          if (jo.getJSONObject("module_dynamic") != null) {
            archive = jo.getJSONObject("module_dynamic").getJSONObject("major").getJSONObject("archive");
          }
          vh.A().setText(archive.getString("title"));
          long pubdate = archive.getLongValue("pubdate");
          if (pubdate > 0) {
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy年MM月dd日", java.util.Locale.CHINA);
            vh.B().setText(sdf.format(new java.util.Date(pubdate * 1000)));
          } else {
            vh.B().setText(archive.getString("author") == null ? "" : archive.getString("author"));
          }
          String playStr = archive.getJSONObject("stat") != null ? archive.getJSONObject("stat").getString("view")
              : archive.getString("play");
          String danmakuStr = archive.getJSONObject("stat") != null ? archive.getJSONObject("stat").getString("danmaku")
              : archive.getString("danmaku");
          vh.C().setText(bl.adh.a(playStr));
          vh.D().setText(bl.adh.a(danmakuStr));
          int durationVal = archive.getIntValue("duration");
          if (durationVal >= 3600) {
            vh.E().setText(String.format("%d:%02d:%02d", durationVal / 3600, (durationVal % 3600) / 60, durationVal % 60));
          } else {
            vh.E().setText(String.format("%02d:%02d", durationVal / 60, durationVal % 60));
          }
          int iconSize = bl.adl.b(R.dimen.px_34);
          android.graphics.drawable.Drawable playIcon = bl.adl.a.c(R.drawable.ic_video_info_play);
          android.graphics.drawable.Drawable danmakuIcon = bl.adl.a.c(R.drawable.ic_video_info_danmaku);
          if (playIcon != null) {
            playIcon.setBounds(0, 0, iconSize, iconSize);
            playIcon.setColorFilter(bl.adl.d(R.color.white_50), android.graphics.PorterDuff.Mode.MULTIPLY);
          }
          if (danmakuIcon != null) {
            danmakuIcon.setBounds(0, 0, iconSize, iconSize);
            danmakuIcon.setColorFilter(bl.adl.d(R.color.white_50), android.graphics.PorterDuff.Mode.MULTIPLY);
          }
          vh.C().setCompoundDrawables(playIcon, null, null, null);
          vh.D().setCompoundDrawables(danmakuIcon, null, null, null);
          String coverUrl = archive.getString("pic") != null ? archive.getString("pic") : archive.getString("cover");
          if (coverUrl != null)
            nv.a().a(ach.c(com.bilibili.tv.MainApplication.a(), coverUrl), vh.z());
          vh.a.setTag(jo);
        } else if (item instanceof BiliSpaceVideo) {
          BiliSpaceVideo v = (BiliSpaceVideo) item;
          vh.A().setText(v.title);
          
          if (v.ctime != null && v.ctime > 0) {
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy年MM月dd日", java.util.Locale.CHINA);
            vh.B().setText(sdf.format(new java.util.Date(v.ctime * 1000)));
          } else {
            vh.B().setText("");
          }
          
          String playText = (v.play == 0) ? "0" : adh.a(v.play);
          vh.C().setText(playText);
          
          String danmakuText = "0";
          if (v.danmaku != null && !"0".equals(v.danmaku)) {
            danmakuText = adh.a(v.danmaku);
          }
          vh.D().setText(danmakuText);
          
          int durationVal = v.duration;
          if (durationVal >= 3600) {
            vh.E().setText(String.format("%d:%02d:%02d", durationVal / 3600, (durationVal % 3600) / 60, durationVal % 60));
          } else {
            vh.E().setText(String.format("%02d:%02d", durationVal / 60, durationVal % 60));
          }
          
          int iconSize = bl.adl.b(R.dimen.px_34);
          android.graphics.drawable.Drawable playIcon = bl.adl.a.c(R.drawable.ic_video_info_play);
          android.graphics.drawable.Drawable danmakuIcon = bl.adl.a.c(R.drawable.ic_video_info_danmaku);
          if (playIcon != null) {
            playIcon.setBounds(0, 0, iconSize, iconSize);
            playIcon.setColorFilter(bl.adl.d(R.color.white_50), android.graphics.PorterDuff.Mode.MULTIPLY);
          }
          if (danmakuIcon != null) {
            danmakuIcon.setBounds(0, 0, iconSize, iconSize);
            danmakuIcon.setColorFilter(bl.adl.d(R.color.white_50), android.graphics.PorterDuff.Mode.MULTIPLY);
          }
          vh.C().setCompoundDrawables(playIcon, null, null, null);
          vh.D().setCompoundDrawables(danmakuIcon, null, null, null);
          
          if (v.cover != null)
            nv.a().a(ach.c(com.bilibili.tv.MainApplication.a(), v.cover), vh.z());
          vh.a.setTag(v);
        }
        vh.a.setOnClickListener(this);
        vh.a.setOnFocusChangeListener(this);
      }
    }

    @Override
    public int a() {
      return this.data.size();
    }

    public void setVideos(List<? extends BiliSpaceVideo> list) {
      this.data.clear();
      this.data.addAll(list);
      d(0);
    }

    public void setJsonItems(List<JSONObject> list) {
      this.data.clear();
      this.data.addAll(list);
      d(0);
    }

    public void addVideos(List<? extends BiliSpaceVideo> list) {
      int s = this.data.size();
      this.data.addAll(list);
      d(s);
    }

    public void addJsonItems(List<JSONObject> list) {
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
      if (tag instanceof JSONObject) {
        JSONObject jo = (JSONObject) tag;
        JSONObject archive = jo;
        if (jo.getJSONObject("module_dynamic") != null)
          archive = jo.getJSONObject("module_dynamic").getJSONObject("major").getJSONObject("archive");
        long aid = archive.getLongValue("aid");
        a.startActivity(com.bilibili.tv.ui.video.VideoDetailActivity.Companion.a(a, aid));
      } else if (tag instanceof BiliSpaceVideo) {
        BiliSpaceVideo vdo = (BiliSpaceVideo) tag;
        long aid = 0;
        try {
          aid = Long.parseLong(vdo.param);
        } catch (Exception ignored) {
        }
        a.startActivity(com.bilibili.tv.ui.video.VideoDetailActivity.Companion.a(a, aid));
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

    public d(View view) {
      super(view);
      this.n = (com.bilibili.tv.widget.ScalableImageView) a(view, R.id.img);
      this.o = (TextView) a(view, R.id.title);
      this.p = (TextView) a(view, R.id.up);
      this.q = (TextView) a(view, R.id.play);
      this.r = (TextView) a(view, R.id.danmaku);
      this.duration = (TextView) a(view, R.id.duration);
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
