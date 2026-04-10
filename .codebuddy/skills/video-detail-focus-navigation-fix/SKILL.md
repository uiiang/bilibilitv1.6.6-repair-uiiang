---
name: "video-detail-focus-navigation-fix"
description: "视频详情页分P列表与合集列表间焦点导航BUG修复记录。Invoke when fixing focus navigation issues between episode lists and collection lists in VideoDetailActivity."
---

# 视频详情页焦点导航BUG修复记录

## 问题描述

### BUG现象
1. **向下键跳转错误**：在分P列表中按遥控器下键，焦点跳过合集列表直接定位到视频标签区域
2. **向上键回跳错误**：在合集列表最后一个列表组按遥控器下键，焦点跳转到分P列表而非下一个内容区域

### 问题场景
- 页面同时存在分P列表和合集/多季列表时出现
- 分P列表通过`addView(view, 0)`移至页面最上方显示
- 但焦点导航逻辑仍基于旧的注册顺序计算

## 根因分析

### 核心矛盾
**两套数据结构顺序不一致**：

| 数据结构 | 排序依据 | UGC视频顺序 | PGC视频顺序 |
|---------|---------|------------|------------|
| `seasonsContainer` (视觉) | `addView(view,0)` | [分P, 合集1, 合集2] | [分P, 多季] |
| `seasonSectionViews` (逻辑) | 添加时间顺序 | [分P, 合集1, 合集2] | [分P, 多季] |
| `videoListNavigator.sections` (导航) | 注册时间顺序 | [合集1, 合集2, **分P**] ❌ | [多季, **分P**] ❌ |

### 调用顺序（当前实现）
```java
// PGC视频
showPgcSections(pgcInfo);    // 1. 注册多季/多合集 → sections[0]
showPgcEpisodes(pgcInfo);    // 2. 注册分P列表 → sections[1] (最后)

// UGC视频
showEpisodes(biliVideoDetail); // 1. 注册合集列表 → sections[0]
d(biliVideoDetail);           // 2. 注册分P列表 → sections[n] (最后)
```

### BUG复现场景

#### 场景1：分P列表按向下键
```
当前焦点: 分P列表 (sections索引=最后)
         ↓ VideoListNavigator.handleDown()
期望: 跳到合集列表 (sections[0])
实际: 跳到downTarget (相关视频/标签) ❌ 跳过合集！
```

#### 场景2：最后一个合集列表按向下键
```
当前焦点: 合集列表2 (sections索引=倒数第二)
         ↓ VideoListNavigator.handleDown()
期望: 跳到相关视频
实际: 跳到分P列表 (sections[最后]) ❌ 回跳到上面！
```

## 修复方案

### 方案A：调整注册顺序 ⭐ 备选方案
**思路**：先注册分P列表，后注册合集/多季列表

**优点**：
- 实现简单，只需调整调用顺序
- 不需要修改VideoListNavigator代码

**缺点**：
- 需要确保所有调用点都正确调整
- 如果未来添加新列表类型，容易再次出错

**实现方式**：
```java
// PGC视频 - 调整为：
showPgcEpisodes(pgcInfo);    // 1. 先注册分P列表
showPgcSections(pgcInfo);    // 2. 后注册多季/多合集

// UGC视频 - 调整为：
d(biliVideoDetail);           // 1. 先注册分P列表
showEpisodes(biliVideoDetail); // 2. 后注册合集列表
```

**状态**：❌ 未测试（作为备选）

---

### 方案B：修改VideoListNavigator支持有序插入 ⭐ 备选方案
**思路**：增加insertSection(section, index)方法

**优点**：
- 显式控制插入位置，语义清晰
- 不依赖调用顺序

**缺点**：
- 需要修改VideoListNavigator类
- 需要所有调用方传入正确的index

**实现方式**：
```java
// VideoListNavigator.java 新增方法
public void insertSection(VideoListSection section, int index) {
    if (section == null || sections.contains(section)) {
        return;
    }
    if (index < 0 || index > sections.size()) {
        index = sections.size();
    }
    sections.add(index, section);
}

// 调用方式
videoListNavigator.insertSection(episodeSection, 0);  // 分P列表插入到最前面
videoListNavigator.insertSection(collectionSection, 1); // 合集列表插入到后面
```

**状态**：❌ 未测试（作为备选）

---

### 方案C：运行时动态排序 ✅ 当前采用方案
**思路**：在handleDown/handleUp时动态计算视觉顺序，不依赖sections列表索引

**优点**：
- 最通用，不依赖注册顺序或调用顺序
- 自动适应任何列表组合场景
- 符合用户要求的"通用性"原则

**缺点**：
- 实现稍复杂，需要维护视觉顺序映射
- 每次导航都需要计算

**核心原理**：
```
1. 建立visualOrderMap: sectionId → 视觉位置索引
2. handleDown/handleUp时根据visualOrderMap查找目标
3. 确保导航顺序与页面视觉呈现一致
```

**状态**：✅ 已实施并编译成功，待用户测试验证

### 实施细节（2026-04-03）

#### 修改文件1：VideoListNavigator.java
```java
// 新增字段
private Map<Integer, Integer> visualOrderMap = new HashMap<>();

// 新增方法
public void updateVisualOrder(int sectionId, int visualIndex) {
    visualOrderMap.put(sectionId, visualIndex);
}

// 修改方法：handleDown - 使用视觉顺序排序
private boolean handleDown(...) {
    List<VideoListSection> visualSorted = getVisualSortedSections(visibleSections);
    int currentIndex = getVisualIndex(currentSection, visualSorted);
    // 基于visualSorted进行导航...
}

// 修改方法：handleUp - 使用视觉顺序排序
private boolean handleUp(...) {
    List<VideoListSection> visualSorted = getVisualSortedSections(visibleSections);
    int currentIndex = getVisualIndex(currentSection, visualSorted);
    // 基于visualSorted进行导航...
}

// 新增辅助方法
private List<VideoListSection> getVisualSortedSections(List<VideoListSection> visibleSections) {
    // 按visualOrderMap排序...
}
```

#### 修改文件2：VideoDetailActivity.java
```java
// 新增方法
private void refreshVisualOrder() {
    // 遍历seasonsContainer子视图，按视觉顺序更新videoListNavigator
    for (int i = 0; i < seasonsContainer.getChildCount(); i++) {
        View child = seasonsContainer.getChildAt(i);
        if (child instanceof VideoListSection) {
            videoListNavigator.updateVisualOrder(section.getSectionId(), i);
        }
    }
}

// PGC视频：在showPgcEpisodes后调用
showPgcSections(pgcInfo);
showPgcEpisodes(pgcInfo);
refreshVisualOrder();  // ← 新增

// UGC视频：在d()后调用
showEpisodes(biliVideoDetail);
d(biliVideoDetail);
refreshVisualOrder();  // ← 新增
```

---

## 技术细节

### 相关文件
- `VideoDetailActivity.java`: 主Activity，包含handleListFocusNavigation方法
- `VideoListNavigator.java`: 列表导航器，包含handleDown/handleUp方法
- `activity_video_detail.xml`: 布局文件，定义组件视觉顺序

### 关键方法
- `handleListFocusNavigation()`: VideoDetailActivity中的焦点导航处理
- `handleDown()/handleUp()`: VideoListNavigator中的上下导航
- `getCurrentSeasonSectionIndex()`: 获取当前section在seasonsContainer中的位置
- `getCurrentListType()`: 判断当前焦点所在列表类型

### 数据结构
```java
// seasonSectionViews - 按视觉顺序排列
List<SeasonSectionView> seasonSectionViews;

// videoListNavigator.sections - 按注册顺序排列（问题根源）
List<VideoListSection> sections;
```

## 测试验证清单

### 必须测试的场景
- [ ] PGC视频：分P列表 + 多季列表，测试上下键导航
- [ ] UGC视频：分P列表 + 单个合集，测试上下键导航
- [ ] UGC视频：分P列表 + 多个合集，测试上下键导航
- [ ] 仅分P列表（无合集），测试上下键导航
- [ ] 仅合集列表（无分P），测试上下键导航
- [ ] 分P列表 + 合集列表 + 相关视频 + 标签，完整流程测试

### 预期行为
1. **从上到下**：播放按钮 → 分P列表 → 合集列表1 → 合集列表2 → ... → 相关视频 → 标签
2. **从下到上**：标签 → 相关视频 → ... → 合集列表2 → 合集列表1 → 分P列表 → 播放按钮
3. **连续性**：在任何列表内按方向键应平滑过渡到相邻列表

## 经验教训

### 设计原则
1. **数据一致性**：当UI组件有多个数据源时，必须保证它们的顺序一致
2. **单一真相源**：避免维护多套独立的数据结构，容易导致不一致
3. **显式优于隐式**：使用显式的位置参数比隐式的注册顺序更可靠

### 排查方法论
1. **三次独立复查**：不急于修改代码，至少进行三次独立的根因分析
2. **数据流追踪**：追踪数据从创建、注册到使用的完整生命周期
3. **对比分析法**：对比正常/异常场景的数据差异

## 更新历史

### 2026-04-03 (第二次修复)
- **发现真正问题**：VideoListNavigator.handleDown/handleUp从未被调用！
- **实际导航逻辑**：由`VideoDetailActivity.handleListFocusNavigation()`处理
- **根因确认**：`seasonSectionViews`列表顺序与视觉顺序不一致
- **最终修复**：修改`refreshVisualOrder()`同步重排`seasonSectionViews`
- **关键日志证据**：用户测试显示只有注册/更新visualOrder的日志，无handleDown/handleUp日志

### 2026-04-03 (第一次尝试)
- 初次创建，记录焦点导航BUG的三种修复方案
- 采用方案C（运行时动态排序）进行首次尝试（修改了VideoListNavigator但未生效）
- 记录方案A和B作为备选方案
