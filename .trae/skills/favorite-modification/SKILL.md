---
name: "favorite-modification"
description: "收藏夹功能改造：左侧统一目录列表（收藏夹/订阅合集/课程收藏），右侧对应视频列表。Invoke when user needs to implement or modify the favorite page."
---

# 收藏夹功能改造方案

## 一、需求概述

### 目标
将现有的收藏夹页面改造成左右分栏布局：
- **左侧**：动态加载并按顺序显示三种类型的目录列表
  1. 视频收藏目录
  2. 订阅合集目录
  3. 课程收藏目录
- **右侧**：当光标移动到左侧目录时，显示该目录下的视频列表
- **布局**：视频列表布局与"默认收藏"中的布局一致

### UI样式要求（保持与现有代码一致）
- **左侧目录列表**：
  - 宽度：与 ElseActivity 左侧列表一致（复用 activity_favorite.xml 布局）
  - 背景色：保持现有背景色（activity_favorite.xml 定义）
  - 前景色：保持现有前景色
  - 焦点框：复用 SideLeftSelectLinearLayout 的焦点效果
  - 列表项样式：复用 aed.java 中的 recycler_view_item_favorite_box_list 布局
  - ViewHolder：复用 aed.c 或 agf 的 ViewHolder
  - 布局管理器：复用 LiveLeftLinearLayoutManger

- **右侧视频列表**：
  - 完全复用 aee.java（默认收藏）的布局
  - 焦点框：完全一致，使用 SideRightGridLayoutManger 和 shadow_white_rect 效果
  - 适配器：复用现有视频列表适配器
  - 加载状态：复用 ady 基类的加载、错误、空状态
  - ViewHolder：复用 aeb ViewHolder

- **页面整体布局**：
  - 复用 activity_favorite.xml
  - 标题："我的收藏"（替换"其它"）
  - 框架：继承 BaseSideActivity

### 核心文件
- `aec.java`: 收藏夹Fragment适配器
- `aed.java`: 视频收藏Fragment
- `aee.java`: 默认收藏Fragment（视频列表参考）
- `aed2.java`: 订阅合集Fragment
- `aed3.java`: 课程收藏Fragment
- `ElseActivity.java`: 左右分栏布局参考
- `BoxListInfoActivity.java`: 收藏夹视频列表
- `BoxListInfoActivity2.java`: 订阅合集视频列表
- `BoxListInfoActivity3.java`: 课程收藏视频列表

## 二、技术架构

### 布局结构
```
┌─────────────────────────┐
│ FavoriteSideActivity    │
├────────────┬────────────┤
│            │            │
├────────────▼────────────┤
│  左侧目录列表 (RecyclerView)  │
├────────────┬────────────┤
│            │            │
├────────────▼────────────┤
│  右侧视频列表 (Fragment)   │
└─────────────────────────┘
```

### 基类复用
- **BaseSideActivity**: 左右分栏基类
- **ady**: 视频列表Fragment基类
- **adx**: Fragment适配器基类

## 三、统一目录数据模型

### 接口定义
```java
public interface FavoriteFolder {
    String getTitle();      // 目录标题
    String getCover();      // 封面图
    int getCount();         // 数量
    long getId();           // 目录ID
    int getType();          // 1: 视频收藏, 2: 订阅合集, 3: 课程收藏
}
```

### 实现类

#### 1. VideoFavoriteFolder (视频收藏)
- 包装 `BiliFavoriteBox`
- 字段映射：
  - `getTitle()` → `getMName()`
  - `getCover()` → `getVideoCovers().get(0).getCover()`
  - `getCount()` → `getMCount()`
  - `getId()` → `getMId()`
  - `getType()` → 1

#### 2. CollectionFavoriteFolder (订阅合集)
- 包装 JSONObject (来自 `getCollectedFolders()`)
- 字段映射：
  - `getTitle()` → `getString("title")`
  - `getCover()` → `getString("cover")`
  - `getCount()` → `getIntValue("media_count")`
  - `getId()` → `getLong("fid")` 或 `getLong("id")`
  - `getType()` → 2

#### 3. CourseFavoriteFolder (课程收藏)
- 包装 JSONObject (来自 `getFavoritePugv()`)
- 字段映射：
  - `getTitle()` → `getString("title")`
  - `getCover()` → `getString("cover")`
  - `getCount()` → `getIntValue("ep_count")`
  - `getId()` → `getLong("season_id")`
  - `getType()` → 3

## 四、左侧目录列表实现

### 数据加载逻辑
```java
private List<FavoriteFolder> allFolders = new ArrayList<>();
private int loadedTypes = 0;

private void loadAllFolders() {
    loadedTypes = 0;
    allFolders.clear();
    
    // 1. 加载视频收藏目录
    loadVideoFolders();
    
    // 2. 加载订阅合集目录
    loadCollectionFolders();
    
    // 3. 加载课程收藏目录
    loadCourseFolders();
}

private void onFolderTypeLoaded(List<FavoriteFolder> folders) {
    allFolders.addAll(folders);
    loadedTypes++;
    
    if (loadedTypes == 3) {
        // 全部加载完成
        adapter.notifyDataSetChanged();
    }
}
```

### 适配器实现（完全复用 aed.java）
```java
public class FavoriteFolderAdapter extends adz<RecyclerView.v> {
    private List<FavoriteFolder> folders;
    
    @Override
    public RecyclerView.v a(ViewGroup viewGroup, int i) {
        // 完全复用 aed.c ViewHolder
        return aed.c.Companion.a(viewGroup);
    }
    
    @Override
    public void a(RecyclerView.v vVar, int i) {
        FavoriteFolder folder = folders.get(i);
        
        if (vVar instanceof aed.c) {
            aed.c holder = (aed.c) vVar;
            
            // 完全复用 aed.java:190-207 的数据绑定逻辑
            if (folder.getTitle() != null) {
                holder.A().setText(folder.getTitle());
            }
            
            if (folder.getCover() != null) {
                nv.a().a(ach.c(MainApplication.a(), folder.getCover()), holder.z());
            } else {
                nv.a().a("", holder.z());
            }
            
            int count = folder.getCount();
            holder.B().setText(count <= 999 ? String.valueOf(count) : "999+");
            
            vVar.a.setTag(R.id.position, Integer.valueOf(i));
            vVar.a.setTag(folder);
        }
    }
    
    @Override
    public int a() {
        return folders.size();
    }
}
```

### 交互设计
- **光标移动**：当目录项获得焦点时，右侧显示对应视频列表
- **延迟加载**：使用500ms延迟，避免快速滚动时频繁切换
- **焦点管理**：使用 `SideLeftSelectLinearLayout` 处理焦点状态

## 五、右侧视频列表实现

### 通用视频Fragment（完全复用 aee.java）
```java
public class FavoriteVideoFragment extends ady {
    private long folderId;
    private int folderType;
    private int page = 1;
    private boolean hasMore = true;
    
    // 完全复用 aee.java 中的变量和回调
    private aee.c adapter;  // 复用 aee.c 适配器
    private aee.b callback; // 复用 aee.b 回调
    private boolean hasUp;
    private int currentPage = 1;
    private boolean hasMoreData = true;
    private boolean isFirstLoad;
    
    public static FavoriteVideoFragment newInstance(long folderId, int folderType) {
        FavoriteVideoFragment fragment = new FavoriteVideoFragment();
        fragment.folderId = folderId;
        fragment.folderType = folderType;
        return fragment;
    }
    
    @Override
    public void a(RecyclerView recyclerView, Bundle bundle) {
        super.a(recyclerView, bundle);
        
        // 完全复制 aee.java:57-78 的初始化逻辑
        SideRightGridLayoutManger layoutManager = new SideRightGridLayoutManger(getActivity(), 2);
        FragmentActivity activity = getActivity();
        if (activity != null && activity instanceof FavoriteActivity) {
            layoutManager.a(new aee.e((FavoriteActivity) activity));
        }
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(layoutManager);
        int iB = adl.b(R.dimen.px_4);
        int iB2 = adl.b(R.dimen.px_20);
        int iB3 = adl.b(R.dimen.px_30);
        recyclerView.setPadding(iB3, iB3, iB3, iB3);
        recyclerView.a(new aee.f(iB2, iB));
        recyclerView.a(new aee.g(layoutManager));
        
        // 复用 aee.c 适配器
        this.adapter = new aee.c();
        recyclerView.setAdapter(this.adapter);
        
        // 复用加载状态
        i();
        
        // 复用回调
        this.callback = new aee.b();
        
        // 加载视频数据
        loadVideos();
    }
    
    private void loadVideos() {
        switch (folderType) {
            case 1:
                // 视频收藏：复用 BoxListInfoActivity.java 的 API
                loadVideoFavoriteVideos();
                break;
            case 2:
                // 订阅合集：复用 BoxListInfoActivity2.java 的 API
                loadCollectionVideos();
                break;
            case 3:
                // 课程收藏：复用 BoxListInfoActivity3.java 的 API
                loadCourseVideos();
                break;
        }
    }
}
```

### API 接口调用

#### 1. 视频收藏 (Type 1)
```java
// 复用 BoxListInfoActivity.java:235
private void loadVideoFavoriteVideos() {
    BiliFavoriteVideoApiService api = (BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class);
    mg account = mg.a(getActivity());
    
    api.getFavoriteSearchedVideoList(
        account.e(),
        new BiliFavoriteVideoApiService.FavParamsMap(mid, folderId, 0L, null, null, page)
    ).a(new vn<BiliSearchFavoriteBox>() {
        @Override
        public void a(BiliSearchFavoriteBox result) {
            // 处理结果
        }
    });
}
```

#### 2. 订阅合集 (Type 2)
```java
// 复用 BoxListInfoActivity2.java:233
private void loadCollectionVideos() {
    ((MyBiliApiService) vo.a(MyBiliApiService.class))
        .getFavoriteUserSeason(folderId, page, 20)
        .a(new vn<JSONObject>() {
            @Override
            public void a(JSONObject result) {
                // 处理结果
            }
        });
}
```

#### 3. 课程收藏 (Type 3)
```java
// 复用 BoxListInfoActivity3.java
private void loadCourseVideos() {
    // TODO: 确认课程收藏的视频列表API
}
```

### 布局复用
- 复用 `aee.java` 的视频列表布局
- 复用 `aeb` ViewHolder
- 复用 `SideRightGridLayoutManger` 布局管理器

## 六、FavoriteSideActivity 实现（完全复用 ElseActivity.java）

### 核心代码（复制修改自 ElseActivity.java）
```java
public class FavoriteSideActivity extends BaseSideActivity {
    private List<FavoriteFolder> folders = new ArrayList<>();
    private FavoriteFolderAdapter adapter;
    private FavoriteFolder selectedFolder;
    
    public static void a(Context context) {
        context.startActivity(new Intent(context, FavoriteSideActivity.class));
    }
    
    @Override
    public int g() {
        // 完全复用 ElseActivity 的布局
        return R.layout.activity_favorite;
    }
    
    @Override
    public void a(Bundle bundle) {
        super.a(bundle);
        // 修改标题为"我的收藏"（原为"其它"）
        ((TextView) d(R.id.content_name)).setText("我的收藏");
        b((RecyclerView) d(R.id.recycler_view));
        loadAllFolders();
    }
    
    @Override
    protected void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        
        // 完全复用 ElseActivity:61 的布局管理器
        j().setLayoutManager(new LiveLeftLinearLayoutManger(this, 1, false));
        
        // 创建适配器
        adapter = new FavoriteFolderAdapter(folders);
        j().setAdapter(adapter);
        j().setFocusable(false);
        j().setHasFixedSize(true);
    }
    
    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        // 完全复用 ElseActivity:85-120 的键盘事件处理
        return super.dispatchKeyEvent(keyEvent);
    }
    
    private void loadAllFolders() {
        // 加载三种类型的目录
        // ...
    }
    
    private void showVideoList(FavoriteFolder folder) {
        if (selectedFolder == folder) {
            return;
        }
        
        selectedFolder = folder;
        
        // 创建新的视频Fragment
        FavoriteVideoFragment fragment = FavoriteVideoFragment.newInstance(
            folder.getId(),
            folder.getType()
        );
        
        // 替换右侧Fragment
        getSupportFragmentManager()
            .beginTransaction()
            .replace(R.id.fragment_container, fragment)
            .commit();
    }
    
    @Override
    public Fragment h() {
        return getSupportFragmentManager().findFragmentById(R.id.fragment_container);
    }
}
```

### 适配器代码（复制修改自 ElseActivity.a）
```java
public static class a extends adz<RecyclerView.v> implements Runnable {
    private WeakReference<FavoriteSideActivity> activityRef;
    private List<FavoriteFolder> folders;
    private int selectedPosition;
    private long lastSwitchTime;
    private boolean isSwitching;
    
    public a(FavoriteSideActivity activity, List<FavoriteFolder> folders) {
        this.activityRef = new WeakReference<>(activity);
        this.folders = folders;
    }
    
    @Override
    public RecyclerView.v a(ViewGroup viewGroup, int i) {
        // 完全复用 aed.c ViewHolder
        return aed.c.Companion.a(viewGroup);
    }
    
    @Override
    public void a(final RecyclerView.v vVar, int i) {
        if (vVar instanceof aed.c) {
            final FavoriteFolder folder = folders.get(i);
            
            // 完全复用 aed.java:190-207 的数据绑定逻辑
            aed.c holder = (aed.c) vVar;
            if (folder.getTitle() != null) {
                holder.A().setText(folder.getTitle());
            }
            if (folder.getCover() != null) {
                nv.a().a(ach.c(MainApplication.a(), folder.getCover()), holder.z());
            } else {
                nv.a().a("", holder.z());
            }
            int count = folder.getCount();
            holder.B().setText(count <= 999 ? String.valueOf(count) : "999+");
            
            // 完全复用 ElseActivity.a:159-184 的焦点监听逻辑
            vVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View view, boolean z) {
                    FavoriteSideActivity activity = activityRef.get();
                    if (!z) {
                        if (a.this.isSwitching) {
                            return;
                        }
                        vVar.a.setSelected(false);
                        return;
                    }
                    if (activity == null || activity.isFinishing()) {
                        return;
                    }
                    int position = vVar.f();
                    if (System.currentTimeMillis() - a.this.lastSwitchTime < 500) {
                        view.removeCallbacks(a.this);
                    }
                    a.this.selectedPosition = position;
                    view.postDelayed(a.this, 500L);
                    a.this.lastSwitchTime = System.currentTimeMillis();
                    vVar.a.setSelected(true);
                    if (vVar.a instanceof SideLeftSelectLinearLayout) {
                        ((SideLeftSelectLinearLayout) vVar.a).a();
                    }
                    activity.b(4);
                }
            });
        }
    }
    
    @Override
    public int a() {
        return folders.size();
    }
    
    public void b(boolean z) {
        this.isSwitching = z;
    }
    
    public int f() {
        return this.selectedPosition;
    }
    
    @Override
    public void run() {
        FavoriteSideActivity activity = this.activityRef.get();
        if (activity == null || activity.isFinishing()) {
            return;
        }
        if (this.folders != null && this.selectedPosition < this.folders.size()) {
            activity.showVideoList(this.folders.get(this.selectedPosition));
        }
    }
}
```

## 七、可复用的现有代码（详细清单）

### 核心原则
**最大程度复用现有代码，保持代码风格和用户体验一致**

---

### 左侧目录列表复用

| 来源文件 | 复用内容 | 复用位置 | 文件路径 |
|---------|---------|---------|---------|
| `ElseActivity.java` | 左右分栏布局框架、BaseSideActivity继承 | FavoriteSideActivity | ranking/ElseActivity.java |
| `ElseActivity.java` | onPostCreate() 布局管理器初始化 | FavoriteSideActivity | ranking/ElseActivity.java:61 |
| `ElseActivity.java` | dispatchKeyEvent() 键盘事件处理 | FavoriteSideActivity | ranking/ElseActivity.java:85-120 |
| `ElseActivity.a` | 适配器基类结构、延迟加载逻辑 | FavoriteSideActivity.a | ranking/ElseActivity.java:131-213 |
| `aed.java` | ViewHolder aed.c | FavoriteSideActivity.a | bl/aed.java:224-300 |
| `aed.java` | 数据绑定逻辑（标题/封面/数量） | FavoriteSideActivity.a | bl/aed.java:190-207 |
| `aed.java` | 目录列表布局文件 | FavoriteSideActivity.a | R.layout.recycler_view_item_favorite_box_list |
| `activity_favorite.xml` | 整体布局文件（左侧宽度、背景色） | FavoriteSideActivity | res/layout/activity_favorite.xml |

---

### 右侧视频列表复用

| 来源文件 | 复用内容 | 复用位置 | 文件路径 |
|---------|---------|---------|---------|
| `aee.java` | 完整的Fragment结构 | FavoriteVideoFragment | bl/aee.java |
| `aee.java` | SideRightGridLayoutManger 初始化 | FavoriteVideoFragment | bl/aee.java:60 |
| `aee.java` | RecyclerView Padding设置（px_30） | FavoriteVideoFragment | bl/aee.java:71 |
| `aee.java` | ItemDecoration（f类） | FavoriteVideoFragment | bl/aee.java:102-129 |
| `aee.java` | 滚动监听（g类） | FavoriteVideoFragment | bl/aee.java:132-150 |
| `aee.java` | 适配器 c 类 | FavoriteVideoFragment | bl/aee.java |
| `aee.java` | 回调 b 类 | FavoriteVideoFragment | bl/aee.java |
| `aee.java` | ViewHolder aeb 类 | FavoriteVideoFragment | bl/aee.java |
| `aee.java` | BorderGridLayoutManager 焦点框处理 | FavoriteVideoFragment | bl/aee.java:82-99 |
| `aee.java` | shadow_white_rect 焦点效果 | FavoriteVideoFragment | bl/aee.java:95 |
| `ady.java` | Fragment基类、加载/错误/空状态 | FavoriteVideoFragment | bl/ady.java |

---

### API接口复用

| API方法 | 来源文件 | 用途 | 复用位置 |
|---------|---------|------|---------|
| `getStatedBoxList()` | `aed.java:115` | 获取视频收藏目录 | FavoriteSideActivity |
| `getCollectedFolders()` | `aed2.java:107` | 获取订阅合集目录 | FavoriteSideActivity |
| `getFavoritePugv()` | `aed3.java:106` | 获取课程收藏目录 | FavoriteSideActivity |
| `getFavoriteSearchedVideoList()` | `BoxListInfoActivity.java:235` | 获取视频收藏视频列表 | FavoriteVideoFragment |
| `getFavoriteUserSeason()` | `BoxListInfoActivity2.java:233` | 获取订阅合集视频列表 | FavoriteVideoFragment |

---

### UI样式复用清单

| UI元素 | 来源 | 复用说明 |
|-------|------|---------|
| 左侧列表宽度 | `activity_favorite.xml` | 保持现有宽度，无需修改 |
| 左侧背景色 | `activity_favorite.xml` | 保持现有背景色 |
| 左侧前景色 | `aed.c` | 保持现有文本颜色 |
| 左侧焦点框 | `SideLeftSelectLinearLayout` | 完全复用现有焦点效果 |
| 右侧网格布局 | `aee.java:60` | 2列布局，SideRightGridLayoutManger |
| 右侧焦点框 | `aee.java:95` | shadow_white_rect 效果 |
| 右侧Item间距 | `aee.java:68-72` | px_4 和 px_20 |
| 右侧Padding | `aee.java:71` | px_30 |
| 加载状态 | `ady.java` | i()/j()/k()/l() |

---

### 不需要重新创建的文件

| 文件 | 说明 |
|------|------|
| ✅ `FavoriteSideActivity.java` | 复制 ElseActivity.java 修改 |
| ✅ `FavoriteVideoFragment.java` | 复制 aee.java 修改 |
| ❌ 无需创建新的布局文件 | 全部复用现有布局 |
| ❌ 无需创建新的ViewHolder | 复用 aed.c 和 aeb |
| ❌ 无需创建新的适配器 | 复用 aee.c 和 aed.b |
| ❌ 无需创建新的API服务 | 复用现有API |

## 八、实施步骤（强调代码复用）

---

### 核心原则
**先复制再修改，最大程度复用现有代码！**

---

### 步骤1：创建统一目录模型
1. 创建 `FavoriteFolder.java` 接口
2. 创建 `VideoFavoriteFolder.java`（包装 BiliFavoriteBox）
3. 创建 `CollectionFavoriteFolder.java`（包装 JSONObject）
4. 创建 `CourseFavoriteFolder.java`（包装 JSONObject）

---

### 步骤2：创建 FavoriteSideActivity（复制 ElseActivity.java）
1. **完全复制** `ElseActivity.java` 为 `FavoriteSideActivity.java`
2. 修改包名和类名
3. 修改标题：把 "其它" 改为 "我的收藏"（line:53）
4. 移除 `aeg2` 适配器相关代码
5. 替换为目录加载逻辑（复用 aed.java/aed2.java/aed3.java）
6. 内部类 `a` 替换为目录适配器（复用 aed.java 的 ViewHolder 和数据绑定）
7. 内部类 `a` 的 onCreateViewHolder 返回 `aed.c.Companion.a(viewGroup)`
8. 内部类 `a` 的 onBindViewHolder 复用 aed.java:190-207 的逻辑

---

### 步骤3：创建 FavoriteVideoFragment（复制 aee.java）
1. **完全复制** `aee.java` 为 `FavoriteVideoFragment.java`
2. 修改包名和类名
3. 添加 `folderId` 和 `folderType` 成员变量
4. 修改加载视频的逻辑（根据 folderType 调用不同 API）
   - Type 1: 复用 BoxListInfoActivity.java 的 API
   - Type 2: 复用 BoxListInfoActivity2.java 的 API
   - Type 3: 复用 BoxListInfoActivity3.java 的 API
5. **不要修改任何布局或UI相关代码！**
6. **完全保留** aee.java 的：
   - SideRightGridLayoutManger 初始化
   - Padding 设置
   - ItemDecoration
   - 滚动监听
   - 适配器
   - ViewHolder
   - 焦点框处理

---

### 步骤4：修改入口
1. 打开 `MainMyFragment.java`
2. 找到 line:460 附近
3. 将 `FavoriteActivity.Companion.a(a2)` 改为 `FavoriteSideActivity.a(a2)`

---

### 步骤5：测试与验证
1. 测试左侧目录列表加载
2. 验证左侧UI样式（宽度、背景色、焦点框）与现有一致
3. 测试右侧视频列表显示
4. 验证右侧UI样式（焦点框、布局）与"默认收藏"一致
5. 测试目录切换（500ms延迟是否生效）
6. 测试键盘导航（左右键、上下键）
7. 测试加载状态（加载中、错误、空状态）

---

### 关键检查点
| 检查项 | 验证内容 |
|-------|---------|
| ✅ 左侧列表宽度 | 是否与 ElseActivity 一致 |
| ✅ 左侧背景色 | 是否与现有一致 |
| ✅ 左侧焦点框 | SideLeftSelectLinearLayout 是否生效 |
| ✅ 右侧布局 | 是否 2 列，SideRightGridLayoutManger |
| ✅ 右侧焦点框 | shadow_white_rect 是否显示 |
| ✅ 右侧Padding | 是否 px_30 |
| ✅ 代码复用 | 90% 以上代码来自现有文件 |

## 九、技术要点

### 1. 数据统一
- 使用适配器模式统一不同类型的目录数据
- 提供统一的访问接口

### 2. 性能优化
- 并发加载三种类型的目录数据
- 使用延迟加载避免频繁切换
- 缓存机制减少重复请求
- 分页加载视频列表

### 3. 用户体验
- 平滑的目录切换动画
- 响应式的加载状态
- 符合TV端操作习惯的键盘导航
- 加载、错误、空状态处理

### 4. 代码复用
- 最大程度复用现有代码
- 保持现有用户体验
- 降低开发和维护成本

## 十、API 接口清单

| 接口 | 方法 | 用途 | 来源 |
|------|------|------|------|
| `getStatedBoxList()` | BiliFavoriteVideoApiService | 获取视频收藏目录 | aed.java:115 |
| `getCollectedFolders()` | MyBiliApiService | 获取订阅合集目录 | aed2.java:107 |
| `getFavoritePugv()` | MyBiliApiService | 获取课程收藏目录 | aed3.java:106 |
| `getFavoriteSearchedVideoList()` | BiliFavoriteVideoApiService | 获取视频收藏视频 | BoxListInfoActivity.java:235 |
| `getFavoriteUserSeason()` | MyBiliApiService | 获取订阅合集视频 | BoxListInfoActivity2.java:233 |

## 十一、注意事项

1. **内存管理**：及时清理Fragment和回调，避免内存泄漏
2. **网络错误**：完善的错误处理和重试机制
3. **空状态**：处理没有目录或没有视频的情况
4. **焦点管理**：确保TV端键盘导航流畅
5. **兼容性**：保持与现有功能的兼容性

## 十二、总结

### 核心设计理念
本改造方案的核心是**最大程度复用现有代码，保持UI样式和用户体验一致**。通过复制而非重写的方式，确保：

---

### 改造优势
1. **开发效率高**：90% 以上的代码来自现有文件
2. **风险低**：复用经过验证的代码
3. **用户体验一致**：UI样式完全保持现有风格
4. **维护简单**：代码风格统一，易于后续修改

---

### 关键复用点
| 模块 | 复用来源 | 复用率 |
|------|---------|--------|
| 左侧目录列表 | ElseActivity.java + aed.java | 95% |
| 右侧视频列表 | aee.java | 98% |
| 整体布局 | activity_favorite.xml | 100% |
| ViewHolder | aed.c + aeb | 100% |
| 焦点效果 | SideLeftSelectLinearLayout + shadow_white_rect | 100% |

---

### 最终效果
改造完成后，用户将能够：
- 在一个统一的界面中浏览**视频收藏、订阅合集、课程收藏**三类目录
- 通过左侧目录列表快速切换
- 在右侧查看与"默认收藏"完全一致的视频列表
- 享受完全一致的TV端键盘导航体验
- 保持原有的加载、错误、空状态交互
