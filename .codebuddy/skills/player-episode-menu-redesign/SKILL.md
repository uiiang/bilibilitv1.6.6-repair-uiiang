---
name: "player-episode-menu-redesign"
description: "播放页选集列表改造方案。将左侧垂直列表改为底部横向菜单，支持视频卡片和导航标签。Invoke when redesigning player episode menu or implementing bottom horizontal episode list."
---

# 播放页选集列表改造方案

**文档版本**: v11.0  
**最后更新**: 2026-04-09  
**维护者**: AI Assistant

---

## 一、需求概述

### 1.1 改造目标

将播放页的左侧垂直选集列表改造为底部横向选集菜单，提升用户体验和视觉效果。

### 1.2 核心需求

#### 1.2.1 基本需求

1. **触发方式**：按遥控器上键呼出，**无操作后**5秒自动关闭
   - ⚠️ **重要**：不是菜单弹出后5秒，而是用户无操作后5秒
   - 每次用户操作（按键、焦点移动、点击等）都要重置5秒倒计时

2. **布局样式**：
   - 第1行：视频卡片的紧凑布局（横向滚动）
   - 第2行：导航标签（01-10, 11-20等）
   - **导航标签显示条件**：
     - 视频数量 <= 10：不显示导航标签
     - 视频数量 > 10：显示导航标签，每10个一组
   - **菜单高度**：根据内容自动适应（标题 + 视频列表 + 导航标签列表显示后，菜单高度自动适应）
   - **菜单宽度**：横向充满屏幕，没有左右边距
   - **间距**：视频卡片间距和导航标签间距，保持与视频详情页的视频卡片间距和导航标签间距一致

3. **焦点行为**：
   - 选集菜单呼出后，当前播放集自动滚动到屏幕最左侧（第1位）并获得焦点
   - **当前播放集不高亮**：取消当前播放集的高亮显示需求

4. **关闭方式**：
   - 只有按返回键时才主动关闭菜单，其他按键不关闭菜单
   - **点击其他视频后，菜单立即关闭**

5. **播放行为**：
   - 呼出菜单时视频继续播放
   - 关闭菜单后视频继续播放

6. **异常处理**：
   - 如果播放列表为空，不显示选集菜单
   - 单个视频，不显示选集菜单

#### 1.2.2 数据传递需求

1. **播放列表标题**：分P或合集列表的标题应显示在选集列表上面
   - **标题格式**：`标题(集数)`，例如"选集(12)"、"正片(24)"
   - **字体大小**：`@dimen/px_36`（与视频详情页一致）
   - **文字颜色**：`@color/white`（与视频详情页一致）
   - **左边距**：`@dimen/px_20`（与视频详情页一致）
   - **上边距**：`@dimen/px_16`（与视频详情页一致）
   - **标题来源**：
     - UGC分P列表：固定标题"选集"
     - PGC剧集列表：固定标题"选集"
     - UGC合集列表：使用section的title字段（如"正片"、"花絮"等）
   
2. **图片和时长**：每集的图片和时长应随播放列表一起传入
3. **数据完整性**：确保UGC分P列表、PGC剧集列表、UGC合集列表的数据都能正确传递

#### 1.2.3 焦点管理需求

1. **焦点保存和恢复**：焦点在视频列表和导航标签之间移动时保存和恢复焦点位置
2. **双向同步**：视频列表和导航标签双向同步滚动
3. **焦点边界处理**：
   - 视频卡片按上键：焦点保持不变（没有上方组件）
   - 导航标签按下键：焦点保持不变（没有下方组件）
   - 视频卡片按下键：如果有导航标签则移动到导航标签，否则保持不变
4. **焦点框样式**：与视频详情页的视频列表焦点边框一致
5. **焦点音效**：焦点移动无音效

#### 1.2.4 交互细节

1. **动画效果**：焦点移动、滚动、点击不需要动画
2. **时长格式**：`HH:mm:ss`（例如：01:23:45、00:05:30）
3. **标题截断**：标题过长时末尾截断，直接在layout.xml中实现（使用`ellipsize="end"`）

---

## 二、技术方案

### 2.1 核心方案：复用VideoListSection组件

**方案**：直接复用视频详情页的`VideoListSection`组件，无需重新实现焦点管理逻辑。

**优势**：
- ✅ 焦点保存和恢复机制已完整实现
- ✅ 视频列表与导航标签双向同步已实现
- ✅ 焦点边界处理已实现
- ✅ 代码复用率高，维护成本低

### 2.2 文件修改清单

#### 2.2.1 新建文件（共2个）

| 序号 | 文件名 | 路径 | 说明 |
|------|--------|------|------|
| 1 | `BottomEpisodeMenu.java` | `mybv/java/classes/bl/` | 底部选集菜单控制器 |
| 2 | `EpisodeBinder.java` | `mybv/java/classes/bl/` | 选集数据绑定器 |

#### 2.2.2 修改文件（共5个）

| 序号 | 文件名 | 路径 | 修改内容 |
|------|--------|------|---------|
| 1 | `xl.java` | `mybv/java/classes/bl/` | 移除左侧菜单代码，添加底部菜单，修改按键处理逻辑 |
| 2 | `VideoListSection.java` | `mybv/java/classes/com/bilibili/tv/ui/video/widget/` | 添加`scrollToCurrentVideoAtFirstPosition()`和`setupBottomMenuFocusBoundary()`方法 |
| 3 | `xg.java` | `mybv/java/classes/bl/` | 添加播放列表标题和总数传递逻辑 |
| 4 | `VideoDetailActivity.java` | `mybv/java/classes/com/bilibili/tv/ui/video/` | 在playVideo()方法中传递播放列表标题和总数 |
| 5 | `in_from_bottom.xml` / `out_to_bottom.xml` | `mybv/res/anim/` | 修改duration为200ms，添加alpha动画 |

#### 2.2.3 可复用组件（共3个）

| 序号 | 组件名 | 说明 |
|------|--------|------|
| 1 | `VideoListSection` | ✅ 视频列表组件（包含导航标签、焦点记忆） |
| 2 | `NavigationTagAdapter` | ✅ 导航标签适配器 |
| 3 | `CompactVideoHolder` | ✅ 紧凑视频卡片布局 |

---

## 三、数据传递方案

### 3.1 现有数据流分析

**播放列表数据已通过 `ResolveResourceParams[]` 数组传递**，存储在 `PlayerParams.mVideoParams.mResolveParamsArray` 中。

**xl.java 中获取播放列表数据**：
```java
private void T() {
    if (this.j != null) {
        return;
    }
    PlayerParams b = b();
    this.j = b.mVideoParams.getResolveParamsArray();  // 已有播放列表数据
    // ...
}
```

### 3.2 需要补充的数据

| 数据项 | 字段名 | 说明 |
|--------|--------|------|
| 时长 | `mDuration` | 需要添加到 `ResolveResourceParams` |
| 播放列表标题 | `playlist_title` | 通过 Intent 传递 |
| 播放列表数量 | `playlist_count` | 通过 Intent 传递 |

### 3.3 添加 mDuration 字段

**文件**：`mybv/java/classes/com/bilibili/tv/player/basic/context/ResolveResourceParams.java`

**⚠️ 重要**：需要添加字段声明、writeToParcel 序列化、构造函数反序列化三处修改。

```java
// 1. 添加字段声明（在现有字段区域，约第50行）
public int mDuration;         // 时长（单位：秒）- 新增字段

// 2. 在 writeToParcel 方法中添加（约第310行，在 view_points 写入之前）
parcel.writeInt(this.mDuration);

// 3. 在构造函数 ResolveResourceParams(Parcel parcel) 中添加（约第340行，在 view_points 读取之前）
this.mDuration = parcel.readInt();
```

### 3.4 修改 xg.java 传递时长数据

**⚠️ 重要**：需要搜索 xg.java 中的关键代码位置，添加时长传递。

**UGC分P列表**（搜索 `page2.mTitle` 或 `page2.mEpCover`）：
```java
resolveResourceParams.mEpCover = page2.mEpCover;
resolveResourceParams.mPageTitle = page2.mTitle;
resolveResourceParams.mDuration = page2.duration;  // 新增
```

**PGC剧集列表**（搜索 `bangumiEpisodeEx.cover` 或 `bangumiEpisodeEx.long_title`）：
```java
resolveResourceParams.mEpCover = bangumiEpisodeEx.cover;
resolveResourceParams.mPageTitle = bangumiEpisodeEx.long_title;
resolveResourceParams.mDuration = (int) (bangumiEpisodeEx.duration / 1000);  // 新增，毫秒转秒
```

**UGC合集列表**（搜索 `episode.getString("title")`）：
```java
resolveResourceParams.mEpCover = episode.getString("cover");  // 新增
resolveResourceParams.mPageTitle = episode.getString("title");
resolveResourceParams.mDuration = episode.getIntValue("duration");  // 新增
```

### 3.5 标题传递方案

**最简方案**：通过 Intent 传递标题和数量

**修改 xg.java**（在 `a(Activity, PlayerParams, Bundle, int)` 方法中）：
```java
public static void a(Activity activity, PlayerParams playerParams, Bundle bundle, int requestCode) {
    // ... 现有代码 ...
    
    Intent intent = PlayerActivity.a(activity, playerParams);
    
    // 新增：传递播放列表标题和数量
    ResolveResourceParams[] paramsArray = playerParams.mVideoParams.mResolveParamsArray;
    if (paramsArray != null && paramsArray.length > 1) {
        intent.putExtra("playlist_title", "选集");  // 默认标题
        intent.putExtra("playlist_count", paramsArray.length);
    }
    
    // ... 现有代码 ...
}
```

### 3.6 标题来源总结

| 视频类型 | 标题来源 | 示例 |
|---------|---------|------|
| UGC分P列表 | 固定标题"选集" | "选集(12)" |
| PGC剧集列表 | 固定标题"选集" | "选集(24)" |
| UGC合集列表 | 固定标题"选集" | "选集(36)" |

**注意**：UGC合集的 section.title（如"正片"、"花絮"）暂不传递，统一使用"选集"标题。

### 3.7 EpisodeBinder 数据类型处理

**文件**：`mybv/java/classes/bl/EpisodeBinder.java`

**数据类型**：播放列表数据统一使用 `ResolveResourceParams` 类型，不需要区分 UGC/PGC/UGC合集。

**⚠️ 重要**：EpisodeBinder 需要持有 VideoListSection 和 BottomEpisodeMenu 的引用，以便：
1. 保存视频焦点位置
2. 更新导航标签选中状态
3. 重置自动隐藏计时器

```java
package bl;

import android.view.View;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.ui.video.widget.CompactVideoHolder;
import com.bilibili.tv.ui.video.widget.VideoCardBinder;
import com.bilibili.tv.ui.video.widget.VideoListSection;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import bl.abd;
import bl.nv;

public class EpisodeBinder implements VideoCardBinder {
    private VideoListSection videoListSection;
    private BottomEpisodeMenu bottomEpisodeMenu;
    
    // 构造函数
    public EpisodeBinder(VideoListSection videoListSection, BottomEpisodeMenu bottomEpisodeMenu) {
        this.videoListSection = videoListSection;
        this.bottomEpisodeMenu = bottomEpisodeMenu;
    }
    
    @Override
    public void bindCompact(CompactVideoHolder holder, Object data, int position) {
        if (data instanceof ResolveResourceParams) {
            ResolveResourceParams params = (ResolveResourceParams) data;
            
            // 设置标题
            holder.getTitleView().setText(params.mPageTitle);
            
            // 设置封面
            bindCover(holder.getCoverImageView(), params.mEpCover);
            
            // 设置时长（格式：HH:mm:ss）
            int duration = params.mDuration;
            TextView durationView = holder.getDurationView();
            if (duration > 0) {
                durationView.setText(formatDuration(duration));
                durationView.setVisibility(View.VISIBLE);
            } else {
                durationView.setVisibility(View.GONE);
            }
            
            // 设置焦点监听器
            holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    if (hasFocus) {
                        int adapterPosition = holder.getAdapterPosition();
                        
                        // 保存视频焦点位置
                        if (videoListSection != null) {
                            videoListSection.saveVideoFocusPosition(adapterPosition);
                        }
                        
                        // 更新导航标签选中状态
                        updateNavTagSelection(adapterPosition);
                        
                        // 重置自动隐藏计时器
                        if (bottomEpisodeMenu != null) {
                            bottomEpisodeMenu.resetAutoHideTimer();
                        }
                    }
                }
            });
            
            // 设置点击监听器
            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int adapterPosition = holder.getAdapterPosition();
                    
                    // 重置自动隐藏计时器
                    if (bottomEpisodeMenu != null) {
                        bottomEpisodeMenu.resetAutoHideTimer();
                    }
                    
                    // 通知播放器切换视频
                    if (videoListSection != null) {
                        videoListSection.onVideoCardClicked(params.mCid, params);
                    }
                    
                    // 关闭菜单
                    if (bottomEpisodeMenu != null) {
                        bottomEpisodeMenu.hide();
                    }
                    
                    Log.i("EpisodeBinder", "onClick | position=" + adapterPosition + " | cid=" + params.mCid);
                }
            });
        }
    }
    
    private void bindCover(ScalableImageView coverView, String coverUrl) {
        if (coverUrl != null && !coverUrl.isEmpty()) {
            nv imageLoader = nv.a();
            String thumbUrl = abd.get_thumb_url_c(MainApplication.a().getApplicationContext(), coverUrl);
            imageLoader.a(thumbUrl, coverView);
        }
    }
    
    private String formatDuration(int seconds) {
        int hours = seconds / 3600;
        int minutes = (seconds % 3600) / 60;
        int secs = seconds % 60;
        return String.format("%02d:%02d:%02d", hours, minutes, secs);
    }
    
    // 更新导航标签选中状态
    private void updateNavTagSelection(int videoPosition) {
        if (videoListSection != null) {
            int tagIndex = videoPosition / 10;
            videoListSection.setNavTagSelectedPosition(tagIndex);
        }
    }
    
    @Override
    public long getVideoId(Object data) {
        if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mCid;
        }
        return -1;
    }
    
    @Override
    public String getCoverUrl(Object data) {
        if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mEpCover;
        }
        return null;
    }
    
    @Override
    public boolean isCurrentVideo(Object data, long currentVideoId) {
        return getVideoId(data) == currentVideoId;
    }
    
    @Override
    public boolean isCurrentVideoByCid(Object data, long currentCid) {
        if (data instanceof ResolveResourceParams) {
            return ((ResolveResourceParams) data).mCid == currentCid;
        }
        return false;
    }
    
    @Override
    public boolean isCurrentSeason(Object data, int currentSeasonId) {
        return false;
    }
}
```

**优势**：
- 统一使用 `ResolveResourceParams` 类型，代码简洁
- 无需区分 UGC/PGC/UGC合集，降低复杂度
- 时长格式统一为 `HH:mm:ss`
- 通过组件引用实现焦点保存和导航标签更新

---

## 四、焦点管理方案

### 4.1 焦点保存和恢复机制

#### 4.1.1 核心字段

| 字段 | 类型 | 说明 |
|------|------|------|
| `focusPosition` | `int` | 保存的视频列表焦点位置（0-based） |
| `tagFocusPosition` | `int` | 保存的导航标签焦点位置（0-based） |
| `lastFocusedRecyclerViewId` | `int` | 上一次焦点所在的RecyclerView ID |
| `manualFocusRequested` | `boolean` | 标记是否手动请求焦点 |
| `isRestoringFocus` | `boolean` | 防止焦点恢复循环的标志位 |

#### 4.1.2 点击回调接口

**⚠️ 重要**：VideoListSection 需要定义点击回调接口，以便 EpisodeBinder 通知播放器切换视频。

```java
// VideoListSection.java - 定义点击回调接口
public interface OnVideoCardClickListener {
    void onVideoCardClicked(long cid, ResolveResourceParams params);
}

private OnVideoCardClickListener videoCardClickListener;

// 设置点击回调监听器
public void setOnVideoCardClickListener(OnVideoCardClickListener listener) {
    this.videoCardClickListener = listener;
}

// 被EpisodeBinder调用
public void onVideoCardClicked(long cid, ResolveResourceParams params) {
    if (videoCardClickListener != null) {
        videoCardClickListener.onVideoCardClicked(cid, params);
    }
}
```

**调用时机**：在 BottomEpisodeMenu 初始化时设置回调：

```java
// BottomEpisodeMenu.java
private void init() {
    // ... 其他初始化代码 ...
    
    // 设置视频卡片点击回调
    videoListSection.setOnVideoCardClickListener(new VideoListSection.OnVideoCardClickListener() {
        @Override
        public void onVideoCardClicked(long cid, ResolveResourceParams params) {
            // 通知播放器切换视频
            if (listener != null) {
                listener.onVideoSelected(cid, params);
            }
        }
    });
}
```

#### 4.1.3 焦点保存方法

**⚠️ 重要**：必须在所有焦点变化的地方调用保存方法。

```java
// VideoListSection.java
private int focusPosition = -1;  // 视频列表焦点位置（0-based）
private int tagFocusPosition = -1;  // 导航标签焦点位置（0-based）
private int lastFocusedRecyclerViewId = View.NO_ID;
private boolean isRestoringFocus = false;  // 防止焦点恢复循环
private boolean dataLoaded = false;  // 数据加载标志

// 保存视频列表焦点位置
public void saveVideoFocusPosition(int position) {
    focusPosition = position;
    Log.i(TAG, "saveVideoFocusPosition | position=" + position);
}

// 保存导航标签焦点位置
public void saveTagFocusPosition(int position) {
    tagFocusPosition = position;
    Log.i(TAG, "saveTagFocusPosition | position=" + position);
}

// 设置导航标签选中位置
public void setNavTagSelectedPosition(int tagIndex) {
    if (navTagAdapter != null) {
        navTagAdapter.setSelectedPosition(tagIndex);
    }
}

// 检测焦点是否从导航标签移动到视频列表
public boolean isFocusFromNavTagToVideoList(int currentRecyclerViewId) {
    boolean result = (lastFocusedRecyclerViewId == navTagRecyclerView.getId() 
                      && currentRecyclerViewId == recyclerView.getId());
    lastFocusedRecyclerViewId = currentRecyclerViewId;
    return result;
}

// 检查数据是否加载完成
public boolean isDataLoaded() {
    return dataLoaded && adapter != null && adapter.getItemCount() > 0;
}
```

**触发时机**：
1. 视频卡片获得焦点时：在 `bindCompact` 的焦点监听器中调用 `saveVideoFocusPosition()`
2. 导航标签获得焦点时：在导航标签的焦点监听器中调用 `saveTagFocusPosition()`

#### 4.1.3 焦点恢复方法

**⚠️ 重要**：必须检测焦点来源，防止错误的焦点恢复。

```java
// 当视频列表RecyclerView获得焦点时
public void onVideoRecyclerViewFocusChange(View v, boolean hasFocus) {
    if (hasFocus) {
        // 检测焦点是否从导航标签移动到视频列表
        boolean isFromNavTag = isFocusFromNavTagToVideoList(recyclerView.getId());
        
        if (isFromNavTag) {
            // 从导航标签移动过来，需要恢复焦点位置
            if (focusPosition >= 0) {
                // 有保存的焦点位置，恢复到该位置
                restoreFocusPosition(focusPosition);
            } else {
                // 没有保存的焦点位置，恢复到当前导航标签范围的起始位置
                int selectedTagIndex = navTagAdapter.getSelectedPosition();
                if (selectedTagIndex >= 0) {
                    int videoStartPosition = selectedTagIndex * 10;  // 0-based
                    restoreFocusPosition(videoStartPosition);
                }
            }
        }
    }
}

// 当导航标签RecyclerView获得焦点时
public void onNavTagRecyclerViewFocusChange(View v, boolean hasFocus) {
    if (hasFocus && navTagAdapter != null) {
        // 获取当前"被选中"的导航标签索引
        int selectedTagIndex = navTagAdapter.getSelectedPosition();
        
        if (selectedTagIndex >= 0) {
            // 焦点移动到被选中的标签
            navTagRecyclerView.post(new Runnable() {
                @Override
                public void run() {
                    View tagView = navTagRecyclerView.getLayoutManager()
                        .findViewByPosition(selectedTagIndex);
                    if (tagView != null) {
                        tagView.requestFocus();
                    }
                }
            });
        }
    }
}

// 恢复焦点到指定位置（0-based）
private void restoreFocusPosition(int position) {
    if (recyclerView == null || recyclerView.getLayoutManager() == null) {
        return;
    }
    
    // 防止焦点恢复循环
    if (isRestoringFocus) {
        Log.w(TAG, "restoreFocusPosition | 正在恢复焦点，跳过");
        return;
    }
    
    isRestoringFocus = true;
    
    LinearLayoutManager layoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
    
    // 先滚动到目标位置
    layoutManager.scrollToPositionWithOffset(position, 0);
    
    // 延迟请求焦点（等待布局完成）
    recyclerView.postDelayed(new Runnable() {
        @Override
        public void run() {
            View targetView = layoutManager.findViewByPosition(position);
            if (targetView != null) {
                targetView.requestFocus();
                Log.i(TAG, "restoreFocusPosition | position=" + position + " | success=true");
            } else {
                Log.w(TAG, "restoreFocusPosition | position=" + position + " | view not found");
            }
            isRestoringFocus = false;
        }
    }, 100);
}
```

#### 4.1.4 RecyclerView焦点监听器设置

**⚠️ 重要**：必须在VideoListSection初始化时设置焦点监听器。

```java
// VideoListSection.java
private void init() {
    // ... 其他初始化代码 ...
    
    // 禁用焦点移动音效
    if (recyclerView != null) {
        recyclerView.setSoundEffectsEnabled(false);
    }
    if (navTagRecyclerView != null) {
        navTagRecyclerView.setSoundEffectsEnabled(false);
    }
    
    // 禁用焦点移动、滚动、点击动画
    if (recyclerView != null) {
        recyclerView.setItemAnimator(null);  // 禁用item动画
        recyclerView.setOverScrollMode(View.OVER_SCROLL_NEVER);  // 禁用过度滚动
    }
    if (navTagRecyclerView != null) {
        navTagRecyclerView.setItemAnimator(null);
        navTagRecyclerView.setOverScrollMode(View.OVER_SCROLL_NEVER);
    }
    
    // 为视频列表RecyclerView设置焦点监听器
    recyclerView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
        @Override
        public void onFocusChange(View v, boolean hasFocus) {
            if (hasFocus) {
                onVideoRecyclerViewFocusChange(v, hasFocus);
            }
        }
    });
    
    // 为导航标签RecyclerView设置焦点监听器
    if (navTagRecyclerView != null) {
        navTagRecyclerView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    onNavTagRecyclerViewFocusChange(v, hasFocus);
                }
            }
        });
    }
}
```

#### 4.1.5 获取当前视频焦点位置

```java
// 返回1-based的位置
public int getCurrentVideoFocusPosition() {
    return focusPosition + 1;
}
```
```

### 4.2 视频列表与导航标签双向同步

#### 4.2.1 视频列表 → 导航标签同步

**⚠️ 重要**：必须在视频卡片的 `bindCompact` 方法中设置焦点监听器。

**触发时机**：视频卡片获得焦点时

**实现步骤**：

1. **在EpisodeBinder.bindCompact中设置焦点监听器**：

```java
@Override
public void bindCompact(CompactVideoHolder holder, Object data, int position) {
    // ... 其他绑定逻辑 ...
    
    // 设置焦点监听器，实现视频列表 → 导航标签同步
    holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
        @Override
        public void onFocusChange(View v, boolean hasFocus) {
            if (hasFocus) {
                int adapterPosition = holder.getAdapterPosition();
                
                // 保存视频焦点位置
                videoListSection.saveVideoFocusPosition(adapterPosition);
                
                // 更新导航标签选中状态
                updateNavTagSelection(adapterPosition);
                
                // 重置自动隐藏计时器
                if (bottomEpisodeMenu != null) {
                    bottomEpisodeMenu.resetAutoHideTimer();
                }
            }
        }
    });
}

// 更新导航标签选中状态
private void updateNavTagSelection(int videoPosition) {
    if (navTagAdapter == null || navTagAdapter.isEmpty()) {
        return;
    }
    
    // 计算所属导航标签索引
    // videoPosition是0-based，转换为1-based：visiblePosition = videoPosition + 1
    // tagIndex = (visiblePosition - 1) / 10 = videoPosition / 10
    int tagIndex = videoPosition / 10;  // 0-based
    
    if (tagIndex >= 0 && tagIndex < navTagAdapter.getTagCount()) {
        navTagAdapter.setSelectedPosition(tagIndex);
        navTagAdapter.scrollToPosition(tagIndex);
    }
}
```

2. **位置计算说明**：

| 视频位置（0-based） | 用户可见序号（1-based） | 所属导航标签索引 | 标签显示 |
|-------------------|---------------------|----------------|---------|
| 0-9 | 1-10 | 0 | 01-10 |
| 10-19 | 11-20 | 1 | 11-20 |
| 20-29 | 21-30 | 2 | 21-30 |

**计算公式**：
- `tagIndex = videoPosition / 10`（0-based）
- `videoStartPosition = tagIndex * 10`（0-based）

#### 4.2.2 导航标签 → 视频列表同步

**⚠️ 重要**：必须在导航标签的 `onBindViewHolder` 方法中设置焦点监听器。

**触发时机**：导航标签获得焦点时

**实现步骤**：

1. **在NavigationTagAdapter.onBindViewHolder中设置焦点监听器**：

```java
@Override
public void onBindViewHolder(ViewHolder holder, int position) {
    String tagText = tags.get(position);
    holder.textView.setText(tagText);
    
    // 设置焦点监听器，实现导航标签 → 视频列表同步
    holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
        @Override
        public void onFocusChange(View v, boolean hasFocus) {
            if (hasFocus) {
                int tagIndex = holder.getAdapterPosition();  // 0-based
                
                // 保存导航标签焦点位置
                videoListSection.saveTagFocusPosition(tagIndex);
                
                // 检查是否需要滚动视频列表
                checkAndScrollVideoList(tagIndex);
                
                // 重置自动隐藏计时器
                if (bottomEpisodeMenu != null) {
                    bottomEpisodeMenu.resetAutoHideTimer();
                }
            }
        }
    });
}

// 检查并滚动视频列表
private void checkAndScrollVideoList(int tagIndex) {
    // 计算视频起始位置（1-based）
    int videoStartPosition = tagIndex * 10 + 1;  // 1-based
    int targetAdapterPosition = videoStartPosition - 1;  // 0-based
    
    // 获取当前视频焦点位置（1-based）
    int currentVideoPosition = videoListSection.getCurrentVideoFocusPosition();  // 1-based
    
    // 计算标签范围（1-based）
    int rangeStart = videoStartPosition;  // 1-based
    int rangeEnd = videoStartPosition + 9;  // 1-based
    
    // 检查当前视频焦点是否在标签范围内
    if (currentVideoPosition < rangeStart || currentVideoPosition > rangeEnd) {
        // 不在范围内，滚动视频列表到目标起始位置
        videoListSection.scrollToDataPosition(targetAdapterPosition);
    }
}
```

2. **位置计算说明**：

| 导航标签索引（0-based） | 视频起始位置（1-based） | 视频结束位置（1-based） | Adapter起始位置（0-based） |
|----------------------|---------------------|---------------------|-------------------------|
| 0 | 1 | 10 | 0 |
| 1 | 11 | 20 | 10 |
| 2 | 21 | 30 | 20 |

**计算公式**：
- `videoStartPosition = tagIndex * 10 + 1`（1-based）
- `targetAdapterPosition = videoStartPosition - 1`（0-based）
- `rangeEnd = videoStartPosition + 9`（1-based）

#### 4.2.3 接口定义

```java
// VideoListSection.java
public interface OnNavTagFocusListener {
    void onNavTagFocus(int sectionId, int tagIndex, int videoStartPosition);
}

// 滚动视频列表到指定位置（0-based）
public void scrollToDataPosition(int position) {
    if (recyclerView == null || recyclerView.getLayoutManager() == null) {
        return;
    }
    
    LinearLayoutManager layoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
    layoutManager.scrollToPositionWithOffset(position, 0);
    
    Log.i(TAG, "scrollToDataPosition | position=" + position);
}
```

### 4.3 播放页焦点边界处理

#### 4.3.1 实现方法

**文件**：`mybv/java/classes/com/bilibili/tv/ui/video/widget/VideoListSection.java`

**⚠️ 重要**：使用 `FocusBoundaryHandler` 动态设置焦点边界，而不是遍历子 View。

```java
public void setupBottomMenuFocusBoundary() {
    Log.i(TAG, "setupBottomMenuFocusBoundary | 设置底部菜单焦点边界");
    
    // 视频列表按上键，焦点保持不变
    if (recyclerView != null) {
        recyclerView.setNextFocusUpId(recyclerView.getId());
        
        // 使用 FocusBoundaryHandler 动态设置焦点边界
        adapter.setFocusBoundaryHandler(new VideoCardAdapter.FocusBoundaryHandler() {
            @Override
            public void setupFocusBoundary(View itemView, int position, int size) {
                if (itemView == null) return;
                
                boolean isFirst = (position == 0);
                boolean isLast = (position == size - 1);
                
                itemView.setNextFocusLeftId(isFirst ? itemView.getId() : View.NO_ID);
                itemView.setNextFocusRightId(isLast ? itemView.getId() : View.NO_ID);
                itemView.setNextFocusUpId(recyclerView.getId());
                
                // 下键：如果有导航标签则移动到导航标签，否则保持不变
                if (navTagRecyclerView != null && navTagRecyclerView.getVisibility() == View.VISIBLE) {
                    itemView.setNextFocusDownId(View.NO_ID);
                } else {
                    itemView.setNextFocusDownId(recyclerView.getId());
                }
            }
        });
    }
    
    // 导航标签按下键，焦点保持不变
    if (navTagRecyclerView != null && navTagRecyclerView.getVisibility() == View.VISIBLE) {
        navTagRecyclerView.setNextFocusDownId(navTagRecyclerView.getId());
        
        navTagAdapter.setFocusBoundaryHandler(new NavigationTagAdapter.FocusBoundaryHandler() {
            @Override
            public void setupFocusBoundary(View itemView, int position, int size) {
                if (itemView == null) return;
                
                boolean isFirst = (position == 0);
                boolean isLast = (position == size - 1);
                
                itemView.setNextFocusLeftId(isFirst ? itemView.getId() : View.NO_ID);
                itemView.setNextFocusRightId(isLast ? itemView.getId() : View.NO_ID);
                itemView.setNextFocusDownId(navTagRecyclerView.getId());
            }
        });
    }
}
```

#### 4.3.2 焦点流向设置

**⚠️ 重要**：必须设置视频列表和导航标签之间的焦点流向。

```java
// VideoListSection.java
public void setupFocusFlow() {
    if (recyclerView != null && navTagRecyclerView != null 
        && navTagRecyclerView.getVisibility() == View.VISIBLE) {
        // 视频列表按下键移动到导航标签
        recyclerView.setNextFocusDownId(navTagRecyclerView.getId());
        // 导航标签按上键移动到视频列表
        navTagRecyclerView.setNextFocusUpId(recyclerView.getId());
        
        Log.i(TAG, "setupFocusFlow | 视频列表和导航标签焦点流向已设置");
    }
}
```

**调用时机**：在 `setupBottomMenuFocusBoundary()` 方法中调用：

```java
public void setupBottomMenuFocusBoundary() {
    // ... 焦点边界设置代码 ...
    
    // 设置焦点流向
    setupFocusFlow();
}
```

#### 4.3.3 调用时机

**在 BottomEpisodeMenu 初始化时调用一次**：

```java
// BottomEpisodeMenu.java
public class BottomEpisodeMenu extends FrameLayout {
    private VideoListSection videoListSection;
    
    public BottomEpisodeMenu(Context context) {
        super(context);
        init();
    }
    
    private void init() {
        inflate(getContext(), R.layout.player_episode_menu, this);
        videoListSection = findViewById(R.id.episode_list_section);
        
        // 设置播放页专属的焦点边界
        videoListSection.setupBottomMenuFocusBoundary();
    }
}
```

**⚠️ 注意**：播放页使用独立的 VideoListSection 实例，不会与详情页的焦点逻辑冲突。

#### 4.3.4 播放页焦点导航总结

| 当前位置 | 按键 | 目标位置 | 说明 |
|---------|------|---------|------|
| 视频卡片 | 左键 | 前一个视频卡片 | 正常导航 |
| 视频卡片 | 右键 | 后一个视频卡片 | 正常导航 |
| 视频卡片 | 上键 | **焦点保持不变** | 没有上方组件 |
| 视频卡片 | 下键 | 导航标签（如果有）<br>**焦点保持不变**（如果没有导航标签） | 根据是否有导航标签决定 |
| 第1个视频卡片 | 左键 | **焦点保持不变** | 边界处理 |
| 最后1个视频卡片 | 右键 | **焦点保持不变** | 边界处理 |
| 导航标签 | 左键 | 前一个标签 | 正常导航 |
| 导航标签 | 右键 | 后一个标签 | 正常导航 |
| 导航标签 | 上键 | 视频卡片 | 正常导航 |
| 导航标签 | 下键 | **焦点保持不变** | 没有下方组件 |
| 第1个导航标签 | 左键 | **焦点保持不变** | 边界处理 |
| 最后1个导航标签 | 右键 | **焦点保持不变** | 边界处理 |

---

## 五、核心功能实现

### 5.1 滚动到第1位并获得焦点

**文件**：`mybv/java/classes/com/bilibili/tv/ui/video/widget/VideoListSection.java`

**⚠️ 重要改进**：
1. 添加详细的日志说明为什么没有执行
2. 使用 `LinearLayoutManager.scrollToPositionWithOffset()` 而不是反射
3. 使用 `LinearLayoutManager.findViewByPosition()` 而不是反射

```java
public void scrollToCurrentVideoAtFirstPosition() {
    Log.i(TAG, "scrollToCurrentVideoAtFirstPosition | START | sectionId=" + sectionId);
    
    // 前置条件检查
    if (recyclerView == null) {
        Log.w(TAG, "scrollToCurrentVideoAtFirstPosition | recyclerView 为 null");
        return;
    }
    if (dataList == null || dataList.isEmpty()) {
        Log.w(TAG, "scrollToCurrentVideoAtFirstPosition | dataList 为空");
        return;
    }
    if (binder == null) {
        Log.w(TAG, "scrollToCurrentVideoAtFirstPosition | binder 为 null");
        return;
    }
    
    // 找到当前播放项的位置
    int currentPosition = -1;
    for (int i = 0; i < dataList.size(); i++) {
        Object item = dataList.get(i);
        boolean isCur = false;
        if (currentCid > 0) {
            isCur = binder.isCurrentVideoByCid(item, currentCid);
        }
        if (!isCur && currentVideoId > 0) {
            isCur = binder.isCurrentVideo(item, currentVideoId);
        }
        if (!isCur && currentSeasonId > 0) {
            isCur = binder.isCurrentSeason(item, currentSeasonId);
        }
        if (isCur) {
            currentPosition = i;
            break;
        }
    }
    
    if (currentPosition < 0) {
        Log.w(TAG, "scrollToCurrentVideoAtFirstPosition | 未找到当前播放项");
        return;
    }
    
    Log.i(TAG, "scrollToCurrentVideoAtFirstPosition | currentPosition=" + currentPosition);
    
    final int finalPos = currentPosition;
    recyclerView.post(new Runnable() {
        @Override
        public void run() {
            if (!recyclerView.isAttachedToWindow()) {
                Log.w(TAG, "scrollToCurrentVideoAtFirstPosition | recyclerView 未附加到窗口");
                return;
            }
            
            // 滚动到第1位（offset=0表示显示在最左边）
            LinearLayoutManager layoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (layoutManager != null) {
                layoutManager.scrollToPositionWithOffset(finalPos, 0);
            }
            
            // 设置焦点位置
            focusPosition = finalPos;
            
            // 延迟请求焦点（等待布局完成）
            recyclerView.postDelayed(new Runnable() {
                @Override
                public void run() {
                    requestFocusOnPosition(finalPos);
                }
            }, 100);
        }
    });
}

private void requestFocusOnPosition(int position) {
    if (recyclerView == null || recyclerView.getLayoutManager() == null) {
        return;
    }
    
    LinearLayoutManager layoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
    View targetView = layoutManager.findViewByPosition(position);
    
    if (targetView != null) {
        manualFocusRequested = true;
        boolean success = targetView.requestFocus();
        Log.i(TAG, "requestFocusOnPosition | position=" + position 
                + " | success=" + success);
    }
}
```

**调用时机**：在 BottomEpisodeMenu.show() 方法中，数据设置完成后调用：

```java
// BottomEpisodeMenu.java
public void show(List<Object> episodes, int currentVideoIndex) {
    // 1. 设置数据
    setData(episodes);
    
    // 2. 等待数据加载完成
    videoListSection.post(new Runnable() {
        @Override
        public void run() {
            if (!videoListSection.isDataLoaded()) {
                // 数据未加载完成，延迟重试
                videoListSection.postDelayed(this, 50);
                return;
            }
            
            // 3. 数据加载完成，滚动到当前位置
            if (currentVideoIndex > 0) {
                videoListSection.scrollToCurrentVideoAtFirstPosition();
            }
        }
    });
    
    // 4. 显示菜单
    setVisibility(View.VISIBLE);
    startAnimation(AnimationUtils.loadAnimation(...));
    
    // 5. 启动自动隐藏计时器
    resetAutoHideTimer();
}
```

### 5.2 只在按返回键时关闭菜单

**文件**：`mybv/java/classes/bl/xl.java`

```java
@Override
public boolean g(int i, KeyEvent keyEvent) {
    if (!X()) {
        return false;
    }
    
    if (i == 19) {  // 上键
        if (this.d == null) {
            R();  // 准备数据
            T();  // 构建标题列表
        }
        showBottomEpisodeMenu();  // 显示底部菜单
        return true;
    } else if (i == 4) {  // 只处理返回键
        if (bottomEpisodeMenu != null && bottomEpisodeMenu.isShowing()) {
            bottomEpisodeMenu.hide();
            this.g = false;
            return true;  // 只关闭菜单，不退出播放
        }
        return false;
    }
    
    // 其他按键不关闭菜单
    return bottomEpisodeMenu != null && bottomEpisodeMenu.isShowing();
}
```

### 5.3 自动隐藏计时器

**文件**：`mybv/java/classes/bl/BottomEpisodeMenu.java`

**⚠️ 重要改进**：添加生命周期管理，防止内存泄漏。

```java
private Runnable autoHideRunnable;
private static final int AUTO_HIDE_DELAY = 5000;  // 5秒

private void initAutoHideTimer() {
    autoHideRunnable = new Runnable() {
        @Override
        public void run() {
            Log.i(TAG, "autoHideRunnable | 5秒倒计时结束，自动隐藏");
            hide();
        }
    };
}

// 重置自动隐藏计时器
public void resetAutoHideTimer() {
    if (autoHideRunnable != null) {
        // 移除之前的计时器
        removeCallbacks(autoHideRunnable);
        // 重新启动5秒倒计时
        postDelayed(autoHideRunnable, AUTO_HIDE_DELAY);
        Log.i(TAG, "resetAutoHideTimer | 计时器已重置");
    }
}

// ⚠️ 重要：在所有用户交互时都要重置计时器
// 1. 焦点移动时（在EpisodeBinder和NavigationTagAdapter的焦点监听器中）
// 2. 按键按下时（在xl.java的按键处理方法中）
// 3. 点击视频卡片时（在EpisodeBinder的点击监听器中）
// 4. 滚动列表时（在RecyclerView的滚动监听器中）
```

### 5.4 导航标签显示条件

**⚠️ 重要**：必须在 `setData` 方法中判断并显示导航标签。

**文件**：`mybv/java/classes/com/bilibili/tv/ui/video/widget/VideoListSection.java`

```java
public void setData(List<Object> dataList, VideoCardBinder binder) {
    this.dataList = dataList;
    this.binder = binder;
    
    // 判断是否需要显示导航标签
    boolean shouldShowNavTags = (dataList != null && dataList.size() > 10);
    
    if (shouldShowNavTags && navTagRecyclerView != null) {
        // 生成导航标签
        navTagAdapter.setTags(dataList.size());
        navTagRecyclerView.setVisibility(View.VISIBLE);
        Log.i(TAG, "setData | 显示导航标签 | count=" + dataList.size());
    } else if (navTagRecyclerView != null) {
        navTagRecyclerView.setVisibility(View.GONE);
        Log.i(TAG, "setData | 隐藏导航标签 | count=" + (dataList != null ? dataList.size() : 0));
    }
    
    // 设置视频列表数据
    adapter.setData(dataList);
}
```

**显示规则**：
- 视频数量 <= 10：不显示导航标签
- 视频数量 > 10：显示导航标签，每10个一组

private void startAutoHideTimer() {
    cancelAutoHideTimer();
    postDelayed(autoHideRunnable, AUTO_HIDE_DELAY);
}

private void cancelAutoHideTimer() {
    removeCallbacks(autoHideRunnable);
}

private void resetAutoHideTimer() {
    cancelAutoHideTimer();
    startAutoHideTimer();
}

// ⚠️ 必须在 hide() 方法中取消计时器
@Override
public void hide() {
    Log.i(TAG, "hide | 隐藏菜单");
    cancelAutoHideTimer();  // 必须！
    if (isAttachedToWindow()) {
        clearAnimation();
        setVisibility(View.GONE);
    }
}

// ⚠️ 必须在 onDetachedFromWindow 中取消计时器
@Override
protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    Log.i(TAG, "onDetachedFromWindow | 清理资源");
    cancelAutoHideTimer();  // 必须！
}

// ⚠️ 在 setVisibility 中也要取消计时器
@Override
public void setVisibility(int visibility) {
    if (visibility == View.GONE || visibility == View.INVISIBLE) {
        cancelAutoHideTimer();  // 可见性改变时也要取消
    }
    super.setVisibility(visibility);
}
```

**重置计时器的时机**：
1. 菜单显示时：show() 方法中调用 resetAutoHideTimer()
2. 焦点移动时：在 VideoListSection 的 onFocusChange 中调用
3. 按键操作时：在 xl.java 的按键处理中调用
4. 视频卡片点击时：在 EpisodeBinder 中调用

### 5.4 单个视频判断逻辑

**文件**：`mybv/java/classes/bl/xl.java`

**需求**：如果播放列表为空或只有一个视频，不显示选集菜单。

```java
private boolean X() {
    // 检查播放列表是否为空或只有一个视频
    int videoCount = (this.d != null) ? this.d.size() : 0;
    
    if (videoCount <= 1) {
        Log.i(TAG, "X | 视频数量=" + videoCount + "，不显示选集菜单");
        return false;
    }
    
    boolean result = videoCount > 0;
    Log.i(TAG, "X | videoCount=" + videoCount + " | result=" + result);
    return result;
}
```

---

## 六、实施细节

### 6.1 导航标签生成逻辑

**文件**：`mybv/java/classes/com/bilibili/tv/ui/video/widget/NavigationTagAdapter.java`

**⚠️ 重要**：
1. 必须在 `setTags` 方法中生成导航标签文本
2. 需要持有 VideoListSection 和 BottomEpisodeMenu 的引用，以便保存焦点位置、滚动视频列表、重置计时器

```java
public class NavigationTagAdapter extends RecyclerView.Adapter<ViewHolder> {
    private List<String> tags = new ArrayList<>();
    private int selectedPosition = -1;
    private Map<Integer, ViewHolder> viewHolderMap = new HashMap<>();
    private VideoListSection videoListSection;
    private BottomEpisodeMenu bottomEpisodeMenu;
    
    // 设置组件引用
    public void setComponents(VideoListSection videoListSection, BottomEpisodeMenu bottomEpisodeMenu) {
        this.videoListSection = videoListSection;
        this.bottomEpisodeMenu = bottomEpisodeMenu;
    }
    
    // 生成导航标签
    public void setTags(int totalCount) {
        tags.clear();
        int tagCount = (totalCount + 9) / 10;  // 向上取整
        
        for (int i = 0; i < tagCount; i++) {
            int start = i * 10 + 1;  // 1-based
            int end = Math.min((i + 1) * 10, totalCount);  // 1-based
            String tagText = String.format("%02d-%02d", start, end);
            tags.add(tagText);
        }
        
        notifyDataSetChanged();
        Log.i(TAG, "setTags | totalCount=" + totalCount + " | tagCount=" + tagCount);
    }
    
    public int getTagCount() {
        return tags.size();
    }
    
    public boolean isEmpty() {
        return tags.isEmpty();
    }
    
    // 设置选中位置
    public void setSelectedPosition(int position) {
        int oldPosition = selectedPosition;
        selectedPosition = position;
        
        // 更新旧位置的选中状态
        if (oldPosition >= 0 && viewHolderMap.containsKey(oldPosition)) {
            ViewHolder oldHolder = viewHolderMap.get(oldPosition);
            oldHolder.itemView.setSelected(false);
            Log.i(TAG, "setSelectedPosition | oldPosition=" + oldPosition + " | selected=false");
        }
        
        // 更新新位置的选中状态
        if (position >= 0 && viewHolderMap.containsKey(position)) {
            ViewHolder newHolder = viewHolderMap.get(position);
            newHolder.itemView.setSelected(true);
            Log.i(TAG, "setSelectedPosition | newPosition=" + position + " | selected=true");
        }
    }
    
    public int getSelectedPosition() {
        return selectedPosition;
    }
    
    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        String tagText = tags.get(position);
        holder.textView.setText(tagText);
        
        // 保存ViewHolder引用
        viewHolderMap.put(position, holder);
        
        // 恢复选中状态
        holder.itemView.setSelected(position == selectedPosition);
        
        // 设置焦点监听器
        holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    int tagIndex = holder.getAdapterPosition();
                    
                    // 保存导航标签焦点位置
                    if (videoListSection != null) {
                        videoListSection.saveTagFocusPosition(tagIndex);
                    }
                    
                    // 检查并滚动视频列表
                    checkAndScrollVideoList(tagIndex);
                    
                    // 重置自动隐藏计时器
                    if (bottomEpisodeMenu != null) {
                        bottomEpisodeMenu.resetAutoHideTimer();
                    }
                }
            }
        });
    }
    
    // 检查并滚动视频列表
    private void checkAndScrollVideoList(int tagIndex) {
        if (videoListSection == null) return;
        
        // 计算视频起始位置（1-based）
        int videoStartPosition = tagIndex * 10 + 1;  // 1-based
        int targetAdapterPosition = videoStartPosition - 1;  // 0-based
        
        // 获取当前视频焦点位置（1-based）
        int currentVideoPosition = videoListSection.getCurrentVideoFocusPosition();  // 1-based
        
        // 计算标签范围（1-based）
        int rangeStart = videoStartPosition;  // 1-based
        int rangeEnd = videoStartPosition + 9;  // 1-based
        
        // 检查当前视频焦点是否在标签范围内
        if (currentVideoPosition < rangeStart || currentVideoPosition > rangeEnd) {
            // 不在范围内，滚动视频列表到目标起始位置
            videoListSection.scrollToDataPosition(targetAdapterPosition);
        }
    }
    
    @Override
    public void onViewRecycled(ViewHolder holder) {
        super.onViewRecycled(holder);
        // 移除ViewHolder引用
        int position = holder.getAdapterPosition();
        if (position >= 0) {
            viewHolderMap.remove(position);
        }
    }
}
```

**生成示例**：

| 总视频数 | 标签数量 | 标签列表 |
|---------|---------|---------|
| 12 | 2 | ["01-10", "11-12"] |
| 25 | 3 | ["01-10", "11-20", "21-25"] |
| 8 | 0 | [] (不显示导航标签) |

**选中状态背景色**：在布局文件中通过 `android:selected` 状态设置。

### 6.2 动画文件修改

**文件**：`mybv/res/anim/in_from_bottom.xml`

```xml
<?xml version="1.0" encoding="utf-8"?>
<set android:duration="200" android:fillAfter="true"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <translate android:fromYDelta="100.0%" android:toYDelta="0.0%" />
    <alpha android:fromAlpha="0.0" android:toAlpha="1.0" />
</set>
```

**文件**：`mybv/res/anim/out_to_bottom.xml`

```xml
<?xml version="1.0" encoding="utf-8"?>
<set android:duration="200" android:fillAfter="true"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <translate android:fromYDelta="0.0%" android:toYDelta="100.0%" />
    <alpha android:fromAlpha="1.0" android:toAlpha="0.0" />
</set>
```

### 6.3 BottomEpisodeMenu 完整实现

**文件**：`mybv/java/classes/bl/BottomEpisodeMenu.java`

**⚠️ 重要**：
1. 使用成员变量而非单例，避免内存泄漏
2. 需要创建 EpisodeBinder 并传递组件引用
3. 需要接收播放列表数据、当前CID、标题和数量

```java
package bl;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.video.widget.VideoListSection;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import java.util.ArrayList;
import java.util.List;

public class BottomEpisodeMenu extends FrameLayout {
    private static final String TAG = "BottomEpisodeMenu";
    private VideoListSection videoListSection;
    private TextView titleTextView;
    private EpisodeBinder episodeBinder;
    private Runnable autoHideRunnable;
    private static final int AUTO_HIDE_DELAY = 5000;
    
    public BottomEpisodeMenu(Context context) {
        super(context);
        init();
    }
    
    public BottomEpisodeMenu(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }
    
    private void init() {
        inflate(getContext(), R.layout.player_episode_menu, this);
        videoListSection = findViewById(R.id.episode_list_section);
        titleTextView = findViewById(R.id.playlist_title);
        
        // 创建 EpisodeBinder 并设置引用
        episodeBinder = new EpisodeBinder(videoListSection, this);
        
        // 设置播放页专属的焦点边界
        videoListSection.setupBottomMenuFocusBoundary();
        
        // 初始化自动隐藏计时器
        initAutoHideTimer();
        
        setVisibility(View.GONE);
    }
    
    // 设置数据
    public void setData(ResolveResourceParams[] paramsArray, long currentCid, String title, int count) {
        if (paramsArray == null || paramsArray.length == 0) {
            Log.w(TAG, "setData | paramsArray 为空");
            return;
        }
        
        // 设置标题
        if (titleTextView != null) {
            titleTextView.setText(title + "(" + count + ")");
        }
        
        // 转换数据格式
        List<Object> dataList = new ArrayList<>();
        for (ResolveResourceParams params : paramsArray) {
            dataList.add(params);
        }
        
        // 设置当前播放视频ID
        videoListSection.setCurrentCid(currentCid);
        
        // 设置数据
        videoListSection.setData(dataList, episodeBinder);
    }
    
    // 显示菜单
    public void show(ResolveResourceParams[] paramsArray, long currentCid, String title, int count) {
        // 设置数据
        setData(paramsArray, currentCid, title, count);
        
        // 显示菜单
        setVisibility(View.VISIBLE);
        startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.in_from_bottom));
        
        // 等待数据加载完成后滚动到当前位置
        videoListSection.post(new Runnable() {
            @Override
            public void run() {
                if (!videoListSection.isDataLoaded()) {
                    // 数据未加载完成，延迟重试
                    videoListSection.postDelayed(this, 50);
                    return;
                }
                videoListSection.scrollToCurrentVideoAtFirstPosition();
            }
        });
        
        // 启动自动隐藏计时器
        resetAutoHideTimer();
    }
    
    public void hide() {
        cancelAutoHideTimer();
        Animation animation = AnimationUtils.loadAnimation(getContext(), R.anim.out_to_bottom);
        startAnimation(animation);
        setVisibility(View.GONE);
    }
    
    public boolean isShowing() {
        return getVisibility() == View.VISIBLE;
    }
    
    // 初始化自动隐藏计时器
    private void initAutoHideTimer() {
        autoHideRunnable = new Runnable() {
            @Override
            public void run() {
                Log.i(TAG, "autoHideRunnable | 5秒倒计时结束，自动隐藏");
                hide();
            }
        };
    }
    
    // 重置自动隐藏计时器
    public void resetAutoHideTimer() {
        if (autoHideRunnable != null) {
            removeCallbacks(autoHideRunnable);
            postDelayed(autoHideRunnable, AUTO_HIDE_DELAY);
            Log.i(TAG, "resetAutoHideTimer | 计时器已重置");
        }
    }
    
    // 取消自动隐藏计时器
    private void cancelAutoHideTimer() {
        if (autoHideRunnable != null) {
            removeCallbacks(autoHideRunnable);
        }
    }
    
    // 清理资源
    public void cleanup() {
        cancelAutoHideTimer();
        if (videoListSection != null) {
            videoListSection.cleanup();
        }
    }
    
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cleanup();
    }
}
```

### 6.4 VideoListSection 集成

**布局文件**：`mybv/res/layout/player_episode_menu.xml`

**⚠️ 重要**：使用 `@layout/layout_season_section` 而不是 `@layout/video_list_section_layout`。

```xml
<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_gravity="bottom"
    android:background="#CC000000">
    
    <!-- 标题 -->
    <TextView
        android:id="@+id/playlist_title"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginLeft="@dimen/px_20"
        android:layout_marginTop="@dimen/px_16"
        android:textColor="@color/white"
        android:textSize="@dimen/px_36"
        android:ellipsize="end"
        android:maxLines="1" />
    
    <!-- VideoListSection -->
    <include layout="@layout/layout_season_section" 
        android:id="@+id/episode_list_section"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="@dimen/px_60" />
</FrameLayout>
```

### 6.5 xl.java 调用 BottomEpisodeMenu

**文件**：`mybv/java/classes/bl/xl.java`

**⚠️ 重要**：需要添加 BottomEpisodeMenu 成员变量、获取方法、显示方法和清理方法。

```java
// xl.java
private BottomEpisodeMenu bottomEpisodeMenu;  // 成员变量，非单例

private BottomEpisodeMenu getBottomEpisodeMenu() {
    if (bottomEpisodeMenu == null) {
        bottomEpisodeMenu = new BottomEpisodeMenu(getContext());
        // 添加到播放页容器
        ((ViewGroup) rootView).addView(bottomEpisodeMenu);
    }
    return bottomEpisodeMenu;
}

private void showBottomEpisodeMenu() {
    if (this.j == null || this.j.length <= 1) {
        Log.w(TAG, "showBottomEpisodeMenu | 播放列表为空或只有一个视频");
        return;
    }
    
    // 获取当前播放的 CID
    long currentCid = b().mVideoParams.mCid;
    
    // 获取 Intent 传递的标题和数量
    Intent intent = getActivity().getIntent();
    String title = intent.getStringExtra("playlist_title");
    if (title == null) {
        title = "选集";
    }
    int count = this.j.length;
    
    // 显示菜单
    BottomEpisodeMenu menu = getBottomEpisodeMenu();
    menu.show(this.j, currentCid, title, count);
    
    this.g = true;
    Log.i(TAG, "showBottomEpisodeMenu | title=" + title + " | count=" + count);
}

@Override
public void onDestroy() {
    if (bottomEpisodeMenu != null) {
        bottomEpisodeMenu.cleanup();
        bottomEpisodeMenu = null;
    }
    super.onDestroy();
}
```

---

## 七、测试用例

### 7.1 基本功能测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 菜单呼出 | 按上键 | 显示底部选集菜单 |
| 菜单关闭 | 5秒无操作 | 自动关闭菜单 |
| 当前集焦点 | 打开菜单 | 当前播放集滚动到屏幕最左侧（第1位）并获得焦点 |
| 返回键关闭 | 按返回键 | 关闭菜单，不退出播放 |
| 点击切换 | 点击其他视频 | 菜单立即关闭，开始播放新视频 |
| 播放不中断 | 呼出菜单 | 视频继续播放 |
| 播放不中断 | 关闭菜单 | 视频继续播放 |

### 7.2 焦点导航测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 视频卡片焦点 | 打开菜单 | 当前播放集获得焦点 |
| 左右移动 | 按左/右键 | 焦点在视频卡片间移动 |
| 导航标签焦点 | 按下键 | 焦点移动到导航标签 |
| 标签内移动 | 按左/右键 | 焦点在标签间移动 |
| 返回视频列表 | 按上键 | 焦点回到视频卡片 |
| 上键保持 | 视频卡片按上键 | 焦点保持不变 |
| 下键保持 | 导航标签按下键 | 焦点保持不变 |

### 7.3 滚动同步测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 视频滚动 | 移动到第15集 | 导航标签选中11-20 |
| 标签滚动 | 点击21-30标签 | 视频列表滚动到第21集 |
| 标签滚动 | 焦点移动到31-40 | 视频列表滚动到第31集 |

### 7.4 焦点记忆测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 视频焦点记忆 | 移动到第33集，关闭再打开 | 焦点在第33集 |
| 标签焦点记忆 | 移动到31-40标签，关闭再打开 | 焦点在31-40标签 |

### 7.5 边界情况测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 第1个视频 | 按左键 | 焦点保持不动 |
| 最后1个视频 | 按右键 | 焦点保持不动 |
| 第1个标签 | 按左键 | 焦点保持不动 |
| 最后1个标签 | 按右键 | 焦点保持不动 |
| 无导航标签时按下键 | 视频卡片按下键 | 焦点保持不动 |

---

## 八、工作量评估

| 阶段 | 任务数 | 预计时间 |
|------|--------|---------|
| 创建EpisodeBinder.java | 1 | 15分钟 |
| 创建BottomEpisodeMenu.java | 1 | 25分钟 |
| 修改VideoListSection.java | 1 | 30分钟 |
| 修改xl.java | 1 | 15分钟 |
| 修改ResolveResourceParams.java | 1 | 5分钟 |
| 修改xg.java（数据传递+标题传递） | 1 | 15分钟 |
| 修改VideoDetailActivity.java（标题传递） | 1 | 10分钟 |
| 修改动画文件 | 2 | 5分钟 |
| 编译测试 | 1 | 10分钟 |
| **总计** | **10** | **130分钟** |

---

## 九、注意事项

### 9.1 兼容性

1. ✅ 确保代码兼容Android 4.x
2. ✅ 使用`View.animate()`替代ObjectAnimator（API 12+）
3. ✅ 使用`RecyclerView`替代ListView

### 9.2 性能

1. ✅ 避免频繁的布局计算和重绘
2. ✅ 使用`postDelayed()`延迟焦点请求
3. ✅ 使用`ViewHolder`模式优化列表性能

### 9.3 焦点

1. ✅ 确保焦点导航逻辑正确，避免焦点丢失
2. ✅ 使用`focusable`和`focusableInTouchMode`属性
3. ✅ 设置焦点边界（`nextFocusLeftId`、`nextFocusRightId`等）

### 9.4 日志

1. ✅ 添加详细的日志，便于调试
2. ✅ 使用`Log.i()`记录关键操作
3. ✅ 日志格式：`方法名 | 描述 | 关键参数`

---

## 十、变更历史

### v11.0 (2026-04-09)
- **补充遗漏的实现细节**：发现并补充4个重要遗漏
- **点击视频卡片关闭菜单**：在 EpisodeBinder 中添加点击监听器
- **焦点移动无音效**：在 VideoListSection.init() 中禁用音效
- **焦点移动、滚动、点击无动画**：在 VideoListSection.init() 中禁用动画
- **VideoListSection 点击回调接口**：添加 OnVideoCardClickListener 接口定义
- **文档完整性检查**：系统性检查所有需求是否都有对应实现

### v10.0 (2026-04-09)
- **问题解决方案整合**：将第十章的10个问题解决方案整合到文档相应章节
- **删除待解决问题清单**：所有问题已解决，删除第十章
- **整合内容**：
  - ResolveResourceParams mDuration 字段 → 第三章 3.3节
  - xg.java 时长传递位置 → 第三章 3.4节
  - EpisodeBinder 组件引用 → 第三章 3.7节
  - NavigationTagAdapter 组件引用 → 第六章 6.1节
  - BottomEpisodeMenu 完整实现 → 第六章 6.3节
  - xl.java 调用实现 → 第六章 6.5节
  - 布局文件名称修正 → 第六章 6.4节
  - 数据加载判断 → 第四章 4.1.2节
  - 焦点恢复循环防护 → 第四章 4.1.3节
  - setNavTagSelectedPosition 方法 → 第四章 4.1.2节

### v9.0 (2026-04-09)
- **待解决问题清单**：新增第十章，记录10个待解决问题
- **问题分类**：
  - 数据结构问题：ResolveResourceParams 缺少 mDuration 字段
  - 布局文件问题：布局文件名称错误
  - 组件引用问题：EpisodeBinder 和 NavigationTagAdapter 缺少组件引用
  - 实现缺失问题：BottomEpisodeMenu 和 xl.java 完整实现缺失
  - 功能缺失问题：数据加载判断、焦点恢复循环防护、导航标签选中方法缺失
- **解决方案**：为每个问题提供详细的代码实现方案

### v8.0 (2026-04-09)
- **需求明确化**：根据用户反馈，明确16项需求细节
- **取消当前集高亮**：删除当前播放集高亮显示需求
- **点击行为明确**：点击其他视频后菜单立即关闭
- **播放行为明确**：呼出/关闭菜单时视频继续播放
- **简化数据传递方案**：
  - 统一使用 `ResolveResourceParams` 类型
  - 删除冗余的数据传递方式描述
  - 添加 EpisodeBinder 完整实现
- **布局细节补充**：
  - 菜单高度根据内容自动适应
  - 菜单横向充满屏幕，无左右边距
  - 间距与视频详情页一致
- **交互细节补充**：
  - 焦点移动、滚动、点击无动画
  - 时长格式统一为 `HH:mm:ss`
  - 标题截断在 layout.xml 中实现
- **焦点细节补充**：
  - 焦点框与视频详情页一致
  - 焦点移动无音效
- **测试用例更新**：添加点击切换、播放不中断测试用例

### v7.0 (2026-04-09)
- **文档重构完成**：将第十章"三次复查发现的严重问题"的所有解决方案整合到相应章节
- **删除冗余章节**：删除第十章，所有内容已整合到正确位置
- **整合内容**：
  - 双向同步问题 → 第四章"焦点管理方案"的4.2节
  - 焦点移动和恢复问题 → 第四章"焦点管理方案"的4.1节
  - 导航标签显示条件 → 第五章"核心功能实现"的5.4节
  - 导航标签生成逻辑 → 第六章"实施细节"的6.1节
  - 导航标签选中状态更新 → 第六章"实施细节"的6.2节
  - 焦点流向设置 → 第四章"焦点管理方案"的4.3.2节
  - 数据传递验证 → 第三章"数据传递方案"的3.4节
  - 自动隐藏计时器重置 → 第五章"核心功能实现"的5.3节
- **参考正确实现**：所有解决方案均参考episode-group-navigation skill的视频详情页正确实现

### v6.0 (2026-04-09)
- **三次复查完成**：发现15个严重问题，包括双向同步、焦点移动和恢复、其他实现问题
- **新增第十章**：详细记录所有问题的描述、根本原因和解决方案
- **关键问题修复**：
  - 双向同步触发机制缺失 → 在bindCompact中设置焦点监听器
  - 位置计算错误 → 明确0-based和1-based，修正比较逻辑
  - 焦点记忆不完整 → 添加tagFocusPosition和lastFocusedRecyclerViewId
  - 焦点移动错误 → 检测焦点来源并恢复正确位置
  - 导航标签生成逻辑缺失 → 实现setTags方法
- **参考正确实现**：所有解决方案均参考episode-group-navigation skill的视频详情页正确实现

### v5.0 (2026-04-09)
- **文档重构完成**：将第十章"待解决问题"的所有解决方案整合到相应章节
- **删除冗余章节**：删除"待解决问题"章节，所有内容已整合到正确位置
- **完善实施细节**：新增 6.3 BottomEpisodeMenu 初始化、6.4 VideoListSection 集成
- **优化核心功能**：添加调用时机、数据加载检查、内存泄漏防护
- **改进焦点管理**：使用 FocusBoundaryHandler 动态设置焦点边界，添加循环防护
- **完善数据传递**：添加 VideoListSection.setTitle() 方法，添加数据传递验证

### v4.3 (2026-04-09)
- **三次复查完成**：发现 5 个需求不明确、5 个实现方案问题、6 个 BUG 隐患
- **新增待解决问题章节**：详细记录所有问题和解决方案
- **更新实现方案**：修正反射调用、焦点边界处理等问题

### v4.2 (2026-04-09)
- **删除冗余章节**：删除"问题分析与解决方案"章节，所有内容已整合到相应章节
- **优化文档结构**：确保所有内容都在正确的章节中，无重复或补充性内容

### v4.1 (2026-04-09)
- **整合问题解决方案**：将4个严重问题的解决方案整合到相应章节
- **整合需求遗漏项**：时长格式、取消高亮、导航标签显示条件、默认标题、异常处理已整合到需求概述
- **更新实现方案**：标题传递方式、焦点边界处理已整合到相应章节

### v4.0 (2026-04-09)
- **重构文档结构**：将所有内容整合到一个清晰的结构中
- **去除冗余内容**：删除重复的复查和补充章节
- **优化可读性**：按照需求、方案、实现、测试的逻辑组织内容

### v3.3 (2026-04-09)
- 添加视频卡片按下键的焦点处理逻辑（如果没有导航标签，焦点保持不变）

### v3.2 (2026-04-09)
- 添加视频详情页分集列表图片和时长显示逻辑分析

### v3.1 (2026-04-09)
- 添加播放列表标题传递需求
- 添加滚动到第1位并获得焦点需求
- 添加只在按返回键时关闭菜单需求

### v3.0 (2026-04-08)
- 完成三次复查，确保方案完整性

### v2.0 (2026-04-08)
- 确定使用方案A（复用VideoListSection组件）

### v1.0 (2026-04-08)
- 初始版本，创建改造方案文档
