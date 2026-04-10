---
name: "favorite-menu-redesign"
description: "视频详情页收藏操作交互改造。点击收藏图标弹出右侧收藏夹菜单，支持多选收藏/取消收藏。Invoke when modifying favorite interaction in VideoDetailActivity."
---

# 视频详情页收藏操作交互改造

## 需求描述

改造视频详情页的收藏操作交互：

1. **判断视频是否被收藏，修改收藏夹图标状态的操作保持不变**
   - 保持现有的 `loadArchiveRelation()` 获取收藏状态
   - 保持现有的 `o()` 方法更新收藏图标状态

2. **点击收藏图标，屏幕右侧横向拉出菜单**
   - 菜单标题显示"收藏夹"
   - 菜单内容显示用户的收藏夹列表
   - 列表item内容为收藏夹名字
   - 如果当前视频已经在某收藏夹中被收藏，在名字左侧显示对勾
   - 如未收藏则不显示对勾

3. **收藏夹可多选**
   - 用户可以同时选择多个收藏夹进行收藏操作

4. **菜单覆盖在页面之上**
   - 收藏夹菜单70%灰色半透明
   - 整个页面50%半透明

5. **点击菜单中的收藏夹item**
   - 如果当前视频未在该收藏夹中收藏，发送收藏请求，请求成功后item显示对勾
   - 如果已收藏，发送取消收藏请求，请求成功后item前不显示对勾

---

## 实现方案

### 一、核心API

#### 获取收藏夹列表（含视频收藏状态）

**API文档**: `d:\code\mycodes\androidtv\bilibilitv1.6.6-repair-uiiang\json\收藏夹.md`

| 项目 | 值 |
|------|-----|
| **URL** | `https://api.bilibili.com/x/v3/fav/folder/created/list-all` |
| **方法** | GET |
| **认证** | Cookie (SESSDATA) 或 access_key |

**请求参数**:

| 参数名 | 类型 | 必要性 | 说明 |
|--------|------|--------|------|
| `up_mid` | num | 必要 | 目标用户mid |
| `rid` | num | 非必要 | 视频稿件avid，传入后返回收藏状态 |
| `type` | num | 非必要 | 2表示视频稿件 |
| `access_key` | str | 非必要 | APP认证 |

**返回字段**:

```json
{
  "code": 0,
  "data": {
    "count": 5,
    "list": [{
      "id": 44233921,        // 收藏夹mlid（完整id）
      "fid": 442339,         // 收藏夹原始id
      "mid": 7792521,        // 创建者mid
      "title": "默认收藏夹",  // 收藏夹标题
      "fav_state": 1,        // ⭐ 关键字段：0=未收藏，1=已收藏
      "media_count": 85,     // 收藏夹内容数量
      "attr": 0              // 收藏夹属性（二进制位）
    }]
  }
}
```

**关键发现**: 传入 `rid` (视频avid) 参数后，返回的 `fav_state` 字段表示该视频是否在此收藏夹中！

---

### 二、新增类和组件

#### 1. FavoriteFolder - 收藏夹数据类

```java
public class FavoriteFolder {
    private long id;           // 收藏夹mlid
    private long fid;          // 收藏夹原始id
    private long mid;          // 创建者mid
    private String title;      // 收藏夹标题
    private int favState;      // 收藏状态：0=未收藏，1=已收藏
    private int mediaCount;    // 收藏夹内容数量
    private int attr;          // 收藏夹属性
    
    public boolean isFavored() {
        return favState == 1;
    }
    
    // getter/setter...
}
```

#### 2. FavoriteMenuDialog - 收藏夹菜单对话框类

```java
public class FavoriteMenuDialog extends Dialog {
    private RecyclerView recyclerView;
    private FavoriteMenuAdapter adapter;
    private List<FavoriteFolder> folderList;
    private long avid;
    private String accessKey;
    private String sessdata;
    
    public FavoriteMenuDialog(Context context, List<FavoriteFolder> folders, 
                              long avid, String accessKey, String sessdata) {
        super(context, R.style.FavoriteMenuDialogStyle);
        this.folderList = folders;
        this.avid = avid;
        this.accessKey = accessKey;
        this.sessdata = sessdata;
    }
}
```

#### 3. FavoriteMenuAdapter - 收藏夹列表适配器

```java
public class FavoriteMenuAdapter extends RecyclerView.Adapter<FavoriteMenuAdapter.ViewHolder> {
    private List<FavoriteFolder> folders;
    private OnItemToggleListener listener;
    
    interface OnItemToggleListener {
        void onItemToggle(FavoriteFolder folder, boolean isSelected);
    }
    
    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        FavoriteFolder folder = folders.get(position);
        holder.nameText.setText(folder.getTitle());
        // 根据收藏状态显示/隐藏对勾
        holder.checkIcon.setVisibility(folder.isFavored() ? View.VISIBLE : View.GONE);
    }
}
```

#### 4. ViewHolder布局

```xml
<!-- item_favorite_menu.xml -->
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="horizontal"
    android:padding="16dp"
    android:focusable="true"
    android:background="@drawable/selector_favorite_item">
    
    <ImageView
        android:id="@+id/check_icon"
        android:layout_width="24dp"
        android:layout_height="24dp"
        android:src="@drawable/ic_check"
        android:visibility="gone"/>
    
    <TextView
        android:id="@+id/favorite_name"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="12dp"
        android:textSize="16sp"
        android:textColor="@android:color/white"/>
</LinearLayout>
```

---

### 三、修改现有代码

#### 1. MyBiliApiService - 添加rid参数

**文件**: `mybv/java/classes/mybl/MyBiliApiService.java`

**修改前** (行151-156):
```java
@GET("/x/v3/fav/folder/created/list-all")
vp<GeneralResponse<JSONObject>> getCreatedFolderList(
        @Query("up_mid") long up_mid,
        @Query("web_location") String web_location,
        @Query("access_key") String access_key,
        @Header("Referer") String referer);
```

**修改后**:
```java
@GET("/x/v3/fav/folder/created/list-all")
vp<GeneralResponse<JSONObject>> getCreatedFolderList(
        @Query("up_mid") long up_mid,
        @Query("rid") long rid,
        @Query("type") int type,
        @Query("web_location") String web_location,
        @Query("access_key") String access_key,
        @Header("Referer") String referer);
```

#### 2. VideoDetailActivity 点击收藏按钮处理

**修改位置**: `onClick()` 方法中 `R.id.video_detail_favorite` 分支 (行1692-1710)

**修改后**:
```java
else if (id == R.id.video_detail_favorite) {
    mg a2 = mg.a(this);
    if (!a2.a()) {
        lr.a(this, "账号未登录，无法点击");
        return;
    }
    showFavoriteMenu();
}
```

#### 3. 新增 showFavoriteMenu() 方法

```java
private void showFavoriteMenu() {
    mg biliAccount = mg.a(this);
    bbi.a((Object) biliAccount, "BiliAccount.get(this)");
    
    if (this.u == null) return;
    
    long avid = this.s;
    long mid = biliAccount.d();
    String accessKey = biliAccount.e();
    String sessdata = biliAccount.getSESSDATA();
    
    // 调用API获取收藏夹列表（含视频收藏状态）
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .getCreatedFolderList(mid, avid, 2, "333.1387", accessKey, "https://www.bilibili.com")
        .a(new FavoriteFolderListResponse());
}
```

#### 4. 新增 FavoriteFolderListResponse 类

```java
public final class FavoriteFolderListResponse extends vn<JSONObject> {
    @Override
    public void a(JSONObject response) {
        if (response == null || response.getIntValue("code") != 0) {
            lr.a(VideoDetailActivity.this, "获取收藏夹列表失败");
            return;
        }
        
        JSONObject data = response.getJSONObject("data");
        if (data == null) return;
        
        JSONArray list = data.getJSONArray("list");
        if (list == null) return;
        
        List<FavoriteFolder> folders = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            JSONObject item = list.getJSONObject(i);
            FavoriteFolder folder = new FavoriteFolder();
            folder.setId(item.getLongValue("id"));
            folder.setFid(item.getLongValue("fid"));
            folder.setMid(item.getLongValue("mid"));
            folder.setTitle(item.getString("title"));
            folder.setFavState(item.getIntValue("fav_state"));
            folder.setMediaCount(item.getIntValue("media_count"));
            folder.setAttr(item.getIntValue("attr"));
            folders.add(folder);
        }
        
        // 显示收藏夹菜单
        runOnUiThread(() -> {
            mg biliAccount = mg.a(VideoDetailActivity.this);
            FavoriteMenuDialog dialog = new FavoriteMenuDialog(
                VideoDetailActivity.this,
                folders,
                VideoDetailActivity.this.s,
                biliAccount.e(),
                biliAccount.getSESSDATA()
            );
            dialog.show();
        });
    }
    
    @Override
    public void onError(Throwable th) {
        lr.a(VideoDetailActivity.this, "获取收藏夹列表失败");
    }
}
```

---

### 四、新增资源文件

#### 1. 样式文件 (res/values/styles.xml)

```xml
<style name="FavoriteMenuDialogStyle" parent="Theme.AppCompat.Dialog">
    <item name="android:windowBackground">@android:color/transparent</item>
    <item name="android:windowNoTitle">true</item>
    <item name="android:windowIsFloating">false</item>
    <item name="android:windowAnimationStyle">@style/FavoriteMenuAnimation</item>
</style>

<style name="FavoriteMenuAnimation">
    <item name="android:windowEnterAnimation">@anim/slide_in_right</item>
    <item name="android:windowExitAnimation">@anim/slide_out_right</item>
</style>
```

#### 2. 动画文件 (res/anim/)

```xml
<!-- slide_in_right.xml -->
<set xmlns:android="http://schemas.android.com/apk/res/android">
    <translate android:fromXDelta="100%" android:toXDelta="0%"
               android:duration="300"/>
</set>

<!-- slide_out_right.xml -->
<set xmlns:android="http://schemas.android.com/apk/res/android">
    <translate android:fromXDelta="0%" android:toXDelta="100%"
               android:duration="300"/>
</set>
```

#### 3. 布局文件 (res/layout/)

```xml
<!-- dialog_favorite_menu.xml -->
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">
    
    <!-- 半透明背景 50% -->
    <View android:id="@+id/dim_background"
          android:background="#80000000"
          android:layout_width="match_parent"
          android:layout_height="match_parent"/>
    
    <!-- 右侧菜单 70%灰色半透明 -->
    <LinearLayout
        android:id="@+id/menu_container"
        android:layout_width="300dp"
        android:layout_height="match_parent"
        android:layout_gravity="right"
        android:background="#B3707070"
        android:orientation="vertical">
        
        <!-- 标题 -->
        <TextView
            android:text="收藏夹"
            android:textSize="18sp"
            android:textColor="@android:color/white"
            android:padding="16dp"/>
        
        <!-- 收藏夹列表 -->
        <android.support.v7.widget.RecyclerView
            android:id="@+id/favorite_list"
            android:layout_width="match_parent"
            android:layout_height="match_parent"/>
    </LinearLayout>
</FrameLayout>
```

---

### 五、收藏/取消收藏操作

#### 添加收藏 (使用现有API)

```java
// BiliFavoriteVideoApiService.addVideoToList()
POST /x/v2/fav/video/add
参数: access_key, fid, aid, from
```

#### 取消收藏 (使用现有API)

```java
// BiliFavoriteVideoApiService.deleteVideoFromList()
POST /x/v2/fav/video/del
参数: access_key, fid, aid
```

#### 在Adapter中处理点击事件

```java
holder.itemView.setOnClickListener(v -> {
    FavoriteFolder folder = folders.get(position);
    boolean willFav = !folder.isFavored();
    
    if (willFav) {
        // 添加收藏
        addVideoToFolder(folder.getFid(), () -> {
            folder.setFavState(1);
            notifyItemChanged(position);
        });
    } else {
        // 取消收藏
        removeVideoFromFolder(folder.getFid(), () -> {
            folder.setFavState(0);
            notifyItemChanged(position);
        });
    }
});
```

---

## 实现步骤

### 阶段一：修改API接口
1. 修改 `MyBiliApiService.getCreatedFolderList()` 添加 `rid` 和 `type` 参数
2. 创建 `FavoriteFolder` 数据类

### 阶段二：创建UI组件
1. 创建 `FavoriteMenuDialog` 类
2. 创建 `FavoriteMenuAdapter` 类
3. 创建相关布局文件
4. 创建样式和动画资源

### 阶段三：修改点击逻辑
1. 修改 `onClick()` 中收藏按钮处理
2. 新增 `showFavoriteMenu()` 方法
3. 新增 `FavoriteFolderListResponse` 回调类

### 阶段四：实现收藏/取消收藏逻辑
1. 实现item点击事件
2. 实现添加/删除收藏的API调用
3. 实现UI状态更新

### 阶段五：测试验证
1. 测试菜单显示/隐藏动画
2. 测试多选收藏功能
3. 测试收藏状态同步

---

## 关键代码位置

| 文件 | 行号 | 说明 |
|------|------|------|
| MyBiliApiService.java | 151-156 | 获取收藏夹列表API (需修改) |
| VideoDetailActivity.java | 1692-1710 | 点击收藏按钮处理 (需修改) |
| VideoDetailActivity.java | 237-246 | 收藏按钮初始化 |
| VideoDetailActivity.java | 1800-1820 | 更新收藏图标状态 o() |
| VideoDetailActivity.java | 1824-1835 | 添加收藏 p() |
| VideoDetailActivity.java | 1875-1885 | 取消收藏 q() |
| BiliVideoDetail.java | 351-352 | isFavoriteVideo() |
| BiliFavoriteVideoApiService | - | 收藏/取消收藏API |

---

## 遗漏细节分析

### 1. 长按收藏按钮的处理

**现有代码** (行561-580):
```java
public final boolean onLongClick(View view) {
    // ...
    else if (id == R.id.video_detail_favorite) {
        ((BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class))
                .getStatedBoxList(biliAccount.e(), Long.valueOf(biliAccount.d()), 0L)
                .a(new BiliFavoriteBoxResponse());
    }
    return true;
}
```

**问题**: 长按收藏按钮也会弹出收藏夹选择对话框（AlertDialog样式）

**处理方案**: 
- **方案A**: 删除长按事件，点击和长按都弹出新的收藏夹菜单
- **方案B**: 保留长按功能，但改为弹出新的收藏夹菜单样式
- **推荐方案A**: 简化交互，点击即弹出收藏夹菜单

### 2. 现有回调类需要删除/修改

| 类名 | 位置 | 说明 |
|------|------|------|
| `BiliFavoriteBoxResponse` | 行585-610 | 长按收藏的回调，需删除或修改 |
| `class l` | 行1837 | 添加收藏回调，可复用 |
| `class m` | 行1881 | 取消收藏回调，可复用 |

### 3. 防重复操作标志位 `this.B`

现有代码使用 `this.B` 作为防重复操作标志位：
```java
private final void p(String fid) {
    if (this.B) return;  // 防重复
    this.B = true;
    // ...
}

// 回调中重置
public void a(Void r2) {
    VideoDetailActivity.this.B = false;
    // ...
}
```

**问题**: 新的多选收藏功能需要独立的防重复机制，不能共用 `this.B`

**解决方案**: 在 `FavoriteMenuDialog` 或 `FavoriteMenuAdapter` 中维护独立的防重复状态

### 4. 收藏成功后更新主界面收藏图标

现有回调 `class l` 和 `class m` 会调用：
```java
biliVideoDetail.setFavoriteStatus(true/false);  // 更新视频收藏状态
VideoDetailActivity.this.o();  // 更新UI
```

**问题**: 多选收藏时，如何判断主界面收藏图标状态？

**解决方案**: 
- 只要视频在任意一个收藏夹中，主界面收藏图标就显示为已收藏
- 关闭菜单时重新调用 `o()` 更新主界面状态

### 5. 菜单关闭时的处理

需要考虑：
- 点击菜单外部区域关闭菜单
- 按返回键关闭菜单
- 关闭时更新主界面收藏图标状态

### 6. TV遥控器焦点处理

作为TV应用，需要处理：
- 菜单弹出时焦点定位到第一个收藏夹item
- **焦点不循环**: 焦点移动到菜单上边界后无法再向上移动，移动到下边界后无法再向下移动
- **支持滚动**: 当菜单项目超出显示区域时，支持向上或向下滚动显示
- 按返回键关闭菜单

**实现要点**:
```java
// RecyclerView 焦点处理
recyclerView.setOnFocusChangeListener((v, hasFocus) -> {
    if (hasFocus) {
        // 焦点定位到第一个item
        if (adapter.getItemCount() > 0) {
            recyclerView.getChildAt(0).requestFocus();
        }
    }
});

// 使用 LinearLayoutManager 处理滚动
LinearLayoutManager layoutManager = new LinearLayoutManager(context);
recyclerView.setLayoutManager(layoutManager);
```

### 7. 空收藏夹列表处理

如果用户没有收藏夹，需要显示提示信息

---

## 注意事项

1. **保持现有功能不变**: 判断视频是否收藏、更新图标状态的逻辑保持不变
2. **使用新API**: 使用 `/x/v3/fav/folder/created/list-all` 替代原来的 `getStatedBoxList`
3. **fav_state字段**: 传入 `rid` 参数后，返回的 `fav_state` 字段表示视频是否在该收藏夹中
4. **多选处理**: 每个收藏夹独立处理收藏/取消收藏操作
5. **UI同步**: 请求成功后及时更新UI状态
6. **防重复操作**: 使用标志位防止重复点击
7. **删除长按功能**: 点击收藏按钮直接弹出收藏夹菜单，移除长按事件
8. **独立防重复机制**: 在Dialog/Adapter中维护独立的防重复状态，不共用 `this.B`
9. **关闭菜单时更新状态**: 关闭菜单时重新判断并更新主界面收藏图标
10. **TV焦点处理**: 确保遥控器操作流畅
