package com.bilibili.tv.ui.weekly;

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
import java.util.ArrayList;
import java.util.List;
import bl.adl;
import bl.adw;
import bl.adz;
import bl.agd;
import bl.bbi;
import bl.cj;
import bl.vn;
import bl.vo;
import bl.agf;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.base.BaseSideActivity;
import com.bilibili.tv.ui.live.LiveLeftLinearLayoutManger;
import com.bilibili.tv.widget.side.SideLeftSelectLinearLayout;
import mybl.MyBiliApiService;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;
import java.lang.ref.WeakReference;

public class WeeklyActivity extends BaseSideActivity {
    private a c;
    private List<WeeklyItem> weeklyItems = new ArrayList<>();
    private WeeklyItem selectedItem;

    @Override
    public void a(agd agdVar) {
    }

    @Override
    public int g() {
        return R.layout.activity_weekly;
    }

    public static void a(Context context) {
        context.startActivity(new Intent(context, WeeklyActivity.class));
    }

    @Override
    public void a(Bundle bundle) {
        b((RecyclerView) d(R.id.recycler_view));
        ((TextView) d(R.id.content_name)).setText("每周必看");
        loadWeeklyList();
    }

    @Override
    public void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        j().setLayoutManager(new LiveLeftLinearLayoutManger(this, 1, false));
        this.c = new a(this, weeklyItems);
        j().setAdapter(this.c);
        j().setFocusable(false);
        j().setHasFixedSize(true);
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
            if (keyCode == 20 || keyCode == 19) {
                try {
                    View predicted = currentFocus.focusSearch(keyCode == 20 ? View.FOCUS_DOWN : View.FOCUS_UP);
                    View fragmentView = null;
                    Fragment h = h();
                    if (h != null && h.getView() != null) {
                        fragmentView = h.getView();
                    }
                    if (predicted != null && isDescendantOf(j(), predicted)
                            && isDescendantOf(fragmentView, currentFocus)) {
                        return true;
                    }
                } catch (Exception ignored) {
                }
            }
            switch (keyCode) {
                case 21:
                    if (TextUtils.equals((CharSequence) ((View) currentFocus.getParent()).getTag(), adw.a)) {
                        this.c.b(false);
                        break;
                    }
                    break;
                case 22:
                    Fragment h = h();
                    if (h == null) {
                        return true;
                    }
                    if ((h instanceof adw) && !((adw) h).c()) {
                        return true;
                    }
                    if (currentFocus instanceof SideLeftSelectLinearLayout) {
                        ((SideLeftSelectLinearLayout) currentFocus).c();
                        this.c.b(true);
                        break;
                    }
                    break;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override
    public Fragment h() {
        if (getSupportFragmentManager() == null) {
            return null;
        }
        return getSupportFragmentManager().findFragmentById(R.id.fragment_container);
    }

    private boolean isDescendantOf(View parent, View child) {
        if (parent == null || child == null) {
            return false;
        }
        ViewParent p = child.getParent();
        while (p instanceof View) {
            if (p == parent) {
                return true;
            }
            p = p.getParent();
        }
        return false;
    }

    private void loadWeeklyList() {
        MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
        if (api == null) {
            return;
        }
        api.getWeeklySeriesList()
                .a(new vn<JSONObject>() {
                    @Override
                    public void a(JSONObject result) {
                        weeklyItems.clear();
                        if (result != null) {
                            JSONArray list = result.getJSONArray("list");
                            if (list != null && !list.isEmpty()) {
                                for (int i = 0; i < list.size(); i++) {
                                    JSONObject item = list.getJSONObject(i);
                                    WeeklyItem weeklyItem = new WeeklyItem();
                                    weeklyItem.number = item.getIntValue("number");
                                    weeklyItem.subject = item.getString("subject");
                                    weeklyItem.name = item.getString("name");
                                    weeklyItems.add(weeklyItem);
                                }
                            }
                        }
                        if (c != null) {
                            c.d();
                        }
                        if (!weeklyItems.isEmpty()) {
                            showVideoList(weeklyItems.get(0));
                        }
                    }

                    @Override
                    public boolean isCancel() {
                        return isFinishing();
                    }

                    @Override
                    public void onError(Throwable t) {
                        adl.a.a(t, WeeklyActivity.this);
                    }
                });
    }

    private void showVideoList(WeeklyItem item) {
        if (selectedItem == item) {
            return;
        }
        selectedItem = item;

        WeeklyVideoFragment fragment = WeeklyVideoFragment.newInstance(item.number, item.name, item.subject);

        getSupportFragmentManager()
                .beginTransaction()
                .replace(R.id.fragment_container, fragment)
                .commit();
    }

    public static class WeeklyItem {
        public int number;
        public String subject;
        public String name;
        
        public String getTitle() {
            return name != null ? name : "第" + number + "期";
        }
        
        public int getNumber() {
            return number;
        }
    }

    public static class a extends adz<RecyclerView.v> implements Runnable {
        private WeakReference<WeeklyActivity> a;
        private List<WeeklyItem> items;
        private int c;
        private long d;
        private boolean e;

        @Override
        public int e() {
            return 0;
        }

        public a(WeeklyActivity activity, List<WeeklyItem> items) {
            this.a = new WeakReference<>(activity);
            this.items = items;
        }

        @Override
        public RecyclerView.v a(ViewGroup viewGroup, int i) {
            return agf.a(viewGroup);
        }

        @Override
        public void a(final RecyclerView.v vVar, int i) {
            if (vVar instanceof agf) {
                final WeeklyItem item = items.get(i);

                agf holder = (agf) vVar;
                if (item.getTitle() != null) {
                    holder.n.setText(item.getTitle());
                }
                holder.n.setMaxLines(1);

                vVar.a.setTag(R.id.position, Integer.valueOf(i));
                vVar.a.setTag(item);

                vVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View view, boolean z) {
                        WeeklyActivity activity = a.this.a.get();
                        if (!z) {
                            view.removeCallbacks(a.this);
                            if (a.this.e) {
                                return;
                            }
                            vVar.a.setSelected(false);
                            holder.n.setMaxLines(1);
                            return;
                        }
                        if (activity == null || activity.isFinishing()) {
                            return;
                        }
                        int f = vVar.f();
                        if (System.currentTimeMillis() - a.this.d < 500) {
                            view.removeCallbacks(a.this);
                        }
                        a.this.c = f;
                        a.this.d = System.currentTimeMillis();
                        vVar.a.setSelected(true);
                        if (vVar.a instanceof SideLeftSelectLinearLayout) {
                            ((SideLeftSelectLinearLayout) vVar.a).a();
                        }
                        holder.n.setMaxLines(3);
                        activity.b(4);
                        view.postDelayed(a.this, 500L);
                    }
                });

                vVar.a.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        WeeklyActivity activity = a.this.a.get();
                        if (activity != null) {
                            WeeklyItem clickedItem = (WeeklyItem) view.getTag();
                            activity.showVideoList(clickedItem);
                        }
                    }
                });
            }
        }

        @Override
        public void run() {
            WeeklyActivity activity = this.a.get();
            if (activity == null) {
                return;
            }
            int i = this.c;
            if (i < 0 || i >= this.items.size()) {
                return;
            }
            WeeklyItem item = this.items.get(i);
            activity.showVideoList(item);
        }

        public void b(boolean z) {
            this.e = z;
        }

        @Override
        public int a() {
            return this.items.size();
        }
    }
}
