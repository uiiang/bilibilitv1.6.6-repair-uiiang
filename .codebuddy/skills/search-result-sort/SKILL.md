---
name: "search-result-sort"
description: "搜索结果页排序功能需求记录。在SearchResultSideActivity实现长按弹出排序选项，根据搜索类型显示不同排序选项。"
---

# 搜索结果页排序功能需求

## 背景

搜索页结构已修改：
- `SearchActivity` - 搜索发起页
- `SearchResultSideActivity` - 搜索结果页（排序功能在此实现）

## 功能需求

### 1. 根据搜索结果类型显示不同排序选项

#### 1.1 视频类型（3组排序选项，同组内单选）

**第1组 - 排序**
- 对应参数: `order`
- 选项:
  - 综合排序: 不传order参数
  - 最多播放: `order=click`
  - 最新发布: `order=pubdate`
  - 最多弹幕: `order=dm`
  - 最多收藏: `order=stow`

**第2组 - 日期**
- 对应参数: `pubtime_begin_s`, `pubtime_end_s`
- 选项:
  - 全部日期: `pubtime_begin_s=0`, `pubtime_end_s=0`
  - 最近一天: `pubtime_begin_s=当天0:00:00时间戳`, `pubtime_end_s=当天23:59:59时间戳`
  - 最近一周: `pubtime_begin_s=当天-7天0:00:00时间戳`, `pubtime_end_s=当天23:59:59时间戳`
  - 最近半年: `pubtime_begin_s=当天-180天0:00:00时间戳`, `pubtime_end_s=当天23:59:59时间戳`

**第3组 - 时长**
- 对应参数: `duration`
- 选项:
  - 全部时长: 不传duration参数
  - 10分钟以下: `duration=1`
  - 10-30分钟: `duration=2`
  - 30-60分钟: `duration=3`
  - 60分钟以上: `duration=4`

#### 1.2 番剧类型
- 无排序功能
- header不显示排序提示
- 视频卡片不响应长按

#### 1.3 影视类型
- 无排序功能
- header不显示排序提示
- 视频卡片不响应长按

#### 1.4 直播类型（1组排序选项）

**排序**
- 对应参数: `order`
- 选项:
  - 综合排序: `order=online`
  - 最新开播: `order=live_time`

#### 1.5 用户类型（1组排序选项）

**排序**
- 对应参数: `order`, `order_sort`
- 选项:
  - 默认排序: `order=空`, `order_sort=0`
  - 粉丝数由高到低: `order=fans`, `order_sort=0`
  - 粉丝数由低到高: `order=fans`, `order_sort=1`
  - Lv等级由高到低: `order=level`, `order_sort=0`
  - Lv等级由低到高: `order=level`, `order_sort=1`

### 2. UI样式要求

- 排序选项文字样式与收藏页一致
- 获得焦点时的背景边框与收藏页一致
- 焦点逻辑与收藏页一致
- 参考收藏页`FavoriteSideActivity`的`onLongClick`实现

### 3. 交互逻辑

- 点击选项后，发起新的搜索请求
- 更新视频列表显示

## 技术实现参考

### 可复用组件

1. **agb对话框类** - 排序选项弹窗
2. **agb.a Builder** - 构建对话框
3. **agb.c回调接口** - 选项选择回调
4. **DrawTextView** - 带焦点效果的选项视图

### 实现模式

参考`FavoriteSideActivity`:
```java
public class SearchResultSideActivity extends BaseSideActivity implements View.OnLongClickListener {
    
    @Override
    public boolean onLongClick(View view) {
        // 根据当前搜索类型显示不同排序选项
        // 使用agb对话框
        // 回调中更新搜索参数并刷新列表
    }
}
```

### 视频卡片设置监听

在ViewHolder中:
```java
Object context = view.getContext();
if (context instanceof View.OnLongClickListener) {
    view.setOnLongClickListener((View.OnLongClickListener) context);
}
```

## 开发进度

- [ ] 分析SearchResultSideActivity现有代码结构
- [ ] 实现OnLongClickListener接口
- [ ] 视频类型排序（3组选项）
- [ ] 直播类型排序（1组选项）
- [ ] 用户类型排序（1组选项）
- [ ] 番剧/影视类型禁用排序
- [ ] 点击选项后刷新搜索结果
- [ ] 测试验证
