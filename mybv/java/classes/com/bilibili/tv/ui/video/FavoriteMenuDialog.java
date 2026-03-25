package com.bilibili.tv.ui.video;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

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

public class FavoriteMenuDialog extends Dialog {
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
        super(activity);
        this.activity = activity;
        this.avid = avid;
        this.videoDetail = videoDetail;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.dialog_favorite_menu);
        
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        WindowManager.LayoutParams params = getWindow().getAttributes();
        params.width = WindowManager.LayoutParams.MATCH_PARENT;
        params.height = WindowManager.LayoutParams.MATCH_PARENT;
        getWindow().setAttributes(params);
        
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
        mg biliAccount = mg.a(activity);
        long mid = biliAccount.d();
        String accessKey = biliAccount.e();
        
        if (mid <= 0) {
            Log.d(TAG, "User not logged in");
            return;
        }
        
        MyBiliApiService apiService = (MyBiliApiService) vo.a(MyBiliApiService.class);
        String referer = "https://www.bilibili.com/video/av" + avid;
        vp<JSONObject> call = apiService.getCreatedFolderList(mid, avid, 2, "333.788", accessKey, referer);
        
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
                            if (folders != null) {
                                favoriteFolders.clear();
                                favoriteFolders.addAll(folders);
                                
                                activity.runOnUiThread(new Runnable() {
                                    @Override
                                    public void run() {
                                        adapter.notifyDataSetChanged();
                                        final android.support.v7.widget.RecyclerView recyclerView = (android.support.v7.widget.RecyclerView) findViewById(R.id.favorite_list);
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
                    } else {
                        Log.e(TAG, "API error: " + body.getString("message"));
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
