package com.bilibili.tv.ui.auth;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

import com.bilibili.tv.R;
import com.bilibili.tv.ui.base.BaseSideActivity;
import com.bilibili.tv.ui.live.LiveLeftLinearLayoutManger;
import com.bilibili.tv.widget.side.SideLeftSelectLinearLayout;
import bl.adz;
import bl.agf;
import bl.agd;
import bl.vn;
import bl.vo;
import bl.adl;
import bl.adw;
import bl.mg;
import mybl.MyBiliApiService;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;
import android.util.Log;

public class AuthSpaceSideActivity extends BaseSideActivity {
  private a c;
  private List<MenuItem> menuItems = new ArrayList<>();
  private MenuItem selectedItem;
  private boolean h = false;
  private boolean g = true;
  private int f = 1;
  private long targetMid = 0L;
  private String targetUname = "";

  public static void start(Context ctx, long mid, String uname) {
    Intent it = new Intent(ctx, AuthSpaceSideActivity.class);
    it.putExtra("mid", mid);
    it.putExtra("uname", uname);
    ctx.startActivity(it);
  }

  @Override
  public int g() {
    return R.layout.activity_auth_space_side;
  }

  @Override
  public void a(agd agdVar) {
  }

  @Override
  public void a(Bundle bundle) {
    targetMid = getIntent().getLongExtra("mid", 0L);
    targetUname = getIntent().getStringExtra("uname");
    if (targetUname == null) targetUname = "";
    String title = TextUtils.isEmpty(targetUname) ? "全部视频" : targetUname;
    ((TextView) d(R.id.content_name)).setText(title);
    b((RecyclerView) d(R.id.recycler_view));
    loadMenu();
  }

  @Override
  public void onPostCreate(@Nullable Bundle bundle) {
    super.onPostCreate(bundle);
    j().setLayoutManager(new LiveLeftLinearLayoutManger(this, 1, false));
    this.c = new a(this, menuItems);
    j().setAdapter(this.c);
    j().setFocusable(false);
    j().setHasFixedSize(true);
    j().a(new RecyclerView.m() {
      @Override
      public void a(RecyclerView recyclerView, int i) {
        super.a(recyclerView, i);
        if (AuthSpaceSideActivity.this.h || !AuthSpaceSideActivity.this.g || AuthSpaceSideActivity.this.c == null) {
          return;
        }
        LiveLeftLinearLayoutManger layoutManager = (LiveLeftLinearLayoutManger) recyclerView.getLayoutManager();
        if (layoutManager == null) {
          return;
        }
        int lastVisibleItemPosition = layoutManager.p();
        if (layoutManager.x() > 0) {
          int loadThreshold = lastVisibleItemPosition + 10;
          if (loadThreshold >= layoutManager.H() - 1) {
            int totalItemCount = layoutManager.H();
            if (totalItemCount > layoutManager.x()) {
              AuthSpaceSideActivity.this.f++;
              AuthSpaceSideActivity.this.loadMenuPage(AuthSpaceSideActivity.this.f);
            }
          }
        }
      }
    });
  }

  @Override
  public boolean dispatchKeyEvent(KeyEvent keyEvent) {
    if (this.c == null) {
      return super.dispatchKeyEvent(keyEvent);
    }
    int action = keyEvent.getAction();
    int keyCode = keyEvent.getKeyCode();
    if (action == 0) {
      View currentFocus = getCurrentFocus();
      if (currentFocus == null) {
        return super.dispatchKeyEvent(keyEvent);
      }
      switch (keyCode) {
        case 21:
          if (TextUtils.equals((CharSequence) ((View) currentFocus.getParent()).getTag(), adw.a)) {
            this.c.b(false);
          }
          break;
        case 22:
          Fragment frag = h();
          if (frag == null) {
            return true;
          }
          if ((frag instanceof adw) && !((adw) frag).c()) {
            return true;
          }
          if (currentFocus instanceof SideLeftSelectLinearLayout) {
            ((SideLeftSelectLinearLayout) currentFocus).c();
            this.c.b(true);
          }
          break;
      }
      int dir = -1;
      if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) dir = View.FOCUS_DOWN;
      else if (keyCode == KeyEvent.KEYCODE_DPAD_UP) dir = View.FOCUS_UP;
      else if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) dir = View.FOCUS_LEFT;
      else if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) dir = View.FOCUS_RIGHT;
      if (dir != -1) {
        try {
          View predicted = currentFocus.focusSearch(dir);
          if (predicted != null) {
            RecyclerView leftRv = j();
            if (leftRv != null && isDescendantOfView(predicted, leftRv)) {
              Fragment fragment = h();
              if (fragment instanceof AuthSpaceVideoFragment) {
                AuthSpaceVideoFragment avf = (AuthSpaceVideoFragment) fragment;
                if (avf.isLoading()) {
                  Log.d("AuthSpaceSideActivity", "Swallow key " + keyCode + " because right side loading and predicted focus on left");
                  return true;
                }
              }
            }
          }
        } catch (Exception ignored) {
        }
      }
    }
    return super.dispatchKeyEvent(keyEvent);
  }

  private boolean isDescendantOfView(View view, View parentView) {
    if (view == null || parentView == null) return false;
    View cur = view;
    while (cur != null) {
      if (cur == parentView) return true;
      ViewParent parent = cur.getParent();
      if (!(parent instanceof View)) break;
      cur = (View) parent;
    }
    return false;
  }

  @Override
  public Fragment h() {
    if (getSupportFragmentManager() == null)
      return null;
    return getSupportFragmentManager().findFragmentById(R.id.fragment_container);
  }

  private void loadMenu() {
    menuItems.clear();
    menuItems.add(new MenuItem(-1, "全部视频", 0));
    this.f = 1;
    this.g = true;
    this.h = false;
    loadMenuPage(1);
  }

  private void loadMenuPage(final int pageNum) {
    if (this.h || !this.g) {
      return;
    }
    this.h = true;
    mg biliAccount = mg.a(this);
    if (biliAccount == null) {
      this.h = false;
      updateMenu();
      return;
    }
    ((MyBiliApiService) vo.a(MyBiliApiService.class)).getSeasonsSeriesList(biliAccount.e(), targetMid, 20, pageNum, "333.1387")
        .a(new vn<JSONObject>() {
          @Override
          public void a(JSONObject resp) {
            if (AuthSpaceSideActivity.this.c == null) {
              return;
            }
            AuthSpaceSideActivity.this.h = false;
            try {
              if (resp == null || resp.getJSONObject("items_lists") == null) {
                AuthSpaceSideActivity.this.g = false;
                AuthSpaceSideActivity.this.updateMenu();
                return;
              }
              JSONObject itemsLists = resp.getJSONObject("items_lists");
              JSONArray seasons = itemsLists.getJSONArray("seasons_list");
              JSONArray series = itemsLists.getJSONArray("series_list");

              if (seasons != null) {
                for (int i = 0; i < seasons.size(); i++) {
                  JSONObject it = seasons.getJSONObject(i);
                  JSONObject meta = it.getJSONObject("meta");
                  if (meta != null) {
                    String name = meta.getString("name");
                    long sid = meta.getLongValue("season_id");
                    menuItems.add(new MenuItem(sid, name, 1));
                  }
                }
              }
              if (series != null) {
                for (int i = 0; i < series.size(); i++) {
                  JSONObject it = series.getJSONObject(i);
                  JSONObject meta = it.getJSONObject("meta");
                  if (meta != null) {
                    String name = meta.getString("name");
                    long sid = meta.getLongValue("series_id");
                    menuItems.add(new MenuItem(sid, name, 2));
                  }
                }
              }

              JSONObject pageInfo = itemsLists.getJSONObject("page");
              int total = pageInfo != null ? pageInfo.getIntValue("total") : 0;
              int pageSize = pageInfo != null ? pageInfo.getIntValue("page_size") : 20;
              int respPageNum = pageInfo != null ? pageInfo.getIntValue("page_num") : pageNum;
              AuthSpaceSideActivity.this.g = (respPageNum * pageSize) < total;
              AuthSpaceSideActivity.this.updateMenu();
            } catch (Exception ex) {
              Log.e("AuthSpaceSideActivity", "parse error", ex);
              AuthSpaceSideActivity.this.g = false;
              AuthSpaceSideActivity.this.updateMenu();
            }
          }

          @Override
          public boolean isCancel() {
            return isFinishing();
          }

          @Override
          public void onError(Throwable t) {
            adl.a.a(t, AuthSpaceSideActivity.this);
            if (AuthSpaceSideActivity.this.c == null) {
              return;
            }
            AuthSpaceSideActivity.this.h = false;
            AuthSpaceSideActivity.this.g = false;
            AuthSpaceSideActivity.this.updateMenu();
          }
        });
  }

  private void updateMenu() {
    if (c != null) {
      final RecyclerView recyclerView = j();
      View focusedView = recyclerView.getFocusedChild();
      final int focusedPosition;
      if (focusedView != null) {
        focusedPosition = recyclerView.g(focusedView);
      } else {
        focusedPosition = -1;
      }
      c.b(true);
      c.d();
      if (focusedPosition != -1 && focusedPosition < menuItems.size()) {
        recyclerView.post(new Runnable() {
          @Override
          public void run() {
            if (recyclerView.getChildCount() > 0) {
              for (int i = 0; i < recyclerView.getChildCount(); i++) {
                View child = recyclerView.getChildAt(i);
                int childPosition = recyclerView.g(child);
                if (childPosition == focusedPosition) {
                  child.requestFocus();
                  c.b(false);
                  return;
                }
              }
              recyclerView.getChildAt(0).requestFocus();
            }
            c.b(false);
          }
        });
      } else {
        c.b(false);
      }
    }
    if (!menuItems.isEmpty() && selectedItem == null) {
      showVideoList(menuItems.get(0));
    }
  }

  private void showVideoList(MenuItem item) {
    if (selectedItem == item) {
      return;
    }
    selectedItem = item;
    AuthSpaceVideoFragment frag;
    if (item.type == 0) {
      frag = AuthSpaceVideoFragment.newInstance("all", targetMid, -1);
    } else if (item.type == 1) {
      frag = AuthSpaceVideoFragment.newInstance("season", targetMid, item.id);
    } else {
      frag = AuthSpaceVideoFragment.newInstance("series", targetMid, item.id);
    }
    getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, frag).commit();
  }

  public static class MenuItem {
    public long id;
    public String name;
    public int type;

    public MenuItem(long id, String name, int type) {
      this.id = id;
      this.name = name;
      this.type = type;
    }
  }

  public static class a extends adz<RecyclerView.v> implements Runnable {
    private WeakReference<AuthSpaceSideActivity> a;
    private List<MenuItem> menuItems;
    private int c;
    private long d;
    private boolean e;

    public a(AuthSpaceSideActivity activity, List<MenuItem> items) {
      this.a = new WeakReference<>(activity);
      this.menuItems = items;
    }

    @Override
    public int e() {
      return 0;
    }

    @Override
    public RecyclerView.v a(ViewGroup parent, int viewType) {
      return agf.a(parent);
    }

    @Override
    public void a(final RecyclerView.v holder, int pos) {
      if (holder instanceof agf) {
        final MenuItem item = menuItems.get(pos);
        final agf h = (agf) holder;
        if (item.name != null)
          h.n.setText(item.name);
        h.n.setMaxLines(1);
        holder.a.setTag(item);
        holder.a.setTag(R.id.position, pos);
        holder.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
          @Override
          public void onFocusChange(View v, boolean has) {
            AuthSpaceSideActivity act = a.this.a.get();
            if (!has) {
              v.removeCallbacks(a.this);
              if (a.this.e)
                return;
              v.setSelected(false);
              h.n.setMaxLines(1);
              return;
            }
            if (act == null || act.isFinishing())
              return;
            a.this.c = holder.f();
            a.this.d = System.currentTimeMillis();
            a.this.e = false;
            v.postDelayed(a.this, 500L);
            v.setOnClickListener(new View.OnClickListener() {
              @Override
              public void onClick(View vv) {
                AuthSpaceSideActivity act = a.this.a.get();
                if (act == null || act.isFinishing())
                  return;
                act.showVideoList(item);
              }
            });
            v.setSelected(true);
            if (v instanceof SideLeftSelectLinearLayout)
              ((SideLeftSelectLinearLayout) v).a();
            h.n.setMaxLines(3);
            act.b(4);
          }
        });
      }
    }

    @Override
    public int a() {
      return menuItems.size();
    }

    public void b(boolean z) {
      this.e = z;
    }

    public int f() {
      return this.c;
    }

    @Override
    public void run() {
      AuthSpaceSideActivity act = this.a.get();
      if (act == null || act.isFinishing()) return;
      if (menuItems == null || this.c >= menuItems.size()) return;
      try {
        if (this.e) return;
        RecyclerView left = act.j();
        View target = null;
        if (left != null) {
          for (int i = 0; i < left.getChildCount(); i++) {
            View child = left.getChildAt(i);
            if (left.g(child) == this.c) {
              target = child;
              break;
            }
          }
        }
        if (target == null || !target.isAttachedToWindow() || !target.hasFocus())
          return;
        Fragment frag = act.h();
        if (frag instanceof AuthSpaceVideoFragment) {
          AuthSpaceVideoFragment asv = (AuthSpaceVideoFragment) frag;
          if (asv.isLoading())
            return;
        }
        act.showVideoList(menuItems.get(this.c));
      } catch (Exception ignored) {
      }
    }
  }
}
