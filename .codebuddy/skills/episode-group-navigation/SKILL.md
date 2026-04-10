---
name: "episode-group-navigation"
description: "视频列表分组导航功能。在分P列表、合集列表、PGC多季列表下方显示导航标签(01-10,11-20等)，支持快速定位。Invoke when implementing episode navigation tags."
---

# 视频列表分组导航功能

## 一、功能概述

在详情页的视频列表（分P列表、合集列表、PGC多季列表）下方添加导航标签列表，方便用户快速定位到目标视频。

## 二、术语定义

| 术语 | 说明 |
|------|------|
| 视频列表组 | 由标题、视频列表、导航标签列表组成的整体 |
| 导航标签 | 显示"01-10"、"11-20"等的标签，用于快速定位视频 |
| 视频标签 | 详情页底部的视频tag标签（非本次开发范围） |

## 三、UI结构

```
┌─────────────────────────────────────────────────────────────────────┐
│  [合集标题]                                                          │
├─────────────────────────────────────────────────────────────────────┤
│  ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐           │
│  │ EP1 │ │ EP2 │ │ EP3 │ │ EP4 │ │ EP5 │ │ EP6 │ │ EP7 │  ...     │
│  │     │ │     │ │     │ │     │ │     │ │     │ │     │           │
│  └─────┘ └─────┘ └─────┘ └─────┘ └─────┘ └─────┘ └─────┘           │
│                         视频列表（横向滚动）                          │
├─────────────────────────────────────────────────────────────────────┤
│  ┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐┌───────┐            │
│  │ 01-10 ││ 11-20 ││ 21-30 ││ 31-40 ││ 41-50 ││ 51-60 │  ...      │
│  └───────┘└───────┘└───────┘└───────┘└───────┘└───────┘            │
│                         导航标签列表（横向滚动）                       │
└─────────────────────────────────────────────────────────────────────┘
```

## 四、详细需求说明

### 4.1 导航标签显示

- **位置**：在视频列表下方添加导航标签列表
- **格式**：`01-10`、`11-20`、`21-30`、...
- **显示条件**：只有当视频列表数量超过10个item时才显示
- **分组规则**：每10个视频为一组

**最后一组标签的格式规则**：

| 视频总数 | 导航标签显示 | 说明 |
|---------|-------------|------|
| 15个 | 01-10, 11-15 | 最后一组显示实际范围 |
| 20个 | 01-10, 11-20 | 刚好整数倍 |
| 25个 | 01-10, 11-20, 21-25 | 最后一组显示实际范围 |
| 100个 | 01-10, 11-20, ..., 91-100 | 刚好整数倍 |
| 103个 | 01-10, 11-20, ..., 91-100, 101-103 | 最后一组显示实际范围 |

**标签文本生成规则**：
```
int totalCount = 视频总数;
int tagCount = (totalCount + 9) / 10;  // 向上取整
for (int i = 0; i < tagCount; i++) {
    int start = i * 10 + 1;
    int end = Math.min((i + 1) * 10, totalCount);
    String tagText = String.format("%02d-%02d", start, end);
}
```

### 4.2 导航标签→视频列表联动

- 导航标签获得焦点后，视频列表自动滚动到相应的位置
- 例如：焦点移动到`21-30`导航标签时，视频列表要自动滚动到第21个item
- **例外情况**：如果当前视频列表的焦点位置已经在导航标签范围内，则不滚动
  - 例如：当前视频焦点在第8个，导航标签移动到01-10时，因为8在01-10范围内，所以不滚动

### 4.3 视频列表→导航标签联动

- 当焦点在视频列表上移动时，导航标签也应当同步更新选中状态
- 例如：焦点在视频列表上移动到第11个至第20个之中任意一个item时，导航标签的选中状态应该在11-20
- 只有当前视频焦点范围内的导航标签显示选中背景色，其它标签不显示选中背景色

### 4.4 页面加载时的初始状态

- 当视频详情页加载时，如果当前视频属于某个合集列表里的，合集列表会自动滚动到该视频的位置
- 新增导航标签列表后，导航标签也应该自动滚动到相应的位置
- 例如：当前视频是合集里的第35个，页面加载时：
  - 视频列表自动滚动到第35个item
  - 导航标签自动滚动到31-40标签，并显示选中背景色

#### 4.4.1 页面初始焦点

页面加载完成后的焦点位置：

| 播放进度状态 | 焦点位置 | 说明 |
|------------|---------|------|
| 有播放进度 | "继续播放第X集"按钮 | 默认聚焦到播放按钮 |
| 无播放进度 | "开始播放"按钮 | 默认聚焦到播放按钮 |

**导航标签初始状态**：
- 导航标签处于"被选中"状态（显示背景色），但无焦点
- 被选中的标签由当前播放位置决定
- 例如：播放进度在第13集 → 11-17标签显示背景色

### 4.5 焦点位置记忆（核心功能）

#### 4.5.1 导航标签记忆

**基本规则**：
- 当焦点从页面上其它组件或其它视频列表，移动到当前视频列表的标签组时，应该自动聚焦到上次被选中的标签
- 如果没有被选中过，默认聚焦到第1个

**被选中状态定义**：
- 显示背景色的导航标签，属于"被选中状态"
- 被选中状态由视频列表的焦点位置决定：
  - 视频焦点在第1-10个 → 01-10标签被选中
  - 视频焦点在第11-20个 → 11-20标签被选中
  - 以此类推

**焦点移动到导航标签时的行为**：

当焦点从页面其它组件移动到导航标签列表时：

1. **确定目标标签**：焦点应聚焦到当前"被选中"的导航标签
2. **判断是否需要滚动视频列表**：
   - 获取当前视频列表记录的焦点位置（现有代码已实现焦点位置记忆功能）
   - 计算该位置所属的导航标签范围
   - 如果当前视频列表位置已经在该标签的所属范围内 → 视频列表不做滚动
   - 如果当前视频列表位置不在该标签的所属范围内 → 自动滚动视频列表到该标签范围的起始位置

**举例说明**：

| 场景 | 当前视频列表位置 | 被选中的导航标签 | 焦点移动到导航标签时 | 视频列表是否滚动 |
|------|-----------------|-----------------|---------------------|----------------|
| 举例1 | 第33个 | 31-40 | 焦点聚焦到31-40 | 不滚动（33在31-40范围内） |
| 举例2 | 第15个 | 11-20 | 焦点聚焦到11-20 | 不滚动（15在11-20范围内） |
| 举例3 | 第8个 | 01-10 | 焦点聚焦到01-10 | 不滚动（8在01-10范围内） |
| 举例4 | 无记录（首次） | 01-10（默认） | 焦点聚焦到01-10 | 滚动到第1个 |

**技术实现要点**：
- "当前视频列表已经在哪个位置"依据现有焦点位置记忆变量（如`focusPosition`、`seasonSectionFocusPositions`）来判断
- 现有代码已实现：不论焦点从页面任何地方移动到视频列表时，焦点都会恢复到上次记录的位置
- 导航标签的焦点恢复逻辑应复用这一机制

#### 4.5.2 视频列表记忆

**基本规则**：
- 当焦点从导航标签移动到视频列表时，应该自动聚焦到上次被选中的视频卡片

**"被选中过"的判断条件**：
- 视频列表的焦点位置记忆变量（如`focusPosition`）有有效值（>= 0）
- 该值在本次页面生命周期内曾被设置过（非初始默认值）

**没有被选中过时的处理**：
- **通用规则**：默认聚焦到第1个
- **优化规则**：默认聚焦到当前导航标签范围的起始位置
  - 例如：从31-40标签移动到视频列表 → 默认聚焦到第31个
  - 例如：从11-20标签移动到视频列表 → 默认聚焦到第11个

**技术实现**：
```java
// 判断是否"被选中过"
boolean hasBeenSelected = focusPosition >= 0 && hasFocusHistory;

// 如果没有被选中过，使用当前导航标签范围的起始位置
if (!hasBeenSelected && currentTagIndex >= 0) {
    focusPosition = currentTagIndex * 10;  // 0-based
}
```

#### 4.5.3 双向联动记忆
- 例如1：焦点在视频卡片第31个至第40个之中任意一个item时 → 导航标签31-40显示背景色并更新焦点位置
- 例如2：焦点移动到其它组件再回到导航标签 → 焦点自动聚焦到31-40
- 例如3：再将焦点移动到视频卡片时 → 焦点自动聚焦到上次被选中的视频卡片，如果没有被选中过，默认聚焦到第31个

#### 4.5.4 隔离性
- 每个视频列表组各自保存自己的视频卡片位置和导航标签位置，互相不干扰

#### 4.5.5 多列表组状态独立

当页面存在多个视频列表组时（如分P列表+多季列表）：

| 场景 | 分P列表导航标签状态 | 多季列表导航标签状态 |
|------|-------------------|-------------------|
| 焦点在分P列表 | 根据焦点位置更新选中状态 | 保持当前选中状态不变 |
| 焦点在多季列表 | 保持当前选中状态不变 | 根据焦点位置更新选中状态 |
| 焦点在播放按钮 | 保持当前选中状态不变 | 保持当前选中状态不变 |
| 焦点在视频标签 | 保持当前选中状态不变 | 保持当前选中状态不变 |

**关键规则**：
- 只有当前焦点所在的列表组，其导航标签才会响应焦点变化
- 非焦点列表组的导航标签保持其当前选中状态，不发生变化

#### 4.5.6 焦点记忆生命周期

**焦点记忆的存储时机**：
- 焦点离开视频列表时保存
- 焦点离开导航标签时保存

**焦点记忆的清除时机**：
- 页面销毁（Activity.onDestroy）时清除
- 切换到其他视频详情页时清除
- 不在Application级别持久化

**焦点记忆的作用域**：
- 仅在当前页面生命周期内有效
- 返回上一页后再进入，焦点位置重置

### 4.6 焦点显示效果

#### 4.6.1 导航标签获得焦点时
- 显示选中背景色（半透明红色 `#33FF6699`）
- 显示焦点边框

#### 4.6.2 导航标签失去焦点时
- 视频列表所属区域的导航标签应仍保留被选中过的背景色
- 不显示背景边框

#### 4.6.3 标签内移动时
- 选中背景色应该一起移动

#### 4.6.4 焦点样式详细规格

| 状态 | 背景色 | 边框 | 说明 |
|------|-------|------|------|
| 获得焦点 | `#33FF6699` | 白色边框 2dp | 当前聚焦的标签 |
| 被选中（失去焦点） | `#33FF6699` | 无边框 | 所属范围内的标签 |
| 未选中 | 透明 | 无边框 | 其它标签 |

**Selector实现方案**：
```xml
<!-- res/drawable/nav_tag_selector.xml -->
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- 获得焦点状态 -->
    <item android:state_focused="true">
        <shape android:shape="rectangle">
            <solid android:color="#33FF6699"/>
            <stroke android:width="2dp" android:color="@color/white"/>
            <corners android:radius="4dp"/>
        </shape>
    </item>
    <!-- 被选中状态（失去焦点但显示背景色） -->
    <item android:state_selected="true">
        <shape android:shape="rectangle">
            <solid android:color="#33FF6699"/>
            <corners android:radius="4dp"/>
        </shape>
    </item>
    <!-- 默认状态 -->
    <item>
        <shape android:shape="rectangle">
            <solid android:color="@android:color/transparent"/>
            <corners android:radius="4dp"/>
        </shape>
    </item>
</selector>
```

### 4.7 焦点流向

**基本规则**：
- 详情页的视频列表原本开发了通过上下键在不同视频列表中切换焦点的功能
- 需要判断当前视频列表有没有导航标签：
  - **有导航标签**：
    - 视频列表的下一个焦点去向应该是导航标签列表
    - 导航标签列表的下一个焦点去向是下一个视频列表
  - **无导航标签**：
    - 下一个焦点动向是下一个视频列表

**焦点流向图**：
```
┌─────────────────┐
│   上一个组件     │
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│   视频列表A      │ ◄───── UP
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│ 导航标签列表A    │ ◄───── UP (如果有导航标签)
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│   视频列表B      │ ◄───── UP
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│ 导航标签列表B    │ ◄───── UP (如果有导航标签)
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│   下一个组件     │
└─────────────────┘
```

**导航标签列表内部焦点流向**：
- **LEFT键**：焦点向左移动到上一个标签（第1个标签时保持不动）
- **RIGHT键**：焦点向右移动到下一个标签（最后1个标签时保持不动）
- **UP键**：焦点移动到视频列表
- **DOWN键**：焦点移动到下一个视频列表组或下一个组件

**代码实现要点**：
```java
// 在VideoListSection中设置焦点流向
videoRecyclerView.setNextFocusDownId(navTagRecyclerView.getId());
navTagRecyclerView.setNextFocusUpId(videoRecyclerView.getId());

// 导航标签列表内部的左右键处理
// 通过RecyclerView的item设置nextFocusLeft/nextFocusRight实现
```

### 4.8 焦点循环

- 第1个和最后1个导航标签不做焦点循环
- 当焦点移动到第1个导航标签时，按遥控器左键焦点保持不动
- 当焦点移动到最后1个导航标签时，按遥控器右键，焦点保持不动

### 4.9 导航标签使用范围

**适用范围**：
- 导航标签的使用范围包括所有的合集列表、多季列表、不区分PGC和UGC

**列表类型定义**：

| 列表类型 | 说明 | 是否显示导航标签 |
|---------|------|-----------------|
| 分P列表 | UGC视频的多P分集（如教程第1P、第2P...） | 是（超过10个分P时） |
| 合集列表 | UGC视频合集（如系列教程、番剧合集等） | 是（超过10个视频时） |
| 多季列表 | PGC番剧的多季（如第一季、第二季...） | 是（超过10季时） |
| 相关视频 | 推荐的相关视频列表 | 否 |
| 视频标签 | 详情页底部的tag标签 | 否（非本次开发范围） |

**判断逻辑**：
```java
// 判断是否需要显示导航标签
boolean shouldShowNavTags(int itemCount) {
    return itemCount > 10;
}
```

### 4.10 导航标签点击行为

当用户点击导航标签时：

| 操作 | 行为 |
|------|------|
| 点击导航标签 | 1. 焦点移动到被点击的标签<br>2. 视频列表滚动到该标签范围的起始位置<br>3. 如果当前视频焦点位置已经在该标签范围内，则不滚动 |

**点击与焦点移动的区别**：
- **焦点移动（方向键）**：触发滚动联动
- **点击（确认键）**：同样触发滚动联动，行为一致

### 4.11 视频列表滚动同步

**导航标签同步更新的触发时机**：

| 触发方式 | 是否更新导航标签 | 说明 |
|---------|-----------------|------|
| 焦点移动 | 是 | 视频列表子视图获得焦点时，同步更新导航标签 |
| 列表滚动 | 否 | 仅滚动不改变焦点时，导航标签不更新 |

**说明**：
- 只有焦点位置变化才会触发导航标签更新
- 纯滚动操作（如长按方向键快速滚动）不触发导航标签变化
- 当焦点最终停留在某个item时，导航标签才会更新到对应位置

### 4.12 导航标签UI规格

| 属性 | 规格 | 说明 |
|------|------|------|
| 最小宽度 | 120px | 保证两位数字显示 |
| 高度 | wrap_content | 根据文字大小自适应 |
| 内边距 | 左右16px，上下8px | |
| 文字大小 | 28px | |
| 标签间距 | 8px | 标签之间的间距 |
| 圆角 | 4dp | |
| 背景色 | `#33FF6699` | 半透明红色 |
| 焦点边框 | 白色 2dp | 获得焦点时显示 |

### 4.13 焦点流向边界情况

**当导航标签列表是最后一个视频列表组时**：
- 按DOWN键：焦点移动到页面底部的视频标签或其他组件
- 需要设置 `navTagRecyclerView.setNextFocusDownId(下一个组件ID)`

**当导航标签列表是唯一一个视频列表组时**：
- 按UP键：焦点移动到播放按钮区域
- 按DOWN键：焦点移动到视频标签或其他组件

**焦点流向边界示例**：
```
┌─────────────────┐
│   播放按钮区域   │
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│   分P列表        │ ◄───── UP
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│ 分P导航标签      │ ◄───── UP (如果有导航标签)
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│   多季列表       │ ◄───── UP
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│ 多季导航标签     │ ◄───── UP (如果有导航标签)
└────────┬────────┘
         │ DOWN
         ▼
┌─────────────────┐
│   视频标签       │
└─────────────────┘
```

## 五、技术实现方案

### 5.1 关键变量（VideoDetailActivity.java）

```java
// 多合集列表视频焦点位置记忆
private Map<Integer, Integer> seasonSectionFocusPositions = new HashMap<>();

// 多合集列表导航标签焦点位置记忆
private Map<Integer, Integer> seasonSectionTagFocusPositions = new HashMap<>();

// 上一次焦点所在的RecyclerView ID（用于检测焦点是否从导航标签移动到视频列表）
private int lastFocusedRecyclerViewId = View.NO_ID;
```

**位置：** 第181-185行

### 5.2 关键方法（VideoDetailActivity.java）

#### 5.2.1 saveCurrentFocusPosition()
- **功能**：保存当前焦点位置
- **位置**：第1130行
- **关键逻辑**：
  - 从tag中获取adapter position（不是可见子视图索引）
  - 保存到 `seasonSectionFocusPositions`
  - 检测焦点是否从导航标签移动到视频列表，如果是则手动恢复焦点

#### 5.2.2 restoreFocusPosition()
- **功能**：恢复焦点位置
- **位置**：第1262行
- **关键逻辑**：
  - 遍历所有可见的子视图
  - 从tag中获取adapter position
  - 找到匹配savedPosition的子视图并返回

### 5.3 NavigationTagAdapter（VideoDetailActivity.java）

**位置**：第xxx行

**关键字段**：
```java
private List<String> tags = new ArrayList<>();
private int selectedPosition = -1;
private OnTagFocusListener listener;
private RecyclerView recyclerView;
private Map<Integer, ViewHolder> viewHolderMap = new HashMap<>();
```

**关键方法**：
- `setTags(int totalCount)`：生成导航标签
- `setSelectedPosition(int position)`：设置选中位置
- `setOnTagFocusListener(OnTagFocusListener listener)`：设置焦点监听器
- `attachRecyclerView(RecyclerView recyclerView)`：绑定RecyclerView

### 5.4 核心逻辑流程

#### 5.4.1 导航标签获得焦点
```
1. NavigationTagAdapter.onFocusChange() 被触发
2. 调用 listener.onTagFocus(position, startIndex)
3. 检查当前视频焦点位置是否在标签范围内
4. 如果不在范围内：
   - 保存视频焦点位置到 seasonSectionFocusPositions
5. 更新导航标签选中状态
```

#### 5.4.2 视频列表获得焦点
```
1. saveCurrentFocusPosition() 被调用
2. 检测焦点是否从导航标签移动到视频列表
3. 如果是：
   - 从 seasonSectionFocusPositions 读取保存的位置
   - 调用 restoreFocusPosition() 恢复焦点
4. 保存当前焦点位置到 seasonSectionFocusPositions
5. 更新导航标签选中状态
```

#### 5.4.3 滚动视频列表
```
1. 计算目标滚动位置：targetOffset = targetPosition * childWidth
2. 计算当前滚动位置：currentScrollX（遍历子视图获取）
3. 计算滚动差值：scrollDiff = targetOffset - currentScrollX
4. 执行滚动：recyclerView.scrollBy(scrollDiff, 0)
```

#### 5.4.4 双向联动触发机制

**核心概念**：
- 用户可见序号从1开始（01-10, 11-20...）
- 程序数组下标从0开始
- 转换公式：`用户可见序号 = 数组下标 + 1`，`数组下标 = 用户可见序号 - 1`

**所属范围计算**：
```
视频item序号（1-based）所属的导航标签范围：
- 第1-10个item → 01-10标签
- 第11-20个item → 11-20标签
- 第21-30个item → 21-30标签
- ...

计算公式：
tagIndex = (itemPosition - 1) / 10  // itemPosition为1-based，tagIndex为0-based
tagRangeStart = tagIndex * 10 + 1   // 标签范围起始（1-based）
tagRangeEnd = tagRangeStart + 9     // 标签范围结束（1-based）
```

**联动场景一：视频列表焦点移动 → 导航标签更新**

```
触发时机：视频列表子视图获得焦点时（View.OnFocusChangeListener）

处理流程：
1. 获取当前焦点item的adapter position（0-based）
2. 转换为用户可见序号：visiblePosition = adapterPosition + 1
3. 计算所属导航标签索引：tagIndex = (visiblePosition - 1) / 10
4. 如果当前导航标签选中位置 != tagIndex：
   a. 更新导航标签选中位置
   b. 滚动导航标签列表使目标标签可见
   c. 更新导航标签背景色：目标标签显示选中背景色，其它标签清除背景色
```

**举例说明**：
| 视频item位置（1-based） | 所属导航标签 | 背景色显示 |
|------------------------|-------------|-----------|
| 第1个 | 01-10 | 01-10显示背景色，其它不显示 |
| 第10个 | 01-10 | 01-10显示背景色，其它不显示 |
| 第11个 | 11-20 | 11-20显示背景色，其它不显示 |
| 第18个 | 11-20 | 11-20显示背景色，其它不显示 |
| 第33个 | 31-40 | 31-40显示背景色，其它不显示 |

**联动场景二：页面加载时初始化**

```
触发时机：视频详情页加载完成，数据绑定后

处理流程：
1. 获取当前播放位置（分P第18集 / 合集第18个视频）
2. 视频列表滚动到第18个item
3. 计算所属导航标签：第18个 → 11-20标签
4. 导航标签滚动到11-20位置
5. 11-20标签显示选中背景色，其它标签不显示背景色
```

**联动场景三：导航标签焦点移动 → 视频列表滚动**

```
触发时机：导航标签子视图获得焦点时

处理流程：
1. 获取当前焦点标签的索引（0-based）
2. 计算对应的视频起始位置：videoStartPosition = tagIndex * 10 + 1（1-based）
3. 转换为adapter position：targetAdapterPosition = videoStartPosition - 1（0-based）
4. 检查当前视频列表焦点位置是否在目标范围内：
   - 当前焦点位置（1-based）= currentAdapterPosition + 1
   - 范围起始 = videoStartPosition
   - 范围结束 = videoStartPosition + 9
   - 如果当前焦点位置不在范围内，滚动视频列表到targetAdapterPosition
```

**举例说明**：
| 导航标签 | 视频列表滚动目标位置 |
|---------|-------------------|
| 01-10 | 滚动到第1个item |
| 11-20 | 滚动到第11个item |
| 41-50 | 滚动到第41个item |

#### 5.4.5 双向联动代码实现要点

**视频列表焦点监听器**：
```java
// 在VideoListSection或VideoCardAdapter中添加
view.setOnFocusChangeListener(new View.OnFocusChangeListener() {
    @Override
    public void onFocusChange(View v, boolean hasFocus) {
        if (hasFocus) {
            int adapterPosition = getAdapterPositionForView(v);
            int visiblePosition = adapterPosition + 1; // 转为1-based
            int tagIndex = (visiblePosition - 1) / 10;
            
            // 通知导航标签更新
            if (navTagAdapter != null) {
                navTagAdapter.setSelectedPosition(tagIndex);
                navTagAdapter.scrollToPosition(tagIndex);
            }
        }
    }
});
```

**导航标签焦点监听器**：
```java
// 在NavigationTagAdapter中添加
view.setOnFocusChangeListener(new View.OnFocusChangeListener() {
    @Override
    public void onFocusChange(View v, boolean hasFocus) {
        if (hasFocus) {
            int tagIndex = holder.getAdapterPosition();
            int videoStartPosition = tagIndex * 10 + 1; // 1-based
            int targetAdapterPosition = videoStartPosition - 1; // 0-based
            
            // 检查当前视频焦点是否在范围内
            int currentVideoPosition = getCurrentVideoFocusPosition(); // 1-based
            int rangeStart = videoStartPosition;
            int rangeEnd = videoStartPosition + 9;
            
            if (currentVideoPosition < rangeStart || currentVideoPosition > rangeEnd) {
                // 不在范围内，滚动视频列表
                scrollVideoListToPosition(targetAdapterPosition);
            }
        }
    }
});
```

**页面加载时初始化**：
```java
// 在VideoDetailActivity数据加载完成后调用
private void initNavigationTagState(int currentVideoPosition) {
    // currentVideoPosition为1-based
    int tagIndex = (currentVideoPosition - 1) / 10;
    
    // 滚动视频列表
    videoListSection.scrollToPosition(currentVideoPosition - 1);
    
    // 滚动并选中导航标签
    if (navTagAdapter != null) {
        navTagAdapter.setSelectedPosition(tagIndex);
        navTagRecyclerView.scrollToPosition(tagIndex);
    }
}
```

## 六、已修复的BUG

### 6.1 restoreFocusPosition方法的BUG

**问题描述**：
- 保存的是可见子视图索引而不是adapter position
- 例如：savedPosition=10，但实际匹配的是可见子视图中的第10个（可能adapter position=15）

**修复方案**：
- 遍历所有可见的子视图
- 从tag中获取adapter position
- 找到匹配savedPosition的子视图

**位置**：第1262行

### 6.2 saveCurrentFocusPosition方法的BUG

**问题描述**：
- 保存的是可见子视图索引而不是adapter position
- 例如：焦点在第10个item，但保存的是可见子视图索引3

**修复方案**：
- 从tag中获取adapter position
- 保存adapter position到 seasonSectionFocusPositions

**位置**：第1195行

### 6.3 从导航标签移动到视频列表时焦点恢复问题

**问题描述**：
- 当用户从导航标签按UP键移动到视频列表时，`onFocusChange` 没有被触发
- 因为焦点是直接移动到视频列表的某个子视图上，而不是移动到RecyclerView本身

**修复方案**：
- 添加 `lastFocusedRecyclerViewId` 变量，保存上一次焦点所在的RecyclerView ID
- 在 `saveCurrentFocusPosition` 方法中检测焦点是否从导航标签移动到视频列表
- 如果是，则手动调用 `restoreFocusPosition` 来恢复焦点位置

**位置**：第1209行

### 6.4 滚动定位问题

**问题描述**：
- `scrollBy()` 是相对滚动，每次滚动会叠加
- 例如：第一次滚动7680px，第二次又滚动7680px，导致滚动过度

**修复方案**：
- 计算目标滚动位置：targetOffset
- 计算当前滚动位置：currentScrollX
- 计算滚动差值：scrollDiff = targetOffset - currentScrollX
- 只滚动差值部分

**位置**：第2754行

### 6.5 导航标签滚动时不检查当前焦点位置

**问题描述**：
- 当导航标签获得焦点时，总是滚动视频列表到标签范围的第一个位置
- 即使当前视频焦点已经在标签范围内，也会滚动

**修复方案**：
- 在导航标签获得焦点时，检查当前视频焦点位置是否在标签范围内
- 如果在范围内，则不滚动

**位置**：第2732行

## 七、测试用例

### 7.1 基本功能测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 导航标签显示 | 进入详情页，视频列表有20个item | 显示01-10、11-20两个导航标签 |
| 导航标签隐藏 | 进入详情页，视频列表有5个item | 不显示导航标签 |
| 标签→视频滚动 | 移动到导航标签11-20 | 视频列表滚动到第11个item |
| 标签→视频不滚动 | 视频焦点在第8个，移动到导航标签01-10 | 视频列表不滚动 |

### 7.2 焦点记忆测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 视频→标签记忆 | 焦点在视频列表第31个item，移动到导航标签 | 焦点在31-40标签 |
| 标签→视频记忆 | 焦点在导航标签31-40，移动到视频列表 | 焦点在第33个item |
| 跨组件记忆 | 焦点在视频列表第33个item，移动到其他组件，再返回导航标签 | 焦点在31-40标签 |
| 隔离性 | 焦点在合集A第33个item，移动到合集B第15个item，返回合集A | 焦点在第33个item |

### 7.3 滚动同步测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 标签滚动 | 移动到导航标签11-20 | 视频列表滚动到第11个item |
| 视频滚动 | 视频列表移动到第11个至第20个之中任意一个item | 导航标签选中状态在11-20 |
| 视频滚动切换 | 视频列表移动到第21个item | 导航标签选中状态切换到21-30 |

### 7.4 焦点显示效果测试

| 测试项 | 操作步骤 | 预期结果 |
|--------|----------|----------|
| 标签获得焦点 | 移动到导航标签11-20 | 显示背景色+边框 |
| 标签失去焦点 | 移动到视频列表 | 11-20保留背景色，不显示边框 |
| 标签内移动 | 在导航标签内移动焦点 | 背景色+边框一起移动 |

## 八、改造时日志要求

### 8.1 日志记录范围

在所有交互组件（特别是导航标签、视频列表及其他焦点敏感型元素）中添加事件监听与日志输出功能。

### 8.2 日志内容规范

每条日志必须包含以下关键信息：

1. **全部使用Log.i**
2. **触发事件类型**（如：鼠标右键点击、键盘操作、焦点变化等）
3. **用户具体操作**（如：按下的键盘按键、鼠标点击位置坐标）
4. **实际焦点跳转路径**（从哪个元素跳转到哪个元素）
5. **预期焦点目标位置**（根据业务逻辑确定的正确焦点位置）
6. **相关组件ID及DOM路径信息**

### 8.3 日志分析工作

实施完成后，需通过收集到的日志数据进行以下分析工作：

1. **精确还原各焦点跳转BUG的完整复现步骤**
2. **详细描述每个BUG的具体现象表现**
3. **明确指出实际焦点行为与预期行为的差异点**

## 九、调试日志

### 9.1 日志标签

- **KeyEvent**：按键事件（UP/DOWN/LEFT/RIGHT等）
- **FocusChange**：焦点变化（保存和恢复）
- **FocusRestore**：焦点恢复的详细过程
- **NavigationTag**：导航标签相关（滚动、选中状态等）

### 9.2 日志命令

```bash
adb logcat -s KeyEvent:I FocusChange:I FocusRestore:I NavigationTag:I
```

### 9.3 关键日志示例

**导航标签获得焦点：**
```
NavigationTag: PGC: Tag focused position=1, startIndex=10
NavigationTag: PGC: currentVideoFocusPosition=5, tagRangeStart=10, tagRangeEnd=19
NavigationTag: PGC: childWidth=768, targetOffset=7680, currentScrollX=xxx, scrollDiff=xxx
NavigationTag: PGC: Scrolled video list, savedFocusPosition=10
```

**视频列表获得焦点：**
```
FocusChange: VideoList onFocusChange: hasFocus=true, sectionId=0
FocusChange: VideoList onFocusChange: savedPosition=10
FocusRestore: restoreFocusPosition: savedPosition=10
FocusRestore: restoreFocusPosition: childCount=5, searching for adapterPosition=10
FocusRestore: restoreFocusPosition: found child with adapterPosition=10, childIndex=3
```

**焦点从导航标签移动到视频列表：**
```
FocusChange: Focus moved from navigation tags to video list, sectionId=0
FocusChange: Restoring focus to savedPosition=10
FocusRestore: restoreFocusPosition: savedPosition=10
FocusChange: Requesting focus on restored view
```

## 十、边界情况处理

### 10.1 视频数量边界情况

| 情况 | 视频数量 | 导航标签显示 | 处理方式 |
|------|---------|-------------|---------|
| 无视频 | 0个 | 不显示 | 隐藏整个视频列表组 |
| 少量视频 | 1-10个 | 不显示 | 正常显示视频列表，无导航标签 |
| 刚好整数倍 | 10、20、30...个 | 显示 | 最后一组标签范围刚好填满 |
| 非整数倍 | 11-19、21-29...个 | 显示 | 最后一组标签显示实际范围 |

### 10.2 焦点位置边界情况

| 情况 | 处理方式 |
|------|---------|
| 焦点在第1个视频 | 导航标签选中01-10，按LEFT键视频焦点保持不动 |
| 焦点在最后一个视频 | 导航标签选中对应的最后一组，按RIGHT键视频焦点保持不动 |
| 焦点在第10个视频移动到第11个 | 导航标签从01-10切换到11-20 |
| 焦点在第20个视频移动到第21个 | 导航标签从11-20切换到21-30 |

### 10.3 滚动边界情况

| 情况 | 处理方式 |
|------|---------|
| 视频列表已滚动到最左侧 | 导航标签01-10选中，无法继续向左滚动 |
| 视频列表已滚动到最右侧 | 导航标签选中最后一组，无法继续向右滚动 |
| 导航标签已滚动到最左侧 | 第1个标签可见，无法继续向左滚动 |
| 导航标签已滚动到最右侧 | 最后1个标签可见，无法继续向右滚动 |

### 10.4 异常情况处理

| 异常情况 | 处理方式 |
|---------|---------|
| 导航标签RecyclerView为null | 跳过导航标签相关逻辑，不影响视频列表正常使用 |
| 视频列表RecyclerView为null | 不显示导航标签 |
| 数据加载失败 | 不显示导航标签，显示错误提示 |
| 焦点恢复失败 | fallback到第1个item |

## 十一、布局修改方案

### 11.1 layout_season_section.xml 修改

**修改前**：
```xml
<LinearLayout
    android:orientation="vertical"
    android:layout_width="fill_parent"
    android:layout_height="wrap_content">
    <TextView android:id="@+id/season_section_title" ... />
    <RecyclerView android:id="@+id/season_section_recycler" ... />
</LinearLayout>
```

**修改后**：
```xml
<LinearLayout
    android:orientation="vertical"
    android:layout_width="fill_parent"
    android:layout_height="wrap_content">
    <TextView android:id="@+id/season_section_title" ... />
    <RecyclerView android:id="@+id/season_section_recycler" ... />
    <!-- 新增导航标签列表 -->
    <android.support.v7.widget.RecyclerView
        android:id="@+id/season_section_nav_tags"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:visibility="gone"
        android:paddingLeft="@dimen/px_10"
        android:paddingTop="@dimen/px_8"
        android:paddingBottom="@dimen/px_8"
        android:focusable="true"
        android:clipChildren="false"
        android:clipToPadding="false" />
</LinearLayout>
```

### 11.2 导航标签item布局

**新建文件**：`res/layout/item_nav_tag.xml`
```xml
<?xml version="1.0" encoding="utf-8"?>
<TextView xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/nav_tag_text"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:minWidth="@dimen/px_120"
    android:paddingLeft="@dimen/px_16"
    android:paddingRight="@dimen/px_16"
    android:paddingTop="@dimen/px_8"
    android:paddingBottom="@dimen/px_8"
    android:gravity="center"
    android:textSize="@dimen/px_28"
    android:textColor="@color/white"
    android:focusable="true"
    android:clickable="true"
    android:background="@drawable/nav_tag_selector" />
```

### 11.3 VideoListSection 代码修改

```java
public class VideoListSection extends LinearLayout {
    // 新增字段
    private RecyclerView navTagRecyclerView;
    private NavigationTagAdapter navTagAdapter;
    
    private void initViews() {
        // ... 原有代码 ...
        
        // 初始化导航标签列表
        navTagRecyclerView = (RecyclerView) findViewById(R.id.season_section_nav_tags);
        if (navTagRecyclerView != null) {
            navTagRecyclerView.setLayoutManager(
                new FixLinearLayoutManager(getContext(), 0, false));
            navTagAdapter = new NavigationTagAdapter();
            navTagRecyclerView.setAdapter(navTagAdapter);
        }
    }
    
    // 新增方法：设置导航标签数据
    public void setupNavigationTags(int totalCount) {
        if (totalCount > 10 && navTagRecyclerView != null && navTagAdapter != null) {
            navTagAdapter.setTags(totalCount);
            navTagRecyclerView.setVisibility(View.VISIBLE);
        } else if (navTagRecyclerView != null) {
            navTagRecyclerView.setVisibility(View.GONE);
        }
    }
    
    // 新增方法：更新导航标签选中状态
    public void updateNavTagSelection(int videoPosition) {
        if (navTagAdapter != null) {
            int tagIndex = videoPosition / 10;  // 0-based
            navTagAdapter.setSelectedPosition(tagIndex);
        }
    }
}
```
