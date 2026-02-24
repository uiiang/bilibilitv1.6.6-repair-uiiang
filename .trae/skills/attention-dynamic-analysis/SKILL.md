---
name: "attention-dynamic-analysis"
description: "Analyzes Attention and Dynamic pages including data interfaces, navigation, interactions, and layout. Invoke when modifying or understanding the attention/dynamic functionality."
---

# 关注和动态页面分析

## 概述
AttentionDynamicActivity 是一个双模式页面，通过 `uperMode` 静态变量控制显示内容：
- `uperMode = false`: 显示动态页面（我的关注动态）
- `uperMode = true`: 显示关注页面（关注的UP主列表）

## 文件位置
- 主Activity: [AttentionDynamicActivity.java](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/tv/ui/attention/AttentionDynamicActivity.java)
- API接口: [MyBiliApiService.java](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/mybl/MyBiliApiService.java)
- 导航入口: [MainMyFragment.java](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/tv/ui/main/content/MainMyFragment.java)
- 过滤器: [BiliFilter.java](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/mybl/BiliFilter.java)

## 数据接口

### 动态页面 (uperMode = false)
**接口**: `getFeedVideos`
- URL: `/x/polymer/web-dynamic/v1/feed/all?type=video`
- 参数:
  - `access_key`: 访问密钥
  - `offset`: 分页偏移量（字符串）
- 响应结构:
  ```json
  {
    "items": [...],
    "has_more": boolean,
    "offset": string
  }
  ```
- 数据提取: 从 `items[].modules` 获取动态内容
- 过滤: 使用 `BiliFilter.filterUpperFeedJSONItem()` 过滤动态内容

### 关注页面 (uperMode = true)
**接口**: `getFollowings`
- URL: `/x/relation/followings`
- 参数:
  - `access_key`: 访问密钥
  - `vmid`: 用户ID
  - `order_type`: 排序类型（"attention"）
  - `ps`: 每页数量（30）
  - `pn`: 页码
- 响应结构:
  ```json
  {
    "list": [...]
  }
  ```
- 数据提取: 直接从 `list` 获取UP主信息

## 页面布局

### 主布局文件
- [activity_vertical_title_with_recycler_view.xml](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/res/layout/activity_vertical_title_with_recycler_view.xml)
  - 顶部标题栏（title）
  - RecyclerView（recycler_view）
  - 加载视图（loading_view_content）

### 列表项布局
根据 `uperMode` 使用不同的布局：
- 动态页面: `recycler_view_item_video_info.xml`
  - 封面图 (ScalableImageView)
  - 标题 (TextView)
  - UP主名称 (TextView) - 带图标
  - 播放量 (TextView) - 带图标
  - 弹幕数 (TextView) - 带图标

- 关注页面: `recycler_view_item_search_uper.xml`
  - 头像 (ScalableImageView)
  - 用户名 (TextView)
  - 简介/签名 (TextView)
  - 粉丝数 (TextView)
  - 投稿数 (TextView)

## 导航流程

### 从主页面进入
在 [MainMyFragment.java](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/tv/ui/main/content/MainMyFragment.java) 的 `onClick` 方法中：

```java
case 1: // 动态页面
    AttentionDynamicActivity.uperMode = false;
    AttentionDynamicActivity.Companion.a(activity);
    
case 3: // 关注页面
    AttentionDynamicActivity.uperMode = true;
    AttentionDynamicActivity.Companion.a(activity);
```

### 标题设置
在 `a(Bundle)` 方法中根据模式设置标题：
```java
if(AttentionDynamicActivity.uperMode){
    ((TextView) d(R.id.title)).setText("关注");
}else{
    ((TextView) d(R.id.title)).setText(getString(R.string.my_attention));
}
```

## 交互逻辑

### 数据加载
- 初始加载: `i()` 方法在 `a(Bundle)` 中调用
- 分页加载: RecyclerView滚动监听器 `f` 检测到底部时触发下一页
- 刷新: `d_()` 方法调用 `i()` 重新加载数据

### 分页机制
- 动态页面: 使用 `offset` 字符串分页，`has_more` 判断是否还有更多
- 关注页面: 使用页码 `pn` 分页

### 点击事件
- 动态页面: 点击视频项跳转到视频详情页
  ```java
  Long valueOf = Long.valueOf(((JSONObject) tag).getJSONObject("module_dynamic")
      .getJSONObject("major").getJSONObject("archive").getString("aid"));
  a.startActivity(VideoDetailActivity.Companion.a(a, valueOf.longValue()));
  ```

- 关注页面: 点击UP主项跳转到UP主空间页
  ```java
  Long valueOf = Long.valueOf(((JSONObject) tag).getString("mid"));
  a.startActivity(AuthSpaceActivity.Companion.a(a, valueOf.longValue()));
  ```

### 焦点管理
- 使用 `BorderGridLayoutManager` 实现网格布局和焦点管理
- `g` 类监听全局布局变化，首次加载时自动聚焦第一项
- `h` 类处理焦点变化时的边框效果

## 数据过滤

### BiliFilter 过滤器
- 过滤开关: `BiliFilter.filter_on`
- 作用范围: `config.scopes` 包含 "动态" 时才过滤
- 过滤规则: `config.filter_words` 正则表达式匹配标题
- 过滤方法:
  - 动态页面: `filterUpperFeedJSONItem()`
  - 关注页面: 无过滤

### 过滤配置
配置文件路径: `abd.get_filter_path()`
配置文件内容:
```json
{
  "直播回放": boolean,
  "作用范围": [...],
  "屏蔽词": [...],
  "禁用词": [...],
  "黑名单用户": {...}
}
```

## 关键类和方法

### AttentionDynamicActivity
- `uperMode`: 静态变量，控制页面模式
- `a(Bundle)`: 初始化页面
- `i()`: 加载数据
- `FeedResponse`: 动态数据响应处理
- `FollowingResponse`: 关注数据响应处理
- `c`: RecyclerView适配器
- `d`: ViewHolder类

### 适配器 (c)
- `a(List)`: 添加数据到列表
- `a(adv, int)`: 绑定数据到ViewHolder
- `onClick`: 处理点击事件

### ViewHolder (d)
- 根据模式绑定不同的布局和视图
- `z()`: 返回封面图/头像
- `A()`: 返回标题/用户名
- `B()`: 返回UP主/简介
- `C()`: 返回播放量/粉丝数
- `D()`: 返回弹幕数/投稿数

## 修改注意事项

1. **模式切换**: 修改时需要考虑 `uperMode` 的两种模式
2. **布局差异**: 两种模式使用不同的列表项布局
3. **数据结构**: 动态和关注的数据结构完全不同
4. **分页机制**: 动态用offset，关注用页码
5. **过滤逻辑**: 只有动态页面应用过滤器
6. **点击跳转**: 两种模式跳转到不同的页面
7. **图标设置**: 动态页面需要设置播放量和弹幕数的图标

## 相关资源

### 字符串资源
- `R.string.my_attention`: "我的关注"
- `R.string.nothing_show`: 空数据提示

### 图标资源
- `R.drawable.ic_video_info_up`: UP主图标
- `R.drawable.ic_video_info_play`: 播放图标
- `R.drawable.ic_video_info_danmaku`: 弹幕图标
- `R.drawable.shadow_white_rect`: 焦点边框

### 尺寸资源
- `R.dimen.px_20`: 列表项间距
- `R.dimen.px_60`: 底部边距
- `R.dimen.px_70`: 右侧边距
- `R.dimen.px_130`: 左侧边距

---

## 新需求：动态页面左右分栏改造

### 需求概述
将动态页面改造为左右分栏布局，参考收藏页面的实现方式：
- **左侧**: UP主列表（包括"全部动态"和关注的UP主）
- **右侧**: 视频列表（根据左侧选择显示对应内容）

### 收藏页面分析

#### 布局结构
收藏页面使用 [activity_favorite.xml](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/res/layout/activity_favorite.xml)：
```xml
<LinearLayout orientation="horizontal">
  <!-- 左侧栏 -->
  <LinearLayout orientation="vertical" layout_width="@dimen/px_330">
    <TextView id="@id/content_name" />  <!-- 标题 -->
    <RecyclerView id="@id/recycler_view" />  <!-- 收藏夹列表 -->
  </LinearLayout>
  
  <!-- 右侧内容区 -->
  <FrameLayout id="@id/fragment_container" />  <!-- Fragment容器 -->
</LinearLayout>
```

#### 关键类
- **FavoriteSideActivity**: 主Activity，继承自BaseSideActivity
  - `b(RecyclerView)`: 初始化左侧RecyclerView
  - `j()`: 获取左侧RecyclerView
  - `h()`: 获取右侧Fragment
  - `dispatchKeyEvent(KeyEvent)`: 处理焦点移动逻辑

- **FavoriteVideoFragment**: 右侧视频列表Fragment
  - 继承自ady (Fragment基类)
  - 使用SideRightGridLayoutManger实现网格布局
  - 支持多种收藏夹类型（视频收藏、合集收藏、课程收藏）

#### 焦点处理逻辑
1. **左右焦点切换**:
   - 按右键：从左侧列表切换到右侧Fragment
   - 按左键：从右侧Fragment切换回左侧列表

2. **左侧列表焦点**:
   - 使用LiveLeftLinearLayoutManger（单列布局）
   - 使用SideLeftSelectLinearLayout作为列表项容器
   - 焦点移入时展开文字（最多3行）
   - 焦点移出时恢复单行显示

3. **延迟加载机制**:
   - 焦点移入后延迟500ms才加载右侧内容
   - 避免快速切换时频繁加载

4. **焦点选中状态**:
   - 使用setSelected(true/false)标记选中状态
   - SideLeftSelectLinearLayout处理选中视觉效果

#### 数据加载方式
- **左侧列表**: 加载所有收藏夹类型（视频、合集、课程）
- **右侧内容**: 根据左侧选择的收藏夹类型加载对应视频
- **分页加载**: 支持滚动到底部自动加载下一页

### 动态页面改造方案

#### 1. 布局设计
创建新布局文件 [activity_attention_dynamic_side.xml](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/res/layout/activity_attention_dynamic_side.xml)：
- 左侧栏：宽度@dimen/px_330，背景@color/black_20
- 右侧内容区：剩余宽度，使用FrameLayout承载Fragment

#### 2. 左侧UP主列表

##### 数据结构
```java
class UperItem {
    long mid;        // UP主ID，-1表示"全部动态"
    String name;     // UP主名称
    String face;     // 头像URL
    boolean allDynamic;  // 是否为"全部动态"项
}
```

##### 列表项样式
- **全部动态**: 不显示头像，只显示文字"全部动态"
- **UP主项**: 左侧圆形头像，右侧UP主名称
- **横向布局**: 使用LinearLayout或RelativeLayout
- **文字显示**: 默认单行，焦点移入时最多3行

##### 数据来源
- **全部动态**: 特殊项，mid=-1
- **UP主列表**: 复用现有关注页面的接口 `getFollowings`
  - URL: `/x/relation/followings`
  - 参数: access_key, vmid, order_type="attention", ps=30, pn
  - 支持分页加载

##### 焦点交互
- 使用LiveLeftLinearLayoutManger（单列）
- 使用SideLeftSelectLinearLayout作为列表项容器
- 焦点移入：展开文字（maxLines=3），延迟500ms加载右侧
- 焦点移出：恢复单行（maxLines=1）

#### 3. 右侧视频列表

##### Fragment设计
创建 [AttentionDynamicFragment](file:///mnt/d/code/mycodes/androidtv/bilibilitv1.6.6-repair-uiiang/mybv/java/classes/com/bilibili/tv/ui/attention/AttentionDynamicFragment.java)：
- 继承自ady (Fragment基类)
- 使用BorderGridLayoutManager（2列网格）
- 支持两种模式：全部动态 / 单个UP主

##### 数据接口

**全部动态模式** (mid=-1):
- 复用现有动态页面接口 `getFeedVideos`
- URL: `/x/polymer/web-dynamic/v1/feed/all?type=video`
- 参数: access_key, offset
- 分页: 使用offset字符串

**单个UP主模式** (mid>0):
- 复用UP主空间页接口 `loadArchiveVideos`
- URL: `/x/space/wbi/arc/search`
- 参数: access_key, mid, pn, ps=20
- 分页: 使用页码pn

##### UI布局
- 复用现有 `recycler_view_item_video_info.xml`
- 显示：封面、标题、UP主、播放量、弹幕数
- 焦点效果：使用shadow_white_rect边框

##### 分页加载
- 滚动到底部自动加载下一页
- 使用RecyclerView滚动监听器
- 全部动态：offset分页
- 单个UP主：pn分页

#### 4. 焦点移动逻辑

##### 左右切换
- **左键 (KEYCODE_DPAD_LEFT)**: 从右侧Fragment切换到左侧列表
  - 检查当前焦点是否在右侧Fragment中
  - 将焦点返回到左侧列表的选中项

- **右键 (KEYCODE_DPAD_RIGHT)**: 从左侧列表切换到右侧Fragment
  - 检查右侧Fragment是否有内容
  - 将焦点移动到右侧视频列表的第一项

##### 上下导航
- **左侧列表**: 正常上下滚动
- **右侧视频**: 正常上下滚动，支持网格焦点移动

#### 5. 代码复用策略

##### 可复用的代码
1. **数据加载**:
   - `getFollowings`: 关注UP主列表（现有）
   - `getFeedVideos`: 全部动态（现有）
   - `loadArchiveVideos`: UP主视频（AuthSpaceActivity中）

2. **UI组件**:
   - `recycler_view_item_video_info.xml`: 视频列表项（现有）
   - `BorderGridLayoutManager`: 网格布局管理器（现有）
   - `SideLeftSelectLinearLayout`: 左侧列表项容器（收藏页）

3. **布局管理器**:
   - `LiveLeftLinearLayoutManger`: 左侧单列布局（收藏页）
   - `SideRightGridLayoutManger`: 右侧网格布局（收藏页）

4. **焦点处理**:
   - `dispatchKeyEvent`: 焦点切换逻辑（收藏页）
   - `OnFocusChangeListener`: 焦点变化处理（收藏页）

##### 需要新建的代码
1. **Activity**: `AttentionDynamicSideActivity`
   - 参考FavoriteSideActivity实现

2. **Fragment**: `AttentionDynamicFragment`
   - 参考FavoriteVideoFragment实现

3. **布局文件**: `activity_attention_dynamic_side.xml`
   - 参考activity_favorite.xml

4. **数据模型**: `UperItem`
   - 存储UP主信息

#### 6. 实现步骤

##### 步骤1: 创建布局文件
- 创建 `activity_attention_dynamic_side.xml`
- 参考收藏页面的布局结构

##### 步骤2: 创建Activity
- 创建 `AttentionDynamicSideActivity`
- 继承BaseSideActivity
- 实现左侧UP主列表
- 实现焦点切换逻辑

##### 步骤3: 创建Fragment
- 创建 `AttentionDynamicFragment`
- 实现右侧视频列表
- 支持两种数据模式

##### 步骤4: 实现数据加载
- 加载UP主列表（复用getFollowings）
- 加载全部动态（复用getFeedVideos）
- 加载UP主视频（复用loadArchiveVideos）

##### 步骤5: 实现焦点交互
- 左右焦点切换
- 延迟加载机制
- 文字展开/收起

##### 步骤6: 测试和优化
- 测试焦点移动
- 测试数据加载
- 测试分页功能

#### 7. 注意事项

1. **不要影响收藏页功能**:
   - 新建Activity和Fragment，不修改现有代码
   - 复用布局管理器和UI组件时注意不要修改原文件

2. **数据过滤**:
   - 全部动态需要应用BiliFilter过滤
   - UP主视频也需要应用过滤

3. **错误处理**:
   - 网络错误提示
   - 空数据提示
   - 加载失败重试

4. **性能优化**:
   - 延迟加载避免频繁请求
   - 图片加载优化
   - 列表滚动优化

5. **用户体验**:
   - 焦点移动流畅
   - 加载状态提示
   - 空数据友好提示

### 相关文件

#### 新建文件
- `AttentionDynamicSideActivity.java`: 主Activity
- `AttentionDynamicFragment.java`: 右侧Fragment
- `activity_attention_dynamic_side.xml`: 布局文件

#### 参考文件
- `FavoriteSideActivity.java`: 收藏页面Activity
- `FavoriteVideoFragment.java`: 收藏视频Fragment
- `AuthSpaceActivity.java`: UP主空间页
- `activity_favorite.xml`: 收藏页面布局
