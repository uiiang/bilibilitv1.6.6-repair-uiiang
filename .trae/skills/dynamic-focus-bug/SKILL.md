---
name: "dynamic-focus-bug"
description: "记录动态页焦点跳转BUG的解决方案和尝试过的无效方案。Invoke when fixing dynamic page focus jump issues."
---

# 动态页焦点跳转BUG解决方案

## BUG描述
动态页右侧的视频列表，快速向下滚动时，到达列表末尾还没有加载出下一页时，焦点会自动跳到左侧目录列表。

## 根本原因
当右侧视频列表到达末尾且下一页数据尚未加载时，系统会自动搜索下一个可聚焦的视图，此时会搜索到左侧目录列表。

## 解决方案
### 方案1：重写布局管理器的d()方法
参考首页个性推荐的实现，在右侧视频列表的布局管理器中重写d()方法，在加载或没有更多数据时直接返回当前视图，阻止焦点搜索。

```java
SideRightGridLayoutManger sideRightGridLayoutManger = new SideRightGridLayoutManger(getActivity(), j) {
    @Override
    public View d(View view, int i) {
        // 当正在加载或没有更多数据时，直接返回当前视图，阻止系统的焦点搜索
        if (fragment.h || !fragment.g) {
            return view;
        }
        return super.d(view, i);
    }
};
```

### 方案2：控制左侧目录列表的焦点状态
在右侧列表加载数据时禁用左侧目录列表的焦点，在数据加载完成后恢复左侧目录列表的焦点。

1. 在 `AttentionDynamicSideActivity.java` 中添加方法：
```java
// 控制左侧目录列表的焦点状态
public void setLeftListFocusable(boolean focusable) {
    RecyclerView leftRecyclerView = j();
    if (leftRecyclerView != null) {
        leftRecyclerView.setFocusable(focusable);
        leftRecyclerView.setFocusableInTouchMode(focusable);
    }
}
```

2. 在 `AttentionDynamicFragment.java` 中修改 `b()` 方法：
```java
private final void b() {
    // 禁用左侧目录列表的焦点
    FragmentActivity activity = getActivity();
    if (activity instanceof AttentionDynamicSideActivity) {
        ((AttentionDynamicSideActivity) activity).setLeftListFocusable(false);
    }
    
    this.h = true;
    if ("all".equals(mode)) {
        loadAllDynamic();
    } else if ("uper".equals(mode)) {
        loadUperVideos();
    }
}
```

3. 在数据加载完成后恢复左侧目录列表的焦点：
```java
h = false;
// 恢复左侧目录列表的焦点
FragmentActivity activity = getActivity();
if (activity instanceof AttentionDynamicSideActivity) {
    ((AttentionDynamicSideActivity) activity).setLeftListFocusable(true);
}
```

## 尝试过的无效方案
1. 取消左侧目录列表的翻页功能 - 问题仍然存在
2. 在左侧目录列表的适配器中禁用焦点 - 问题仍然存在
3. 在滚动监听器中提前设置加载状态 - 问题仍然存在
4. 重写布局管理器的d()方法 - 问题仍然存在
5. 控制左侧目录列表的焦点状态 - 问题仍然存在

## 排查思路
按照逐步排查原则，通过做减法的方式排查BUG原因：

1. **完全禁用左侧目录列表的分页加载功能**：
   - 移除左侧目录列表的滚动监听器
   - 强制只加载第一页数据
   - 强制设置为没有更多数据

2. **测试是否解决问题**：
   - 如果解决了问题，说明问题与左侧目录列表的分页加载有关
   - 如果没有解决，说明问题在其他地方

## 参考页面
- 首页个性推荐 (MainRecommendFragment.java) - 无焦点跳转问题
- 收藏夹页面 (FavoriteVideoFragment.java) - 无焦点跳转问题

## 关键区别
- 首页个性推荐：使用BorderGridLayoutManager，重写了d()方法
- 收藏夹页面：左侧目录一次加载全部数据
- 动态页：左侧目录和右侧列表都支持分页加载
