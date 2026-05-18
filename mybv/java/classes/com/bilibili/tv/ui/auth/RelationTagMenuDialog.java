package com.bilibili.tv.ui.auth;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;

import bl.mg;
import bl.vo;
import bl.vn;
import bl.lr;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.tv.R;

import java.util.ArrayList;
import java.util.List;

import mybl.CookieUtil;
import mybl.LogUtil;
import mybl.MyBiliApiService;
import mybl.RelationTagItem;

public class RelationTagMenuDialog extends Dialog {
    private static final String TAG = "RelationTagMenuDialog";

    private Activity activity;
    private long targetMid;
    private List<RelationTagItem> tagItems = new ArrayList<>();
    private RelationTagAdapter adapter;
    private boolean isOperating = false;
    private boolean isFollowed = false;
    private OnTagsChangedListener listener;

    public interface OnTagsChangedListener {
        void onTagsChanged(List<Long> selectedTagIds, boolean isFollowed);
    }

    public RelationTagMenuDialog(Activity activity, long targetMid) {
        super(activity);
        this.activity = activity;
        this.targetMid = targetMid;
    }

    public void setOnTagsChangedListener(OnTagsChangedListener listener) {
        this.listener = listener;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.dialog_relation_tag_menu);

        Window dialogWindow = getWindow();
        dialogWindow.setBackgroundDrawable(new ColorDrawable(0));
        dialogWindow.setFlags(
            WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN,
            WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN
        );
        WindowManager.LayoutParams params = dialogWindow.getAttributes();
        params.width = WindowManager.LayoutParams.MATCH_PARENT;
        params.height = WindowManager.LayoutParams.MATCH_PARENT;
        dialogWindow.setAttributes(params);

        View decorView = dialogWindow.getDecorView();
        decorView.setPadding(0, 0, 0, 0);

        LinearLayout menuContainer = (LinearLayout) findViewById(R.id.menu_container);
        menuContainer.setFocusable(true);
        menuContainer.setFocusableInTouchMode(true);

        View dimBackground = findViewById(R.id.dim_background);
        dimBackground.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
            }
        });

        android.support.v7.widget.RecyclerView recyclerView = 
            (android.support.v7.widget.RecyclerView) findViewById(R.id.relation_tag_list);
        recyclerView.setLayoutManager(new android.support.v7.widget.LinearLayoutManager(activity));
        adapter = new RelationTagAdapter(tagItems, new RelationTagAdapter.OnItemToggleListener() {
            @Override
            public void onItemToggle(RelationTagItem item, boolean isSelected, int position) {
                if (!isOperating) {
                    toggleTag(item, isSelected, position);
                }
            }
        });
        recyclerView.setAdapter(adapter);

        loadRelationTags();
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            dismiss();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void show() {
        super.show();
        android.support.v7.widget.RecyclerView recyclerView = 
            (android.support.v7.widget.RecyclerView) findViewById(R.id.relation_tag_list);
        if (recyclerView != null && adapter != null && adapter.a() > 0) {
            recyclerView.postDelayed(new Runnable() {
                @Override
                public void run() {
                    View firstChild = recyclerView.getChildAt(0);
                    if (firstChild != null) {
                        firstChild.requestFocus();
                    }
                }
            }, 100);
        }
    }

    private void loadRelationTags() {
        mg biliAccount = mg.a(activity);
        if (biliAccount == null) {
            Log.d(TAG, "User not logged in");
            return;
        }

        final String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        final String csrf = CookieUtil.getBiliJct(biliAccount);
        final MyBiliApiService apiService = (MyBiliApiService) vo.a(MyBiliApiService.class);

        Log.d(TAG, "Loading user current tags for mid: " + targetMid);

        apiService.getRelation(targetMid, cookie).a(new vn<JSONObject>() {
            @Override
            public void a(JSONObject response) {
                if (response != null) {
                    LogUtil.json(TAG, response);

                    int attribute = response.getIntValue("attribute");
                    isFollowed = (attribute == 2 || attribute == 6);
                    Log.d(TAG, "User follow status - attribute: " + attribute + ", isFollowed: " + isFollowed);

                    if (!isFollowed) {
                        Log.d(TAG, "User not followed, follow first");
                        followUserThenLoadTags(cookie, csrf, apiService);
                    } else {
                        final List<Long> currentTagIds = new ArrayList<>();
                        JSONArray tagArray = response.getJSONArray("tag");
                        if (tagArray != null && tagArray.size() > 0) {
                            for (int i = 0; i < tagArray.size(); i++) {
                                currentTagIds.add(tagArray.getLongValue(i));
                            }
                        } else {
                            currentTagIds.add(0L);
                        }
                        Log.d(TAG, "User current tag IDs: " + currentTagIds);
                        loadRelationTagsWithSelection(cookie, apiService, currentTagIds);
                    }
                }
            }

            @Override
            public boolean isCancel() {
                return activity == null || activity.isFinishing();
            }

            @Override
            public void onError(Throwable th) {
                Log.e(TAG, "Failed to get user relation", th);
                isFollowed = false;
                followUserThenLoadTags(cookie, csrf, apiService);
            }
        });
    }

    private void followUserThenLoadTags(final String cookie, final String csrf, final MyBiliApiService apiService) {
        Log.d(TAG, "Following user: " + targetMid);

        apiService.modifyRelation(targetMid, 1, 11, csrf, cookie).a(new vn<JSONObject>() {
            @Override
            public void a(JSONObject response) {
                Log.d(TAG, "Follow user success");
                isFollowed = true;
                final List<Long> defaultTagIds = new ArrayList<>();
                defaultTagIds.add(0L);
                loadRelationTagsWithSelection(cookie, apiService, defaultTagIds);
            }

            @Override
            public boolean isCancel() {
                return activity == null || activity.isFinishing();
            }

            @Override
            public void onError(Throwable th) {
                Log.e(TAG, "Follow user failed", th);
                activity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        lr.b(activity, "关注失败");
                        dismissWithoutSubmit();
                    }
                });
            }
        });
    }

    private void dismissWithoutSubmit() {
        super.dismiss();
    }

    private void loadRelationTagsWithSelection(String cookie, MyBiliApiService apiService, final List<Long> currentTagIds) {
        Log.d(TAG, "Loading relation tags");

        apiService.getRelationTags(true, "333.788", cookie).a(new vn<JSONArray>() {
            @Override
            public void a(JSONArray response) {
                if (response != null) {
                    LogUtil.json(TAG, response);

                    tagItems.clear();
                    for (int i = 0; i < response.size(); i++) {
                        JSONObject item = response.getJSONObject(i);
                        RelationTagItem tagItem = new RelationTagItem();
                        tagItem.setTagid(item.getLongValue("tagid"));
                        tagItem.setName(item.getString("name"));
                        tagItem.setCount(item.getIntValue("count"));
                        boolean isSelected = currentTagIds.contains(tagItem.getTagid());
                        tagItem.setSelected(isSelected);
                        tagItems.add(tagItem);
                    }

                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            adapter.notifyDataSetChanged();
                            final android.support.v7.widget.RecyclerView recyclerView = 
                                (android.support.v7.widget.RecyclerView) findViewById(R.id.relation_tag_list);
                            if (recyclerView != null) {
                                recyclerView.post(new Runnable() {
                                    @Override
                                    public void run() {
                                        View firstItem = recyclerView.getChildAt(0);
                                        if (firstItem != null) {
                                            firstItem.requestFocusFromTouch();
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            }

            @Override
            public boolean isCancel() {
                return activity == null || activity.isFinishing();
            }

            @Override
            public void onError(Throwable th) {
                Log.e(TAG, "Failed to load relation tags", th);
            }
        });
    }

    private void toggleTag(final RelationTagItem item, final boolean isSelected, final int position) {
        isOperating = true;

        item.setSelected(isSelected);
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                adapter.notifyItemChanged(position);
                isOperating = false;
            }
        });

        Log.d(TAG, "Tag " + item.getName() + " (" + item.getTagid() + ") selected: " + isSelected);
    }

    public List<Long> getSelectedTagIds() {
        List<Long> selectedIds = new ArrayList<>();
        for (RelationTagItem item : tagItems) {
            if (item.isSelected()) {
                selectedIds.add(item.getTagid());
            }
        }
        return selectedIds;
    }

    @Override
    public void dismiss() {
        submitTagsChange();
        super.dismiss();
    }

    private void submitTagsChange() {
        final List<Long> selectedTagIds = getSelectedTagIds();
        Log.d(TAG, "Selected tag IDs on dismiss: " + selectedTagIds);

        mg biliAccount = mg.a(activity);
        if (biliAccount == null) {
            Log.d(TAG, "User not logged in, skip submit");
            return;
        }

        final String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        final String csrf = CookieUtil.getBiliJct(biliAccount);
        final MyBiliApiService apiService = (MyBiliApiService) vo.a(MyBiliApiService.class);

        if (selectedTagIds.isEmpty()) {
            Log.d(TAG, "No tags selected, unfollow user");
            apiService.modifyRelation(targetMid, 2, 11, csrf, cookie).a(new vn<JSONObject>() {
                @Override
                public void a(JSONObject response) {
                    Log.d(TAG, "Unfollow success");
                    if (listener != null) {
                        activity.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                listener.onTagsChanged(selectedTagIds, false);
                            }
                        });
                    }
                }

                @Override
                public boolean isCancel() {
                    return activity == null || activity.isFinishing();
                }

                @Override
                public void onError(Throwable th) {
                    Log.e(TAG, "Unfollow failed", th);
                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            lr.b(activity, "取消关注失败");
                        }
                    });
                }
            });
        } else {
            StringBuilder tagIdsStr = new StringBuilder();
            for (int i = 0; i < selectedTagIds.size(); i++) {
                if (i > 0) {
                    tagIdsStr.append(",");
                }
                tagIdsStr.append(selectedTagIds.get(i));
            }
            Log.d(TAG, "Set tags: " + tagIdsStr.toString());

            apiService.setRelationTags(targetMid, tagIdsStr.toString(), csrf, cookie).a(new vn<JSONObject>() {
                @Override
                public void a(JSONObject response) {
                    Log.d(TAG, "Set tags success");
                    if (listener != null) {
                        activity.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                listener.onTagsChanged(selectedTagIds, true);
                            }
                        });
                    }
                }

                @Override
                public boolean isCancel() {
                    return activity == null || activity.isFinishing();
                }

                @Override
                public void onError(Throwable th) {
                    Log.e(TAG, "Set tags failed", th);
                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            lr.b(activity, "设置分组失败");
                        }
                    });
                }
            });
        }
    }
}
