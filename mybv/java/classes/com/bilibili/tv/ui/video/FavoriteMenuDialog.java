package com.bilibili.tv.ui.video;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import bl.lr;
import bl.mg;
import bl.vo;
import bl.vm;
import bl.vn;
import bl.vp;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.favorite.BiliFavoriteVideoApiService;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.okretro.GeneralResponse;

import java.util.ArrayList;
import java.util.List;

import mybl.FavoriteFolder;
import mybl.LogUtil;
import mybl.MyBiliApiService;

public class FavoriteMenuDialog extends RightSlidePanelDialog {
    private static final String TAG = "FavoriteMenuDialog";
    
    private Activity activity;
    private long avid;
    private BiliVideoDetail videoDetail;
    private List<FavoriteFolder> favoriteFolders = new ArrayList<>();
    private FavoriteMenuAdapter adapter;
    private boolean isOperating = false;
    private OnFavoriteStatusChangedListener listener;

    public interface OnFavoriteStatusChangedListener {
        void onFavoriteStatusChanged(boolean isFavorited);
    }

    public FavoriteMenuDialog(Activity activity, long avid, BiliVideoDetail videoDetail) {
        super(activity, 300, true);
        this.activity = activity;
        this.avid = avid;
        this.videoDetail = videoDetail;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // 先注入内容布局（父类 onCreate 中会加入 panel_content 容器）
        setContent(LayoutInflater.from(activity).inflate(R.layout.dialog_favorite_menu_content, null));
        super.onCreate(savedInstanceState);

        android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.favorite_list);
        recyclerView.setLayoutManager(new android.support.v7.widget.LinearLayoutManager(activity));
        adapter = new FavoriteMenuAdapter(favoriteFolders, new FavoriteMenuAdapter.OnItemCheckedChangeListener() {
            @Override
            public void onItemCheckedChange(FavoriteFolder folder, boolean isChecked, int position) {
                if (!isOperating) {
                    toggleFavorite(folder, isChecked, position);
                }
            }
        });
        recyclerView.setAdapter(adapter);
        
        loadFavoriteFolders();
    }

    @Override
    public void show() {
        super.show();
        android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.favorite_list);
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

    private void loadFavoriteFolders() {
        if (activity == null || activity.isFinishing()) {
            Log.e(TAG, "Activity is null or finishing");
            return;
        }
        
        mg biliAccount = mg.a(activity);
        if (biliAccount == null) {
            Log.e(TAG, "BiliAccount is null");
            lr.a(activity, "获取账号信息失败");
            return;
        }
        
        long mid = biliAccount.d();
        String cookie = mybl.CookieUtil.getFullCookieWithDevice(biliAccount);
        
        if (mid <= 0) {
            Log.d(TAG, "User not logged in");
            lr.a(activity, "账号未登录");
            return;
        }
        
        MyBiliApiService apiService = (MyBiliApiService) vo.a(MyBiliApiService.class);
        String referer = "https://www.bilibili.com/video/av" + avid;
        vp<JSONObject> call = apiService.getCreatedFolderList(mid, avid, 2, "333.788", referer, cookie);
        
        Log.d(TAG, "Loading favorite folders for avid: " + avid + ", mid: " + mid);
        
        call.a(new vm<JSONObject>() {
            @Override
            public void onSuccess(JSONObject body) {
                if (body != null) {
                    LogUtil.json(TAG, body);
                    
                    int code = body.getIntValue("code");
                    if (code == 0) {
                        JSONObject data = body.getJSONObject("data");
                        if (data != null) {
                            List<FavoriteFolder> folders = JSON.parseArray(data.getString("list"), FavoriteFolder.class);
                            
                            if (folders == null || folders.isEmpty()) {
                                // 显示空列表提示
                                activity.runOnUiThread(new Runnable() {
                                    @Override
                                    public void run() {
                                        if (activity == null || activity.isFinishing()) return;
                                        
                                        TextView emptyText = (TextView) findViewById(R.id.empty_text);
                                        if (emptyText != null) {
                                            emptyText.setVisibility(View.VISIBLE);
                                        }
                                        
                                        android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.favorite_list);
                                        if (recyclerView != null) {
                                            recyclerView.setVisibility(View.GONE);
                                        }
                                    }
                                });
                                return;
                            }
                            
                            favoriteFolders.clear();
                            favoriteFolders.addAll(folders);
                            
                            activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    if (activity == null || activity.isFinishing()) return;
                                    
                                    adapter.notifyDataSetChanged();
                                    final android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.favorite_list);
                                    if (recyclerView != null) {
                                        recyclerView.post(new Runnable() {
                                            @Override
                                            public void run() {
                                                if (activity == null || activity.isFinishing()) return;
                                                if (adapter.a() == 0) return;
                                                
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
                    } else {
                        Log.e(TAG, "API error: " + body.getString("message"));
                        activity.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if (activity == null || activity.isFinishing()) return;
                                lr.a(activity, "获取收藏夹列表失败: " + body.getString("message"));
                            }
                        });
                    }
                }
            }

            @Override
            public boolean isCancel() {
                return activity == null || activity.isFinishing();
            }

            @Override
            public void onError(Throwable th) {
                Log.e(TAG, "Failed to load favorite folders", th);
                if (activity != null && !activity.isFinishing()) {
                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            if (activity == null || activity.isFinishing()) return;
                            lr.a(activity, "加载收藏夹失败");
                        }
                    });
                }
            }
        });
    }

    private void toggleFavorite(final FavoriteFolder folder, final boolean isChecked, final int position) {
        isOperating = true;
        
        BiliFavoriteVideoApiService apiService = (BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class);
        mg biliAccount = mg.a(activity);
        String accessKey = biliAccount.e();
        String fid = String.valueOf(folder.getFid());
        
        if (isChecked) {
            Log.d(TAG, "Adding video " + avid + " to folder: " + folder.getTitle() + " (fid: " + fid + ")");
            apiService.addVideoToList(accessKey, fid, avid, "0").a(new vn<Void>() {
                @Override
                public void a(Void result) {
                    isOperating = false;
                    folder.setFavState(1);
                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            adapter.notifyItemChanged(position);
                            updateMainFavoriteStatus();
                        }
                    });
                }

                @Override
                public boolean isCancel() {
                    return activity == null || activity.isFinishing();
                }

                @Override
                public void onError(Throwable th) {
                    isOperating = false;
                    Log.e(TAG, "Failed to add video to favorite", th);
                    if (activity != null && !activity.isFinishing()) {
                        activity.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if (activity == null || activity.isFinishing()) return;
                                lr.a(activity, "添加收藏失败");
                            }
                        });
                    }
                }
            });
        } else {
            Log.d(TAG, "Removing video " + avid + " from folder: " + folder.getTitle() + " (fid: " + fid + ")");
            apiService.deleteVideoFromList(accessKey, fid, avid).a(new vn<Void>() {
                @Override
                public void a(Void result) {
                    isOperating = false;
                    folder.setFavState(0);
                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            adapter.notifyItemChanged(position);
                            updateMainFavoriteStatus();
                        }
                    });
                }

                @Override
                public boolean isCancel() {
                    return activity == null || activity.isFinishing();
                }

                @Override
                public void onError(Throwable th) {
                    isOperating = false;
                    Log.e(TAG, "Failed to remove video from favorite", th);
                    if (activity != null && !activity.isFinishing()) {
                        activity.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if (activity == null || activity.isFinishing()) return;
                                lr.a(activity, "取消收藏失败");
                            }
                        });
                    }
                }
            });
        }
    }

    private void updateMainFavoriteStatus() {
        boolean hasAnyFavorited = false;
        for (FavoriteFolder folder : favoriteFolders) {
            if (folder.isFavored()) {
                hasAnyFavorited = true;
                break;
            }
        }
        
        if (listener != null) {
            listener.onFavoriteStatusChanged(hasAnyFavorited);
        }
    }

    public void setOnFavoriteStatusChangedListener(OnFavoriteStatusChangedListener listener) {
        this.listener = listener;
    }
}
